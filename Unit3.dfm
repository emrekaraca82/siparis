object FrmGiris: TFrmGiris
  Left = 0
  Top = 0
  Caption = 'Anasayfa'
  ClientHeight = 424
  ClientWidth = 753
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 368
    Width = 753
    Height = 56
    Align = alBottom
    TabOrder = 0
    object btnExcell: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 75
      Height = 48
      Align = alLeft
      Caption = 'Excell Aktar'
      TabOrder = 0
      OnClick = btnExcellClick
      ExplicitLeft = 16
      ExplicitTop = 16
      ExplicitHeight = 25
    end
    object BtnHtml: TButton
      AlignWithMargins = True
      Left = 85
      Top = 4
      Width = 75
      Height = 48
      Align = alLeft
      Caption = 'Html Aktar'
      TabOrder = 1
      OnClick = BtnHtmlClick
      ExplicitLeft = 96
      ExplicitTop = 16
      ExplicitHeight = 25
    end
    object btnXml: TButton
      AlignWithMargins = True
      Left = 166
      Top = 4
      Width = 75
      Height = 48
      Align = alLeft
      Caption = 'Xml Aktar'
      TabOrder = 2
      OnClick = btnXmlClick
      ExplicitLeft = 696
      ExplicitTop = 8
      ExplicitHeight = 25
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 81
    Width = 753
    Height = 287
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 1
    object Grid: TcxGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 745
      Height = 279
      Align = alClient
      TabOrder = 0
      RootLevelOptions.DetailTabsPosition = dtpTop
      RootLevelStyles.Tab = cxStyle3
      object DBCardMusteriView: TcxGridDBCardView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CardIndent = 8
        OptionsView.CardWidth = 250
        Styles.Content = cxStyle5
        Styles.Selection = cxStyle6
        Styles.RowCaption = cxStyle3
        object DBCardMusteriViewid: TcxGridDBCardViewRow
          DataBinding.FieldName = 'id'
          Visible = False
          Position.BeginsLayer = True
        end
        object DBCardMusteriViewadisoyadi: TcxGridDBCardViewRow
          DataBinding.FieldName = 'adisoyadi'
          Position.BeginsLayer = True
        end
        object DBCardMusteriViewadres: TcxGridDBCardViewRow
          DataBinding.FieldName = 'adres'
          Position.BeginsLayer = True
        end
        object DBCardMusteriViewtelefon: TcxGridDBCardViewRow
          DataBinding.FieldName = 'telefon'
          Position.BeginsLayer = True
        end
        object DBCardMusteriViewins_user: TcxGridDBCardViewRow
          DataBinding.FieldName = 'ins_user'
          Visible = False
          Position.BeginsLayer = True
        end
        object DBCardMusteriViewins_date: TcxGridDBCardViewRow
          DataBinding.FieldName = 'ins_date'
          Visible = False
          Position.BeginsLayer = True
        end
        object DBCardMusteriViewupd_user: TcxGridDBCardViewRow
          DataBinding.FieldName = 'upd_user'
          Visible = False
          Position.BeginsLayer = True
        end
        object DBCardMusteriViewupd_date: TcxGridDBCardViewRow
          DataBinding.FieldName = 'upd_date'
          Visible = False
          Position.BeginsLayer = True
        end
      end
      object GridDBCardViewUrun: TcxGridDBCardView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DataSource2
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CardAutoWidth = True
        OptionsView.CardIndent = 7
        OptionsView.CardWidth = 300
        OptionsView.CategorySeparatorWidth = 1
        OptionsView.CellAutoHeight = True
        OptionsView.SeparatorColor = clSilver
        Styles.Content = cxStyle10
        Styles.CaptionRow = cxStyle12
        Styles.RowCaption = cxStyle12
        object GridDBCardViewUrunurun_id: TcxGridDBCardViewRow
          DataBinding.FieldName = 'urun_id'
          Visible = False
          Position.BeginsLayer = True
        end
        object GridDBCardViewUrunurun_kodu: TcxGridDBCardViewRow
          DataBinding.FieldName = 'urun_kodu'
          Position.BeginsLayer = True
        end
        object GridDBCardViewUrunurun_adi: TcxGridDBCardViewRow
          DataBinding.FieldName = 'urun_adi'
          Position.BeginsLayer = True
        end
        object GridDBCardViewUrunurun_fiyat: TcxGridDBCardViewRow
          DataBinding.FieldName = 'urun_fiyat'
          Position.BeginsLayer = True
        end
        object GridDBCardViewUrunurun_miktar: TcxGridDBCardViewRow
          DataBinding.FieldName = 'urun_miktar'
          Position.BeginsLayer = True
        end
        object GridDBCardViewUrunins_user: TcxGridDBCardViewRow
          DataBinding.FieldName = 'ins_user'
          Visible = False
          Position.BeginsLayer = True
        end
        object GridDBCardViewUrunins_date: TcxGridDBCardViewRow
          DataBinding.FieldName = 'ins_date'
          Visible = False
          Position.BeginsLayer = True
        end
        object GridDBCardViewUrunupd_user: TcxGridDBCardViewRow
          DataBinding.FieldName = 'upd_user'
          Visible = False
          Position.BeginsLayer = True
        end
        object GridDBCardViewUrunupd_date: TcxGridDBCardViewRow
          DataBinding.FieldName = 'upd_date'
          Visible = False
          Position.BeginsLayer = True
        end
      end
      object GridDBCardViewSiparis: TcxGridDBCardView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DataSource3
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CardAutoWidth = True
        OptionsView.CardIndent = 7
        OptionsView.CardWidth = 300
        OptionsView.CategorySeparatorWidth = 1
        OptionsView.CellAutoHeight = True
        OptionsView.SeparatorColor = clSilver
        Styles.Content = cxStyle20
        Styles.ContentEven = cxStyle22
        Styles.ContentOdd = cxStyle22
        Styles.IncSearch = cxStyle23
        Styles.Selection = cxStyle25
        Styles.CaptionRow = cxStyle19
        Styles.RowCaption = cxStyle24
        object GridDBCardViewSiparisid: TcxGridDBCardViewRow
          DataBinding.FieldName = 'id'
          Position.BeginsLayer = True
        end
        object GridDBCardViewSiparissira_no: TcxGridDBCardViewRow
          DataBinding.FieldName = 'sira_no'
          Position.BeginsLayer = True
        end
        object GridDBCardViewSiparisurun_adi: TcxGridDBCardViewRow
          DataBinding.FieldName = 'urun_adi'
          Position.BeginsLayer = True
        end
        object GridDBCardViewSiparisurun_kodu: TcxGridDBCardViewRow
          DataBinding.FieldName = 'urun_kodu'
          Position.BeginsLayer = True
        end
        object GridDBCardViewSiparismiktar: TcxGridDBCardViewRow
          DataBinding.FieldName = 'miktar'
          Position.BeginsLayer = True
        end
        object GridDBCardViewSiparisfiyat: TcxGridDBCardViewRow
          DataBinding.FieldName = 'fiyat'
          Position.BeginsLayer = True
        end
        object GridDBCardViewSiparisiskonto_oran: TcxGridDBCardViewRow
          DataBinding.FieldName = 'iskonto_oran'
          Position.BeginsLayer = True
        end
        object GridDBCardViewSiparisiskonto_tutar: TcxGridDBCardViewRow
          DataBinding.FieldName = 'iskonto_tutar'
          Position.BeginsLayer = True
        end
        object GridDBCardViewSiparistoplam_tutar: TcxGridDBCardViewRow
          DataBinding.FieldName = 'toplam_tutar'
          Position.BeginsLayer = True
        end
        object GridDBCardViewSiparisurun_id: TcxGridDBCardViewRow
          DataBinding.FieldName = 'urun_id'
          Visible = False
          Position.BeginsLayer = True
        end
        object GridDBCardViewSiparisins_user: TcxGridDBCardViewRow
          DataBinding.FieldName = 'ins_user'
          Visible = False
          Position.BeginsLayer = True
        end
        object GridDBCardViewSiparisins_date: TcxGridDBCardViewRow
          DataBinding.FieldName = 'ins_date'
          Visible = False
          Position.BeginsLayer = True
        end
        object GridDBCardViewSiparisupd_user: TcxGridDBCardViewRow
          DataBinding.FieldName = 'upd_user'
          Visible = False
          Position.BeginsLayer = True
        end
        object GridDBCardViewSiparisupd_date: TcxGridDBCardViewRow
          DataBinding.FieldName = 'upd_date'
          Visible = False
          Position.BeginsLayer = True
        end
      end
      object cxGridMusteri: TcxGridLevel
        Caption = 'Musteri'
        GridView = DBCardMusteriView
        Options.DetailFrameColor = clBackground
        Options.DetailTabsPosition = dtpTop
      end
      object GridUrun: TcxGridLevel
        Caption = 'Urun'
        GridView = GridDBCardViewUrun
      end
      object GridSiparis: TcxGridLevel
        Caption = 'Siparis'
        GridView = GridDBCardViewSiparis
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 753
    Height = 81
    Align = alTop
    TabOrder = 2
    object Button1: TButton
      AlignWithMargins = True
      Left = 32
      Top = 8
      Width = 113
      Height = 57
      Caption = 'M'#252'steri Sayfas'#305
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 208
      Top = 8
      Width = 113
      Height = 57
      Caption = #220'r'#252'n Sayfas'#305
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 392
      Top = 8
      Width = 113
      Height = 57
      Caption = 'Siparis Detay'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 584
      Top = 8
      Width = 113
      Height = 57
      Caption = 'Siparis Listele'
      TabOrder = 3
      OnClick = Button4Click
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=Delphi;Data Source=.;Use Pr' +
      'ocedure for Prepare=1;Auto Translate=True;Packet Size=4096;Works' +
      'tation ID=DESKTOP-QKU6P32;Initial File Name="";Use Encryption fo' +
      'r Data=False;Tag with column collation when possible=False;MARS ' +
      'Connection=False;DataTypeCompatibility=0;Trust Server Certificat' +
      'e=False;Server SPN="";Application Intent=READWRITE;'
    LoginPrompt = False
    Provider = 'SQLNCLI11.1'
    Left = 632
    Top = 120
  end
  object ADOMusteriTable: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'musteri'
    Left = 272
    Top = 376
  end
  object DataSource1: TDataSource
    DataSet = ADOMusteriTable
    Left = 328
    Top = 376
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 192
    Top = 376
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clMaroon
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Myanmar Text'
      Font.Style = []
      TextColor = clWindowFrame
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 13626101
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4944971
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10343916
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4944971
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11639171
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 11639171
      TextColor = clBlack
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14273729
      TextColor = clBlack
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8217935
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11639171
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8217935
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 33023
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10862530
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 10862530
      TextColor = clBlack
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 13820129
      TextColor = clBlack
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6392205
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10862530
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 6392205
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
    object GridCardViewStyleSheetRainyDay: TcxGridCardViewStyleSheet
      Caption = 'Rainy Day'
      Styles.Content = cxStyle11
      Styles.ContentEven = cxStyle12
      Styles.ContentOdd = cxStyle13
      Styles.Inactive = cxStyle14
      Styles.Selection = cxStyle16
      Styles.CaptionRow = cxStyle10
      Styles.RowCaption = cxStyle15
      BuiltIn = True
    end
    object cxGridCardViewStyleSheet1: TcxGridCardViewStyleSheet
      Styles.Content = cxStyle17
      Styles.RowCaption = cxStyle18
      BuiltIn = True
    end
    object GridCardViewStyleSheetBrick: TcxGridCardViewStyleSheet
      Caption = 'Brick'
      Styles.Content = cxStyle20
      Styles.ContentEven = cxStyle21
      Styles.ContentOdd = cxStyle22
      Styles.Inactive = cxStyle23
      Styles.Selection = cxStyle25
      Styles.CaptionRow = cxStyle19
      Styles.RowCaption = cxStyle24
      BuiltIn = True
    end
  end
  object ADOUrunTable: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'urun'
    Left = 392
    Top = 376
  end
  object DataSource2: TDataSource
    DataSet = ADOUrunTable
    Left = 448
    Top = 376
  end
  object ADOSiparisTable: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'siparis_detay'
    Left = 528
    Top = 376
  end
  object DataSource3: TDataSource
    DataSet = ADOSiparisTable
    Left = 608
    Top = 376
  end
end
