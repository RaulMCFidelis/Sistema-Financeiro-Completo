object frmBaixarPagar: TfrmBaixarPagar
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Baixar Documento'
  ClientHeight = 387
  ClientWidth = 497
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 457
    Height = 185
    Caption = 'Documento'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 58
      Height = 13
      Caption = 'Documento:'
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 39
      Height = 13
      Caption = 'Parcela:'
    end
    object Label3: TLabel
      Left = 16
      Top = 88
      Width = 59
      Height = 13
      Caption = 'Vencimento:'
    end
    object Label4: TLabel
      Left = 16
      Top = 120
      Width = 54
      Height = 13
      Caption = 'Vlr Parcela:'
    end
    object Label5: TLabel
      Left = 16
      Top = 152
      Width = 56
      Height = 13
      Caption = 'Vlr Abatido:'
    end
    object lb_documento: TLabel
      Left = 88
      Top = 24
      Width = 68
      Height = 13
      Caption = 'Documento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_parcela: TLabel
      Left = 88
      Top = 56
      Width = 68
      Height = 13
      Caption = 'Documento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_vencimento: TLabel
      Left = 88
      Top = 88
      Width = 68
      Height = 13
      Caption = 'Documento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_vlrparcela: TLabel
      Left = 88
      Top = 120
      Width = 68
      Height = 13
      Caption = 'Documento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_vlrabatido: TLabel
      Left = 88
      Top = 152
      Width = 68
      Height = 13
      Caption = 'Documento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 223
    Width = 457
    Height = 146
    Caption = 'Detalhes'
    TabOrder = 1
    object Label6: TLabel
      Left = 18
      Top = 29
      Width = 67
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object Label7: TLabel
      Left = 18
      Top = 77
      Width = 28
      Height = 13
      Caption = 'Valor:'
    end
    object txt_observ: TEdit
      Left = 91
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object btn_baixar: TButton
      Left = 91
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Baixar'
      TabOrder = 1
      OnClick = btn_baixarClick
    end
    object txt_valor: TtpEdit
      Left = 91
      Top = 72
      Width = 121
      Height = 21
      Alignment = taRightJustify
      CharCase = ecUpperCase
      TabOrder = 2
      Text = '0,00'
      Caracter = tcReal
    end
  end
end
