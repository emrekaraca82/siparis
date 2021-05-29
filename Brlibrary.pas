//26.10.2009 PExportOther
unit Brlibrary;



interface
Uses CxGrid,Dialogs,db,SysUtils,shellapi, Windows, Messages, Classes, Graphics, Controls, cxGridExportLink, cxCustomPivotGrid, cxExportPivotGridLink;
procedure ExportOther(aktar:String;MyGrid:TcxGrid;ex:boolean=true;ac:boolean=true);
procedure PExportOther(aktar:String;MyGrid:TcxCustomPivotGrid;ex:boolean=true;ac:boolean=true);

function roundpara(tutar:double):double;
function CorrectRound(x: Extended): LongInt;
const
  NumberFieldTypes = [ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD, ftAutoInc];
  TimeFieldTypes   = [ftDate, ftTime, ftDateTime];

implementation



procedure ExportOther(aktar:String;MyGrid:TcxGrid;ex:boolean=true;ac:boolean=true);
Var
  SaveKutu:TSaveDialog;
  AGrid: TcxGrid;
  Hata:Byte;
  ext:string;
begin
  Try
    Hata:=0;
    SaveKutu:=TSaveDialog.Create(nil);
    SaveKutu.Title:='Export Dosyas�n� Kaydet';
    SaveKutu.Filter:='Se�ti�iniz Export Bi�imi|*.html;*.xls;*.xml;*.txt';

    If (Hata=0) and (SaveKutu.Execute) Then
    Begin
      if SaveKutu.FileName='' then
        exit;
      case UPPERCASE(Aktar)[1] of
        'H': begin ExportGridToHTML(SaveKutu.FileName, MyGrid, ex);  ext:='.html'; end;
        'X': begin ExportGridToXML(SaveKutu.FileName, MyGrid, ex);   ext:='.xml';  end;
        'E': begin ExportGridToExcel(SaveKutu.FileName, MyGrid, ex); ext:='.xls';  end;
        'T': begin ExportGridToText(SaveKutu.FileName, MyGrid, ex);  ext:='.txt';  end;
      end;
    End;
    if SaveKutu.FileName<>'' then
      ShellExecute(0, 'open', pchar(changefileext(SaveKutu.FileName,ext)), nil, nil, SW_SHOWNORMAL);
  Finally
    SaveKutu.Free;
  End;

end;

procedure PExportOther(aktar:String;MyGrid:TcxCustomPivotGrid;ex:boolean=true;ac:boolean=true);
Var
  SaveKutu:TSaveDialog;
  AGrid: TcxGrid;
  Hata:Byte;
  ext:string;
begin
  Try
    Hata:=0;
    SaveKutu:=TSaveDialog.Create(nil);
    SaveKutu.Title:='Export Dosyas�n� Kaydet';
    SaveKutu.Filter:='Se�ti�iniz Export Bi�imi|*.html;*.xls;*.xml;*.txt';

    If (Hata=0) and (SaveKutu.Execute) Then
    Begin
      if SaveKutu.FileName='' then
        exit;
      case UPPERCASE(Aktar)[1] of
        'H': begin cxExportPivotGridToHTML(SaveKutu.FileName, MyGrid, ex);  ext:='.html'; end;
        //'X': begin (SaveKutu.FileName, MyGrid, ex);   ext:='.xml';  end;
        'E': begin cxExportPivotGridToExcel(SaveKutu.FileName, MyGrid, ex); ext:='.xls';  end;
        //'T': begin (SaveKutu.FileName, MyGrid, ex);  ext:='.txt';  end;
      end;
    End;
    if SaveKutu.FileName<>'' then
      ShellExecute(0, 'open', pchar(changefileext(SaveKutu.FileName,ext)), nil, nil, SW_SHOWNORMAL);
  Finally
    SaveKutu.Free;
  End;
end;


function RoundPara(Tutar: Double):Double;
var
  ILKVAL,SONVAL:DOUBLE;
  strTutar : String;
begin
  ILKVAL := INT(TUTAR*100);
  SONVAL := (TUTAR*100);
  SONVAL := INT(SONVAL+0.50000001);
  if SONVAL > ILKVAL Then
    TUTAR := (INT(TUTAR*100)+1) / 100
      else
           TUTAR := (INT(TUTAR*100)) / 100;
  Result := TUTAR;
end;


function CorrectRound(x: Extended): LongInt;
begin
  Result := Trunc(x);
  if (Round(x) >= 1) then
    Result := Result + 1 ;

end;

end.
