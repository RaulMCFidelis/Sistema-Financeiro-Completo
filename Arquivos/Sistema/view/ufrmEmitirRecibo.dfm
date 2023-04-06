object frmEmitirRecibo: TfrmEmitirRecibo
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Emitir Recibo'
  ClientHeight = 428
  ClientWidth = 605
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 569
    Height = 330
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 63
      Width = 74
      Height = 13
      Caption = 'Recebemos de:'
    end
    object Label2: TLabel
      Left = 12
      Top = 99
      Width = 62
      Height = 13
      Caption = 'Referente a:'
    end
    object Label3: TLabel
      Left = 12
      Top = 129
      Width = 67
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object Label4: TLabel
      Left = 16
      Top = 156
      Width = 46
      Height = 13
      Caption = 'Emitente:'
    end
    object Label5: TLabel
      Left = 17
      Top = 186
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object Label6: TLabel
      Left = 16
      Top = 221
      Width = 37
      Height = 13
      Caption = 'Cidade:'
    end
    object Label7: TLabel
      Left = 16
      Top = 240
      Width = 58
      Height = 13
      Caption = 'CPF / CNPJ:'
    end
    object Label8: TLabel
      Left = 16
      Top = 275
      Width = 42
      Height = 13
      Caption = 'Emiss'#227'o:'
    end
    object Label9: TLabel
      Left = 17
      Top = 294
      Width = 28
      Height = 13
      Caption = 'Valor:'
    end
    object rdg_recibo: TRadioGroup
      Left = 16
      Top = 3
      Width = 217
      Height = 54
      Caption = 'Tipo de Recibo'
      Columns = 2
      Items.Strings = (
        'Recebimento'
        'Pagamento')
      TabOrder = 0
    end
    object txt_receb: TEdit
      Left = 104
      Top = 63
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object txt_referente: TEdit
      Left = 104
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object txt_obs: TEdit
      Left = 104
      Top = 126
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object txt_emitente: TEdit
      Left = 104
      Top = 153
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object txt_endereco: TEdit
      Left = 104
      Top = 183
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object txt_cidade: TEdit
      Left = 104
      Top = 210
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object txt_cpf: TtpEdit
      Left = 104
      Top = 237
      Width = 121
      Height = 21
      Alignment = taLeftJustify
      CharCase = ecUpperCase
      MaxLength = 14
      TabOrder = 7
      Check = ckCpfCnpj
      Caracter = tcNumeric
    end
    object txt_emissao: TtpEdit
      Left = 104
      Top = 264
      Width = 121
      Height = 21
      Alignment = taLeftJustify
      CharCase = ecUpperCase
      MaxLength = 8
      TabOrder = 8
      Check = ckDate
      Caracter = tcNumeric
    end
    object txt_valor: TtpEdit
      Left = 104
      Top = 291
      Width = 121
      Height = 21
      Alignment = taRightJustify
      CharCase = ecUpperCase
      TabOrder = 9
      Text = '0,00'
      Caracter = tcReal
    end
  end
  object btn_salvar: TBitBtn
    Left = 8
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 1
  end
  object btn_cancelar: TBitBtn
    Left = 89
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
  end
  object btn_pesquisar: TBitBtn
    Left = 170
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 3
  end
  object btn_fechar: TBitBtn
    Left = 251
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 4
  end
end
