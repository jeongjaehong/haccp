unit CowManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseChild, Buttons, ExtCtrls;

type
  TfrmCowManager = class(TfrmBaseChild)
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCowManager: TfrmCowManager;

implementation
uses DM;

{$R *.dfm}

procedure TfrmCowManager.FormDestroy(Sender: TObject);
begin
  inherited;
  frmCowManager := nil;
end;

end.

