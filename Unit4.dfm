object FrmSiparisMaster: TFrmSiparisMaster
  Left = 0
  Top = 0
  Caption = 'Siparis Master'
  ClientHeight = 405
  ClientWidth = 759
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
    Width = 759
    Height = 364
    Align = alClient
    TabOrder = 0
    ExplicitTop = -2
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 53
      Height = 13
      Caption = 'Musteri Adi'
    end
    object Label2: TLabel
      Left = 24
      Top = 72
      Width = 24
      Height = 13
      Caption = 'Tarih'
    end
    object Label3: TLabel
      Left = 22
      Top = 127
      Width = 26
      Height = 13
      Caption = 'Tutar'
    end
    object DateTarih: TDateTimePicker
      Left = 96
      Top = 72
      Width = 152
      Height = 21
      Date = 44300.552099201390000000
      Time = 44300.552099201390000000
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 96
      Top = 124
      Width = 152
      Height = 21
      DataField = 'tutar'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 96
      Top = 21
      Width = 121
      Height = 21
      DataField = 'mus_id'
      DataSource = DataSource1
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 364
    Width = 759
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 75
      Height = 33
      Align = alLeft
      Caption = 'Kay'#305't Et'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object ADOQMaster: TADOQuery
    Connection = FrmGiris.ADOConnection1
    CursorType = ctStatic
    AfterInsert = ADOQMasterAfterInsert
    Parameters = <>
    SQL.Strings = (
      'select*from siparis_master')
    Left = 688
    Top = 208
    object ADOQMasterid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQMastermus_id: TIntegerField
      FieldName = 'mus_id'
    end
    object ADOQMastertarih: TDateTimeField
      FieldName = 'tarih'
    end
    object ADOQMastertutar: TBCDField
      FieldName = 'tutar'
      Precision = 18
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQMaster
    Left = 688
    Top = 152
  end
  object ADOQDetail: TADOQuery
    Connection = FrmGiris.ADOConnection1
    CursorType = ctStatic
    DataSource = DataSource1
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select*from siparis_detay where sip_no=:id')
    Left = 608
    Top = 208
  end
  object DataSource2: TDataSource
    DataSet = ADOQDetail
    Left = 608
    Top = 152
  end
end
