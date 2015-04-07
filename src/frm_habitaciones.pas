unit frm_habitaciones;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, ValEdit, DBGrids;

type

  { TfrmHabitaciones }

  TfrmHabitaciones = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    btnAceptar: TBitBtn;
    DBGrid1: TDBGrid;
    ds_Habitaciones: TDataSource;
    Panel1: TPanel;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmHabitaciones: TfrmHabitaciones;

implementation

{$R *.lfm}

end.

