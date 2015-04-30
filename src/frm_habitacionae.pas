unit frm_habitacionae;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, RxDBSpinEdit, dbcurredit, Forms, Controls,
  Graphics, Dialogs, ExtCtrls, Buttons, DbCtrls, StdCtrls;

type

  { TfrmHabitacionAE }

  TfrmHabitacionAE = class(TForm)
    btnAceptar: TBitBtn;
    cbGrupo: TComboBox;
    cbEstado: TComboBox;
    DBEdit1: TDBEdit;
    ds_habitaciones: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    RxDBCurrEdit1: TRxDBCurrEdit;
    RxDBSpinEdit1: TRxDBSpinEdit;
    RxDBSpinEdit2: TRxDBSpinEdit;
    SpeedButton1: TSpeedButton;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmHabitacionAE: TfrmHabitacionAE;

implementation

{$R *.lfm}

{ TfrmHabitacionAE }


end.

