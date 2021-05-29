unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Unit3, DB, ADODB, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons,
  ExtCtrls;

type
  TFrmUrun = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery1name: TWideStringField;
    ADOQuery1marka: TWideStringField;
    ADOQuery1fiyat: TBCDField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUrun: TFrmUrun;
  procedure CreateUrunForm;
implementation

{$R *.dfm}
procedure CreateUrunForm;
begin
  with TFrmUrun.Create(Application) do
  begin
    caption:=name;
    show;
  end;
end;

procedure TFrmUrun.BitBtn1Click(Sender: TObject);
begin
  ADOTable1.Post;
  showmessage('Kay�t Eklenmistir');
end;

procedure TFrmUrun.BitBtn2Click(Sender: TObject);
begin
if Application.MessageBox('��kmak istiyor musunuz','Uyar�',MB_YesNoCancel+32)=IdYes then close;
end;

procedure TFrmUrun.FormShow(Sender: TObject);
begin
  ADOTable1.Open;
  ADOTable1.Insert;
end;

end.
