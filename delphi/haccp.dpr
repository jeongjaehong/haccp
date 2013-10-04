program haccp;

uses
  Forms,
  Main in 'Main.pas' {frmMain},
  DM in 'DM.pas' {frmDM: TDataModule},
  BaseChild in 'BaseChild.pas' {frmBaseChild},
  CodeManager in 'CodeManager.pas' {frmCodeManager},
  CowManager in 'CowManager.pas' {frmCowManager};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmDM, frmDM);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.

