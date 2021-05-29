unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB, ExtCtrls,Unit3, Mask,
  DBCtrls, FMTBcd, {SqlExpr,} unit5;

type
  TfrmMusteri = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ADOMusteriTable: TADOTable;
    DataSourceMusteri: TDataSource;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEditAdiSoyadi: TDBEdit;
    DBEditAdres: TDBEdit;
    DBEditTelefon: TDBEdit;
    BitBtn2: TBitBtn;
    ADOMusteriTableid: TAutoIncField;
    ADOMusteriTableadisoyadi: TWideStringField;
    ADOMusteriTableadres: TWideStringField;
    ADOMusteriTabletelefon: TWideStringField;
    btnSec: TBitBtn;
    btnKayit: TBitBtn;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    btnEkle: TBitBtn;
    ADOMusteriTableins_user: TStringField;
    ADOMusteriTableins_date: TDateTimeField;
    ADOMusteriTableupd_user: TStringField;
    ADOMusteriTableupd_date: TDateTimeField;
    btnIptal: TButton;
    Button1: TButton;
    procedure btnKayitClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnSecClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnEkleClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ADOMusteriTableBeforePost(DataSet: TDataSet);
    procedure ADOMusteriTableAfterInsert(DataSet: TDataSet);
    procedure btnIptalClick(Sender: TObject);
    procedure btnDuzenleClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure butonayarla;
  end;

var
  frmMusteri: TfrmMusteri;
  SEC:TypeMusteri;
  function BrMusteriCreate(TagModu:Longint): TypeMusteri;
  procedure CreateMusteriForm;
implementation

{$R *.dfm}
  uses global;
procedure TfrmMusteri.butonayarla;
var
  edit:boolean;
begin
  edit:=AdoMusteriTable.State in [dsEdit,dsInsert];
  btnEkle.Enabled:=not(edit);
  btnKayit.Enabled:=edit;
  btnSec.Enabled:=not(edit);
end;

procedure CreateMusteriForm;
begin
  with TfrmMusteri.Create(Application) do
  begin
    caption:=name;
    show;
  end;
end;

procedure TfrmMusteri.btnDuzenleClick(Sender: TObject);
begin
  ADOMusteriTable.Edit;
end;

procedure TfrmMusteri.btnEkleClick(Sender: TObject);
begin
  ADOMusteriTable.Insert;
  dbeditAdiSoyadi.SetFocus;
end;

procedure TfrmMusteri.btnIptalClick(Sender: TObject);
begin
  btnEkle.Enabled:=true;
  btnKayit.Enabled:=true;
  btnSec.Enabled:=true;
end;

procedure TfrmMusteri.btnKayitClick(Sender: TObject);
begin
  ADOMusteriTable.Post;
  MessageDlg('Kay�t Eklenmistir',mtInformation,[mbOk],0)
end;

function BrMusteriCreate(TagModu:Longint): TypeMusteri;
begin
  Result.mus_id :=-1;
  with TfrmMusteri.Create(Application) do
  begin
    Tag:=TagModu;
    if Tag=1 then btnSec.Visible:=True;
    try
      if tag<>0 then
      begin
        if ShowModal=mrOk then Result:=SEC
        else  Result.mus_id:=-1;
      end
      else
        show;
    finally
      //Free;
    end;
  end;
end;


procedure TfrmMusteri.ADOMusteriTableAfterInsert(DataSet: TDataSet);
begin
  butonayarla;
end;

procedure TfrmMusteri.ADOMusteriTableBeforePost(DataSet: TDataSet);
begin
  setlog(DataSet);
end;

procedure TfrmMusteri.BitBtn2Click(Sender: TObject);
begin
  if Application.MessageBox('��kmak istiyor musunuz','Uyar�',MB_YesNoCancel+32)=IdYes then close;
end;

procedure TfrmMusteri.btnSecClick(Sender: TObject);
begin
  sec.mus_id:=ADOMusteriTableid.value;
  sec.mus_adi:=ADOMusteriTableadisoyadi.value;
  modalresult:=mrOk;
end;

procedure TfrmMusteri.DBGrid1DblClick(Sender: TObject);
begin
   btnSecClick(btnSec);
end;

procedure TfrmMusteri.FormShow(Sender: TObject);
begin
  AdoMusteriTable.Open;
  btnEkle.Enabled:=false;
  btnKayit.Enabled:=false;
  btnSec.Enabled:=false;
end;

end.
