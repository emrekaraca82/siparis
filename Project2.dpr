program Project2;

uses
  Forms,
  Unit3 in 'Unit3.pas' {FrmGiris},
  Unit1 in 'Unit1.pas' {frmMusteri},
  Unit5 in 'Unit5.pas' {FrmSiparisDetay},
  Unit6 in 'Unit6.pas' {FrmUrun},
  Unit7 in 'Unit7.pas' {FrmSiparisMaster},
  global in 'global.pas',
  Brlibrary in 'Brlibrary.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmGiris, FrmGiris);
  Application.CreateForm(TfrmMusteri, frmMusteri);
  Application.CreateForm(TFrmSiparisDetay, FrmSiparisDetay);
  Application.CreateForm(TFrmUrun, FrmUrun);
  Application.CreateForm(TFrmSiparisMaster, FrmSiparisMaster);
  Application.Run;
end.
