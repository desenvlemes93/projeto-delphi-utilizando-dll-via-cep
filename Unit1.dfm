object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Busca Cep por Dll'
  ClientHeight = 279
  ClientWidth = 535
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 537
    Height = 281
    Caption = 'Buscar Cep'
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 64
      Width = 40
      Height = 15
      Caption = 'Cidade:'
    end
    object lblCidade: TLabel
      Left = 61
      Top = 64
      Width = 3
      Height = 15
    end
    object Label2: TLabel
      Left = 142
      Top = 64
      Width = 15
      Height = 15
      Caption = 'Uf:'
    end
    object lblUf: TLabel
      Left = 163
      Top = 64
      Width = 3
      Height = 15
    end
    object edtCep: TEdit
      Left = 12
      Top = 22
      Width = 121
      Height = 23
      TabOrder = 0
    end
    object Button1: TButton
      Left = 139
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Buscar Cep'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
end
