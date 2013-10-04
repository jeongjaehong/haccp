inherited frmCodeManager: TfrmCodeManager
  Left = 449
  Top = 252
  Width = 1072
  Height = 760
  Caption = 'frmCodeManager'
  WindowMenu = frmMain.Window
  PixelsPerInch = 96
  TextHeight = 12
  inherited splitClientVertical: TSplitter
    Left = 302
    Height = 722
  end
  inherited pl_Client: TPanel
    Left = 306
    Width = 750
    Height = 722
    object Splitter3: TSplitter [0]
      Left = 9
      Top = 193
      Width = 732
      Height = 4
      Cursor = crVSplit
      Align = alTop
      Beveled = True
    end
    object Panel6: TPanel [1]
      Left = 9
      Top = 197
      Width = 732
      Height = 466
      Align = alClient
      BevelInner = bvLowered
      BorderWidth = 8
      TabOrder = 0
      object dbgCodeDetail: TDBGrid
        Left = 10
        Top = 10
        Width = 712
        Height = 446
        Align = alClient
        BorderStyle = bsNone
        Ctl3D = False
        DataSource = frmDM.dsCodeDetail
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = #44404#47548#52404
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodeNo'
            Title.Alignment = taCenter
            Title.Caption = #48516#47448#53076#46300
            Width = 72
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodeDetailNo'
            Title.Alignment = taCenter
            Title.Caption = #49345#49464#53076#46300
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodeDetailName'
            Title.Alignment = taCenter
            Title.Caption = #49345#49464#53076#46300#47749#52845
            Width = 182
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UseYn'
            Title.Alignment = taCenter
            Title.Caption = #49324#50857
            Width = 51
            Visible = True
          end>
      end
    end
    object Panel8: TPanel [2]
      Left = 9
      Top = 9
      Width = 732
      Height = 184
      Align = alTop
      BevelInner = bvLowered
      BorderWidth = 8
      TabOrder = 1
      object Label1: TLabel
        Left = 304
        Top = 16
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = #48516#47448#53076#46300
        FocusControl = dbeCodeNo
        Layout = tlCenter
      end
      object Label2: TLabel
        Left = 304
        Top = 40
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = #49345#49464#53076#46300
        FocusControl = dbeCodeDetailNo
        Layout = tlCenter
      end
      object Label3: TLabel
        Left = 288
        Top = 64
        Width = 86
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = #49345#49464#53076#46300#47749#52845
        FocusControl = dbeCodeDetailName
        Layout = tlCenter
      end
      object Label4: TLabel
        Left = 304
        Top = 88
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = #49324#50857#50668#48512
        FocusControl = dbcUseYn
        Layout = tlCenter
      end
      object Label7: TLabel
        Left = 32
        Top = 40
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = #48516#47448#53076#46300
        FocusControl = dbeMasterCodeNo
        Layout = tlCenter
      end
      object Label8: TLabel
        Left = 32
        Top = 64
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = #48516#47448#47749#52845
        FocusControl = dbeCodeName
        Layout = tlCenter
      end
      object Label9: TLabel
        Left = 32
        Top = 88
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = #49324#50857#50668#48512
        FocusControl = dbcMasterUseYn
        Layout = tlCenter
      end
      object Panel9: TPanel
        Left = 10
        Top = 124
        Width = 712
        Height = 50
        Align = alBottom
        TabOrder = 0
        DesignSize = (
          712
          50)
        object sbtnAddNew: TSpeedButton
          Left = 436
          Top = 8
          Width = 90
          Height = 35
          Hint = #49345#49464#53076#46300#47484' '#52628#44032#54620#45796'.'
          Anchors = [akTop, akRight]
          Caption = 'New'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = sbtnAddNewClick
        end
        object sbtnSave: TSpeedButton
          Left = 524
          Top = 7
          Width = 90
          Height = 35
          Hint = #48320#44221#49324#54637#51012' '#46321#47197#54620#45796'.'
          Anchors = [akTop, akRight]
          Caption = 'Save'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = sbtnSaveClick
        end
        object sbtnCancel: TSpeedButton
          Left = 612
          Top = 7
          Width = 90
          Height = 35
          Hint = #51089#50629#45236#50857#51012' '#52712#49548#54620#45796'.'
          Anchors = [akTop, akRight]
          Caption = 'Cancel'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = sbtnCancelClick
        end
        object sbtnExport: TSpeedButton
          Left = 4
          Top = 7
          Width = 90
          Height = 35
          Caption = 'Export'
          Flat = True
        end
        object sbtnImport: TSpeedButton
          Left = 92
          Top = 7
          Width = 90
          Height = 35
          Caption = 'Import'
          Flat = True
        end
        object sbtnPrint: TSpeedButton
          Left = 180
          Top = 7
          Width = 90
          Height = 35
          Caption = 'Print'
          Flat = True
        end
        object sbtnNewMaster: TSpeedButton
          Left = 340
          Top = 8
          Width = 90
          Height = 35
          Hint = #49352#47196#50868' '#48516#47448#53076#46300#47484' '#52628#44032#54620#45796'.'
          Anchors = [akTop, akRight]
          Caption = 'New Master'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = sbtnNewMasterClick
        end
      end
      object dbeCodeNo: TDBEdit
        Left = 384
        Top = 16
        Width = 197
        Height = 20
        DataField = 'CodeNo'
        DataSource = frmDM.dsCodeDetail
        ReadOnly = True
        TabOrder = 1
        OnEnter = setEnterColor
        OnExit = setExitColor
      end
      object dbeCodeDetailNo: TDBEdit
        Left = 384
        Top = 40
        Width = 197
        Height = 20
        DataField = 'CodeDetailNo'
        DataSource = frmDM.dsCodeDetail
        TabOrder = 2
        OnEnter = setEnterColor
        OnExit = setExitColor
      end
      object dbeCodeDetailName: TDBEdit
        Left = 384
        Top = 64
        Width = 197
        Height = 20
        DataField = 'CodeDetailName'
        DataSource = frmDM.dsCodeDetail
        ImeMode = imHanguel
        TabOrder = 3
        OnEnter = setEnterColor
        OnExit = setExitColor
      end
      object dbcUseYn: TDBCheckBox
        Left = 384
        Top = 88
        Width = 21
        Height = 19
        DataField = 'UseYn'
        DataSource = frmDM.dsCodeDetail
        TabOrder = 4
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
        OnEnter = setCheckEnterColor
        OnExit = dbcMasterUseYnExit
      end
      object dbeMasterCodeNo: TDBEdit
        Left = 112
        Top = 40
        Width = 121
        Height = 20
        DataField = 'CodeNo'
        DataSource = frmDM.dsCodeMaster
        TabOrder = 5
        OnChange = dbeMasterCodeNoChange
        OnEnter = dbeMasterCodeNoEnter
        OnExit = setExitColor
      end
      object dbeCodeName: TDBEdit
        Left = 112
        Top = 64
        Width = 121
        Height = 20
        DataField = 'CodeNoName'
        DataSource = frmDM.dsCodeMaster
        ImeMode = imHanguel
        TabOrder = 6
        OnEnter = setEnterColor
        OnExit = setExitColor
      end
      object dbcMasterUseYn: TDBCheckBox
        Left = 112
        Top = 88
        Width = 21
        Height = 19
        DataField = 'UseYn'
        DataSource = frmDM.dsCodeMaster
        TabOrder = 7
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
        OnEnter = setCheckEnterColor
        OnExit = dbcMasterUseYnExit
      end
    end
    inherited Panel1: TPanel
      Top = 663
      Width = 732
      TabOrder = 2
      inherited sbtnFormClose: TSpeedButton
        Left = 630
        Hint = ''
        ParentShowHint = False
      end
      object sbtnDelete: TSpeedButton
        Left = 102
        Top = 7
        Width = 90
        Height = 35
        Hint = #49440#53469#46108' '#49345#49464#53076#46300#47484' '#49324#50857#54616#51648' '#50506#51020#51004#47196' '#49444#51221#54620#45796'.'
        Caption = 'Delete'
        Flat = True
        ParentShowHint = False
        ShowHint = True
        OnClick = sbtnDeleteClick
      end
      object sbtnMasterDelete: TSpeedButton
        Left = 6
        Top = 7
        Width = 90
        Height = 35
        Hint = #48516#47448#53076#46300#47484' '#49324#50857#54616#51648' '#50506#51020#51004#47196' '#49444#51221#54620#45796'.'
        Caption = 'Delete Master'
        Flat = True
        ParentShowHint = False
        ShowHint = True
        OnClick = sbtnMasterDeleteClick
      end
    end
  end
  inherited pl_Left: TPanel
    Width = 302
    Height = 722
    inherited splitLeftHorizontal: TSplitter
      Width = 300
    end
    inherited pl_LeftClient: TPanel
      Width = 300
      Height = 571
      object dbgCodeMaster: TDBGrid
        Left = 9
        Top = 9
        Width = 282
        Height = 553
        Hint = #48516#47448#53076#46300#47484' '#49440#53469#54616#47732' '#50864#52769#50640' '#49345#49464#53076#46300' '#45236#50669#51012' '#54364#49884#54620#45796'.'
        Align = alClient
        BorderStyle = bsNone
        Ctl3D = False
        DataSource = frmDM.dsCodeMaster
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = #44404#47548#52404
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodeNo'
            Title.Alignment = taCenter
            Title.Caption = #53076#46300
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodeNoName'
            Title.Alignment = taCenter
            Title.Caption = #48516#47448#47749#52845
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UseYn'
            Title.Alignment = taCenter
            Title.Caption = #49324#50857
            Width = 36
            Visible = True
          end>
      end
    end
    inherited pl_LeftTop: TPanel
      Width = 300
      object Label5: TLabel [0]
        Left = 16
        Top = 32
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = #48516#47448#47749#52845
        FocusControl = dbeCodeDetailName
        Layout = tlCenter
      end
      object Label6: TLabel [1]
        Left = 16
        Top = 56
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = #49324#50857#51473
        FocusControl = dbcUseYn
        Layout = tlCenter
      end
      inherited pl_LeftTopBtns: TPanel
        Width = 282
        inherited sbtnSearch: TSpeedButton
          Left = 181
          Hint = #51312#54924#51312#44148#50640' '#47582#45716' '#51088#47308#47484' '#44160#49353#54616#50668' '#54364#49884#54620#45796'.'
          ParentShowHint = False
          OnClick = sbtnSearchClick
        end
      end
      object edtCodeName: TEdit
        Left = 102
        Top = 32
        Width = 121
        Height = 20
        Hint = #48516#47448#47749#52845#47749' '#46608#45716' '#44160#49353#50612#44032' '#54252#54632#46108' '#48516#47448#53076#46300#47484' '#44160#49353#54620#45796'.'
        ImeMode = imHanguel
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object cbxUseYn: TCheckBox
        Left = 104
        Top = 56
        Width = 17
        Height = 17
        Hint = #49324#50857#51473#51064' '#51088#47308#47564' '#51312#54924#54620#45796'.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object btnClearCondition: TButton
        Left = 225
        Top = 30
        Width = 18
        Height = 22
        Hint = #51312#54924#51312#44148#51012' '#51228#44144#54616#44256' '#45796#49884' '#51312#54924#54620#45796'.'
        Caption = 'X'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = btnClearConditionClick
      end
    end
  end
end
