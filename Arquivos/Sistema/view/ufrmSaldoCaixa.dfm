object frmSaldoCaixa: TfrmSaldoCaixa
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Saldo do Caixa'
  ClientHeight = 289
  ClientWidth = 541
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnDestroy = FormDestroy
  OnShortCut = FormShortCut
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 24
    Top = 24
    Width = 62
    Height = 14
    Caption = 'Data Inicial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 79
    Width = 61
    Height = 21
    Caption = 'Per'#237'odo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 143
    Width = 103
    Height = 21
    Caption = 'Entradas (+):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 170
    Width = 85
    Height = 21
    Caption = 'Sa'#237'das (+):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 242
    Width = 46
    Height = 21
    Caption = 'Saldo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 8
    Top = 106
    Width = 513
    Height = 17
    Shape = bsTopLine
  end
  object Bevel2: TBevel
    Left = 8
    Top = 210
    Width = 513
    Height = 17
    Shape = bsTopLine
  end
  object lblEntradas: TLabel
    Left = 164
    Top = 143
    Width = 5
    Height = 21
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblSaidas: TLabel
    Left = 165
    Top = 170
    Width = 5
    Height = 21
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblSaldo: TLabel
    Left = 164
    Top = 233
    Width = 5
    Height = 21
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 513
    Height = 65
    Caption = 'Filtrar'
    TabOrder = 0
    object Label2: TLabel
      Left = 216
      Top = 16
      Width = 56
      Height = 14
      Caption = 'Data Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btn_filtrar: TButton
      Left = 416
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 0
      OnClick = btn_filtrarClick
    end
  end
  object txt_dt_inicial: TDateTimePicker
    Left = 92
    Top = 24
    Width = 110
    Height = 21
    Date = 45022.648609409720000000
    Time = 45022.648609409720000000
    TabOrder = 1
  end
  object txt_dt_final: TDateTimePicker
    Left = 286
    Top = 24
    Width = 110
    Height = 21
    Date = 45022.648609409720000000
    Time = 45022.648609409720000000
    TabOrder = 2
  end
end
