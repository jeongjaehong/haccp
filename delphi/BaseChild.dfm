object frmBaseChild: TfrmBaseChild
  Left = 560
  Top = 542
  Width = 877
  Height = 545
  Caption = 'frmBaseChild'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #44404#47548#52404
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  ShowHint = True
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 12
  object splitClientVertical: TSplitter
    Left = 217
    Top = 0
    Width = 4
    Height = 507
    Beveled = True
  end
  object pl_Client: TPanel
    Left = 221
    Top = 0
    Width = 640
    Height = 507
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 0
    object Panel1: TPanel
      Left = 9
      Top = 448
      Width = 622
      Height = 50
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        622
        50)
      object sbtnFormClose: TSpeedButton
        Left = 504
        Top = 8
        Width = 90
        Height = 35
        Hint = #54868#47732#51012' '#45803#45716#45796'. '#51200#51109#54616#51648' '#50506#51008' '#51088#47308#45716' '#49324#46972#51652#45796'.'
        Anchors = [akTop, akRight]
        Caption = 'Close'
        Flat = True
        OnClick = sbtnFormCloseClick
      end
    end
  end
  object pl_Left: TPanel
    Left = 0
    Top = 0
    Width = 217
    Height = 507
    Align = alLeft
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 1
    object splitLeftHorizontal: TSplitter
      Left = 1
      Top = 146
      Width = 215
      Height = 4
      Cursor = crVSplit
      Align = alTop
      Beveled = True
    end
    object pl_LeftClient: TPanel
      Left = 1
      Top = 150
      Width = 215
      Height = 356
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvNone
      BorderWidth = 8
      TabOrder = 0
    end
    object pl_LeftTop: TPanel
      Left = 1
      Top = 1
      Width = 215
      Height = 145
      Align = alTop
      BevelInner = bvLowered
      BevelOuter = bvNone
      BorderWidth = 8
      TabOrder = 1
      object pl_LeftTopBtns: TPanel
        Left = 9
        Top = 86
        Width = 197
        Height = 50
        Align = alBottom
        TabOrder = 0
        DesignSize = (
          197
          50)
        object sbtnSearch: TSpeedButton
          Left = 96
          Top = 8
          Width = 90
          Height = 35
          Hint = #44160#49353#51312#44148#50640' '#47582#45716' '#51088#47308#47484' '#51312#54924#54620#45796'.'
          Anchors = [akTop, akRight]
          Caption = 'Search'
          Flat = True
        end
      end
    end
  end
end
