unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList, ComCtrls, ToolWin, ActnList, StdActns;

type
  TfrmMain = class(TForm)
    MainMenu: TMainMenu;
    Code1: TMenuItem;
    Help1: TMenuItem;
    Code2: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    User1: TMenuItem;
    Mnager1: TMenuItem;
    CowManager1: TMenuItem;
    DrugManager1: TMenuItem;
    MainImageList: TImageList;
    Exit2: TMenuItem;
    CloseActiveForm: TMenuItem;
    Window: TMenuItem;
    StatusBar1: TStatusBar;
    N2: TMenuItem;
    ActionList: TActionList;
    WindowClose1: TWindowClose;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrange1: TWindowArrange;
    Arrange1: TMenuItem;
    Cascade1: TMenuItem;
    Arrange2: TMenuItem;
    MinimizeAll1: TMenuItem;
    ileHorizontally1: TMenuItem;
    Arrange3: TMenuItem;
    Options1: TMenuItem;
    Help2: TMenuItem;
    N3: TMenuItem;
    About1: TMenuItem;
    procedure Exit1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CowManager1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Code2Click(Sender: TObject);
    procedure CloseActiveFormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation
uses
  CowManager, CodeManager;

{$R *.dfm}

procedure TfrmMain.Exit1Click(Sender: TObject);
begin
  self.Close;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  self := nil;
end;

procedure TfrmMain.CowManager1Click(Sender: TObject);
begin
  if not Assigned(frmCowManager) then
  begin
    frmCowManager := TfrmCowManager.Create(self);
  end;
  frmCowManager.Show;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmMain.Code2Click(Sender: TObject);
begin
  if not Assigned(frmCodeManager) then
  begin
    frmCodeManager := TfrmCodeManager.Create(self);
  end;
  frmCodeManager.WindowState := wsMaximized;
  frmCodeManager.Show;
end;

procedure TfrmMain.CloseActiveFormClick(Sender: TObject);
begin
  if Assigned(self.ActiveMDIChild) then
    self.ActiveMDIChild.Close;
end;

end.

