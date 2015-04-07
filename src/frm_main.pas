unit frm_main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  Menus, ActnList;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    prgHabitaciones: TAction;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    prgSalir: TAction;
    ActionList1: TActionList;
    MainMenu1: TMainMenu;
    st: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure prgHabitacionesExecute(Sender: TObject);
    procedure prgSalirExecute(Sender: TObject);
  private
    { private declarations }
  public
    procedure Inicializar;
  end;

var
  frmMain: TfrmMain;

implementation
{$R *.lfm}
uses
  versioninfo
  ,frm_habitaciones
  ;

{ TfrmMain }

procedure TfrmMain.FormShow(Sender: TObject);
begin
  Inicializar;
end;

procedure TfrmMain.prgHabitacionesExecute(Sender: TObject);
var
  pant: TfrmHabitaciones;
begin
  pant:= TfrmHabitaciones.Create(self);
  try
    pant.ShowModal;
  finally
    pant.Free;
  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin

end;

procedure TfrmMain.prgSalirExecute(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMain.Inicializar;
Var
  NroVersion: String;
  Info: TVersionInfo;
begin
  Info := TVersionInfo.Create;
  Info.Load(HINSTANCE);
  NroVersion := IntToStr(Info.FixedInfo.FileVersion[0])+'.'
                +IntToStr(Info.FixedInfo.FileVersion[1])+'.'
                +IntToStr(Info.FixedInfo.FileVersion[2])+'.'
                +IntToStr(Info.FixedInfo.FileVersion[3]);
  Info.Free;

  st.Panels[0].Text:= 'v:' + NroVersion;
  st.Panels[1].Text:= FormatDateTime('dd/mm/yyyy', now)+ '        ';
end;


end.

