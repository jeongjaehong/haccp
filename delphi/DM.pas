unit DM;

interface

uses
  SysUtils, Classes, DB, ADODB, Dialogs, IniFiles;

type
  TfrmDM = class(TDataModule)
    con: TADOConnection;
    qryCodeMaster: TADOQuery;
    qryCodeMasterCodeNo: TWideStringField;
    qryCodeMasterCodeNoName: TWideStringField;
    qryCodeMasterUseYn: TWideStringField;
    qryCodeDetail: TADOQuery;
    dsCodeDetail: TDataSource;
    qryCodeDetailCodeNo: TWideStringField;
    qryCodeDetailCodeDetailNo: TWideStringField;
    qryCodeDetailCodeDetailName: TWideStringField;
    qryCodeDetailUseYn: TWideStringField;
    dsCodeMaster: TDataSource;
    OpenDialog1: TOpenDialog;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryCodeMasterAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDM: TfrmDM;

implementation

{$R *.dfm}

procedure TfrmDM.DataModuleCreate(Sender: TObject);
var ini: TIniFile;
  dbpath: string;

begin
  ini := TIniFile.Create('haccp.ini');

  try


    if ini.SectionExists('db') then
    begin
      dbpath := ini.ReadString('db', 'path', emptyStr);
    end
    else begin
      ini.WriteString('db', 'path', 'haccp.mdb');
      dbpath := ini.ReadString('db', 'path', 'haccp.mdb');
    end;



    if (dbpath = emptyStr) and (self.OpenDialog1.Execute) then
    begin

      self.con.Close;
      self.con.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=' + self.OpenDialog1.FileName + ';Mode=Share Deny None;Jet OLEDB:Database Password=haccp0630;Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:SFP=False';
      self.con.Open;

      if self.con.Connected then
      begin
        ini.WriteString('db', 'path', self.OpenDialog1.FileName);
      end;

    end else
    begin
      self.con.Close;
      self.con.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=' + dbpath + ';Mode=Share Deny None;Jet OLEDB:Database Password=haccp0630;Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:SFP=False';
      self.con.Open;
    end;

    self.qryCodeMaster.Open;

  finally
    ini.Free;
  end;

end;

procedure TfrmDM.DataModuleDestroy(Sender: TObject);
begin
  self.qryCodeMaster.Close;
end;

procedure TfrmDM.qryCodeMasterAfterScroll(DataSet: TDataSet);
begin
  qryCodeDetail.Close;
  qryCodeDetail.Parameters.ParamByName('codeno').Value := self.qryCodeMaster.FieldValues['codeno'];
  qryCodeDetail.Open;
end;

end.

