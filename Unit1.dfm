object frmMusteri: TfrmMusteri
  Left = 0
  Top = 0
  Caption = 'M'#252'steri Sayfas'#305
  ClientHeight = 378
  ClientWidth = 744
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
    Top = 339
    Width = 744
    Height = 39
    Align = alBottom
    TabOrder = 0
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 665
      Top = 4
      Width = 75
      Height = 31
      Align = alRight
      Caption = 'Kapat'
      DoubleBuffered = True
      Kind = bkCancel
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object btnSec: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 4
      Width = 75
      Height = 31
      Align = alLeft
      Caption = 'Se'#231
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = btnSecClick
    end
    object btnKayit: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 4
      Width = 75
      Height = 31
      Align = alLeft
      Caption = 'Kaydet'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = btnKayitClick
    end
    object btnEkle: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 75
      Height = 31
      Align = alLeft
      Caption = 'Ekle'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = btnEkleClick
    end
    object btnIptal: TButton
      AlignWithMargins = True
      Left = 247
      Top = 4
      Width = 75
      Height = 31
      Align = alLeft
      Caption = #304'ptal'
      TabOrder = 4
      OnClick = btnIptalClick
    end
    object Button1: TButton
      Left = 344
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 744
    Height = 121
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 20
      Top = 20
      Width = 50
      Height = 13
      Caption = 'Ad'#305' Soyad'#305
    end
    object Label3: TLabel
      Left = 20
      Top = 50
      Width = 28
      Height = 13
      Caption = 'Adres'
    end
    object Label4: TLabel
      Left = 20
      Top = 81
      Width = 36
      Height = 13
      Caption = 'Telefon'
    end
    object DBEditAdiSoyadi: TDBEdit
      Left = 85
      Top = 17
      Width = 226
      Height = 21
      DataField = 'adisoyadi'
      DataSource = DataSourceMusteri
      TabOrder = 0
    end
    object DBEditAdres: TDBEdit
      Left = 85
      Top = 47
      Width = 226
      Height = 21
      DataField = 'adres'
      DataSource = DataSourceMusteri
      TabOrder = 1
    end
    object DBEditTelefon: TDBEdit
      Left = 85
      Top = 78
      Width = 226
      Height = 21
      DataField = 'telefon'
      DataSource = DataSourceMusteri
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 121
    Width = 744
    Height = 218
    Align = alClient
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 742
      Height = 216
      Align = alClient
      Ctl3D = True
      DataSource = DataSourceMusteri
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          ReadOnly = False
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'adisoyadi'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'adres'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefon'
          Width = 150
          Visible = True
        end>
    end
  end
  object ADOMusteriTable: TADOTable
    Connection = FrmGiris.ADOConnection1
    CursorType = ctStatic
    AfterInsert = ADOMusteriTableAfterInsert
    BeforePost = ADOMusteriTableBeforePost
    TableName = 'musteri'
    Left = 680
    Top = 8
    object ADOMusteriTableid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOMusteriTableadisoyadi: TWideStringField
      FieldName = 'adisoyadi'
      Size = 50
    end
    object ADOMusteriTableadres: TWideStringField
      FieldName = 'adres'
      Size = 150
    end
    object ADOMusteriTabletelefon: TWideStringField
      FieldName = 'telefon'
      Size = 11
    end
    object ADOMusteriTableins_user: TStringField
      FieldName = 'ins_user'
      Size = 32
    end
    object ADOMusteriTableins_date: TDateTimeField
      FieldName = 'ins_date'
    end
    object ADOMusteriTableupd_user: TStringField
      FieldName = 'upd_user'
      Size = 32
    end
    object ADOMusteriTableupd_date: TDateTimeField
      FieldName = 'upd_date'
    end
  end
  object DataSourceMusteri: TDataSource
    DataSet = ADOMusteriTable
    Left = 680
    Top = 64
  end
end
