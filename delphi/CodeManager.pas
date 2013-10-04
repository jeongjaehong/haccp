unit CodeManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseChild, Buttons, ExtCtrls, Grids, DBGrids, DB, StdCtrls,
  Mask, DBCtrls;

type
  TfrmCodeManager = class(TfrmBaseChild)
    dbgCodeMaster: TDBGrid;
    Panel6: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    sbtnAddNew: TSpeedButton;
    sbtnSave: TSpeedButton;
    sbtnCancel: TSpeedButton;
    dbgCodeDetail: TDBGrid;
    Splitter3: TSplitter;
    dbeCodeNo: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    dbeCodeDetailNo: TDBEdit;
    Label3: TLabel;
    dbeCodeDetailName: TDBEdit;
    Label4: TLabel;
    dbcUseYn: TDBCheckBox;
    sbtnDelete: TSpeedButton;
    sbtnExport: TSpeedButton;
    sbtnImport: TSpeedButton;
    sbtnPrint: TSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    edtCodeName: TEdit;
    cbxUseYn: TCheckBox;
    sbtnNewMaster: TSpeedButton;
    Label7: TLabel;
    dbeMasterCodeNo: TDBEdit;
    Label8: TLabel;
    dbeCodeName: TDBEdit;
    Label9: TLabel;
    dbcMasterUseYn: TDBCheckBox;
    sbtnMasterDelete: TSpeedButton;
    btnClearCondition: TButton;
    procedure sbtnAddNewClick(Sender: TObject);
    procedure sbtnSaveClick(Sender: TObject);
    procedure sbtnCancelClick(Sender: TObject);
    procedure setEnterColor(Sender: TObject);
    procedure setExitColor(Sender: TObject);
    procedure sbtnDeleteClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure sbtnNewMasterClick(Sender: TObject);
    procedure dbeMasterCodeNoChange(Sender: TObject);
    procedure setCheckEnterColor(Sender: TObject);
    procedure dbcMasterUseYnExit(Sender: TObject);
    procedure sbtnMasterDeleteClick(Sender: TObject);
    procedure dbeMasterCodeNoEnter(Sender: TObject);
    procedure sbtnSearchClick(Sender: TObject);
    procedure btnClearConditionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCodeManager: TfrmCodeManager;

implementation

uses DM;

{$R *.dfm}

procedure TfrmCodeManager.sbtnAddNewClick(Sender: TObject);
begin
  inherited;

    //self.dbgCodeDetail.DataSource.DataSet.MoveBy()

  self.sbtnDelete.Enabled := false; //not(self.dbgCodeDetail.DataSource.DataSet.Modified);

  self.dbgCodeDetail.DataSource.DataSet.Append;

  //self.dbeCodeNo.Text := self.dbgCodeMaster.DataSource.DataSet.FieldValues['codeno'];
  self.dbcUseYn.DataSource.DataSet.FieldByName('codeno').Value := self.dbgCodeMaster.DataSource.DataSet.FieldValues['codeno'];
  self.dbcUseYn.DataSource.DataSet.FieldByName('useyn').Value := 'Y';

  self.dbeCodeDetailNo.SetFocus;

end;

procedure TfrmCodeManager.sbtnSaveClick(Sender: TObject);
begin
  inherited;

  try
    frmDM.con.BeginTrans;
    try
      try
        if frmDM.qryCodeMaster.Modified then
          self.dbgCodeMaster.DataSource.DataSet.Post;
      except
      end;

      try

        if frmDM.qryCodeDetail.Modified then
        begin

          if frmDM.qryCodeDetail.FieldByName('useyn').AsString = emptyStr then
            frmDM.qryCodeDetail.FieldByName('useyn').Value := 'Y';


          frmDM.qryCodeDetail.FieldByName('codeno').Value := frmDM.qryCodeMaster.FieldValues['codeno'];

          self.dbgCodeDetail.DataSource.DataSet.Post;
        end;
      except
      end;

      frmDM.con.CommitTrans;
    except
      frmDM.con.RollbackTrans;
    end
  finally
    self.sbtnDelete.Enabled := true;
  end;




end;

procedure TfrmCodeManager.sbtnCancelClick(Sender: TObject);
begin
  inherited;
  try
    self.dbgCodeMaster.DataSource.DataSet.Cancel;
  except
  end;
  try
    self.dbgCodeDetail.DataSource.DataSet.Cancel;
  except
  end;
end;

procedure TfrmCodeManager.setEnterColor(Sender: TObject);
begin
  inherited;
  if TDBEdit(Sender).ReadOnly then
    TDBEdit(Sender).Color := clGray
  else
    TDBEdit(Sender).Color := clInfoBk;

end;

procedure TfrmCodeManager.setExitColor(Sender: TObject);
begin
  inherited;
  TDBEdit(Sender).Color := clWindow;
end;

procedure TfrmCodeManager.sbtnDeleteClick(Sender: TObject);
begin
  inherited;

  frmDM.con.BeginTrans;
  try
    //self.dbgCodeDetail.DataSource.DataSet.Delete;
    frmDM.qryCodeDetail.Edit;
  except
  end;

  try
    frmDM.qryCodeDetail.FieldByName('useyn').Value := 'N';
    frmDM.qryCodeDetail.Post;
  except
  end;

  frmDM.con.CommitTrans;

end;

procedure TfrmCodeManager.FormDestroy(Sender: TObject);
begin
  inherited;
  frmCodeManager := nil;
end;

procedure TfrmCodeManager.sbtnNewMasterClick(Sender: TObject);
begin
  inherited;

  frmDM.qryCodeMaster.Append;

  frmDM.qryCodeDetail.Append;

  frmDM.qryCodeMaster.FieldByName('useyn').Value := 'Y';

  self.dbeMasterCodeNo.SetFocus;
end;

procedure TfrmCodeManager.dbeMasterCodeNoChange(Sender: TObject);
begin
  inherited;
  try
    self.dbeCodeNo.Text := self.dbeMasterCodeNo.Text;
  except
  end;
end;

procedure TfrmCodeManager.setCheckEnterColor(Sender: TObject);
begin
  inherited;
  TDBCheckBox(Sender).Color := clInfoBk;

end;

procedure TfrmCodeManager.dbcMasterUseYnExit(Sender: TObject);
begin
  inherited;
  TDBCheckBox(Sender).Color := clBtnFace;

end;

procedure TfrmCodeManager.sbtnMasterDeleteClick(Sender: TObject);
begin
  inherited;

  frmDM.con.BeginTrans;
  try
    //self.dbgCodeDetail.DataSource.DataSet.Delete;
    frmDM.qryCodeMaster.Edit;
  except
  end;

  try
    frmDM.qryCodeMaster.FieldByName('useyn').Value := 'N';
    frmDM.qryCodeMaster.Post;
  except
  end;

  frmDM.con.CommitTrans;

end;

procedure TfrmCodeManager.dbeMasterCodeNoEnter(Sender: TObject);
begin
  inherited;

  TDBEdit(Sender).ReadOnly := self.dbgCodeDetail.DataSource.DataSet.RecordCount > 0;

  self.setEnterColor(Sender);
end;

procedure TfrmCodeManager.sbtnSearchClick(Sender: TObject);
begin
  inherited;

  frmDM.qryCodeMaster.Close;

  frmDM.qryCodeMaster.SQL.Clear;
  frmDM.qryCodeMaster.SQL.Add('select * from code_m where 1=1 ');

  if trim(self.edtCodeName.Text) <> emptyStr then
    frmDM.qryCodeMaster.SQL.Add(' and codenoname like ''%' + trim(self.edtCodeName.Text) + '%''');



  if cbxUseYn.Checked then
    frmDM.qryCodeMaster.SQL.Add(' and useyn = ''Y'' ');

  frmDM.qryCodeMaster.Open;
end;

procedure TfrmCodeManager.btnClearConditionClick(Sender: TObject);
begin
  inherited;
  self.edtCodeName.Clear;
  self.cbxUseYn.Checked := false;

  self.sbtnSearch.Click;
end;

end.

