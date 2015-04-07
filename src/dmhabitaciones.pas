unit dmhabitaciones;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, rxmemds, ZDataset
  , dmgeneral
  ;

type

  { TDM_Habitaciones }

  TDM_Habitaciones = class(TDataModule)
    Habitaciones: TRxMemoryData;
    HabitacionesbVisible: TLongintField;
    HabitacionesCamasDobles: TLongintField;
    HabitacionescamasSimples: TLongintField;
    Habitacionesestado_id: TLongintField;
    Habitacionesgrupo_id: TLongintField;
    Habitacionesid: TStringField;
    HabitacioneslxGrupo: TStringField;
    Habitacionesnombre: TStringField;
    HabitacionesPrecio: TFloatField;
    tugHabitacionesEstadosBVISIBLE: TSmallintField;
    tugHabitacionesEstadosESTADO: TStringField;
    tugHabitacionesEstadosID: TLongintField;
    tugHabitacionesGrupos: TZQuery;
    tugHabitacionesEstados: TZQuery;
    tugHabitacionesGruposBVISIBLE: TSmallintField;
    tugHabitacionesGruposGRUPO: TStringField;
    tugHabitacionesGruposID: TLongintField;
    procedure DataModuleCreate(Sender: TObject);
    procedure HabitacionesAfterInsert(DataSet: TDataSet);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  DM_Habitaciones: TDM_Habitaciones;

implementation

{$R *.lfm}

{ TDM_Habitaciones }

procedure TDM_Habitaciones.HabitacionesAfterInsert(DataSet: TDataSet);
begin
  Habitacionesid.AsString:= DM_General.CrearGUID;
  Habitacionesgrupo_id.AsInteger:= 0;
  HabitacionescamasSimples.AsInteger:= 0;
  HabitacionesCamasDobles.AsInteger:= 0;
  Habitacionesprecio.AsFloat:= 0;
  Habitacionesestado_id.AsInteger:= 0;
  HabitacionesbVisible.AsInteger:= 1;
end;

procedure TDM_Habitaciones.DataModuleCreate(Sender: TObject);
begin
  //Abro TUGS
  tugHabitacionesEstados.Open;
  tugHabitacionesGrupos.Open;
end;

end.

