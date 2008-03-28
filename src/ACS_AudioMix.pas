(*
  This file is a part of New Audio Components package 1.4
  Copyright (c) 2002-2007 Andrei Borovsky. All rights reserved.
  See the LICENSE file for more details.
  You can contact me at anb@symmetrica.net
*)

(* $Id$ *)

unit ACS_AudioMix;

(* Title: ACS_AudioMix
    Classes that mix audio. *)

interface

uses
  Classes, SysUtils, ACS_Types, ACS_Procs, ACS_Classes, SyncObjs, Math;

const
  BUF_SIZE = $1000;

type

  (* Enum: TAudioMixerMode
    This enumeration represents the different modes of operation for a 
    <TAudioMixer>.
      
      amMix - the mixer mixes input streams and the size of the resulting
      stream is equal to the size of the longest input stream. 
      
      amConcatenate - the two streams are concatenated together and the size
      of the resulting stream is the sum of the sizes of the input streams.
      Input1 is written before Input2.
  *)

  TAudioMixerMode = (amMix, amConcatenate);

  (* Class: TAudioMixer
     This component can mix or concatenate two input audio streams. Unlike
     other stream converter components, TAudioMixer component has two input
     properties: Input1 and Input2. The input streams should have the same
     number of channels and sample rates (but may have a different number of
     bits per sample). Note that input streams may be of different sizes. In
     amMix mode the streams start at the same time, but the longer stream will
     play alone after the shorter stream has ended. In amConcatenate mode the
     second input will play after the first input has ended. Decends from
     <TAuInput>. *)

  TAudioMixer = class(TAuInput)
  private
    FInput1, FInput2 : TAuInput;
    EndOfInput1, EndOfInput2 : Boolean;
    FVolume1, FVolume2 : Word;
    InBuf1, InBuf2 : PBuffer8;
    FloatBuf1, FloatBuf2 : PBufferSingle;
    BytesPerSample1, BytesPerSample2 : Byte;
    Busy : Boolean;
    FMode : TAudioMixerMode;
    FInput2Start: Int64;
    SamplesCount : Int64;
    procedure SetInput1(aInput : TAuInput);
    procedure SetInput2(aInput : TAuInput);
  protected
    procedure GetDataInternal(var Buffer : Pointer; var Bytes : LongWord); override;
    procedure InitInternal; override;
    procedure FlushInternal; override;
    function GetBPS : LongWord; override;
    function GetCh : LongWord; override;
    function GetSR : LongWord; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    (* Property: Input1
    Use this property to set the first input stream to be mixed or concatenated. *)
    property Input1 : TAuInput read FInput1 write SetInput1;
    (* Property: Input2
    Use this property to set the second input stream to be mixed or concatenated. *)
    property Input2 : TAuInput read FInput2 write SetInput2;
    (* Property: Mode
     This property sets the mode for the TAudioMixer.
     The possible values for this property are <amMix> and <amConcatenate>.
    *)
    property Mode : TAudioMixerMode read FMode write FMode;
    property Input2StartSample : Int64 read FInput2Start write FInput2Start;
    (*property Volume1:
      The volume of the first input (in the amMix mode) *)
    property Volume1 : Word read FVolume1 write FVolume1;
    (*property Volume2:
      The volume of the second input (in the amMix mode) *)
    property Volume2 : Word read FVolume2 write FVolume2;
  end;

implementation

constructor TAudioMixer.Create;
begin
  inherited Create(AOwner);
  FInput2Start := 0;
end;

  destructor TAudioMixer.Destroy;
  begin
    inherited Destroy;
  end;

  function TAudioMixer.GetBPS;
  begin
    if not Assigned(FInput1) then
    raise EAuException.Create('Input not assigned');
    Result := FInput1.BitsPerSample;
  end;

  function TAudioMixer.GetCh;
  begin
    if not Assigned(FInput1) then
    raise EAuException.Create('Input not assigned');
    Result:= FInput1.Channels;
  end;

  function TAudioMixer.GetSR;
  begin
    if not Assigned(FInput1) then
    raise EAuException.Create('Input not assigned');
    Result := FInput1.SampleRate;
  end;

  function _Min(X, Y : Int64) : Int64;
  begin
    if X < Y then Result := X
    else Result := Y;
  end;

  procedure TAudioMixer.InitInternal;
  var
    SamplesCount1, SamplesCount2  : Int64;
  begin
    Busy := True;
    FPosition := 0;
    SamplesCount := 0;
    EndOfInput1 := False;
    EndOfInput2 := False;
    if not Assigned(FInput1) then raise
      EAuException.Create('Input1 is not assigned');
    if not Assigned(FInput2) then raise
      EAuException.Create('Input2 is not assigned');
    FInput1.Init;
    FInput2.Init;
    BytesPerSample1 := (FInput1.BitsPerSample div 8);
    BytesPerSample2 := (FInput2.BitsPerSample div 8);
    SamplesCount1 := FInput1.Size div BytesPerSample1;
    if FMode = amMix then
    begin
      SamplesCount2 := FInput2.Size div BytesPerSample2 + FInput2Start;
      FSize := SamplesCount1 + SamplesCount2 - _Min(SamplesCount1, SamplesCount2)
    end else
    begin
      SamplesCount2 := FInput2.Size div BytesPerSample2;
      FSize := SamplesCount1 + SamplesCount2;
    end;
    FSize := FSize * BytesPerSample1;
    GetMem(InBuf1, BUF_SIZE * BytesPerSample1);
    GetMem(InBuf2, BUF_SIZE * BytesPerSample2);
    GetMem(FloatBuf1, BUF_SIZE * SizeOf(Single));
    GetMem(FloatBuf2, BUF_SIZE * SizeOf(Single));
  end;

  procedure TAudioMixer.FlushInternal;
  begin
    FInput1.Flush;
    FInput2.Flush;
    FreeMem(InBuf1, BUF_SIZE * BytesPerSample1);
    FreeMem(InBuf2, BUF_SIZE * BytesPerSample2);
    FreeMem(FloatBuf1, BUF_SIZE * SizeOf(Single));
    FreeMem(FloatBuf2, BUF_SIZE * SizeOf(Single));
    Busy := False;
  end;

  procedure TAudioMixer.GetDataInternal;
  var
    l : LongWord;
    i : Integer;
    Bytes1, Samples1 : LongWord;
    Bytes2, Samples2 : LongWord;
    SamplesReq : LongWord;
    v1, v2 : Single;
  begin
    if EndOfInput1 and EndOfInput2 then
    begin
      Bytes := 0;
      Buffer := nil;
      Exit;
    end;
    SamplesReq := BUF_SIZE;
    if Bytes div BytesPerSample1 < SamplesReq then SamplesReq := Bytes div BytesPerSample1;
    Bytes1 := SamplesReq * BytesPerSample1;
    Bytes2 := SamplesReq * BytesPerSample2;
    if FMode = amMix then
    begin
      v1 := FVolume1 / High(Word);
      v2 := FVolume2 / High(Word);
      FillChar(InBuf1^, Bytes1, 0);
      FillChar(FloatBuf1^, SamplesReq * SizeOf(Single), 0);
      FillChar(FloatBuf2^, SamplesReq * SizeOf(Single), 0);
      l := 0;
      if not EndOfInput1 then
       l := FInput1.FillBuffer(InBuf1, Bytes1, EndOfInput1);
      Samples1 := l div BytesPerSample1;
      Inc(SamplesCount, Samples1);
      FillChar(InBuf2^, Bytes2, 0);
      l := 0;
      if SamplesCount >= FInput2Start*FInput2.Channels then
        if not EndOfInput2 then
          l := FInput2.FillBuffer(InBuf2, Bytes2, EndOfInput2);
      Samples2 := l div BytesPerSample2;
      case BytesPerSample1 of
        1 : ByteToSingle(Pointer(InBuf1), FloatBuf1, BUF_SIZE);
        2 : SmallIntToSingle(Pointer(InBuf1), FloatBuf1, BUF_SIZE);
        3 : Int24ToSingle(Pointer(InBuf1), FloatBuf1, BUF_SIZE);
        4 : Int32ToSingle(Pointer(InBuf1), FloatBuf1, BUF_SIZE);
      end;
      case BytesPerSample2 of
        1 : ByteToSingle(Pointer(InBuf2), FloatBuf2, BUF_SIZE);
        2 : SmallIntToSingle(Pointer(InBuf2), FloatBuf2, BUF_SIZE);
        3 : Int24ToSingle(Pointer(InBuf2), FloatBuf2, BUF_SIZE);
        4 : Int32ToSingle(Pointer(InBuf2), FloatBuf2, BUF_SIZE);
      end;
      for i := 0 to BUF_SIZE - 1 do
        FloatBuf1[i] := (FloatBuf1[i]*v1 + FloatBuf2[i]*v2)/2;
      case BytesPerSample1 of
        1 : SingleToByte(FloatBuf1, Pointer(InBuf1), BUF_SIZE);
        2 : SingleToSmallInt(FloatBuf1, Pointer(InBuf1), BUF_SIZE);
        3 : SingleToInt24(FloatBuf1, Pointer(InBuf1), BUF_SIZE);
        4 : SingleToInt32(FloatBuf1, Pointer(InBuf1), BUF_SIZE);
      end;
      if Samples1 > Samples2 then Bytes := Samples1*BytesPerSample1
      else Bytes := Samples2*BytesPerSample1;
      Buffer := InBuf1;
    end else
    begin
      if not EndOfInput1 then
      begin
        l := FInput1.FillBuffer(InBuf1, Bytes1, EndOfInput1);
        Bytes := l;
        Buffer := InBuf1;
        if l <> 0 then Exit;
      end;
      if not EndOfInput2 then
      begin
        l := FInput2.FillBuffer(InBuf2, Bytes2, EndOfInput2);
        Samples2 := l div BytesPerSample2;
        case BytesPerSample2 of
          1 : ByteToSingle(Pointer(InBuf2), FloatBuf2, BUF_SIZE);
          2 : SmallIntToSingle(Pointer(InBuf2), FloatBuf2, BUF_SIZE);
          3 : Int24ToSingle(Pointer(InBuf2), FloatBuf2, BUF_SIZE);
          4 : Int32ToSingle(Pointer(InBuf2), FloatBuf2, BUF_SIZE);
        end;
        case BytesPerSample1 of
          1 : SingleToByte(FloatBuf2, Pointer(InBuf1), BUF_SIZE);
          2 : SingleToSmallInt(FloatBuf2, Pointer(InBuf1), BUF_SIZE);
          3 : SingleToInt24(FloatBuf2, Pointer(InBuf1), BUF_SIZE);
          4 : SingleToInt32(FloatBuf2, Pointer(InBuf1), BUF_SIZE);
        end;
        Bytes := Samples2*BytesPerSample1;
        Buffer := InBuf1;
      end;
    end;
  end;

  procedure TAudioMixer.SetInput1;
  begin
    if Busy then
    raise EAuException.Create('The component is busy.');
    FInput1 := aInput;
  end;

  procedure TAudioMixer.SetInput2;
  begin
    if Busy then
    raise EAuException.Create('The component is busy.');
    FInput2 := aInput;
  end;

end.
