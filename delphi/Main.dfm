object frmMain: TfrmMain
  Left = 572
  Top = 206
  Width = 629
  Height = 450
  Caption = 'frmMain'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu
  OldCreateOrder = False
  WindowState = wsMaximized
  WindowMenu = Window
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 12
  object StatusBar1: TStatusBar
    Left = 0
    Top = 373
    Width = 613
    Height = 19
    Panels = <>
  end
  object MainMenu: TMainMenu
    Images = MainImageList
    OwnerDraw = True
    Left = 36
    Top = 48
    object Code1: TMenuItem
      Caption = '&System'
      SubMenuImages = MainImageList
      object Code2: TMenuItem
        Caption = '&Code'
        OnClick = Code2Click
      end
      object User1: TMenuItem
        Caption = 'User'
      end
      object Options1: TMenuItem
        Caption = 'Options'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'E&xit'
        OnClick = Exit1Click
      end
    end
    object Mnager1: TMenuItem
      Caption = 'Mnager'
      object CowManager1: TMenuItem
        Caption = 'Cow Manager'
        OnClick = CowManager1Click
      end
      object DrugManager1: TMenuItem
        Caption = 'Drug Manager'
      end
    end
    object Window: TMenuItem
      Caption = '&Windows'
      Hint = 'Close'
      object Arrange2: TMenuItem
        Action = WindowClose1
      end
      object Cascade1: TMenuItem
        Action = WindowCascade1
      end
      object ileHorizontally1: TMenuItem
        Action = WindowTileHorizontal1
      end
      object Arrange3: TMenuItem
        Action = WindowTileVertical1
      end
      object MinimizeAll1: TMenuItem
        Action = WindowMinimizeAll1
      end
      object Arrange1: TMenuItem
        Action = WindowArrange1
      end
      object N2: TMenuItem
        Caption = '-'
      end
    end
    object Help1: TMenuItem
      Caption = '&Help'
      object Help2: TMenuItem
        Caption = 'Help'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object About1: TMenuItem
        Caption = 'About'
      end
    end
    object CloseActiveForm: TMenuItem
      Caption = 'Close'
      OnClick = CloseActiveFormClick
    end
    object Exit2: TMenuItem
      Caption = 'E&xit'
      OnClick = Exit1Click
    end
  end
  object MainImageList: TImageList
    Height = 24
    ShareImages = True
    Width = 24
    Left = 32
    Top = 88
  end
  object ActionList: TActionList
    Left = 80
    Top = 48
    object WindowClose1: TWindowClose
      Category = 'Window'
      Caption = 'C&lose'
      Enabled = False
      Hint = 'Close'
    end
    object WindowCascade1: TWindowCascade
      Category = 'Window'
      Caption = '&Cascade'
      Enabled = False
      Hint = 'Cascade'
      ImageIndex = 17
    end
    object WindowTileHorizontal1: TWindowTileHorizontal
      Category = 'Window'
      Caption = 'Tile &Horizontally'
      Enabled = False
      Hint = 'Tile Horizontal'
      ImageIndex = 15
    end
    object WindowTileVertical1: TWindowTileVertical
      Category = 'Window'
      Caption = '&Tile Vertically'
      Enabled = False
      Hint = 'Tile Vertical'
      ImageIndex = 16
    end
    object WindowMinimizeAll1: TWindowMinimizeAll
      Category = 'Window'
      Caption = '&Minimize All'
      Enabled = False
      Hint = 'Minimize All'
    end
    object WindowArrange1: TWindowArrange
      Category = 'Window'
      Caption = '&Arrange'
      Enabled = False
    end
  end
end
