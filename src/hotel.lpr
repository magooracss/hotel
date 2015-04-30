program hotel;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, rxnew, zcomponent, frm_main, SD_Configuracion, versioninfo, dmgeneral,
  dmhabitaciones, frm_habitaciones, frm_habitacionae
  { you can add units after this };

{$R *.res}

begin
  Application.Title:='Hotel';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TDM_General, DM_General);
  Application.CreateForm(TDM_Habitaciones, DM_Habitaciones);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.

