unit BaseChild;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls;

type
  TfrmBaseChild = class(TForm)
    pl_Client: TPanel;
    pl_Left: TPanel;
    splitLeftHorizontal: TSplitter;
    pl_LeftClient: TPanel;
    pl_LeftTop: TPanel;
    splitClientVertical: TSplitter;
    pl_LeftTopBtns: TPanel;
    sbtnSearch: TSpeedButton;
    Panel1: TPanel;
    sbtnFormClose: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure sbtnFormCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaseChild: TfrmBaseChild;

implementation

{$R *.dfm}

procedure TfrmBaseChild.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;

end;

procedure TfrmBaseChild.FormDestroy(Sender: TObject);
begin
  frmBaseChild := nil;
end;

procedure TfrmBaseChild.sbtnFormCloseClick(Sender: TObject);
begin
  self.Close;
end;

end.

