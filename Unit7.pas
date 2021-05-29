unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,Unit3,
  Dialogs, ComCtrls, DBCtrls, StdCtrls, Mask, DB, ADODB, Buttons, ExtCtrls,
  Grids, DBGrids;

type
  TFrmSiparisMaster = class(TForm)
    Panel2: TPanel;
    btnEkle: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    DataSource1: TDataSource;
    BtnTarihAra: TButton;
    DTP3: TDateTimePicker;
    DTP2: TDateTimePicker;
    ADOQueryTarih: TADOQuery;
    btnGoster: TButton;
    ADOQueryTarihsip_id: TAutoIncField;
    ADOQueryTarihsip_no: TIntegerField;
    ADOQueryTarihmus_id: TIntegerField;
    ADOQueryTarihmus_adi: TWideStringField;
    ADOQueryTarihsip_tarih: TDateTimeField;
    ADOQueryTarihtoplam_tutar: TBCDField;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    btnTumu: TButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnTarihAraClick(Sender: TObject);
    procedure btnEkleClick(Sender: TObject);
    procedure btnGosterClick(Sender: TObject);
    procedure FormShow(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSiparisMaster: TFrmSiparisMaster;
  procedure CreateSiparisMasterForm;
implementation

uses unit5;
{$R *.dfm}
 procedure CreateSiparisMasterForm;
begin
  with TFrmSiparisMaster.Create(Application) do
  begin
    caption:=name;
    show;
  end;
end;

procedure TFrmSiparisMaster.btnEkleClick(Sender: TObject);
begin
  CreateSiparisDetailForm(0);
end;

procedure TFrmSiparisMaster.BitBtn2Click(Sender: TObject);
begin
  if Application.MessageBox('��kmak istiyor musunuz','Uyar�',MB_YesNoCancel+32)=IdYes then close;
end;

procedure TFrmSiparisMaster.BtnTarihAraClick(Sender: TObject);
var
  tar1,tar2 : String;
begin
  btnGoster.Enabled:=true;
  ADOQueryTarih.Close;
  ADOQueryTarih.sql.Clear;
  ADOQueryTarih.sql.add('Select * from siparis_master');
  if Sender=BtnTarihAra then
  begin
    ADOQueryTarih.sql.add('WHERE sip_tarih between :t1 and :t2');
    ADOQueryTarih.Parameters.ParamByName('t1').Value:=DTP2.Date;
    ADOQueryTarih.Parameters.ParamByName('t2').Value:=DTP3.Date;
  end;
  ADOQueryTarih.Open;

end;

procedure TFrmSiparisMaster.FormShow(Sender: TObject);
begin
  btnGoster.Enabled:=false;
end;

procedure TFrmSiparisMaster.btnGosterClick(Sender: TObject);
begin
  //AdoQueryTarih.Open;
  CreateSiparisDetailForm(ADOQueryTarihsip_id.value);
end;

end.
