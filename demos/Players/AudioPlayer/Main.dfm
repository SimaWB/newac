object Form1: TForm1
  Left = 246
  Top = 304
  Caption = 'Audio Player'
  ClientHeight = 407
  ClientWidth = 652
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    652
    407)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 120
    Top = 40
    Width = 3
    Height = 13
  end
  object SpeedButton1: TSpeedButton
    Left = 8
    Top = 8
    Width = 106
    Height = 25
    Caption = 'Add To PlayList'
    Flat = True
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      0800000000000001000000000000000000000001000000010000000000000101
      0100020202000303030004040400050505000606060007070700080808000909
      09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
      1100121212001313130014141400151515001616160017171700181818001919
      19001A1A1A001B1B1B001C1C1C00231D1B002A1E1A00301E1900361F18003C20
      1700412016004921140051211200572110005C210F0061210D0065210C006920
      0A006E20090072200700771F05007B1F04007E1F04007F1E0300811E0200811E
      0200811E0200811E0100811F0200801F0200801F02007F2002007E2002007B21
      02007623020070250200672802005D2C02005030010044340100343A01002140
      0100144500000E46000009480000074800000549000003490000034A0000024A
      0000024A0000024A0000014A0000024A0000024A0000044A0000064A0000094A
      0000115105001F570900315C0C00475E0E005A5F0F006C5F0E007F5C0C009358
      0900A1520500B04B0000B44B0000B84B0000BA4B0000BB4B0000BC4B0000BC4B
      0000BC4B0000BC4B0000BC4B0000BC4B0000BC4B0000BC4B0000BC4B0000BC4C
      0000BC4C0000BC4C0000BC4C0000BC4C0100BB4C0200BA4D0300B94D0500B74E
      0800B5500B00B2511000AE541700AA561E00A45A28009F5E310099623D009268
      4B008D6C57008A705E008773650084776D00817B76007F7F7F00808080008181
      8100828282008383830084848400858585008686860087878700888888008989
      89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
      9100929292009393930094949400959595009696960097979700989898009999
      99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
      A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
      A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
      B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
      B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
      C100C5C4C300CAC8C500CECBC700D2CEC900D5D1CB00DBD5CE00E2DBD300E9E2
      D800F1E9E000F6EFE500FAF3E900FCF5EC00FDF7EE00FEF8F000FEF8F100FEF9
      F200FEF8F000FEF7ED00FEF4E900FEF3E500FEF1E300FEF0E000FEEFDF00FEEE
      DC00FEECD900FEEBD500FEEAD300FEE9D100FEE8CF00FEE6CD00FEE5CA00FEE4
      C700FEE3C500FEE0C600FEDBC600FED3C800FEC4CC00FEB3D000FE95D600FE79
      DC00FE53E600FE32F000FE18F700FE02FE00FE00FE00FE00FE00FE00FE00FE00
      FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
      FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00F6F6F6F6F6F6
      F6F6F6F6F6F6F6F6F6F66C6C6C6C6C6C6CF6F6F6F6F6F6F6F6F6D1D3D7DDE2E3
      6CF6F6F6F6F6F6F6F6F6D1D1D5DADFE36CF6F6F6F6F6F6F6F6F6D1D1D3D7DCE2
      6CF6F6F6F6F6F6F6F6F63333333333336CF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
      F6F64CF66C3333333333F6F6F6F6F6F6F64C4CF66CD3D7DDE2E3F6F6F6F6F6F6
      4C7B4CF66CD1D5DADFE3F6F6F6F6F6F6F64C4CF66CD1D3D7DCE2F6F6F6F6F6F6
      F6F64CF66C33333333333333333333336CF6F6F6F6F6F6F6F6F6D1D3D7DDE2E3
      6CF6F6F6F6F6F6F6F6F6D1D1D5DADFE36CF6F6F6F6F6F6F6F6F6D1D1D3D7DCE2
      6CF6F6F6F6F6F6F6F6F66C6C6C6C6C6C6CF6F6F6F6F6F6F6F6F6}
    OnClick = AddtoPLButtonClick
  end
  object PlayButton: TSpeedButton
    Left = 120
    Top = 8
    Width = 65
    Height = 25
    Caption = 'Play'
    Flat = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF6D3327853C1395440D96450D873D12703425FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF70372A70372ACD7727E8AD70F3
      CCA1F4CDA3E9B176D07C2C6F35296F3529FF00FFFF00FFFF00FFFF00FFFF00FF
      86411DC0620BF0C292FFFEFAFDFAF6F5E3D1F5E2D0FDF8F4FFFFFDF2C99EC669
      117B3A21FF00FFFF00FFFF00FF8C451CC16107F7DBBDFFFEFEE0A46BCE6D13C7
      5C00C96100CE6E12DE9D5FFDFAF7FAE5CCC6680D6F3528FF00FFFF00FF8C451C
      ECBD8BFFFFFFDA8F43C65600FFFFFFDC9751C75B00CA6200C75B00D58333FDFA
      F8F3CB9F6F3528FF00FFA04D10CE7721FFFDFBE8B684D06B04D06B07FFFFFFFF
      FFFFE1A870C95E00CA6300C75B00DFA061FFFFFFCF7B28703525AF5507E5AA6F
      FFFFFFDD8F3FDA8128D87B1EFFFFFFFFFFFFFFFFFFEAC198CC6708C95F00CE6E
      0DFDFAF6E9B175703525BB5F0AF0CAA1FCF4EDE19343E29242DF8A34FFFFFFFF
      FFFFFFFFFFFFFFFFF3DEC6CF7017C95F00F5E3D0F3CEA4703525C1650FF2CDA6
      FDF7F0E9A158E9A056E6994AFFFFFFFFFFFFFFFFFFFFFFFFEBC39BCD6A0DC961
      00F6E6D4F3CCA1703525C1640DEEBC88FFFFFFF1B87CF0AE69EEA75FFFFFFFFF
      FFFFFFFFFFE7B17ACE6902C96100CF7111FEFCFAE7AC6D703525BF6006E5A059
      FFFDFAFBE0C4F8BA7BF4B471FFFFFFFFFFFFE8AB6DD87B1DD27414C85C00E2AA
      71FFFFFECC7520703525FF00FFC36204FAD9B8FFFFFFFEDCB8F7B877FFFFFFEB
      AD6DE08D37DA8228D06B05DB924AFFFFFFEFC08C6B342CFF00FFFF00FFC36204
      E79E55FEEBD7FFFFFFFBDFC3F1B578E89F55E29445DE9142E8B786FFFFFFF6D8
      B7BE5F066B342CFF00FFFF00FFFF00FFC6670CE69E55FAD9B6FFFBF6FFFFFFFE
      F8F2FDF6EFFFFFFFFEF9F2ECB884BE5F09753826FF00FFFF00FFFF00FFFF00FF
      FF00FFC06005C06005E49F5AEEBA86F2CAA0F0C599E4A768CC741E783A27783A
      27FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB65C0AB86012B9
      6113B25A0FA24F0E8E451AFF00FFFF00FFFF00FFFF00FFFF00FF}
    OnClick = PlayButtonClick
  end
  object SpeedButton3: TSpeedButton
    Left = 191
    Top = 8
    Width = 65
    Height = 25
    Caption = 'Stop'
    Flat = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF6D3327853C1395440D96450D873D12703425FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF70372A70372ACD7727E8AD70F3
      CCA1F4CDA3E9B176D07C2C6F35296F3529FF00FFFF00FFFF00FFFF00FFFF00FF
      86411DC0620BF0C292FFFEFAFEFAF7F5E3D1F5E2D0FDF8F4FFFFFDF2C99EC669
      117B3A21FF00FFFF00FFFF00FF8C451CC16107F7DBBDFFFEFEE0A46ACE6F15C9
      6100C96100CE6E12DE9D5FFDFAF7FAE5CCC6680D6F3528FF00FFFF00FF8C451C
      ECBD8BFFFFFFDA8F44C85C00C95E00C85E00C85E00C85D00C75B00D58333FDFA
      F8F3CB9F6F3528FF00FFA04D10CE7721FFFDFBE8B684D06B05D16F0BDB9248EC
      C7A1ECC8A3DA934CC96000C75A00DFA061FFFFFFCF7B28703525AF5507E5AA6F
      FFFFFFDD8F3FD87D20E29D58FEFAF7FFFFFFFFFFFFFFFEFDDB944EC85C00CE6E
      0DFDFAF6E9B175873D11BB5F0AF0CAA1FCF4EDE19343E08C36F3D3B2FFFFFFFF
      FFFFFFFFFFFFFFFFEECDACC85E00CA6100F5E3D0F3CEA495440CC1650FF2CDA6
      FDF7F0E9A158E89B4DF5D7B8FFFFFFFFFFFFFFFFFFFFFFFFEECCAAC85E00CA62
      00F6E6D4F3CCA194440CC1640DEEBC88FFFFFFF1B87CEFAB64F2BC85FEF9F4FF
      FFFFFFFFFFFDFAF7DC964DC85D00CF7010FEFCFAE7AC6D853B13BF6006E5A059
      FFFDFAFBE0C4F8BB7BF4B574F2BD85F6D7B7F3D2B1E2A05DD16F0BC85C00E2AA
      71FFFFFECC75206D3428FF00FFC36204FAD9B8FFFFFFFEDCB8F8BA7BF0AB64E8
      9B4DE08C37D97D1FD06B05DB924AFFFFFFEFC08C6B342CFF00FFFF00FFC36204
      E79E55FEEBD7FFFFFFFBDFC3F1B87DE9A159E29444DE9142E8B786FFFFFFF6D8
      B7BE5F066B342CFF00FFFF00FFFF00FFC6670CE69E55FAD9B6FFFBF6FFFFFFFE
      F8F2FDF6EFFFFFFFFEF9F2ECB884BE5F09753826FF00FFFF00FFFF00FFFF00FF
      FF00FFC06005C06005E49F5AEEBA86F2CAA0F0C599E4A768CC741E783A27783A
      27FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB65C0AB86012B9
      6113B25A0FA24F0E8E451AFF00FFFF00FFFF00FFFF00FFFF00FF}
    OnClick = StopButtonClick
  end
  object SpeedButton4: TSpeedButton
    Left = 262
    Top = 8
    Width = 65
    Height = 25
    Caption = 'Pause'
    Flat = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF95440D95440D95440D95440D95440D95440DFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF70372A70372ACD7727E8AD70F3
      CCA1F4CDA3E9B176D07C2C6F35296F3529FF00FFFF00FFFF00FFFF00FFFF00FF
      86411DC0620BF0C292FFFEFAFEFAF7F5E3D1F5E2D0FDF8F4FFFFFDF2C99EC669
      117B3A21FF00FFFF00FFFF00FF8C451CC16107F7DBBDFFFFFEDE9F61CB6606C8
      5E00C85E00CA6403DC9755FDFBF7FAE5CCC6680D6F3528FF00FFFF00FF8C451C
      ECBD8BFFFFFFD88B3FD68539E1A76CD27B23D1771CE1A76DD78840D48032FDFA
      F7F3CB9F6F3528FF00FFC1650FCE7721FFFDFBE8B684CD6300FFFFFFFFFFFFDE
      9E5DDA9249FFFFFFFFFFFFC55300DFA060FFFFFFCF7B2894440CC1650FE5AA6F
      FFFFFFDD8F3FD87B1DFFFFFFFFFFFFE2A464DD9750FFFFFFFFFFFFC85C00CE6E
      0DFDFAF6E9B17594440CC1650FF0CAA1FCF4EDE19343E08D38FFFFFFFFFFFFE6
      AB70E2A05DFFFFFFFFFFFFC95F00CA6100F5E3D0F3CEA494440CC1650FF2CDA6
      FDF7F0E9A158E89C4EFFFFFFFFFFFFE9B27AE5A768FFFFFFFFFFFFC95F00CA62
      00F6E6D4F3CCA194440CC1650FEEBC88FFFFFFF1B77CEFAA62FFFFFFFFFFFFEC
      B883E8AD71FFFFFFFFFFFFC85D00CF7010FEFCFAE7AC6D94440CC1650FE5A059
      FFFDFAFBE0C4F7B674FFFFFFFFFFFFEFBD8BEBB279FFFFFFFFFFFFC65600E2AA
      71FFFFFECC752094440CFF00FFC36204FAD9B8FFFFFFFEDBB6F9C794F5C798EB
      A967E59C52E6A96BD98837DA9148FFFFFFEFC08C6B342CFF00FFFF00FFC36204
      E79E55FEEBD7FFFFFFFBDDBFF1B475E8A056E29242DC8A37E7B37EFFFFFFF6D8
      B7BE5F066B342CFF00FFFF00FFFF00FFC6670CE69E55FAD9B6FFFBF6FFFFFFFE
      F8F2FDF6EFFFFFFFFEF9F2ECB884BE5F09753826FF00FFFF00FFFF00FFFF00FF
      FF00FFC06005C06005E49F5AEEBA86F2CAA0F0C599E4A768CC741E783A27783A
      27FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB96113B96113B9
      6113B96113B96113B96113FF00FFFF00FFFF00FFFF00FFFF00FF}
    OnClick = Button1Click
  end
  object SpeedButton5: TSpeedButton
    Left = 333
    Top = 8
    Width = 44
    Height = 25
    Flat = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF95440D853C136D3327703425873D1296450DFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA04B0C70372ACD7727E8AD70F3
      CCA1F4CDA3E9B176D07C2C6F3529A64F0AFF00FFFF00FFFF00FFFF00FFFF00FF
      86411DC0620BF0C292FFFEFAFEFAF7F5E3D1F5E2D0FDF8F4FFFFFDF2C99EC669
      117B3A21FF00FFFF00FFFF00FFAF5201C16107F7DBBDFEFDFBE0A369CE6F15C9
      6100C96000CD6D10DE9D5FFDFAF7FAE5CCC6680DA64E06FF00FFFF00FF8C451C
      ECBD8BFFFFFFDC964FC75900CA6200CA6400CD6B08CA6100C65800D58433FDFA
      F8F3CB9F6F3528FF00FFBB5F0ACE7721FFFDFBE6AF78E2A363EBC196CF6E0ACA
      6100DB944CECC7A2CC6808C55400DFA161FFFFFFCF7B2895440CAF5507E5AA6F
      FFFFFFDB8833E9B580FFFFFFF2D4B5D47719DC954CFFFFFFF2D9C0D0731ECB66
      04FDFAF7E9B175873D11A04D10F0CAA1FCF4EDE08C38EEBF8EFFFFFFFFFFFFF7
      E6D5E8B581FFFEFEFFFFFFFAF0E5D68537F4DEC8F3CEA4703525AF5507F2CDA6
      FDF7F0E79C4EF2C79BFFFFFFFFFFFFF6DBC1E9B580FFFFFFFFFFFFF4DEC8D27B
      27F5E2CDF3CCA16D3428BB5F0AEEBC88FFFFFFF0B373F6D0A8FFFFFFF5D4B1E2
      903CE8AC6FFFFFFFEDC7A1CB6508CD6A09FEFCFBE7AC6D853B13BF6006E5A059
      FFFDFAFBDDBEFBD2A8F9D5B0EEA85FE79A4BEAB074EBBE90D16F0BC75900E2AA
      71FFFFFE6B342C94440CFF00FFC36204FAD9B8FFFFFFFEDCB8F7B775F0AE69E9
      A156E29242D87D20CF6A04DB924AFFFFFFEFC08CA04A08FF00FFFF00FFD57F2B
      E79E55FEEBD7FFFFFFFBDFC2F1B87DE9A259E29444DE9142E8B786FFFFFFF6D8
      B7BE5F06A04A08FF00FFFF00FFFF00FFC6670CE69E55FAD9B6FFFBF6FFFFFFFE
      F8F2FDF6EFFFFFFFFEF9F2ECB884BE5F09753826FF00FFFF00FFFF00FFFF00FF
      FF00FFD27E2CC06005E49F5AEEBA86F2CAA0F0C599E4A768CC741E8E451AA64D
      06FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB96113A24F0E8E
      451A8E451AA24F0EB25A0FFF00FFFF00FFFF00FFFF00FFFF00FF}
    OnClick = ForwardButtonClick
  end
  object SpeedButton6: TSpeedButton
    Left = 383
    Top = 8
    Width = 42
    Height = 25
    Flat = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF6D3327853C1395440D96450D873D12703425FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF70372A70372ACD7727E8AD70F3
      CCA1F4CDA3E9B176D07C2C6F35296F3529FF00FFFF00FFFF00FFFF00FFFF00FF
      86411DC0620BF0C292FFFEFAFEFAF7F5E3D1F5E2D0FDF8F4FFFFFDF2C99EC669
      117B3A21FF00FFFF00FFFF00FF8C451CC16107F7DBBDFFFEFEE0A46BCE6E13C9
      6000C96100CE6E12DE9C5EFDF9F4FAE5CCC6680D6F3528FF00FFFF00FF8C451C
      ECBD8BFFFFFFDA8F44C75900CA6300CD6C09CB6500C96100C65700D88B3EFDFA
      F6F3CB9F6F3528FF00FFA04D10CE7721FFFDFBE8B784CE6600D3781AEFCDABDC
      9751C85C00CA6302E9BF93DD9A56DC9853FFFFFFCF7B28703525AF5507E5AA6F
      FFFFFFDC8935DE9041F7E3CFFFFFFFDF9952D17218EFD0B1FFFFFFE0A366CB65
      01FDFAF6E9B175873D11BB5F0AF0CAA1FCF1E6E8AD71FCF6EFFFFFFFFFFEFEEA
      BB8BF8EAD9FFFFFFFFFFFFE0A468C75900F5E3D0F3CEA495440CC1650FF2CDA6
      FDF4ECEDB175FBECDCFFFFFFFFFFFFEBBA87F4D9BEFFFFFFFFFFFFE0A467C75A
      00F6E6D4F3CCA194440CC1640DEEBC88FFFFFFF0B475F0AE6AFAE1C8FFFFFFEB
      B278DC842AEDC398FFFFFFE1A568CC6704FEFCFAE7AC6D853B13BF6006E5A059
      FFFDFAFBE0C4F7B978F4B573F8D7B6EDB780E08C38D77B1DE6AF78D99147E0A3
      66FFFFFECC75206D3428FF00FFC36204FAD9B8FFFFFFFEDCB8F8BA7AF0AB64E9
      A157E29241DA8127CE6600DB9249FFFFFFEFC08C6B342CFF00FFFF00FFC36204
      E79E55FEEBD7FFFFFFFBDFC3F1B87CE9A159E29445DE9142E8B786FFFFFFF6D8
      B7BE5F066B342CFF00FFFF00FFFF00FFC6670CE69E55FAD9B6FFFBF6FFFFFFFE
      F8F2FDF6EFFFFFFFFEF9F2ECB884BE5F09753826FF00FFFF00FFFF00FFFF00FF
      FF00FFC06005C06005E49F5AEEBA86F2CAA0F0C599E4A768CC741E783A27783A
      27FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB65C0AB86012B9
      6113B25A0FA24F0E8E451AFF00FFFF00FFFF00FFFF00FFFF00FF}
    OnClick = BackwardButtonClick
  end
  object SpeedButton7: TSpeedButton
    Left = 431
    Top = 8
    Width = 42
    Height = 25
    Flat = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF6D3327853C1395440D96450D873D12703425FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF70372AA04B0CCD7727E8AD70F3
      CCA1F4CDA3E9B176D07C2CA64F0A6F3529FF00FFFF00FFFF00FFFF00FFFF00FF
      86411DC0620BF0C292FFFEFAFEFAF7F5E3D1F5E2D0FDF8F4FFFFFDF2C99EC669
      117B3A21FF00FFFF00FFFF00FF8C451CC16107F7DBBDFFFEFEE0A369CE6F15C9
      6100C96100CC6A0CDB9653FDFAF7FAE5CCC6680D6F3528FF00FFFF00FFAF5201
      ECBD8BFFFFFFDA8F45C85B00C95E00CB6500CA6200D37D27D98E4AD58534FDFA
      F7F3CB9FA64E06FF00FFA04D10CE7721FFFDFBE8B684CE6700FFFFFFDD9852CB
      6200C85D00E4AE79FFFFFFC85E00DE9E5EFFFFFFCF7B28703525AF5507E5AA6F
      FFFFFFDD8F3FD87B1CFFFFFFFFFFFFE4AA6FCB6000E3AB73FFFFFFCB6601CD6C
      0AFDFAF6E9B175873D11BB5F0AF0CAA1FCF4EDE19343E08D38FFFFFFFFFFFFFF
      FFFFEBC094E7B582FFFFFFCC6804C96000F5E3D0F3CEA495440CC1650FF2CDA6
      FDF7F0E9A158E89C4EFFFFFFFFFFFFFFFFFFF1D2B2EBBC8EFFFFFFCC6804C961
      00F6E6D4F3CCA194440CC1640DEEBC88FFFFFFF1B77CEFA961FFFFFFFFFFFFF1
      C99FDB8125EAB987FFFFFFCB6600CE6F0EFEFCFAE7AC6D853B13BF6006E5A059
      FFFDFAFBE0C4F7B876FFFFFFF4CA9EE69949DF8832EDC093FFFFFFC95F00E2A9
      6EFFFFFECC75206D3428FF00FFD57F2BFAD9B8FFFFFFFEDCB9F8BB7DF0AB63E9
      A056E1903DE09447DC9146DB934BFFFFFFEFC08CA04A08FF00FFFF00FFC36204
      E79E55FEEBD7FFFFFFFBDFC2F1B87DE9A259E29445DD8E3DE6B17CFFFFFFF6D8
      B7BE5F066B342CFF00FFFF00FFFF00FFC6670CE69E55FAD9B6FFFBF6FFFFFFFE
      F8F2FDF6EFFFFFFFFEF9F2ECB884BE5F09753826FF00FFFF00FFFF00FFFF00FF
      FF00FFC06005D27E2CE49F5AEEBA86F2CAA0F0C599E4A768CC741EA64D06783A
      27FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB65C0AB86012B9
      6113B25A0FA24F0E8E451AFF00FFFF00FFFF00FFFF00FFFF00FF}
    OnClick = SkipButtonClick
  end
  object SpeedButton8: TSpeedButton
    Left = 479
    Top = 8
    Width = 157
    Height = 25
    Caption = 'Remove from Playlist'
    Flat = True
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      0800000000000001000000000000000000000001000000010000000000000101
      0100020202000303030004040400050505000606060007070700080808000909
      09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
      1100121212001313130014141400151515001616160017171700181818001919
      19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020001F25
      1F001D2A1D001C2E1C001B331B001A371A00183D18001542150013471300114B
      11000F500F000D540D000A570A00095A0900075D0700065E0600046004000461
      040003620300046104000461040005600500065F0600085E08000A5D0A000C5B
      0C000F5A0F0012581200155615001A541A001E521E0023502300284D28002F4B
      2F00334A3300374937003B483B00404740004646460047474700484848004949
      49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
      5100525252005353530054545400555555005656560057575700585858005959
      59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
      6100626262006363630064646400656565006666660067676700686868006969
      69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
      7100727272007373730074747400757575007676760077777700787878007979
      79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
      8100828282008383830084848400858585008686860087878700888888008989
      89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
      9100929292009393930094949400959595009696960097979700989898009999
      99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
      A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
      A900AAAAAA00ABABAB00B1B0B000BFBDBC00CECCCA00DEDCD900EBE9E600F5F2
      EF00FAF7F400FDFAF600FDFBF800FEFBF800FEFCF900FEFCF900FEFCF900FEFB
      F800FEFAF600FEF9F300FEF8F000FEF7EE00FEF6ED00FEF6EB00FEF5EA00FEF4
      E800FEF3E600FEF2E400FEF1E100FEF0DF00FEEEDC00FEEDDA00FEECD800FEEC
      D700FEECD600FEEBD400FEEAD300FDE9D100FDE8CF00FDE7CD00FCE6CB00FAE0
      C300F7D8B600F1C99E00E7AF7500DE985100D5812D00D0761B00CE6E0F00CC69
      0700CB670300CA660200C9640200C7630100C6610100C25D0000BD580000B852
      0000B04A0000A8420000A23C00009F3900009D3700009B3500009A3400009B34
      02009E330900A3301500AC2B2C00B9244E00C81C7400D9139F00E80BC600F803
      ED00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
      FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00F8F8F8F8F8F8
      F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8DADADADADADA
      DADADAF8F8F8F8F8F8F8B7B9BCC1C4C7CCCFDAF8F8F8F8F8F8F8B7B6BBBEC3C6
      CBCFDAF8F8F8F8F8F8F8B7B7BABDC2C5C9CDDAF8F8F8F8F8F8F8E8E8E8E8E8E8
      E8E8E8E8E8DAF832F8F8B7B6BABCC0C3C5C8CCCFD0DAF83232F8B7B7BABBBEC2
      C4C7CBCED0DAF8329A32B7B7B9BBBDC1C4C6CBCDCFDAF83232F8E8E8E8E8E8E8
      E8E8E8E8E8DAF832F8F8B7B7BABDC3C6CBCFDAF8F8F8F8F8F8F8B7B7B9BCC1C5
      C9CEDAF8F8F8F8F8F8F8B7B7B7BABEC3C7CBDAF8F8F8F8F8F8F8DADADADADADA
      DADADAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8}
    OnClick = Button2Click
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 265
    Width = 652
    Height = 17
    Align = alBottom
    Smooth = True
    BarColor = clBlue
    BackgroundColor = clMedGray
    Step = 2
    TabOrder = 0
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 38
    Width = 49
    Height = 17
    Caption = 'Loop'
    TabOrder = 1
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 388
    Width = 652
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object ListBox1: TListBox
    Left = 0
    Top = 299
    Width = 652
    Height = 89
    Align = alBottom
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MultiSelect = True
    ParentFont = False
    TabOrder = 3
    OnClick = ListBox1Click
    OnKeyDown = ListBox1KeyDown
  end
  object Panel1: TPanel
    Left = 0
    Top = 282
    Width = 652
    Height = 17
    Align = alBottom
    Color = clSilver
    ParentBackground = False
    TabOrder = 4
  end
  object Memo1: TMemo
    Left = 2
    Top = 60
    Width = 427
    Height = 199
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = 3627321
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object Panel2: TPanel
    Left = 435
    Top = 64
    Width = 211
    Height = 195
    Anchors = [akTop, akRight, akBottom]
    BevelOuter = bvNone
    Caption = 'Panel2'
    Color = clMaroon
    ParentBackground = False
    TabOrder = 6
    DesignSize = (
      211
      195)
    object ProgressBar2: TProgressBar
      Left = 16
      Top = 16
      Width = 17
      Height = 173
      Anchors = [akLeft, akTop, akBottom]
      Orientation = pbVertical
      BarColor = clAqua
      BackgroundColor = clMaroon
      TabOrder = 0
    end
    object ProgressBar3: TProgressBar
      Left = 39
      Top = 16
      Width = 17
      Height = 173
      Anchors = [akLeft, akTop, akBottom]
      Orientation = pbVertical
      BarColor = clAqua
      BackgroundColor = clMaroon
      TabOrder = 1
    end
    object ProgressBar4: TProgressBar
      Left = 62
      Top = 16
      Width = 17
      Height = 173
      Anchors = [akLeft, akTop, akBottom]
      Orientation = pbVertical
      BarColor = clLime
      BackgroundColor = clMaroon
      TabOrder = 2
    end
    object ProgressBar5: TProgressBar
      Left = 85
      Top = 16
      Width = 17
      Height = 173
      Anchors = [akLeft, akTop, akBottom]
      Orientation = pbVertical
      BarColor = clLime
      BackgroundColor = clMaroon
      TabOrder = 3
    end
    object ProgressBar6: TProgressBar
      Left = 108
      Top = 16
      Width = 17
      Height = 173
      Anchors = [akLeft, akTop, akBottom]
      Orientation = pbVertical
      BarColor = clLime
      BackgroundColor = clMaroon
      TabOrder = 4
    end
    object ProgressBar7: TProgressBar
      Left = 131
      Top = 16
      Width = 17
      Height = 173
      Anchors = [akLeft, akTop, akBottom]
      Orientation = pbVertical
      BarColor = clLime
      BackgroundColor = clMaroon
      TabOrder = 5
    end
    object ProgressBar8: TProgressBar
      Left = 154
      Top = 16
      Width = 17
      Height = 173
      Anchors = [akLeft, akTop, akBottom]
      Orientation = pbVertical
      BarColor = clAqua
      BackgroundColor = clMaroon
      TabOrder = 6
    end
    object ProgressBar9: TProgressBar
      Left = 177
      Top = 16
      Width = 17
      Height = 173
      Anchors = [akLeft, akTop, akBottom]
      Orientation = pbVertical
      BarColor = clAqua
      BackgroundColor = clMaroon
      TabOrder = 7
    end
  end
  object VorbisIn1: TVorbisIn
    FileName = 'D:\Program Files\Borland\Delphi6\Projects\mozart.ogg'
    Loop = False
    EndSample = -1
    Left = 64
    Top = 120
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'All files|*.*|Ogg Vorbis files|*.ogg|MP3 files|*.mp3|FLAC files|' +
      '*.flac|Monkey Audio|*.ape|Wavpack|*.wv|Wave files|*.wav|MPEG 4 A' +
      'udio files|*.m4a'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 392
    Top = 160
  end
  object WaveIn1: TWaveIn
    Loop = False
    EndSample = -1
    Left = 120
    Top = 120
  end
  object FLACIn1: TFLACIn
    Loop = False
    CheckMD5Signature = False
    EndSample = -1
    Left = 240
    Top = 128
  end
  object MP3In1: TMP3In
    Loop = False
    EndSample = -1
    HighPrecision = False
    OutputChannels = cnMonoOrStereo
    Left = 288
    Top = 128
  end
  object MACIn1: TMACIn
    Loop = False
    EndSample = -1
    Left = 176
    Top = 128
  end
  object WVIn1: TWVIn
    Loop = False
    EndSample = -1
    Left = 8
    Top = 120
  end
  object SpectrumIndicator1: TSpectrumIndicator
    Input = AudioCache1
    Interval = 50
    OnGainData = SpectrumIndicator1GainData
    Left = 296
    Top = 160
  end
  object DSAudioOut1: TDSAudioOut
    Input = SpectrumIndicator1
    OnDone = AudioOut1Done
    OnProgress = AudioOut1Progress
    DeviceNumber = 0
    Calibrate = True
    Latency = 50
    SpeedFactor = 1.000000000000000000
    Left = 344
    Top = 160
  end
  object MP4In1: TMP4In
    Loop = False
    Left = 328
    Top = 128
  end
  object AudioCache1: TAudioCache
    Left = 208
    Top = 160
  end
end
