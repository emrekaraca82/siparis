object FrmUrun: TFrmUrun
  Left = 0
  Top = 0
  Caption = #220'r'#252'n Sayfas'#305
  ClientHeight = 382
  ClientWidth = 787
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 787
    Height = 145
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 15
      Top = 16
      Width = 50
      Height = 13
      Caption = #220'r'#252'n Kodu'
    end
    object Label2: TLabel
      Left = 15
      Top = 46
      Width = 41
      Height = 13
      Caption = #220'r'#252'n Ad'#305
    end
    object Label3: TLabel
      Left = 15
      Top = 79
      Width = 52
      Height = 13
      Caption = #220'r'#252'n Fiyat'#305
    end
    object Label4: TLabel
      Left = 15
      Top = 111
      Width = 57
      Height = 13
      Caption = #220'r'#252'n Miktar'#305
    end
    object SpeedButton1: TSpeedButton
      Left = 520
      Top = 240
      Width = 23
      Height = 22
    end
    object DBEdit1: TDBEdit
      Left = 96
      Top = 13
      Width = 226
      Height = 21
      DataField = 'urun_kodu'
      DataSource = DataSourceUrun
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 96
      Top = 44
      Width = 226
      Height = 21
      DataField = 'urun_adi'
      DataSource = DataSourceUrun
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 96
      Top = 76
      Width = 226
      Height = 21
      DataField = 'urun_fiyat'
      DataSource = DataSourceUrun
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 96
      Top = 108
      Width = 226
      Height = 21
      DataField = 'urun_miktar'
      DataSource = DataSourceUrun
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 341
    Width = 787
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnKapat: TBitBtn
      AlignWithMargins = True
      Left = 708
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = 'Kapat'
      DoubleBuffered = True
      Kind = bkCancel
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = btnKapatClick
    end
    object btnEkle: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Ekle'
      TabOrder = 1
      OnClick = btnEkleClick
    end
    object btnSec: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 4
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Se'#231
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = btnSecClick
    end
    object btnKayit: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 4
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Kaydet'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = btnKayitClick
    end
    object btnSil: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 4
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Sil'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = BitBtn3Click
    end
    object btnIptal: TButton
      AlignWithMargins = True
      Left = 409
      Top = 4
      Width = 75
      Height = 33
      Align = alLeft
      Caption = #304'ptal'
      TabOrder = 5
      OnClick = btnIptalClick
    end
    object btnExcelAktar: TButton
      AlignWithMargins = True
      Left = 328
      Top = 4
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Excell Aktar'
      TabOrder = 6
      OnClick = btnExcelAktarClick
      ExplicitTop = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 145
    Width = 787
    Height = 196
    Align = alClient
    TabOrder = 2
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 779
      Height = 188
      Align = alClient
      DataSource = DataSourceUrun
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
    end
  end
  object ADOUrunTable: TADOTable
    Connection = FrmGiris.ADOConnection1
    CursorType = ctStatic
    AfterInsert = ADOUrunTableAfterInsert
    BeforePost = ADOUrunTableBeforePost
    TableName = 'urun'
    Left = 720
    Top = 24
    object ADOUrunTableurun_id: TAutoIncField
      FieldName = 'urun_id'
      ReadOnly = True
    end
    object ADOUrunTableurun_kodu: TWideStringField
      FieldName = 'urun_kodu'
      Size = 50
    end
    object ADOUrunTableurun_adi: TWideStringField
      FieldName = 'urun_adi'
      Size = 50
    end
    object ADOUrunTableurun_fiyat: TBCDField
      FieldName = 'urun_fiyat'
      Precision = 18
      Size = 2
    end
    object ADOUrunTableurun_miktar: TIntegerField
      FieldName = 'urun_miktar'
    end
    object ADOUrunTableins_user: TStringField
      FieldName = 'ins_user'
      Size = 32
    end
    object ADOUrunTableins_date: TDateTimeField
      FieldName = 'ins_date'
    end
    object ADOUrunTableupd_user: TStringField
      FieldName = 'upd_user'
      Size = 32
    end
    object ADOUrunTableupd_date: TDateTimeField
      FieldName = 'upd_date'
    end
  end
  object DataSourceUrun: TDataSource
    DataSet = ADOUrunTable
    Left = 720
    Top = 88
  end
end
