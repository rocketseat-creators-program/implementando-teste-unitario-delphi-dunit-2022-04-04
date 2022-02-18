object FrmCalculadora: TFrmCalculadora
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 212
  ClientWidth = 197
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 197
    Height = 212
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 32
    ExplicitTop = 112
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 50
      Height = 13
      Caption = 'N'#250'mero 1:'
    end
    object Label2: TLabel
      Left = 24
      Top = 62
      Width = 50
      Height = 13
      Caption = 'N'#250'mero 2:'
    end
    object Label3: TLabel
      Left = 24
      Top = 148
      Width = 52
      Height = 13
      Caption = 'Resultado:'
    end
    object edtNumero1: TEdit
      Left = 24
      Top = 35
      Width = 150
      Height = 21
      NumbersOnly = True
      TabOrder = 0
    end
    object edtNumero2: TEdit
      Left = 24
      Top = 81
      Width = 150
      Height = 21
      NumbersOnly = True
      TabOrder = 1
    end
    object edtResultado: TEdit
      Left = 24
      Top = 167
      Width = 150
      Height = 21
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 2
    end
    object btnSomar: TButton
      Left = 24
      Top = 108
      Width = 33
      Height = 25
      Caption = '+'
      TabOrder = 3
      OnClick = btnSomarClick
    end
    object btnSubtrair: TButton
      Left = 63
      Top = 108
      Width = 33
      Height = 25
      Caption = '-'
      TabOrder = 4
      OnClick = btnSubtrairClick
    end
    object btnMultiplicar: TButton
      Left = 102
      Top = 108
      Width = 33
      Height = 25
      Caption = 'x'
      TabOrder = 5
      OnClick = btnMultiplicarClick
    end
    object btnDividir: TButton
      Left = 141
      Top = 108
      Width = 33
      Height = 25
      Caption = '/'
      TabOrder = 6
      OnClick = btnDividirClick
    end
  end
end
