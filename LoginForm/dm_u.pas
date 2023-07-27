unit dm_u;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TmyDataModule = class(TDataModule)
    conDb: TADOConnection;
    myQry: TADOQuery;
    dsQuery: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  myDataModule: TmyDataModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
