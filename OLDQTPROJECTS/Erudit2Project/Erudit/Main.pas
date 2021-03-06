{v 1.6.x}
unit Main;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, Menus, StdCtrls, Routines, Procs, VirtOpp, ShellAPI,
  AppEvent, MPlayer, RXCtrls, RxGIF,  ErrorMes, Optns, GameOver, NewGame, StrUtils,
  Buttons, SaveGame, _About, ImgList, hh, hh_funcs, bass, Animate, GIFCtrl, Clipbrd,
  ComCtrls, Mask, ToolEdit, Math,CheckLst,TNTStdCtrls, TNTComCtrls, TNTButtons, TNTCheckLst,TNTClasses,
  TntMenus, SevenZipVCL;

type
MYAddFontResourceEx = function(p1: PChar; p2: DWORD; p3:pointer):integer; stdcall;
{��� ��������� ���� ����}
TMainScreen = class(TForm)
    MainMenu1: TTntMainMenu;
    ChoiceFieldImage: TImage;
    InGameButtongGo: TImage;
    InGameButtongChangeLetters: TImage;
    FlashTimer: TTimer;
    InGameButtongHint: TImage;
    Prevalue1: TLabel;
    Prevalue2: TLabel;
    Prevalue3: TLabel;
    Prevalue4: TLabel;
    Prevalue5: TLabel;
    Prevalue6: TLabel;
    Prevalue7: TLabel;
    InGameButtongPreview: TImage;
    SystemTimer: TTimer;
    ElaspedTimer: TTimer;
    Marker1: TImage;
    Marker2: TImage;
    MediaPlayer1: TMediaPlayer;
    Comment1: TTntLabel;
    Comment2: TTntLabel;
    Comment3: TTntLabel;
    MoveTimer: TTimer;
    AppEvents1: TAppEvents;
    InGameTagSponsorLogo: TImage;
    RepaintImage: TImage;
    MenuButton1: TImage;
    MenuButton2: TImage;
    MenuButton3: TImage;
    ScreenButtonTitleNewGame: TTntLabel;
    ScreenButtonTitleLoadGame: TTntLabel;
    ScreenButtonTitleExit: TTntLabel;
    MenuBgr: TImage;
    InGameLabel: TTntLabel;
    MenuButton4: TImage;
    ContextHelpMenu: TTntPopupMenu;
    PopupPanel: TPanel;
    InGameTagDeselect: TTntLabel;
    PopupTimer: TTimer;
    PopupPanel1: TPanel;
    InGameTagChangeBlankTile: TTntLabel;
    DelImage: TImage;
    InGameButtongInfo: TImage;
    InGameButtongConfig: TImage;
    InGameButtongSaveGame: TImage;
    InGameButtongLoadGame: TImage;
    Comment4: TTntLabel;
    InfoTimer: TTimer;
    Prevalue8: TLabel;
    Prevalue9: TLabel;
    Prevalue10: TLabel;
    Prevalue11: TLabel;
    Prevalue12: TLabel;
    Prevalue13: TLabel;
    Prevalue14: TLabel;
    Prevalue15: TLabel;
    MoveLetterTimer: TTimer;
    Image226: TImage;
    Image1: TImage;
    MessageTimer: TTimer;
    SpeedButton1: TSpeedButton;
    FlashAnnounce: TTntLabel;
    ChoicePanel: TPanel;
    Logo_White: TImage;
    InGameLabelExplanationPanel: TTntLabel;
    MenuButton5: TImage;
    ExplCBox: TTntComboBox;
    ScreenButtonTitleContinue: TTntLabel;
    MenuButton6: TImage;
    ScreenButtonTitleLastPlayer: TTntLabel;
    MenuGameExit: TTntMenuItem;
    N16: TTntMenuItem;
    MenuGameConfig: TTntMenuItem;
    MenuGameBestScore: TTntMenuItem;
    N15: TTntMenuItem;
    MenuGameDemo: TTntMenuItem;
    MenuGameEnd: TTntMenuItem;
    MenuGameLoad: TTntMenuItem;
    MenuGameSave: TTntMenuItem;
    MenuGameNew: TTntMenuItem;
    N2: TTntMenuItem;
    MenuLens: TTntMenuItem;
    x: TTntMenuItem;
    MenuHelp: TTntMenuItem;
    MenuIntellect: TTntMenuItem;
    MenuGame: TTntMenuItem;
    MenuHelpGameSite: TTntMenuItem;
    N27: TTntMenuItem;
    MenuHelpComputeScore: TTntMenuItem;
    MenuHelpHInt: TTntMenuItem;
    N20: TTntMenuItem;
    MenuHelpAbout: TTntMenuItem;
    MenuHelpHowStartGame: TTntMenuItem;
    MenuHelpRules: TTntMenuItem;
    MenuHelpGame: TTntMenuItem;
    N22: TTntMenuItem;
    MenuIntellectHigh: TTntMenuItem;
    MenuIntellectNormal: TTntMenuItem;
    MenuIntellectLow: TTntMenuItem;
    N7: TTntMenuItem;
    SevenZip1: TSevenZip;
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure MakeImageList(count:word; mode:byte);
    procedure MMove(Sender: TObject; Shift: TShiftState;
    X, Y: Integer);
    procedure Click(Sender: TObject);
    procedure MainScreenImageClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label1Click(Sender: TObject);
    procedure RightMBClick(Sender:TObject; Button:TMouseButton; Shift:TShiftState; X,Y:integer);
    procedure InGameButtongGoClick(Sender: TObject);
    procedure InGameButtongChangeLettersClick(Sender: TObject);
    procedure FlashTimerTimer(Sender: TObject);
    procedure MenuGameExitClick(Sender: TObject);
    procedure MenuHelpHIntClick(Sender: TObject);
    procedure InGameButtongHintClick(Sender: TObject);
    procedure MenuHelpComputeScoreClick(Sender: TObject);
    procedure InGameButtongPreviewClick(Sender: TObject);
    procedure MenuIntellectHighClick(Sender: TObject);
    procedure MenuIntellectNormalClick(Sender: TObject);
    procedure MenuIntellectLowClick(Sender: TObject);
    procedure MenuGameConfigClick(Sender: TObject);
    procedure SystemTimerTimer(Sender: TObject);
    procedure ElaspedTimerTimer(Sender: TObject);
    procedure MenuGameEndClick(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure TimeTerminal1DblClick(Sender: TObject);
    procedure Comment1DblClick(Sender: TObject);
    procedure MoveTimerTimer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MenuGameSaveClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure GoButton1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure MenuHelpAboutClick(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure MenuGameBestScoreClick(Sender: TObject);
    procedure MediaPlayer1Notify(Sender: TObject);
    //procedure MenuHelpAlphabetClick(Sender: TObject);
    procedure MenuHelpRulesClick(Sender: TObject);
    procedure MenuHelpHowStartGameClick(Sender: TObject);
    procedure InGameTagSponsorLogoClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure MenuHelpGameClick(Sender: TObject);
    //procedure WordReference(Sender:TObject);
    procedure contextitemClick(Sender: TObject);
    procedure MenuHelpGameSiteClick(Sender: TObject);
    procedure Score1Click(Sender: TObject);
    procedure Time1Click(Sender: TObject);
    procedure Time2Click(Sender: TObject);
    procedure Score2Click(Sender: TObject);
    procedure MainMessageClick(Sender: TObject);
    procedure PlayerName2ShadowClick(Sender: TObject);
    procedure PlayerName1ShadowClick(Sender: TObject);
    procedure PopupTimerTimer(Sender: TObject);
    procedure StarFlashTimerTimer(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuGameDemoClick(Sender: TObject);
    procedure InGameButtongInfoClick(Sender: TObject);
    procedure InfoTimerTimer(Sender: TObject);
    procedure MoveLetterTimerTimer(Sender: TObject);
    procedure MessageTimerTimer(Sender: TObject);
    procedure AppMinimize(Sender: TObject);
    procedure AppRestore(Sender: TObject);
    procedure AppActivate(Sender: TObject);
    procedure AppIdle(Sender: TObject; var Done: Boolean);
    procedure AppHint(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure LoadGlobalTextStrings(Mode:byte);
    procedure AppEvents1Exception(Sender: TObject; E: Exception);
    procedure InGameLabelExplanationPanelClick(Sender: TObject);
    procedure ExplCBoxChange(Sender: TObject);
    procedure ExplCBoxCloseUp(Sender: TObject);
    procedure ExplCBoxExit(Sender: TObject);
    procedure ExplCBoxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MenuButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MenuLensClick(Sender: TObject);
    procedure AppEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure MainMenu1Change(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure AppEvents1ShowHint(var HintStr: String; var CanShow: Boolean;
      var HintInfo: THintInfo);
    procedure SevenZip1Listfile(Sender: TObject; Filename: WideString;
      Fileindex, FileSizeU, FileSizeP, Fileattr, Filecrc: Cardinal;
      Filemethod: WideString; FileTime: Double);
    procedure SevenZip1OpenVolume(var arcFileName: WideString;
      Removable: Boolean; out Cancel: Boolean);
  private
    { Private declarations }
    procedure CloseRefWindow(Sender: TObject);
    procedure ActivateRefWindow(Sender: TObject);
    procedure PaintRefWindow(Sender: TObject);
    procedure ExButtonClick(Sender: TObject);
    procedure CopyToBuffer(Sender: TObject);
    //procedure WMNCPaint(var Msg: TWMNCPaint); message WM_NCPAINT;
    procedure WMNCActivate(var Message: TWMNCActivate); message WM_NCACTIVATE;
    //procedure WMGetMinMaxInfo(var msg: TWMGetMinMaxInfo); message WM_GETMINMAXINFO;
    //procedure WMNCLBUTTONDOWN(var message: TMessage); message WM_NCLBUTTONDOWN;
    //procedure WMWINDOWPOSCHANGING(var message: TMessage); message WM_WINDOWPOSCHANGING;
   public
    { Public declarations }
  end;



var
  MainScreen: TMainScreen;
  MainBackgroundBackup:TPicture; MainBackground:array[1..3] of TPicture;
  ExplPanelBackground:TPicture;
  { ���������� ���� }
  MPosX,MPosY,MposXOld,MPosYOld:integer;
  CursorStatus:-100..100; Button:TMouseButton;
  Flag1:byte;
  GameField:TRect;
  LoadItem:TTNTMenuItem;
  InitialRect:TRect;
  InitialDeviceMode:TDevMode;
  BackgroundImage:string;
  TempGifImage:TGifImage;
  mHHelp: THookHelpSystem;
  TempImage:TImage;
  ShowSelection:boolean;
  Temp1,Temp2:word;

  ActiveLetterForm:TForm;

procedure DrawShadows(ImageToShade:TImage; x, y : Integer; Opaque:integer; Shadow:boolean);
Procedure CreatePlayersForms;
Procedure ShowTitleMenu;

implementation

uses hallfm, Splash, binfo, Strwnd, PlImages;

procedure LoadGrafix; forward;
procedure StartGame; forward;
//Procedure PrepareSevenLettersSlots; Forward;
Procedure EndCurrentGame; forward;
Procedure InitMoveTimer(pl:byte); forward;
Procedure ShowNewGameScreen; Forward;
Procedure GatherLettersFromWorkField; Forward;
Procedure DoChoiceScreen(Pl:byte; Mode:byte);Forward;
Procedure PrepareColorMatching(MapFileName:string);Forward;

var
  MYAFREX:MyAddFontResourceEx;
  hDLL: THandle;
  TempCodes:array[1..10] of 0..4; i:byte;

{$R *.DFM}

procedure TMainScreen.WMNCActivate(var Message: TWMNCActivate);
begin
  //inherited;
  Message.Result := 1;
end;

{ ������ �� ��������� ���� }
{---------------------------------------------------------------}
{procedure TMainScreen.WMNCPaint(var Msg: TWMNCPaint);
 var
   ACanvas: TCanvas; TempGraphic:TBitmap;
 begin
   inherited;
   TempGraphic:=TBitmap.Create;
   TempGraphic.LoadFromFile('grafix\classic\border.bmp');
   ACanvas := TCanvas.Create;
   try
     ACanvas.Handle := GetWindowDC(MainScreen.Handle);
     with ACanvas do
      begin
       Brush.Color := clActiveCaption;
       Font.Name := 'Tahoma';
       Font.Size := 8;
       Font.Color := clred;
       Font.Style := [fsItalic, fsBold];
       stretchdraw(Rect(1,1,MainScreen.width, 32), TempGraphic);
       TextOut(GetSystemMetrics(SM_CYMENU) + GetSystemMetrics(SM_CXBORDER),
         Round((GetSystemMetrics(SM_CYCAPTION) - Abs(Font.Height)) / 2) + 1, GlobalTextStrings.Items.Values['Title']+' 1.6 beta '+GlobalTextStrings.Items.Values['TitleSuffixWithExplanatoryDictionary']);
     end;
   finally
     ReleaseDC(MainScreen.Handle, ACanvas.Handle);
     TempGraphic.Free;
     ACanvas.Free;
   end;
 end;}
{ ��������� ���� }
{---------------------------------------------------------------}
function GetSystemLanguage:string;
var
  ID: LangID;
  Language: array [0..100] of char;
  hK: HKey;  Value: string;
  L,Res: dword; regtype:pdword; r:lcid;
begin
  // hDLL := LoadLibrary(PCHAR('Kernel32.dll'));
  // @MYMKLCID:= GetProcAddress(hDLL,PCHAR('MakeLCID'));
  //R:=GetUserDefaultLCID;
  //ID:=GetLocaleInfo(R,LOCALE_SLANGUAGE,Language, 100);
  //ShowMessage(string(Language));
   Res:=RegOpenKey(HKEY_CURRENT_USER, 'Control Panel\International\', hK);
   if RegQueryValueEx(hK,pchar('sLanguage'), nil, nil, nil, @L) = ERROR_SUCCESS then
     begin SetLength(Value, L);
           RegQueryValueEx(hK,pchar('sLanguage'),nil,nil, Pbyte(PChar(Value)),@L);
       end;
   RegCloseKey(hK);
   Result:=LeftStr(Value,3);
end;

{---------------------------------------------------------------}
{ ����������� ���������� }
procedure TMainScreen.AppMinimize(Sender: TObject);
begin
 ApplicationMinimized:=true;
end;
{---------------------------------------------------------------}
{ �������������� ���������� }
procedure TMainScreen.Apprestore(Sender: TObject);
begin
  ApplicationMinimized:=false;
 For I:=1 to 10 do If MessageForms[I]<>nil Then MessageForms[I].show;
end;
{---------------------------------------------------------------}
{ ��������� ���������� }
procedure TMainScreen.AppIdle(Sender: TObject; var Done: Boolean);
begin
end;
{---------------------------------------------------------------}
{ ��������� ���������� }
procedure TMainScreen.AppActivate(Sender: TObject);
begin
//FormPaint(MainScreen);
end;
{---------------------------------------------------------------}
{ ����� ���� }
procedure TMainScreen.AppHint(Sender: TObject);
begin
MainScreen.Update;
end;
{---------------------------------------------------------------}
{ ������������ ���� ������ }
procedure MinimizeWindow(PLForm:TForm);
begin
 { �������� �� ������� ������� ��������������}
 If (PLForm.FindComponent('MinButt'+IntToStr(PLForm.Tag)) as TSpeedButton).Tag<>100 Then begin
                                                 If (PLForm.Tag=1) or (PlayersNumber<4) and not GameLoading Then exit;
                                                 If PLForm.HelpContext=666 Then exit; {�������� �� ����������� ����}
                                                                                         end;
 (PLForm.FindComponent('Pl'+IntToStr(PLForm.Tag)+'Im') as TControl).Hide;
 (PLForm.FindComponent('Pl'+IntToStr(PLForm.Tag)+'bord') as Tshape).Hide;
 (PLForm.FindComponent('Sc'+IntToStr(PLForm.Tag)+'Im') as TImage).Top:=27;
 (PLForm.FindComponent('Sc'+IntToStr(PLForm.Tag)+'Label') as TLabel).Top:=34;
 (PLForm.FindComponent('Arrow'+IntToStr(PLForm.Tag)) as TRXGIFAnimator).Top:=5;
  PLForm.Height:=75;
  With (PLForm.FindComponent('MinButt'+IntToStr(PLForm.Tag)) as TSpeedButton) do begin
  Caption:='o'; Hint:=GlobalTextStrings.Items.Values['UserWindowTagButtonMaximaze'];
  end;
end;
{---------------------------------------------------------------}
{ ��������� ���� ������ }
procedure MaximizeWindow(PLForm:TForm);
var I:byte;
begin
 { �������� �� ������� ������� ��������������}
 If (PLForm.FindComponent('MinButt'+IntToStr(PLForm.Tag)) as TSpeedButton).Tag<>100 Then begin
                                                 If (PLForm.Tag=1) or (PlayersNumber<4) Then exit;
                                                 If PLForm.HelpContext=666 Then exit; {�������� �� ����������� ����}
                                                                                         end;
 (PLForm.FindComponent('Pl'+IntToStr(PLForm.Tag)+'Im') as TControl).show;
 (PLForm.FindComponent('Pl'+IntToStr(PLForm.Tag)+'bord') as TControl).show; 
 (PLForm.FindComponent('Sc'+IntToStr(PLForm.Tag)+'Im') as TImage).Top:=(PLForm.FindComponent('Pl'+IntToStr(PLForm.Tag)+'Im') as TControl).Top+(PLForm.FindComponent('Pl'+IntToStr(PLForm.Tag)+'Im') as TControl).Height+7;
 (PLForm.FindComponent('Sc'+IntToStr(PLForm.Tag)+'Label') as TLabel).Top:=(PLForm.FindComponent('Sc'+IntToStr(PLForm.Tag)+'Im') as TControl).Top+7;
 (PLForm.FindComponent('Arrow'+IntToStr(PLForm.Tag)) as TRXGIFAnimator).Top:=(PLForm.FindComponent('Pl'+IntToStr(PLForm.Tag)+'Im') as TControl).Top+95;
 If MoveLimit or TimeLimit Then PlForm.height:=360 Else PlForm.height:=320;
 If PLForm.BoundsRect.Bottom>Screen.Height Then PLForm.Top:=Screen.Height-PLForm.Height;
  With (PLForm.FindComponent('MinButt'+IntToStr(PLForm.Tag)) as TSpeedButton) do begin
  Caption:='y'; Hint:=GlobalTextStrings.Items.Values['UserWindowTagButtonMinimaze'];
  end;
end;
{---------------------------------------------------------------}
{ ����� ��������� ���� }
procedure AdjustWindows;
var I:byte; AreaRect:TRect;
begin
 If GameLoading then exit;
 If (PlayersNumber<4) Then exit;
 SystemParametersInfo(SPI_GETWORKAREA, 0, @AreaRect, 0);
 If (MoveIs>1) Then
   If (PlayerForms[1].top+(PlayerForms[0].Height+75*(PlayersNumber-2)))>AreaRect.Bottom Then
      PlayerForms[1].top:=(Screen.Height div 2)-((PlayerForms[0].Height+75*(PlayersNumber-2)) div 2)
                                                                                    Else
               Else
   PlayerForms[1].top:=MainScreen.Top+20;
   if PlayerForms[1].top<AreaRect.Top Then PlayerForms[1].top:=AreaRect.Top+1;
   For I:={MoveIs-1}2 to length(PlayerForms)-1 Do
       If (I<>1) and (PlayerForms[I].HelpContext<>666) Then
          If PlayerForms[I-1].BoundsRect.Bottom+2+PlayerForms[I].Height<Screen.Height
            Then PlayerForms[I].Top:=PlayerForms[I-1].BoundsRect.Bottom+2;

end;
{---------------------------------------------------------------}
{ ���������� ������������ }
procedure FillComments;
begin
case PCIntellect of
 Low: MainScreen.Comment1.Caption:=GlobalTextStrings.Items.Values['InGameInfoIntellectLow'];
 Middle: MainScreen.Comment1.Caption:=GlobalTextStrings.Items.Values['InGameInfoIntellectNormal'];
 High: MainScreen.Comment1.Caption:=GlobalTextStrings.Items.Values['InGameInfoIntellectHigh'];
end;
MainScreen.Comment2.Caption:='';
If Limit='' then
 MainScreen.Comment2.Caption:=GlobalTextStrings.Items.Values['InGameInfoLimitsNo']
            else begin
If copy(Limit,1,pos('-',Limit)-1)='Score' Then
 MainScreen.Comment2.Caption:=AnsiReplaceText(GlobalTextStrings.Items.Values['InGameInfoLimitsScore'],'%s',Trim(copy(Limit,pos('-',Limit)+1,5)));
If copy(Limit,1,pos('-',Limit)-1)='Time' Then
 MainScreen.Comment2.Caption:=AnsiReplaceText(GlobalTextStrings.Items.Values['InGameInfoLimitsTime'],'%s',Trim(copy(Limit,pos('-',Limit)+1,5)));
If pos('Move',Limit)<>0 Then
 If MainScreen.Comment2.Caption<>'' Then
     MainScreen.Comment2.Caption:=MainScreen.Comment2.Caption+'. '+Options.LimitsComboboxListMoveTime.Items[StrToInt(copy(Limit,pos('Move',Limit)+5,1))-1]+GlobalTextStrings.Items.Values['InGameInfoLimitsSuffixMoveTime']
                                    Else
      MainScreen.Comment2.Caption:=GlobalTextStrings.Items.Values['InGameInfoLimitsMoveTime']+Options.LimitsComboboxListMoveTime.Items[StrToInt(copy(Limit,pos('Move',Limit)+5,1))-1];
                 end;
If Theme='' Then
 MainScreen.Comment3.Caption:=GlobalTextStrings.Items.Values['InGameInfoDictionaryMax']
             Else
If Theme=DictSpec[0] Then
 MainScreen.Comment3.Caption:=GlobalTextStrings.Items.Values['InGameInfoDictionaryNormal']
                     Else
If Theme=DictSpec[6] Then
 MainScreen.Comment3.Caption:=GlobalTextStrings.Items.Values['InGameInfoDictionaryChildren']
                     Else
 MainScreen.Comment3.Caption:=GlobalTextStrings.Items.Values['InGameInfoDictionaryExtended'];

 MainScreen.Comment3.Caption:=MainScreen.Comment3.Caption+chr(13)+GlobalTextStrings.Items.Values['TitleCaptionCurrentDictLanguage']+GetLanguageName(LanguageDict);
If PlayBackgroundMusic and (Options.MusicListboxSelectedSongs.Items.Count<>0) Then
 MainScreen.Comment4.Caption:=GlobalTextStrings.Items.Values['InGameInfoMusicTitle']+Options.MusicListboxSelectedSongs.Items[PlaySong]
                       Else
 MainScreen.Comment4.Caption:=''
end;

{---------------------------------------------------------------}
{ ���� r ��������� }
procedure DrawShadows(ImageToShade:TImage; x, y : Integer; Opaque:integer; Shadow:boolean);
var
  Alpha: TBitmap; TempBitmap:TBitmap;
  i,j,Delta:integer;
  r,g,b:extended;
  tempRgn:hrgn;
  WinCode:1..2;
begin
  if not ShowShadows then exit;
  try
  If ImageToShade.Parent<>RC_Form Then WinCode:=1 Else WinCode:=2;
  Alpha:=TBitmap.Create;
  Alpha.Width:=ImageToShade.Width;
  Alpha.Height:=ImageToShade.Height;
  TempBitmap:=TBitmap.Create;
  try
  TempBitmap.Assign(ImageToShade.Picture);
  except end;
  For i:=x To x+Alpha.Width Do
   For j:=y To y+Alpha.Height Do begin
   If Shadow Then begin
      Delta:=MainBackground[WinCode].Bitmap.Canvas.Pixels[i,j];
      If TempBitmap.Canvas.Pixels[i-x,j-y]<>clFuchsia Then
          begin
          r := GetRValue(Delta); g := GetGValue(Delta); b := GetBValue(Delta);
          r := r-((r/Opaque)*100);  g := g-((g/Opaque)*100);  b := b-((b/Opaque)*100);
          if r < 0 then r := 0; if g < 0 then g := 0; if b < 0 then b := 0;
          if r > 255 then r := 255; if g >255 then g := 255; if b >255 then b := 255;
          Delta := RGB(byte(trunc(r)),byte(trunc(g)),byte(trunc(b)));
           end;
                  end
              Else
      Delta:=MainBackgroundBackup.Bitmap.Canvas.Pixels[i,j];
   Alpha.Canvas.Pixels[i-x,j-y]:=Delta;
                                     end;
MainBackground[WinCode].bitmap.Canvas.Draw(x,y,Alpha);
MainScreen.RepaintImage.Left:=x; MainScreen.RepaintImage.Top:=y;
MainScreen.RepaintImage.Width:=ImageToShade.Width; MainScreen.RepaintImage.Height:=ImageToShade.Height;
MainScreen.RepaintImage.Invalidate;
ImageToShade.Repaint;
finally Alpha.Free; TempBitmap.Free; end;
end;

{---------------------------------------------------------------}
{��������� �������������� ������}
{procedure TMainscreen.WMGetMinMaxInfo(var msg:
TWMGetMinMaxInfo);
begin
 inherited;
 with msg.MinMaxInfo^.ptMaxTrackSize do begin
   X := GetDeviceCaps( Canvas.handle, HORZRES ) +
(Width - ClientWidth);
   Y := GetDeviceCaps( Canvas.handle, VERTRES ) +
(Height - ClientHeight );
 end;
end;

function SetFullscreenMode:Boolean;
var DeviceMode : TDevMode;
begin
  with DeviceMode do begin
    dmSize:=SizeOf(DeviceMode);
    dmBitsPerPel:=16;
    dmPelsWidth:=800;
    dmPelsHeight:=600;
    dmDisplayFrequency:=85;
    dmFields:=DM_BITSPERPEL or DM_PELSWIDTH or DM_PELSHEIGHT or DM_DISPLAYFREQUENCY;
    result:=False;
    if ChangeDisplaySettings(DeviceMode,CDS_TEST or CDS_FULLSCREEN) <> DISP_CHANGE_SUCCESSFUL  then Exit;
    Result:=ChangeDisplaySettings(DeviceMode,CDS_FULLSCREEN) = DISP_CHANGE_SUCCESSFUL;
      end;
      end;

function RestoreDefaultMode:boolean;
var DeviceMode: ^TDevMode;
begin
    DeviceMode:=nil;
    ChangeDisplaySettings(DeviceMode^,CDS_FULLSCREEN);
end;}

{---------------------------------------------------------------}
{������� �������� ����� � ���� ������ � ����}
Function TakeLetter(Mode:byte; Opp:byte; Letter:char; TempX,TempY:word):boolean;
var I,X,Y:word; XPix,YPix,Id,J,S:integer; Im, ActiveIm:TImage; ScreenCoord:TPoint; TransferForm:TForm;
begin
TransferLetterOn:=true; ActiveIm:=nil;
S:=0; For J:=1 To 7 Do If Slot7[Opp,J].Letter=' ' Then begin S:=J; break; end;
If WhatIDoNow=Take Then If J=8 Then exit;
For I:=0 To (WorkFieldDimentionX*WorkFieldDimentionY)-1 Do begin
   Im:=Letters[i];
   If ((Im.Left=(TempX-1)*28) and (Im.Top=(TempY-1)*28) and (Im.Tag=-1))
   or ((Im.Left=(TempX-1)*28+19) and (Im.Top=(TempY-1)*28+19) and (Im.Tag<>-1))  Then
                          If ((Mode=Take) and (Im.Tag=-1))
                          or ((Mode=Play) and (Im.Tag=Opp)) Then begin
                           ActiveIm:=Im;
                           ActiveIm.Picture:=Images[1,GetLetterNum(ActiveIm.Hint[1])+1];
                           ActiveIm.BringToFront;
                           ActiveIm.Enabled:=false;
                           break;
                                                                 end;
                     end;
 If ActiveIm=nil Then begin TransferLetterOn:=false; TakeLetter:=false; exit; end;
 Slot7[Opp,S].Letter:=ActiveIm.Hint[1];
 ScreenCoord.X:=(TempX-1)*28; Screencoord.Y:=(TempY-1)*28;
 ClientToScreen(MainScreen.ChoicePanel.Handle,ScreenCoord);
 Id:=ScreenCoord.X; XPix:=ScreenCoord.X; YPix:=ScreenCoord.Y;

 TransferForm:=TForm.Create(Application);
 TransferForm.FormStyle:=fsStayOnTop; TransferForm.BorderStyle:=bsNone; TransferForm.AutoSize:=true;
 //Pl_Form.Width:=170; Pl_Form.height:=360;
 TransferForm.Left:=Id; TransferForm.Top:=YPix;
 TransferForm.OnActivate:=bonusInfo.OnActivate;
 TransferForm.OnCloseQuery:=SplashScreen.FormCloseQuery;
 TransferForm.OnKeyPress:=MainScreen.OnKeyPress;

 ActiveIm.Parent:=TransferForm; ActiveIm.Left:=0; ActiveIm.Top:=0; ActiveIm.Show;
 If not ApplicationMinimized Then TransferForm.Show;

 ScreenCoord.X:=Slot7[Opp,S].SlotX; Screencoord.Y:=Slot7[Opp,S].SlotY;
 ClientToScreen(PlayerForms[Opp-1].Handle,ScreenCoord);

 If Id >ScreenCoord.X THEN
 While (Id > ScreenCoord.X) Do begin
 X:=Id;
 Y:=((Id*(ScreenCoord.Y-YPix)-XPix*ScreenCoord.Y+YPix*ScreenCoord.X)div(ScreenCoord.X-XPix));
 TransferForm.Left:=X; TransferForm.Top:=Y;
 //If (X<190) and LettersAutoSelect Then ActiveIm.Show;
 TransferForm.Update;
 TimeDelay(10);
 Dec(Id,30);
                                    end
                      ELSE
 While Id < ScreenCoord.X Do begin
 X:=Id;
 Y:=((Id*(ScreenCoord.Y-YPix)-XPix*ScreenCoord.Y+YPix*ScreenCoord.X)div(ScreenCoord.X-XPix));
 TransferForm.Left:=X; TransferForm.Top:=Y;
 //If (X>600) and LettersAutoSelect Then ActiveIm.Show;
 TransferForm.Update;
 TimeDelay(10);
 inc(Id,30);
                             end;
 ActiveIm.Hide;
 ActiveIm.Parent:=PlayerForms[Opp-1];
 ActiveIm.Left:=Slot7[Opp,S].SlotX;
 ActiveIm.Top:=Slot7[Opp,S].SlotY;
 ActiveIm.Tag:=Opp;
 ActiveIm.Enabled:=True;
 { ShowCurrentTime; }
Case Mode of
Take: begin
        ActiveIm.Picture:=Images[1,GetLetterNum(WorkField[TempX,TempY].ForChoice)+1];
        ActiveIm.update;
        WorkField[TempX,TempY].ForChoice:=' ';
      end;
Play: begin
        WorkField[TempX,TempY].HotSpot:=' ';
        Flag1:=0;
      end;
end;
Slot7[Opp,S].Image:=I;
ActiveIm.Show; ActiveIm.Repaint;
ActiveIm:=nil;
TransferForm.Release;
TakeLetter:=true;
TransferLetterOn:=false;
end;

{---------------------------------------------------------------}
{��������� �������� �����}
Procedure ComputerDoChoice(Opp:byte);
var I,J:integer; StarsCount:0..3; Im:TImage; NextMove:byte;
begin
   MainScreen.InGameButtongGo.Cursor:=crNoDrop;
   MainScreen.InGameButtongChangeLetters.Cursor:=crNoDrop;
   MainScreen.InGameButtongHint.Cursor:=crNoDrop; MainScreen.MenuHelpHInt.Enabled:=false;
   MainScreen.InGameButtongPreview.Cursor:=crNoDrop; MainScreen.MenuHelpComputeScore.Enabled:=false;
 If not DemoMode Then Screen.Cursor:=crHourGlass;
 StarsCount:=0;

If not LettersAutoSelect Then begin

{��������� ����� �� ����������� �����}
If not MainScreen.ChoicePanel.Visible Then begin
If WhatIDoNow=Take Then begin
  MainScreen.ChoicePanel.Show; MainScreen.ChoicePanel.BringToFront;
                        end;
                              end;
                                 end;

{ ���� ����� �� ����������, ����, ���� ��� ����������� ��� ������ ����}
If PlayerForms[MoveIs-1].HelpContext<>666 Then
       While PlayerForms[MoveIs-1].Height<100 do Application.processmessages;

//If not StartLetterSelectionCompleted then MovesLog.Add(Players[Opp].Name+'='+'SLOT:');       
{�� ����� ���� ����� �� ������� ���������� �����}
 While (CheckSlots(Opp)<>0) and (LettersLeft>0)  Do begin
	   repeat
	   I:=random(WorkFieldDimentionX)+1; J:=random(WorkFieldDimentionY)+1;
           If ((WorkField[I,J].ForChoice=chr(FirstAlphCode+AlphCount)) and (PCIntellect>Low)) or
              ((WorkField[I,J].ForChoice=chr(FirstAlphCode+AlphCount)) and (Opponent=Human))
             Then If (StarsCount<1) or (LettersLeft<8) Then begin inc(StarsCount); break end;
	   Until (WorkField[I,J].ForChoice<>' ') and (WorkField[I,J].ForChoice<>chr(FirstAlphCode+AlphCount));
           If FinishGame Then Exit;
   	   If TakeLetter(Take,Opp,WorkField[I,J].ForChoice,I,J) Then begin
                    While TransferLetterOn Do Application.Processmessages;
                    dec(LettersLeft);
                    end;
			   end;
  { ���������� � ��� ��������� ����� }
  If TimeLimit Then If pos('ETIME:',MovesLog.Strings[MovesLog.Count-1])=0 Then
                 MovesLog.Strings[MovesLog.Count-1]:=MovesLog.Strings[MovesLog.Count-1]+'ETIME:'+IntToStr(StartMin)+'/'+IntToStr(StartSec)+',';
  If pos('SLOT:',MovesLog.Strings[MovesLog.Count-1])=0 Then MovesLog.Strings[MovesLog.Count-1]:=MovesLog.Strings[MovesLog.Count-1]+'SLOT:';
  For I:=1 to 7 Do MovesLog.Strings[MovesLog.Count-1]:=MovesLog.Strings[MovesLog.Count-1]+Slot7[MoveIs][i].Letter+'/'+IntToStr(Slot7[MoveIs][i].Image)+',';
  WhatIDoNow:=Take;
  Screen.Cursor:=crDefault;
end;

{---------------------------------------------------------------}
{ ����� ������ ���� }
Procedure DoChoiceScreen(Pl:byte; Mode:byte);
var I:integer; Im:TImage; NextMove:byte;
begin
   MainScreen.InGameButtongGo.Cursor:=crNoDrop;
   MainScreen.InGameButtongChangeLetters.Cursor:=crNoDrop;
   MainScreen.InGameButtongHint.Cursor:=crNoDrop;
   MainScreen.InGameButtongPreview.Cursor:=crNoDrop;
   MainScreen.MenuHelpHInt.Enabled:=False;
   MainScreen.MenuHelpComputeScore.Enabled:=False;
 If (LettersLeft=0) Then begin Mode:=Off_m; end;
 If FinishGame Then Exit;  If GameLoading Then GameLoading:=False;
 case Mode of
  On_m: begin
    If LettersAutoSelect or DemoMode Then begin ComputerDoChoice(MoveIs); exit; end;
    NextMove:=MoveIs+1; If NextMove>PlayersNumber Then NextMove:=1;
    MainScreen.ChoicePanel.Show; MainScreen.ChoicePanel.BringToFront;

    WhatIDoNow:=Take;
    MainScreen.FlashAnnounce.Caption:=GlobalTextStrings.Items.Values['StatusTakeLetters']+' '+Players[MoveIs].Name+' ';
    MainScreen.FlashAnnounce.Tag:=666;
    MainScreen.FlashAnnounce.Font.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGamePlayerColor1'],IntToStr(clLime)));
         end;
  Off_m: begin
     { ����� ��� � ���� �����, ������ ���� �� ��� ������ ��� �� ����� ����� � ������ ������ }
     //If not StartLetterSelectionCompleted then For I:=1 to 7 Do MovesLog.Strings[MovesLog.Count-1]:=MovesLog.Strings[MovesLog.Count-1]+Slot7[Pl][i].Letter+'/'+IntToStr(Slot7[Pl][i].Image)+',';
     While TransferLetterOn Do Application.ProcessMessages;
     MainScreen.InGameButtongGo.Cursor:=crHandPoint;
     MainScreen.InGameButtongChangeLetters.Cursor:=crHandPoint;
     If HintLimit>0 Then begin MainScreen.InGameButtongHint.Cursor:=crHandPoint;
                               MainScreen.MenuHelpHInt.Enabled:=true;
                           end
                    Else begin MainScreen.InGameButtongHint.Cursor:=crNoDrop;
                               MainScreen.MenuHelpHInt.Enabled:=false;
                           end;
  MainScreen.InGameButtongPreview.Cursor:=crHandPoint; MainScreen.MenuHelpComputeScore.Enabled:=true;
  NextMove:=MoveIs+1; If NextMove>PlayersNumber Then NextMove:=1;
  If (CheckSlots(NextMove)=0) or (LettersLeft=0) Then begin
  MainScreen.ChoicePanel.hide;
                                   end;
  inc(MoveIs); If MoveIs>PlayersNumber Then MoveIs:=1;
  Opponent:=Players[MoveIs].PLtype;
  If ((Opponent=PC) {and (MoveIs=2)}) or DemoMode
     Then begin
   //MainScreen.GoButton1.Hide; MainScreen.ChangeButton1.Hide;
   //MainScreen.GoButton2.Hide; MainScreen.ChangeButton2.Hide;
   //MainScreen.InGameButtongHint.Hide; MainScreen.InGameButtongHint.Update;
   //MainScreen.InGameButtongPreview.Hide; MainScreen.InGameButtongPreview.Update;

Pl_Form:=PlayerForms[MoveIs-1];
For I:=0 to PL_Form.ControlCount-1 Do begin
   If PL_Form.Controls[I].Name='Sc'+IntToStr(MoveIs)+'Label' Then
      ScoreLabel:=PL_form.Controls[I] as TLabel;
   If PL_Form.Controls[I].Name='Sc'+IntToStr(MoveIs)+'Im' Then
       ScoreDisplay:=Pl_Form.Controls[I] as TImage;
                                                  end;
   {   If MoveIs=2 Then begin ScoreDisplay:=MainScreen.ScoreDisplay2;
                          ScoreLabel:=MainScreen.Score2;
                      end;
   If MoveIs=1 Then begin ScoreDisplay:=MainScreen.ScoreDisplay1;
                          ScoreLabel:=MainScreen.Score1;
                      end;}
   {  �������������� ���������� ���� ���������}
   //ErrorWindow.Left:=MainScreen.Left; ErrorWindow.Top:=MainScreen.Top;
   if not DemoMode Then begin
   MainScreen.MenuGame.Enabled:=False;  MainScreen.MenuHelp.Enabled:=False;
   MainScreen.MenuIntellect.Enabled:=False;
                        end;
   MainScreen.InGameButtongSaveGame.cursor:=crNoDrop; MainScreen.InGameButtongLoadGame.cursor:=crNoDrop;
   If (CheckSlots(MoveIs)=0) or (LettersLeft=0) Then begin
      If MoveLimit Then InitMoveTimer(MoveIs);
      WhatIDoNow:=Play;
      PCMoveNumber:=1; PCMove(MoveIs,Move,FinishGame);
      If FinishGame Then begin EndCurrentGame; exit; end;
           If (PCIntellect=High) and (CheckSlots(MoveIs)<>7) and Not PCChangedLetters Then begin
           If MoveLimit Then MainScreen.MoveTimer.Enabled:=True;
           PCMoveNumber:=2; PCMove(MoveIs,Move,FinishGame);
           If FinishGame Then begin try EndCurrentGame; except;end; exit; end;
                                                                                           end;
                                end;
   WhatIDoNow:=Take;
   ComputerDoChoice(MoveIs);
   DoChoiceScreen(MoveIs,Off_m);
   If FinishGame Then begin try EndCurrentGame except end; exit; end;
   MainScreen.MenuGame.Enabled:=True;  MainScreen.MenuHelp.Enabled:=True;
   MainScreen.MenuIntellect.Enabled:=True;
   MainScreen.InGameButtongSaveGame.cursor:=crHandPoint; MainScreen.InGameButtongLoadGame.cursor:=crHandPoint;
   Screen.Cursor:=crDefault;
  end;
         end;
  end;
   If (CheckSlots(MoveIs)=7) and (LettersLeft=0) Then begin finishgame:=true; try EndCurrentGame; except;end; exit; end;
   If MoveLimit and (Opponent=PC) Then InitMoveTimer(MoveIs);
   If CheckSlots(MoveIs)=0 Then begin
    WhatIDoNow:=Play;
    If (BASS_ChannelIsActive(isPlaying)=BASS_ACTIVE_STOPPED) Then begin
                           If random(100)<33 Then
                             If PlaySounds Then isPlaying:=BASS_SamplePlay(YourMove1Sound)
                                             Else Else
                           If random(100)<66 Then
                             If PlaySounds Then isPlaying:=BASS_SamplePlay(YourMove2Sound)
                                             Else Else
                             If PlaySounds Then isPlaying:=BASS_SamplePlay(YourMove3Sound);
                                                                        end;
                                end;
end;

procedure LoadIndicator;
begin
If SplashScreen.Shape1.Width<134 Then begin
   SplashScreen.Shape1.Width:=SplashScreen.Shape1.Width+3;
   SplashScreen.Shape1.Refresh;
                                      end;
end;
{--------------------------------------------------}
{ �������� ������� �������� � ������� ����� � ����� }
Procedure LoadBackgroundBitmap;
var tempbitmap:TImage;
begin
MainBackGround[1].bitmap.Width:=800; MainBackGround[1].bitmap.Height:=600;
MainBackGround[2].bitmap.Width:=800; MainBackGround[2].bitmap.Height:=600;
MainBackGround[3].bitmap.Width:=800; MainBackGround[3].bitmap.Height:=600;
TempBitmap:=TImage.Create(MainScreen);
TempBitmap.Autosize:=True;
//TempBitmap.Picture.Bitmap.LoadFromFile('grafix\classic\erudit.bmp');
LoadSkinnedImage(TempBitmap.Picture, BackgroundImage);
//TempBitmap.Picture.Bitmap.Assign(TempBitmap.Picture);
LoadIndicator;
{If (TempBitmap.Picture.Bitmap.Width<800) or (TempBitmap.Picture.Bitmap.Height<600) Then
   MainBackGround.Canvas.StretchDraw(Rect(0,0,800,600),TempBitmap.Picture.Bitmap)
   Else} MainBackground[1].bitmap.Assign(TempBitmap.Picture.Graphic);
         MainBackground[2].bitmap.Assign(TempBitmap.Picture.Graphic);
 LoadIndicator;
with MainScreen do begin
 RepaintImage.Left:=0; RepaintImage.Top:=0; RepaintImage.Width:=10; RepaintImage.Height:=10;
 RepaintImage.Picture.Bitmap.Canvas.Brush.Color:=clFuchsia;
 RepaintImage.Picture.Bitmap.Canvas.Fillrect(Rect(0,0,10,10));
 RepaintImage.Transparent:=False; RepaintImage.Show;
{ DrawShadows(TempBitmap,176-5,47+7,512,True); LoadIndicator;
 DrawShadows(TempBitmap,176-3,47+5,512,True); LoadIndicator;
 DrawShadows(TempBitmap,176-2,47+3,512,True); LoadIndicator;}
end;
//MainBackGround[3].Canvas.Draw(0,0, TempBitmap.Picture.Bitmap);
//MainBackGround[2].Canvas.Draw(176,47, TempBitmap.Picture.Bitmap);
LoadIndicator;
MainBackgroundBackup.Bitmap.Width:=MainBackground[1].Width; MainBackgroundBackup.bitmap.Height:=MainBackground[1].Height;
MainBackgroundBackup.bitmap.Canvas.Draw(0,0,MainBackground[1].bitmap); LoadIndicator;
end;

{procedure TMainScreen.WordReference(Sender: TObject);
begin
mHHelp.HelpTopic('dic.htm');
end;}

{--------------------------------------------------}
{ ���������� ��������� ���� }
Procedure ShowTitleMenu;
var {TempSave:SaveFileType;} TempStrList:TStringList;
begin
With MainScreen do begin
MenuBgr.Left:=4*28+15; MenuBgr.Top:=2*28+5; MenuBgr.AutoSize:=true;
LoadSkinnedImage(MenuBgr.Picture,'menu');
LoadSkinnedImage(Menubutton1.Picture,'menubutt'); LoadIndicator;
{ �������� �� ����������� ������ }
If not Fileexists(CurrentDir+'\save\savelast.'+IntToStr(Players[1].code)) Then begin
     MenuBgr.AutoSize:=false; menuBgr.Height:=menuBgr.Height-58; menuBgr.Top:=menuBgr.Top+28;
     MenuButton6.Hide; ScreenButtonTitleContinue.Hide;
                                                   end
                                              Else begin
     If ExtractFile(CurrentDir+'\save\savelast.'+IntToStr(Players[1].code)) Then begin
        TempStrList:=TStringList.Create;
        LoadUnicodeFile(CurrentDir+'\$$$.tmp',TempStrList,nil,GetLanguageCodepage(LanguageDict)<>1251, convert);
        Deletefile(Pchar(CurrentDir+'\$$$.tmp'));
        try
         ScreenButtonTitleContinue.Hint:=ANSIReplaceText(TempStrList.values['Info'],'#',#$D#$A);
        finally  TempStrList.Free; end;
        MenuButton6.show; ScreenButtonTitleContinue.show;
                                                                                 end
                                                                            Else begin
     MenuBgr.AutoSize:=false; menuBgr.Height:=menuBgr.Height-58; menuBgr.Top:=menuBgr.Top+28;
     MenuButton6.Hide; ScreenButtonTitleContinue.Hide;
                                                                                 end;
                                                   end;
MenuButton1.Left:=MenuBgr.Left+(MenuBgr.Width-MenuButton1.Width) div 2-5;
MenuButton1.Top:=MenuBgr.Top+120;
ScreenButtonTitleNewGame.Left:=MenuButton1.Left+11; ScreenButtonTitleNewGame.Top:=MenuButton1.Top+6;
Menubutton2.Picture:=Menubutton1.Picture;
MenuButton2.Left:=MenuButton1.Left; MenuButton2.Top:=MenuButton1.Top+35;
ScreenButtonTitleLoadGame.Left:=MenuButton2.Left+11; ScreenButtonTitleLoadGame.Top:=MenuButton2.Top+6;
Menubutton3.Picture:=Menubutton1.Picture;
MenuButton3.Left:=MenuButton1.Left; MenuButton3.Top:=MenuButton2.Top+35;
ScreenButtonTitleExit.Left:=MenuButton3.Left+11; ScreenButtonTitleExit.Top:=MenuButton3.Top+6;
Menubutton4.Picture:=Menubutton1.Picture;
ScreenButtonTitleLastPlayer.Left:=MenuBgr.Left+10; ScreenButtonTitleLastPlayer.Top:=MenuBgr.Top+73;
ScreenButtonTitleLastPlayer.Width:=MenuBgr.Width-30; ScreenButtonTitleLastPlayer.Height:=50;
ScreenButtonTitleLastPlayer.Caption:=GlobalTextStrings.Items.Values['TitleCaptionCurrentPlayer']+' '+Players[1].Name+chr(13)+GlobalTextStrings.Items.Values['TitleCaptionCurrentDictLanguage']+' '+GetLanguageName(LanguageDict);
Menubutton6.Picture:=Menubutton1.Picture;
MenuButton6.Left:=MenuButton1.Left; MenuButton6.Top:=MenuButton3.Top+59;
ScreenButtonTitleContinue.Left:=MenuButton6.Left+11; ScreenButtonTitleContinue.Top:=MenuButton6.Top+6;
    end;
end;

{--------------------------------------------------}
{ �������� ���� ���� }
procedure TMainScreen.FormCreate(Sender: TObject);
var I,j:byte; z:word; sr, D:TSearchrec; song:SongFileType; TempBitmap:TPicture; //sh:TShape;
    Q:cardinal; PlayerImagePath:string; //AlphFile:textfile; //AlphStr:widestring;}
    TempStrList, INIList:TStrings; FontName:string; tempStr:string;

  //--------- ��������� ����� ������ �� ���������� ����� ---------------
  function GetFontName (FontFileA : PChar) : String;
  type
     TGetFontResourceInfoW = function (FontPath : PWideChar; var BufSize : DWORD; FontName : PWideChar; dwFlags : DWORD) : DWORD; stdcall;
  var
     GetFontResourceInfoW : TGetFontResourceInfoW; FontFileW : PWideChar;  FontNameW : PWideChar;
     FontFileWSize, FontNameSize : DWORD;
  begin
    Result := '';
    GetFontResourceInfoW := GetProcAddress(GetModuleHandle('gdi32.dll'), 'GetFontResourceInfoW');
    if @GetFontResourceInfoW = nil then Exit;
    if AddFontResource(FontFileA) = 0 then Exit;
    FontFileWSize := (Length(FontFileA)+1)*2;
    GetMem(FontFileW, FontFileWSize);
    StringToWideChar(FontFileA, FontFileW, FontFileWSize);
    FontNameSize := 0;
    FontNameW := nil;
    GetFontResourceInfoW (FontFileW, FontNameSize, FontNameW, 1);
    GetMem (FontNameW, FontNameSize);
    FontNameW^ := #0; // �� ������ ������-������ ������
    GetFontResourceInfoW (FontFileW, FontNameSize, FontNameW, 1);
    Result := FontNameW;
    FreeMem (FontFileW);  FreeMem (FontNameW);  RemoveFontResource(FontFileA);
   end;
   //------------------------
   function GetDefLanguage(WhatLang,WhatDir,WhatFile,WhatMessage:string):string;
   var TempStr:string; isLang:boolean;
   begin
      tempStr:=ANSILowerCase(TempStrList.Values[WhatLang]);
      isLang:=False;
      while not isLang and (tempStr<>'') Do
         If Fileexists(WhatDir+LeftStr(tempStr,3)+'\'+WhatFile)
           Then isLang:=true Else delete(TempStr,1,4);
         If tempStr='' Then begin
             If WhatMessage<>'' Then
                ShowMessage(TempStrList.Values[WhatMessage]);
                            end;
      Result:=LeftStr(tempStr,3);
   end;


begin
randomize;
ApplicationMinimized:=false;
Application.OnMinimize:=AppMinimize;
Application.OnRestore:=AppRestore;
Application.OnActivate:=AppActivate; Application.OnIdle:=AppIdle;

CurrentDir:=GetCurrentDir;
{���������� ���� �������}
Language:=GetSystemLanguage;
{ ������ ��� ��������� ������ ��� ���� }
TempStrList:=TStringList.Create;
LoadUnicodeFile('lang\default.txt',TempStrList,nil,GetLanguageCodepage(Language)<>1251, convert);
// ���������� ���� ������� �� ���������
LanguageDict:=GetDefLanguage('DictionaryLanguage','dict\','dictionary.txt','NoDictionaryFoundMessage');
// ���������� ���� ���������� �� ���������
LanguageExpl:=GetDefLanguage('ExplanatoryLanguage','dict\'+LanguageDict+'\expl\','explanatory.txt','');
// ���������� ���� ���������� �� ���������
GlobalTextStrings:=TTNTListBox.Create(MainScreen); GlobalTextStrings.Parent:=MainScreen;
GlobaltextStrings.hide;
//GlobaltextStrings.Width:=400;
If Fileexists('lang\'+Language+'\strings.txt') Then LoadUnicodeFile('lang\'+Language+'\strings.txt',nil,GlobalTextStrings,GetLanguageCodepage(Language)<>1251,noconvert)
                                                            Else begin
                                                                 Language:=GetDefLanguage('InterfaceLanguage','lang\','strings.txt','NoLanguageFoundMessage');
                                                                 GlobalTextStrings.Clear;
                                                                 LoadUnicodeFile('lang\'+Language+'\strings.txt',nil,GlobalTextStrings,GetLanguageCodepage(Language)<>1251,noconvert);
                                                                 end;

If (Language='') or (LanguageDict='') Then begin Application.Terminate; exit; end;

mHHelp := THookHelpSystem.Create('erudit.chm', '', htHHAPI);
SplashScreen.LoadProgressLabel.Caption:=GlobalTextStrings.Items.Values['LoadStatusFonts']; SplashScreen.LoadProgressLabel.Refresh;
//��������� ������
FindFirst('FONTS\*.*',0,sr);
repeat
  If win32Platform<>ver_platform_win32_nt Then begin
     AddFontResource(PChar('FONTS\'+sr.name));
     SendMessage (HWND_BROADCAST, WM_FONTCHANGE, 0, 0);
                              end
                         Else begin
   hDLL := LoadLibrary(PCHAR('gdi32.dll'));
   @MYAFREX:= GetProcAddress(hDLL,PCHAR('AddFontResourceExA'));
   Temp1:=MYAFREX(PChar(CurrentDir+'\FONTS\'+sr.name),FR_PRIVATE,0);
   FreeLibrary(hDLL);
   FontName:=GetFontName(PChar(CurrentDir+'\FONTS\'+sr.name));
   if pos('message',sr.name)<>0 Then FontNames[ttfMess]:=FontName Else
   if pos('player',sr.name)<>0 Then FontNames[ttfPlayer]:=FontName Else
   if pos('digital',sr.name)<>0 Then FontNames[ttfDigi]:=FontName Else
   if pos('splashes',sr.name)<>0 Then FontNames[ttfSplash]:=FontName Else
                              end;
   Loadindicator;
until FindNext(sr)<>0;

// �������������� �������� �������
BASS_Init(-1, 44100, BASS_DEVICE_LEAVEVOL, handle);
BASS_START;
LoadIndicator;

ActiveLetter:=TImage.Create(Self);

LoadIndicator;

{��������� ����������}
CursorStatus:=0; FinishGame:=True; ActiveLetter:=nil;
Opponent:=PC; PlayersNumber:=1; MPosX:=0; MPosY:=0; Flag1:=0;
PCIntellect:=Middle; Limit:=''; ThemeListForAll:='';
For I:=1 To 8 Do begin HallFameArray[I].Name:='';
 HallFameArray[I].Points:='0'; HallFameArray[I].Code:=''; end;
PlayersNumber:=2; Preview:=False; FirstAlphCode:=192; AlphCount:=32;
setlength(Players,3); setlength(Words,201,3);
Players[1].Name:=GlobalTextStrings.Items.Values['DefaultNamePlayer'];
Players[2].Name:=GlobalTextStrings.Items.Values['DefaultNamePC'];
Players[1].PLtype:=Human; Players[2].PLtype:=PC; Players[1].Image:='Im0'; Players[2].Image:='pc0';
Helped:=False; PressGo:=False;
End_Of_Program:=False; LensSize:=120; LastLoadedTime:='';
GameLoading:=False; ShowClearedWords:=False; AlwaysShowDictionaryPanel:=false;
ShowTerminals:=True; ShowHintMarkers:=True;
ShowShadows:=true;
ShowColorLetters:=False;
If EnableSoundHardware Then
begin PlayBackgroundMusic:=True; PlayShuffle:=True end
                       else
begin PlayBackgroundMusic:=False; PlayShuffle:=False end;
HintDelay:=200; AboutLog:=False; HintLimit:=5; StoreHintLimit:=5;
StopHelp:=False; HintPushButton:=true; CustomDict.Use:=true;
CustomDict.AddWord:=Ask; CustomDict.WordRequired:=true; CustomDict.WarnAddExplanation:=true;
CustomDict.WarnDelete:=true;
ShowAdvancedHallFame:=true; AllowSelect:=false; RepeatTurn:=true;
SoundVolume:=BASS_GetVolume; MusicVolume:=BASS_GetVolume div 3;
AllowWordRepeat:=false; CrossWord_Mode:=true;
LettersAutoSelect:=false; DemoMode:=false;
TransferLetterOn:=false; QuickLoad:=false;
Template:='classic.map'; WorkFieldDimentionX:=15; WorkFieldDimentionY:=15; 
MinimizeOnEsc:=false; RunMinimized:=false;
KeepBonuses:=false; AllPlayersOpen:=true;
AnimActiveAvatar:=true; Skin:='classic';
AnimActivePlayer:=true; LimitWordLength:=0;

LoadIndicator;
{ ������ ���������� � ����� PLAYERS}
PlayerImageDir:='GRAFIX\PLAYERS\;';
FindFirst('GRAFIX\PLAYERS\*',faDirectory, D);
repeat
  if (pos(d.Name,'..')<>0) or (D.attr and faDirectory=0) Then continue;
   PlayerImageDir:=PlayerImageDir+'GRAFIX\PLAYERS\'+D.Name+';';
until FindNext(D)<>0;

{ ��������� ��������� �� ����� ������������� }
INIList:=TStringList.Create;
LoadUnicodeFile('erudit.ini',INIList,nil,GetLanguageCodepage(Language)<>1251,convert);
If INIList.Count>0 Then begin
Players[1].Name:=INIList.Values['Player1'];
ShowAdvancedHallFame:=(INIList.Values['ShowAdvancedHallFame']='1');
Skin:=INIList.Values['Skin'];
ShowShadows:=(INIList.Values['ShowShadows']='1');
I:=1;
While IniList.Values['Member'+IntToStr(i)]<>'' Do begin
      TempStr:=IniList.Values['Member'+IntToStr(i)];
      Members[i-1].Name:=LeftStr(TempStr,pos('/',TempStr)-1); delete(TempStr,1,pos('/',TempStr));
      Members[i-1].Image:=LeftStr(TempStr,pos('/',TempStr)-1); delete(TempStr,1,pos('/',TempStr));
      Members[i-1].pltype:=ord(LeftStr(TempStr,pos('/',TempStr)-1)='PC')+ord(LeftStr(TempStr,pos('/',TempStr)-1)='Human')*0+ord(LeftStr(TempStr,pos('/',TempStr)-1)='Net')*2;
      delete(TempStr,1,pos('/',TempStr));
      Members[i-1].code:=StrToInt(TempStr);
      inc(i);
                                                  end;

                         end;
loadIni(Players[1].name);
If Skin='' Then skin:='classic';

MainScreen.Font.Charset:=setCharset(Language);

{ ������ ������� �������� }
AssignFile(HallFameFile,CurrentDir+'\hallfame.dat');
If fileexists(CurrentDir+'\hallfame.dat')  Then begin
   Reset(HallFameFile); Read(HallFameFile,HallFameArray); CloseFile(HallFameFile);
                                                end;

{���������� ����� ����������� �������}
If fileexists(CurrentDir+'\dict\'+LanguageDict+'\themes.txt') Then
  begin
   TempStrList:=TStringList.Create;
   LoadUnicodeFile(CurrentDir+'\dict\'+LanguageDict+'\themes.txt',TempStrList,nil,true, convert);
   try DictSpec[0]:=TempStrList.Values['DCommom'][1]; except end;
   try DictSpec[1]:=TempStrList.Values['DExtended1'][1]; except end;
   try DictSpec[2]:=TempStrList.Values['DExtended2'][1]; except end;
   try DictSpec[3]:=TempStrList.Values['DExtended3'][1]; except end;
   try DictSpec[4]:=TempStrList.Values['DExtended4'][1]; except end;
   try DictSpec[5]:=TempStrList.Values['DExtended5'][1]; except end;
   try DictSpec[6]:=TempStrList.Values['DChildren'][1]; except end;
   TempStrList.Free;
  end;
If not FileExists('erudit.ini') then ThemeListForAll:='Lim'+LanguageDict+'='+DictSpec[0]+#$D#$A;
   TempStrList:=TStringList.create; TempStrList.Text:=ThemeListForAll;
   Theme:=TempStrList.Values['Lim'+LanguageDict];
   ThemeList:=TempStrList.Values[LanguageDict];
   TempStrList.free;
If Theme='�' Then Theme:=DictSpec[0]; If Theme='�' Then Theme:=DictSpec[1];

SplashScreen.LoadProgressLabel.Caption:=GlobalTextStrings.Items.Values['LoadStatusGfx'];  SplashScreen.LoadProgressLabel.Refresh;
GFX_elem:=TList.Create;
TempBitmap:=TPicture.Create; LoadSkinnedImage(TempBitmap,'HintBut1'); GFX_elem.Add(TempBitmap); //LoadIndicator;
TempBitmap:=TPicture.Create; LoadSkinnedImage(TempBitmap,'HintBut2'); GFX_elem.Add(TempBitmap); //LoadIndicator;
TempBitmap:=TPicture.Create; LoadSkinnedImage(TempBitmap,'PrevBut1'); GFX_elem.Add(TempBitmap); //LoadIndicator;
TempBitmap:=TPicture.Create; LoadSkinnedImage(TempBitmap,'PrevBut2'); GFX_elem.Add(TempBitmap); //LoadIndicator;
TempBitmap:=TPicture.Create; LoadSkinnedImage(TempBitmap,'spot-0');  GFX_elem.Add(TempBitmap.Graphic); //LoadIndicator;
TempBitmap:=TPicture.Create; LoadSkinnedImage(TempBitmap,'spot-wt'); GFX_elem.Add(TempBitmap.Graphic); //LoadIndicator;
TempBitmap:=TPicture.Create; LoadSkinnedImage(TempBitmap,'spot-gr'); GFX_elem.Add(TempBitmap.Graphic); //LoadIndicator;
TempBitmap:=TPicture.Create; LoadSkinnedImage(TempBitmap,'spot-bl'); GFX_elem.Add(TempBitmap.Graphic); //LoadIndicator;
TempBitmap:=TPicture.Create; LoadSkinnedImage(TempBitmap,'spot-yl'); GFX_elem.Add(TempBitmap.Graphic); //LoadIndicator;
TempBitmap:=TPicture.Create; LoadSkinnedImage(TempBitmap,'spot-rd'); GFX_elem.Add(TempBitmap.Graphic); //LoadIndicator;
TempBitmap:=TPicture.Create; LoadSkinnedImage(TempBitmap,'spot-bk'); GFX_elem.Add(TempBitmap.Graphic); //LoadIndicator;

LoadIndicator;
//if fileexists('dict\'+LanguageDict+'\diction.user.add.txt') Then CopyDictionary('dict\'+LanguageDict+'\diction.user.add.txt','dict\'+LanguageDict+'\diction.0');
//if fileexists('dict\'+LanguageDict+'\diction.user.del.txt') Then CopyDictionary('dict\'+LanguageDict+'\diction.user.del.txt','dict\'+LanguageDict+'\diction.xx');

if not FileExists(BackgroundImage) Then BackgroundImage:='erudit';

LoadIndicator;
MainBackground[1]:=TPicture.Create; MainBackground[2]:=TPicture.Create; MainBackground[3]:=Tpicture.Create;
MainBackgroundBackup:=TPicture.Create;
LoadBackgroundBitmap; LoadIndicator;
ChoiceFieldImage.Left:=0; ChoiceFieldImage.Top:=0;

LoadSkinnedImage(Marker1.Picture, 'Marker1');
LoadSkinnedImage(Marker2.Picture, 'Marker1'); LoadIndicator;
LoadSkinnedImage(InGameButtongGo.Picture,'Go!_1'); LoadIndicator;
LoadSkinnedImage(InGameButtongChangeLetters.Picture, 'Cng!_1'); LoadIndicator;

ShowTitleMenu;

LoadSkinnedImage(Logo_White.Picture,'logo_hl');
LoadSkinnedImage(InGameTagSponsorLogo.Picture,'logo_sh');
LoadSkinnedImage(InGameButtongInfo.Picture,'i-button'); LoadIndicator;
LoadSkinnedImage(InGameButtongConfig.Picture,'o-button'); LoadIndicator;
LoadSkinnedImage(InGameButtongSaveGame.Picture,'s-button'); LoadIndicator;
LoadSkinnedImage(InGameButtongLoadGame.Picture,'l-button'); LoadIndicator;
ErrorWinBackground:=TPicture.Create;
LoadSkinnedImage(ErrorWinBackground,'ErrorWin'); LoadIndicator;
QuestWinBackground:=TPicture.Create;
LoadSkinnedImage(QuestWinBackground, 'QuestWin'); LoadIndicator;
SaveWinBackground:=TPicture.Create;
LoadSkinnedImage(SaveWinBackground,'savegame'); LoadIndicator;
StarWinBackground:=TPicture.Create;
LoadSkinnedImage(StarWinBackground,'starwin'); LoadIndicator;
GameoverWinBackground:=TPicture.Create;
LoadSkinnedImage(GameoverWinBackground,'gameover'); LoadIndicator;
HallFameWinBackground:=TPicture.Create;
LoadSkinnedImage(HallFameWinBackground,'HallFame'); LoadIndicator;
ExplPanelBackground:=TPicture.Create;
LoadSkinnedImage(ExplPanelBackground,'epanbgr');
MenuButton5.Canvas.StretchDraw(rect(0,0,MenuButton5.Width,12),ExplPanelBackground.Graphic);
Shadow_Form:=TForm.Create(self);
Shadow_Form.Color:=clBlack; Shadow_Form.Visible:=false; Shadow_Form.BorderStyle:=bsNone;
Shadow_Form.AlphaBlend:=True; Shadow_Form.AlphaBlendValue:=100; Shadow_Form.Enabled:=false;
Prevalue[1]:=Prevalue1; Prevalue[2]:=Prevalue2; Prevalue[3]:=Prevalue3;
Prevalue[4]:=Prevalue4; Prevalue[5]:=Prevalue5; Prevalue[6]:=Prevalue6;
Prevalue[7]:=Prevalue7; Prevalue[8]:=Prevalue8; Prevalue[9]:=Prevalue9;
Prevalue[10]:=Prevalue10; Prevalue[11]:=Prevalue11; Prevalue[12]:=Prevalue12;
Prevalue[13]:=Prevalue13; Prevalue[14]:=Prevalue14; Prevalue[15]:=Prevalue15;
For I:=1 to 15 Do Prevalue[I].Font.Name:=FontNames[ttfSplash];
FlashAnnounce.Font.Name:=FontNames[ttfPlayer];
_ElaspedTimer:=MainScreen.ElaspedTimer;
_MoveTimer:=MainScreen.MoveTimer;
_Marker1:=MainScreen.Marker1; _Marker2:=MainScreen.Marker2;
_MediaPlayer:=MainScreen.MediaPlayer1;
_MessageTimer:=MessageTimer;
_ChoicePanel:=ChoicePanel;

{ ������ ���������������� �����}
Colors:=TStringList.Create;
If Fileexists('GRAFIX\'+Skin+'\'+'colors.txt') Then CustomColors:=true Else CustomColors:=false;
  If CustomColors Then
   begin
   Colors.LoadFromFile('GRAFIX\'+Skin+'\'+'colors.txt');
   ScreenButtonTitleNewGame.Font.Color:=StrToInt(Colors.Values['ScreenButtonTitleNewGame']);
   ScreenButtonTitleLoadGame.Font.Color:=StrToInt(Colors.Values['ScreenButtonTitleLoadGame']);
   ScreenButtonTitleExit.Font.Color:=StrToInt(Colors.Values['ScreenButtonTitleExit']);
   ScreenButtonTitleContinue.Font.Color:=StrToInt(Colors.Values['ScreenButtonTitleContinue']);
   ScreenButtonTitleLastPlayer.Font.Color:=StrToInt(Colors.Values['ScreenButtonTitleLastPlayer']);
   InGameLabel.Font.Color:=StrToInt(Colors.Values['InGameLabel']);
   InGameLabelExplanationPanel.Font.Color:=StrToInt(Colors.Values['InGameLabelExplanationPanel']);
   Comment1.Font.Color:=StrToInt(Colors.Values['InGameInfoComment']);
   Comment2.Font.Color:=StrToInt(Colors.Values['InGameInfoComment']);
   Comment3.Font.Color:=StrToInt(Colors.Values['InGameInfoComment']);
   Comment4.Font.Color:=StrToInt(Colors.Values['InGameInfoComment']);
   FlashAnnounce.Font.Color:=StrToInt(Colors.Values['InGamePlayFieldUpperComment']);
   FlashAnnounce.Color:=StrToInt(Colors.Values['InGamePlayFieldUpperCommentBgr']);
   end;

{ ������ ���������������� ������}
If Fileexists('GRAFIX\'+Skin+'\'+'fonts.txt') Then begin
   TempStrList:=TStringList.Create;
   TempStrList.LoadFromFile('GRAFIX\'+Skin+'\'+'fonts.txt');
   FontNames[ttfMess]:=ifthen(TempStrList.Values['message']<>'',TempStrList.Values['message'],FontNames[ttfMess]);
   FontNames[ttfPlayer]:=ifthen(TempStrList.Values['player']<>'',TempStrList.Values['player'],FontNames[ttfPlayer]);
   FontNames[ttfDigi]:=ifthen(TempStrList.Values['digital']<>'',TempStrList.Values['digital'],FontNames[ttfDigi]);
   FontNames[ttfSplash]:=ifthen(TempStrList.Values['splashes']<>'',TempStrList.Values['splashes'],FontNames[ttfSplash]);
   TempStrList.Free;
                                                   end;

I:=WorkFieldDimentionX; j:=WorkFieldDimentionY;
PrepareColorMatching('classic.map');
WorkFieldDimentionX:=i; WorkFieldDimentionY:=j;

AssignFile(ClearedWordsFile,'~cldwrds.tmp');
AssignFile(AddedWordsFile,'~addwrds.tmp');
AssignFile(PickedWordsFile,'~pkdwrds.tmp');

// ������ ����
SplashScreen.LoadProgressLabel.Caption:=GlobalTextStrings.Items.Values['LoadStatusSound'];  SplashScreen.LoadProgressLabel.Refresh;
NewGameSound:=BASS_SampleLoad(false,pchar('MEDIA\NewGame.mp3'),0,0,2,0); LoadIndicator;
HallFameSound:=BASS_SampleLoad(false,pchar('MEDIA\HallFame.mp3'),0,0,2,0); LoadIndicator;
GameOverSound:=BASS_SampleLoad(false,pchar('MEDIA\GameOver.mp3'),0,0,2,0); LoadIndicator;
ScoreLimitSound:=BASS_SampleLoad(false,pchar('MEDIA\SCLimit.mp3'),0,0,2,0); LoadIndicator;
Bonus1Sound:=BASS_SampleLoad(false,pchar('MEDIA\Bonus1.mp3'),0,0,2,0); LoadIndicator;
Bonus2Sound:=BASS_SampleLoad(false,pchar('MEDIA\Bonus2.mp3'),0,0,2,0); LoadIndicator;
Change1Sound:=BASS_SampleLoad(false,pchar('MEDIA\change1.mp3'),0,0,2,0); LoadIndicator;
Change2Sound:=BASS_SampleLoad(false,pchar('MEDIA\change2.mp3'),0,0,2,0); LoadIndicator;
ChangeMoveSound:=BASS_SampleLoad(false,pchar('MEDIA\CHMove.mp3'),0,0,2,0); LoadIndicator;
ErrorSound:=BASS_SampleLoad(false,pchar('MEDIA\error.mp3'),0,0,2,0); LoadIndicator;
GoodScore1Sound:=BASS_SampleLoad(false,pchar('MEDIA\goodsc1.mp3'),0,0,2,0); LoadIndicator;
GoodScore2Sound:=BASS_SampleLoad(false,pchar('MEDIA\goodsc2.mp3'),0,0,2,0); LoadIndicator;
GoodScore3Sound:=BASS_SampleLoad(false,pchar('MEDIA\goodsc3.mp3'),0,0,2,0); LoadIndicator;
Hint1Sound:=BASS_SampleLoad(false,pchar('MEDIA\hint1.mp3'),0,0,2,0); LoadIndicator;
Hint2Sound:=BASS_SampleLoad(false,pchar('MEDIA\hint2.mp3'),0,0,2,0); LoadIndicator;
Hint3Sound:=BASS_SampleLoad(false,pchar('MEDIA\hint3.mp3'),0,0,2,0); LoadIndicator;
IsWord1Sound:=BASS_SampleLoad(false,pchar('MEDIA\isword1.mp3'),0,0,2,0); LoadIndicator;
IsWord2Sound:=BASS_SampleLoad(false,pchar('MEDIA\isword2.mp3'),0,0,2,0); LoadIndicator;
IsWord3Sound:=BASS_SampleLoad(false,pchar('MEDIA\isword3.mp3'),0,0,2,0); LoadIndicator;
NotAvailableSound:=BASS_SampleLoad(false,pchar('MEDIA\notavail.mp3'),0,0,2,0); LoadIndicator;
NoWordsSound:=BASS_SampleLoad(false,pchar('MEDIA\nowords.mp3'),0,0,2,0); LoadIndicator;
SaveSound:=BASS_SampleLoad(false,pchar('MEDIA\save.mp3'),0,0,2,0); LoadIndicator;
Score1Sound:=BASS_SampleLoad(false,pchar('MEDIA\score1.mp3'),0,0,2,0); LoadIndicator;
Score2Sound:=BASS_SampleLoad(false,pchar('MEDIA\score2.mp3'),0,0,2,0); LoadIndicator;
TimeOutSound:=BASS_SampleLoad(false,pchar('MEDIA\timeout.mp3'),0,0,2,0); LoadIndicator;
YourMove1Sound:=BASS_SampleLoad(false,pchar('MEDIA\Yourmov1.mp3'),0,0,2,0); LoadIndicator;
YourMove2Sound:=BASS_SampleLoad(false,pchar('MEDIA\Yourmov2.mp3'),0,0,2,0); LoadIndicator;
YourMove3Sound:=BASS_SampleLoad(false,pchar('MEDIA\Yourmov3.mp3'),0,0,2,0); LoadIndicator;

BASS_SetVolume(SoundVolume);
SetMidiVolume(MusicVolume*655+(MusicVolume*655) shl 16);

If not FileExists('MEDIA\songs.lst') then
     if FindFirst('MEDIA\*.mid',0,sr)=0 Then begin
        AssignFile(SongFile,'MEDIA\songs.lst');
        ReWrite(SongFile);
        repeat
        Song.Name:=sr.Name;
        Song.Path:='MEDIA\';
        Write(SongFile,Song);
        until FindNext(sr)<>0;
        closefile(SongFile);
                                 end;


StoreHintLimit:=HintLimit;
{ ������������� ������� �� ������� "���������" }
case PCIntellect of
    Low: MenuIntellectLow.Checked:=True;
    Middle:MenuIntellectNormal.Checked:=True;
    High: MenuIntellectHigh.Checked:=True;
 end;

{ ��������� ������ � ���� "������������ ������"}
If Members[0].Name<>'' Then
     For I:=0 To 19 Do
     If Members[I].Name<>'' Then begin
     LoadItem:=TTNTMenuItem.Create(Self);
     LoadItem.Caption:=Members[I].Name[1]+ANSILowerCase(copy(Members[I].Name,2,10))+'...';
     LoadItem.Name:='Load'+IntToStr(I);
     LoadItem.OnClick:=n5Click;
     MainMenu1.Items[0].Items[3].Add(LoadItem);
                                 end Else break
                       Else MenuGameLoad.Enabled:=False;
LoadItem:=TTNTMenuItem.Create(Self);
LoadItem.Caption:=GlobalTextStrings.Items.Values['MenuHelpItemExplanatoryDictionary'];
//TempBitmap:=TPicture.Create; LoadSkinnedImage(TempBitmap,'magnifier');
//MainScreen.MenuLens.Bitmap.Assign(TempBitmap.Bitmap);
//FindFirst('erudit.chm',0,sr);
//if sr.size>1000000 then
If LanguageExpl<>'' Then
   begin
//    LoadItem:=TMenuItem.Create(Self);
//    LoadItem.Caption:=GlobalTextStrings.Items.Values['MenuHelpItemExplanatoryDictionary'];
//    LoadItem.Name:='refer';
//    LoadItem.OnClick:=WordReference;
//    MainMenu1.Items[2].Insert(4, LoadItem);
    MainScreen.Caption:=GlobalTextStrings.Items.Values['Title']+' 1.6 beta '+GlobalTextStrings.Items.Values['TitleSuffixWithExplanatoryDictionary'];
    ReferenceOn:=true;
   end
                   Else begin  ReferenceOn:=False;
                               MainScreen.Caption:=GlobalTextStrings.Items.Values['Title']+' 1.6 beta';
                          end;

{ ��������� ������ �������� }
LoadAlphabet;
{ ������ ������� � ������}
LoadDictionaryToMemory(true);

LoadIndicator;
//EnumDisplaySettings(nil,0,InitialDeviceMode);
  If win32Platform<>ver_platform_win32_nt Then begin
     For I:=0 to (Sender as TForm).ControlCount-1 Do begin
        If ((sender as TForm).Controls[i] is TRXLabel) Then ((sender as TForm).Controls[i] as TRXLabel).Font.Charset:=DEFAULT_CHARSET;
        If ((sender as TForm).Controls[i] is TLabel)  Then ((sender as TForm).Controls[i] as TLabel).Font.Charset:=DEFAULT_CHARSET;
                                                     end;
                                               end;
SplashScreen.hide;
INILIst.Free;
//ShowMessage(GetLanguage);
end;


{-----------------------------------------------}
{ �������� ������� � ������ }
procedure LoadGrafix;
var i:byte;
begin
//LanguageCodepage:=GetLanguageCodepage(LanguageDict);
If ShowColorLetters Then
  For i:=1 to AlphCount do begin
   If Images[1,i]=nil then Images[1,i]:=TPicture.Create;
   If LoadSkinnedImage(Images[1,i],'cap')='bmp'
                              Then Images[1,i].Bitmap.PixelFormat:=pf24bit
                              Else Images[1,i].Bitmap.Assign(Images[1,i].Graphic);
   with Images[1,i].Bitmap Do begin
       Canvas.Font.Color :=StrToInt(ifthen(CustomColors,Colors.Values['InGameNewLetters'],InttoStr(clYellow)));
       Canvas.Brush.Color:=clBlack; Canvas.Brush.Style:=bsClear;
       Canvas.Font.Charset:=Setcharset(LanguageDict);
       Canvas.Font.Style := [fsBold]; Canvas.Font.Name:='Arial'{FontNames[ttfMess]};
       Canvas.Font.Size := 9;  Canvas.TextOut(5-1*ord(LettersValue[I-1]>9), 5, chr(LettersCodes[I-1]));
       Canvas.Font.Style := [];
       Canvas.Font.Size := 6;  Canvas.TextOut(16-3*ord(LettersValue[I-1]>9), 13, IntToStr(LettersValue[I-1]));
                              end;
   If Images[2,i]=nil then Images[2,i]:=TPicture.Create;
   If LoadSkinnedImage(Images[2,i],'cap')='bmp'
                              Then Images[2,i].Bitmap.PixelFormat:=pf24bit
                              Else Images[2,i].Bitmap.Assign(Images[2,i].Graphic);
   with Images[2,i].Bitmap Do begin
       Canvas.Font.Color := StrToInt(ifthen(CustomColors,Colors.Values['InGamePlayerColor1'],IntToStr(clLime))); Canvas.Brush.Color:=clBlack; Canvas.Brush.Style:=bsClear;
       Canvas.Font.Charset:=Setcharset(LanguageDict);
       Canvas.Font.Style := [fsBold]; Canvas.Font.Name:='Arial';
       Canvas.Font.Size := 9;  Canvas.TextOut(5-1*ord(LettersValue[I-1]>9), 5, chr(LettersCodes[I-1]));
       Canvas.Font.Style := [];
       Canvas.Font.Size := 6;  Canvas.TextOut(16-3*ord(LettersValue[I-1]>9), 13, IntToStr(LettersValue[I-1]));
                              end;
   If Images[3,i]=nil then Images[3,i]:=TPicture.Create;
   If LoadSkinnedImage(Images[3,i],'cap')='bmp'
                              Then Images[3,i].Bitmap.PixelFormat:=pf24bit
                              Else Images[3,i].Bitmap.Assign(Images[3,i].Graphic);
   with Images[3,i].Bitmap Do begin
       Canvas.Font.Color := StrToInt(ifthen(CustomColors,Colors.Values['InGamePlayerColor2'],IntToStr($00FF80FF))); Canvas.Brush.Color:=clBlack; Canvas.Brush.Style:=bsClear;
       Canvas.Font.Charset:=Setcharset(LanguageDict);
       Canvas.Font.Style := [fsBold]; Canvas.Font.Name:='Arial';
       Canvas.Font.Size := 9;  Canvas.TextOut(5-1*ord(LettersValue[I-1]>9), 5, chr(LettersCodes[I-1]));
       Canvas.Font.Style := [];
       Canvas.Font.Size := 6;  Canvas.TextOut(16-3*ord(LettersValue[I-1]>9), 13, IntToStr(LettersValue[I-1]));
                              end;
                    end
                    else
  For i:=1 to AlphCount do begin
   If Images[1,i]=nil then Images[1,i]:=TPicture.Create;
   If LoadSkinnedImage(Images[1,i],'cap')='bmp'
                              Then Images[1,i].Bitmap.PixelFormat:=pf24bit
                              Else Images[1,i].Bitmap.Assign(Images[1,i].Graphic);
   with Images[1,i].Bitmap Do begin
       Canvas.Font.Color := StrToInt(ifthen(CustomColors,Colors.Values['InGameNewLetters'],InttoStr(clYellow)));
       Canvas.Brush.Color:=clBlack; Canvas.Brush.Style:=bsClear;
       Canvas.Font.Charset:=Setcharset(LanguageDict);
       Canvas.Font.Style := [fsBold]; Canvas.Font.Name:='Arial'{FontNames[ttfMess]};
       Canvas.Font.Size := 9;  Canvas.TextOut(5-1*ord(LettersValue[I-1]>9), 5, chr(LettersCodes[I-1]));
       Canvas.Font.Style := [];
       Canvas.Font.Size := 6;  Canvas.TextOut(16-3*ord(LettersValue[I-1]>9), 13, IntToStr(LettersValue[I-1]));
                              end;
   If Images[2,i]=nil then Images[2,i]:=TPicture.Create;
   if LoadSkinnedImage(Images[2,i],'cap')='bmp'
                              Then Images[2,i].Bitmap.PixelFormat:=pf24bit
                              Else Images[2,i].Bitmap.Assign(Images[2,i].Graphic);
   with Images[2,i].Bitmap Do begin
       Canvas.Font.Color := StrToInt(ifthen(CustomColors,Colors.Values['InGameUsedLetters'],InttoStr(clWhite)));
       Canvas.Brush.Color:=clBlack; Canvas.Brush.Style:=bsClear;
       Canvas.Font.Charset:=Setcharset(LanguageDict);
       Canvas.Font.Style := [fsBold]; Canvas.Font.Name:='Arial';
       Canvas.Font.Size := 9;  Canvas.TextOut(5-1*ord(LettersValue[I-1]>9), 5, chr(LettersCodes[I-1]));
       Canvas.Font.Style := [];
       Canvas.Font.Size := 6;  Canvas.TextOut(16-3*ord(LettersValue[I-1]>9), 13, IntToStr(LettersValue[I-1]));
                              end;
   If Images[3,i]=nil then Images[3,i]:=TPicture.Create;
   if LoadSkinnedImage(Images[3,i],'cap')='bmp'
                              Then Images[3,i].Bitmap.PixelFormat:=pf24bit
                              Else Images[3,i].Bitmap.Assign(Images[3,i].Graphic);
   with Images[3,i].Bitmap Do begin
       Canvas.Font.Color := StrToInt(ifthen(CustomColors,Colors.Values['InGameUsedLetters'],InttoStr(clWhite)));
       Canvas.Brush.Color:=clBlack; Canvas.Brush.Style:=bsClear;
       Canvas.Font.Charset:=Setcharset(LanguageDict);
       Canvas.Font.Style := [fsBold]; Canvas.Font.Name:='Arial';
       Canvas.Font.Size := 9;  Canvas.TextOut(5-1*ord(LettersValue[I-1]>9), 5, chr(LettersCodes[I-1]));
       Canvas.Font.Style := [];
       Canvas.Font.Size := 6;  Canvas.TextOut(16-3*ord(LettersValue[I-1]>9), 13, IntToStr(LettersValue[I-1]));
                              end;
                    end;
   If Images[1,AlphCount+1]=nil then Images[1,AlphCount+1]:=TPicture.Create;
   LoadSkinnedImage(Images[1,AlphCount+1],'cap_uni');
   //Images[1,33].Bitmap.PixelFormat:=pf24bit;
   If Images[2,AlphCount+1]=nil then Images[2,AlphCount+1]:=TPicture.Create;
   LoadSkinnedImage(Images[2,AlphCount+1],'cap');
   with Images[2,AlphCount+1].Bitmap Do begin
       Canvas.Font.Color := StrToInt(ifthen(CustomColors,Colors.Values['InGameUsedLetters'],InttoStr(clWhite)));
       Canvas.Brush.Color:=clBlack; Canvas.Brush.Style:=bsClear;
       Canvas.Font.Style := [fsBold];
       Canvas.Font.Size := 9;  Canvas.TextOut(8, 5, '?');
                              end;
end;

{-----------------------------------------------}
{ ������������� �������� ���� }
Procedure ClearWorkArray;
var I,J:word; Im:TImage;
begin
  For J:=1 To PlayersNumber Do
    For I:=1 To 7 Do begin Slot7[J,I].Letter:=' '; Slot7[J,I].Mark:=False;
                           Slot7[J,I].Image:=-1; end;
  For I:=1 To 200 Do
   For J:=1 to PlayersNumber do begin
     Words[I,J].Word:=''; Words[I,J].WBegin:=1;
     Words[I,J].WEnd:=1; Words[I,J].Coord:=1;
     Words[I,J].Direction:=1; Words[I,J].Value:=0;
                     end;
 {�������� �������� �� ���������}
{ For i:=0 to letters.Count-1 Do begin
  Im:=Letters.Items[i]; Im.Tag:=-1; Im.Enabled:=False;
  Im.HelpKeyword:='new'; Im.Hint:=''; Im.Hide;
  Im.HelpContext:=0;
                      end; }
end;

{---------------------------------------------}
{ ����������� ����� ������� �������� ����� }
Procedure PrepareColorMatching(MapFileName:string);
var I,J,posX,PosY:word; MapFile:Text; MapString:String;
    TempBitmap:TImage; tempS:string;
begin
 //SplashScreen.LoadProgressLabel.Caption:='������������ ����...'; SplashScreen.LoadProgressLabel.Refresh;
 If MapFileName='saved' Then begin
    MainBackGround[3].bitmap.Width:=WorkFieldDimentionX*28+33; MainBackGround[3].bitmap.Height:=WorkFieldDimentionY*28+33;
    MainScreen.ClientWidth:=WorkFieldDimentionX*28+32;
    //MainScreen.Height:=WorkFieldDimentionY*28+32+6+47-ord(win32Platform<>ver_platform_win32_nt)*5;
    MainScreen.ClientHeight:=WorkFieldDimentionY*28+32;
    MainScreen.ChoiceFieldImage.Width:=WorkFieldDimentionX*28-2;
    MainScreen.ChoiceFieldImage.Height:=WorkFieldDimentionY*28-2;
    MainScreen.ChoiceFieldImage.Picture.Bitmap.Width:=WorkFieldDimentionX*28-2;
    MainScreen.ChoiceFieldImage.Picture.Bitmap.Height:=WorkFieldDimentionY*28-2;
    MainScreen.ChoiceFieldImage.Canvas.FillRect(REct(0,0,WorkFieldDimentionX*28-2,WorkFieldDimentionY*28-2));
 For I:=0 To WorkFieldDimentionX+1 Do
     For J:=0 To WorkFieldDimentionY+1 Do begin
      WorkField[I,J].main:=' '; WorkField[I,J].available:=true; WorkField[I,J].hotspot:=' ';
      {WorkField[I,J].ForChoice:=' '; }WorkField[I,J].Image:=-1; WorkField[I,J].Checked:=False;
      SelectField[I,J]:=0;
                                          end;
 For J:=1 to WorkFieldDimentionY do
   For I:=1 to WorkFieldDimentionX Do begin
             MainBackGround[3].bitmap.Canvas.Draw(18+28*(I-1),18+28*(J-1), GFX_Elem[WorkField[I,J].color+4]);
             MainScreen.ChoiceFieldImage.Canvas.Draw(28*(I-1),28*(J-1), GFX_Elem[4]);
                                     end;
                             end
                          Else
 { ���� ������ ������ - ������ ��������� ����}
 If MapFileName<>'' Then begin
 AssignFile(MapFile,'MAPS\'+MapFileName);
 Reset(MapFile); Readln(MapFile, MapString); Readln(MapFile, MapString);
 WorkFieldDimentionX:=length(MapString); If WorkFieldDimentionX>30 Then WorkFieldDimentionX:=30;
 WorkFieldDimentionY:=1;
 While not EOF(MapFile) Do begin
     Readln(MapFile, MapString); If MapString='' Then break;
     inc(WorkFieldDimentionY)
                          end;
 CloseFile(MapFile);
 If WorkFieldDimentionY>30 Then WorkFieldDimentionY:=30;
 Reset(MapFile); Readln(MapFile, MapString); Readln(MapFile, MapString);
 MainBackGround[3].bitmap.Width:=WorkFieldDimentionX*28+33; MainBackGround[3].bitmap.Height:=WorkFieldDimentionY*28+33;
 MainScreen.ClientWidth:=WorkFieldDimentionX*28+32;
 //MainScreen.Height:=WorkFieldDimentionY*28+32+6+47;
 //MainScreen.Height:=WorkFieldDimentionY*28+32+6+47-ord(win32Platform<>ver_platform_win32_nt)*5;
 MainScreen.ClientHeight:=WorkFieldDimentionY*28+32;
 MainScreen.ChoiceFieldImage.Width:=WorkFieldDimentionX*28-2;
 MainScreen.ChoiceFieldImage.Height:=WorkFieldDimentionY*28-2;
 MainScreen.ChoiceFieldImage.Picture.Bitmap.Width:=WorkFieldDimentionX*28-2;
 MainScreen.ChoiceFieldImage.Picture.Bitmap.Height:=WorkFieldDimentionY*28-2;
 setlength(WorkField,WorkFieldDimentionX+2,WorkFieldDimentionY+2);
 setlength(Selectfield,WorkFieldDimentionX+2, WorkFieldDimentionY+2);
 For I:=0 To WorkFieldDimentionX+1 Do
     For J:=0 To WorkFieldDimentionY+1 Do begin
      WorkField[I,J].main:=' ';
      WorkField[I,J].available:=true;
      WorkField[I,J].hotspot:=' ';
      WorkField[I,J].color:=0;
      WorkField[I,J].ForChoice:=' ';
      WorkField[I,J].Image:=-1;
      WorkField[I,J].Checked:=False;
      SelectField[I,J]:=0;
                     end;
 For J:=1 to WorkFieldDimentionY do begin
   For I:=1 to WorkFieldDimentionX Do
       begin //try
             WorkField[I,J].color:=StrToInt(MapString[i]);
             //except  WorkField[I,J].color:=1; end;
             MainBackGround[3].bitmap.Canvas.Draw(18+28*(I-1),18+28*(J-1), GFX_Elem[WorkField[I,J].color+4]);
             MainScreen.ChoiceFieldImage.Canvas.Draw(28*(I-1),28*(J-1), GFX_Elem[4]);
         end;
   Readln(MapFile, MapString);
                                  end;
 CloseFile(MapFile);
                         end
  { ����� ������ ������������ ���� }
  Else begin
    MainBackGround[3].bitmap.Width:=WorkFieldDimentionX*28+33; MainBackGround[3].bitmap.Height:=WorkFieldDimentionY*28+33;
    MainScreen.ClientWidth:=WorkFieldDimentionX*28+32;
    //MainScreen.Height:=WorkFieldDimentionY*28+32+6+47-ord(win32Platform<>ver_platform_win32_nt)*5;
    MainScreen.ClientHeight:=WorkFieldDimentionY*28+32;
    MainScreen.ChoiceFieldImage.Width:=WorkFieldDimentionX*28-2;
    MainScreen.ChoiceFieldImage.Height:=WorkFieldDimentionY*28-2;
    MainScreen.ChoiceFieldImage.Picture.Bitmap.Width:=WorkFieldDimentionX*28-2;
    MainScreen.ChoiceFieldImage.Picture.Bitmap.Height:=WorkFieldDimentionY*28-2;
    MainScreen.ChoiceFieldImage.Canvas.FillRect(REct(0,0,WorkFieldDimentionX*28-2,WorkFieldDimentionY*28-2));
    setlength(WorkField,WorkFieldDimentionX+2,WorkFieldDimentionY+2);
    setlength(Selectfield,WorkFieldDimentionX+2, WorkFieldDimentionY+2);
    For I:=0 To WorkFieldDimentionX+1 Do
       For J:=0 To WorkFieldDimentionY+1 Do begin
        WorkField[I,J].main:=' '; WorkField[I,J].available:=true; WorkField[I,J].hotspot:=' ';
        WorkField[I,J].color:=1; WorkField[I,J].ForChoice:=' '; WorkField[I,J].Image:=-1;
        WorkField[I,J].Checked:=False; SelectField[I,J]:=0;
                                          end;
    For I:=2 to 6 Do
     For J:=1 to ColorsCount[I] Do begin
        repeat
        PosX:=random(WorkFieldDimentionX)+1; PosY:=random(WorkFieldDimentionY)+1;
        Until WorkField[PosX,PosY].color=1;
        WorkField[PosX,PosY].color:=I;
        MainBackGround[3].bitmap.Canvas.Draw(18+28*(PosX-1),18+28*(PosY-1), GFX_Elem[I+4]);
                                   end;
 For J:=1 to WorkFieldDimentionY do
   For I:=1 to WorkFieldDimentionX Do begin
       If WorkField[I,J].color=1 Then MainBackGround[3].bitmap.Canvas.Draw(18+28*(I-1),18+28*(J-1), GFX_Elem[WorkField[I,J].color+4]);
       MainScreen.ChoiceFieldImage.Picture.Bitmap.Canvas.Draw(28*(I-1),28*(J-1), GFX_Elem[4]);
                                     end;
       end;
 //ModifyMenu(MainScreen.MainMenu1.Handle, 3, mf_ByPosition or mf_Popup or mf_Help, MainScreen.MenuLens.Handle, '&�����');       
 MainScreen.ChoicePanel.Width:=WorkFieldDimentionX*28-2;
 MainScreen.ChoicePanel.Height:=WorkFieldDimentionY*28-2;
 MainScreen.ChoiceFieldImage.Parent:=MainScreen.ChoicePanel;
 TempBitmap:=TImage.Create(MainScreen); TempBitmap.Autosize:=True;
 LoadSkinnedImage(TempBitmap.Picture,'border-h');
 I:=18; While I<=MainBackGround[3].Width-18 Do begin
    MainBackGround[3].bitmap.Canvas.Draw(I,0,TempBitmap.Picture.Graphic);
    MainBackGround[3].bitmap.Canvas.Draw(I,MainBackGround[3].Height-18,TempBitmap.Picture.Graphic);
    I:=I+TempBitmap.Width;
                                        end;
 LoadSkinnedImage(TempBitmap.Picture,'border-v');
 I:=18; While I<=MainBackGround[3].Height-18 Do begin
     MainBackGround[3].bitmap.Canvas.Draw(0,I,TempBitmap.Picture.Graphic);
     MainBackGround[3].bitmap.Canvas.Draw(MainBackGround[3].Width-18,I,TempBitmap.Picture.Graphic);
    I:=I+TempBitmap.Height;     
                                               end;
 LoadSkinnedImage(TempBitmap.Picture,'border');
 MainBackGround[3].bitmap.Canvas.Draw(0,0, TempBitmap.Picture.Graphic);
 MainBackGround[3].bitmap.Canvas.Draw(MainBackGround[3].Width-18,0, TempBitmap.Picture.Graphic);
 MainBackGround[3].bitmap.Canvas.Draw(0,MainBackGround[3].Height-18, TempBitmap.Picture.Graphic);
 MainBackGround[3].bitmap.Canvas.Draw(MainBackGround[3].Width-18,MainBackGround[3].Height-18, TempBitmap.Picture.Graphic);
 MainScreen.ChoicePanel.Left:=18; MainScreen.ChoicePanel.Top:=18; MainScreen.ChoicePanel.Hide;

 MainScreen.MenuButton5.Width:=MainScreen.InGameLabelExplanationPanel.Width+12;
 MainScreen.MenuButton5.Left:=MainScreen.Width-MainScreen.MenuButton5.Width-30;
 MainScreen.MenuButton5.top:=MainScreen.ClientHeight-MainScreen.MenuButton5.Height;
 MainScreen.InGameLabelExplanationPanel.Left:=MainScreen.MenuButton5.Left+6;
 MainScreen.InGameLabelExplanationPanel.top:=MainScreen.MenuButton5.top;
 MainScreen.MenuButton5.Visible:=not Finishgame or GameLoading;
 MainScreen.InGameLabelExplanationPanel.Visible:=not FiniShgame  or GameLoading;
 MainScreen.Position:=poScreenCenter;
 If not FinishGame or (MapFileName='saved')  Then
  If ShowExplanatoryPanel
  or AlwaysShowDictionaryPanel Then begin ShowExplanatoryPanel:=false;
                                          MainScreen.InGameLabelExplanationPanelClick(MainScreen.InGameLabelExplanationPanel);
                                    end;
 if MovesLog<>nil Then begin
    TempS:=''; For J:=1 to WorkFieldDimentionY Do For I:=1 to WorkFieldDimentionX Do TempS:=TempS+IntToStr(WorkField[I,J].color);
    MovesLog.Add(TempS);
                       end;
 end;

{---------------------------------------------------------------}
{���������� ������������� ������ - �������� ���������}
Procedure PrepareSevenLettersSlots(I:byte;SlotImage:TImage);
begin
  Slot7[i,1].SlotX:=SlotImage.Left+20; Slot7[i,1].SlotY:=SlotImage.Top+14;
  Slot7[i,2].SlotX:=SlotImage.Left+48; Slot7[i,2].SlotY:=SlotImage.Top+14;
  Slot7[i,3].SlotX:=SlotImage.Left+76; Slot7[i,3].SlotY:=SlotImage.Top+14;
  Slot7[i,4].SlotX:=SlotImage.Left+104; Slot7[i,4].SlotY:=SlotImage.Top+14;
  Slot7[i,5].SlotX:=SlotImage.Left+34; Slot7[i,5].SlotY:=SlotImage.Top+42;
  Slot7[i,6].SlotX:=SlotImage.Left+62; Slot7[i,6].SlotY:=SlotImage.Top+42;
  Slot7[i,7].SlotX:=SlotImage.Left+90; Slot7[i,7].SlotY:=SlotImage.Top+42;
end;
{---------------------------------------------}
{���������� ������� ���� ������}
Procedure CreateChoiceScreen;
var Index, Index2, PosX, PosY, z, i, j:word; Im:TImage;
    LettersQuantity2:array[1..2,0..50] of byte; TempS:String;

    Function Empty:boolean;
     var k:0..50;
     begin
        result:=true;
        k:=0; While k<=AlphCount Do begin
               If LettersQuantity2[2,k]<>0 Then begin Result:=false; break; end;
               inc(k);
                                    end;
     end;
begin
IF NOT  GameLoading THEN BEGIN // ���� ���� �� �����������
 Screen.Cursor:=crHourGlass;
 MainScreen.Update;
{��������� ���� ������ ���������� ����������}
 LettersLeft:=0;
While LettersLeft<WorkFieldDimentionX*WorkFieldDimentionY Do
 begin
 {��������� ������ �� ���������� ���������� ����� � ���������� �� ��������� ������}
 For I:=0 to 50 do begin LettersQuantity2[1,I]:=I; LettersQuantity2[2,I]:=LettersQuantity[I]; end;
 For I:=0 to AlphCount-1 do begin
  For J:=I+1 to AlphCount Do begin
     If LettersQuantity2[2,J]>LettersQuantity2[2,I] Then begin
        z:=LettersQuantity2[1,I]; LettersQuantity2[1,I]:=LettersQuantity2[1,J]; LettersQuantity2[1,J]:=z;
        z:=LettersQuantity2[2,I]; LettersQuantity2[2,I]:=LettersQuantity2[2,J]; LettersQuantity2[2,J]:=z;
                                                       end;
                           end;
                          end;
  {������ �� ����� �����, ��������, ���� �� ��������� ���� ������}
  While not Empty Do
  For Index:=0 To AlphCount Do
    If LettersQuantity2[2,Index]<>0 Then begin
        repeat
        PosX:=random(WorkFieldDimentionX)+1; PosY:=random(WorkFieldDimentionY)+1;
        If LettersLeft>=WorkFieldDimentionX*WorkFieldDimentionY Then break;
        Until WorkField[PosX,PosY].ForChoice=' ';
        //WorkField[PosX,PosY].ForChoice:=chr(LettersQuantity2[1,Index]+FirstAlphCode);
        WorkField[PosX,PosY].ForChoice:=chr(LettersCodes[LettersQuantity2[1,Index]]);
        inc(LettersLeft); dec(LettersQuantity2[2,Index]);
        If LettersLeft>=WorkFieldDimentionX*WorkFieldDimentionY Then break;
                                       end;
  end;
MainScreen.Update;
                        END;  { if not GameLoading }
{������������� ����� �� ���� ������}
   z:=0; TempS:='';
   For J:=1 to WorkFieldDimentionY Do
     For I:=1 to WorkFieldDimentionX do begin
   Im:=Letters[z];
   {Im.Picture:=Images[1,GetLetterNum(WorkField[i,j].ForChoice)+1];
                            Else} Im.Picture:=Images[2,AlphCount+1];
   Im.Hint:=WorkField[i,j].ForChoice;
   If Im.Hint[1]=chr(FirstAlphCode+AlphCount) Then
                                            Im.HelpContext:=1
                                              Else Im.HelpContext:=0;
   inc(z); Application.ProcessMessages;
   TempS:=TempS+Im.Hint[1]+',';
                                      end;
  MovesLog.Add(TempS);
  For I:=0 To WorkFieldDimentionX+1 Do For J:=0 To WorkFieldDimentionY+1 Do WorkField[I,J].available:=true;
  //If not LettersAutoSelect Then
     For z:=0 to WorkFieldDimentionX*WorkFieldDimentionY-1 Do Letters[z].Parent:=MainScreen.ChoicePanel;
  Screen.Cursor:=crArrow;
  MainScreen.Update;
end;
{-----------------------------------------}
{ ����������� ����� � ����.}
Procedure TMainScreen.MakeImageList(count:word; mode:byte);
var i:integer; Im:TImage;  J,K:byte;
begin
case mode of
1:begin
 {�������� �������� �� ��������� �� �������}
 j:=1; k:=1;
 For i:=1 to count Do begin
  Im:=TImage.Create(MainScreen);  //Im.Hide; //Im.Parent:=MainScreen;
  Im.Tag:=-1; Im.OnClick:=MainScreen.Click; Im.OnMouseMove:=MMove;
  Im.OnMouseUp:=MainScreen.RightMBClick; Im.AutoSize:=True; Im.HelpKeyword:='new';
  Im.PopupMenu:=ContextHelpMenu; Im.ParentShowHint:=false;
  //Im.Left:=(j-1)*28+19; Im.Top:=(k-1)*28+19;
  Im.Left:=(j-1)*28; Im.Top:=(k-1)*28;
  Im.Name:='Lett'+IntToStr(i);
  Letters[I-1]:=Im;
  Application.ProcessMessages;
  inc(J); if J>WorkFieldDimentionX Then begin j:=1; inc(k) end;
                      end;
 LastLetters:=TList.Create;
  end;                                                         
2:begin
 //If length(Letters)=0 then exit;
 {������� �������� � �������}
 For i:=0 to count-1 Do
  if Letters[i]<>nil Then begin Im:=Letters[i]; Im.Parent:=nil;
       Im.Free; Letters[i]:=nil; end;
 freeandnil(LastLetters);
  end;
end;
 end;
{-----------------------------------------}
{������� �� ������ ���� �� �����}
procedure TMainScreen.Click(Sender: TObject);
var i,j:byte; TempX,TempY:byte; Im:Timage; masX,masY:byte; MessX,MessY:word;
    DeleteWordNow:boolean; DeletedWord:ShortString; ScreenCoord:TPoint;
begin
If Screen.Cursor=crHourGlass Then Exit;
If Ex_Form<>nil Then If Ex_Form.visible Then exit;
If DemoMode Then Exit;
If TransferLetterOn Then exit;
{ ����� ������� � ���� ������ }
If (Sender as TImage).Tag=-1 Then begin
 Application.HandleMessage;
 I:=((Sender as TImage).Left+38) div 28; J:=((Sender as TImage).Top+38) div 28;
 If (CheckSlots(MoveIs)>0) Then begin TakeLetter(Take,MoveIs,WorkField[I,J].ForChoice,I,J);
                                  end;
 dec(LettersLeft);
 {���� ���� ��� ��������}
 If (CheckSlots(MoveIs)=0) or (LettersLeft=0) Then begin
    { ���������� � ��� ��������� ����� }
    If TimeLimit Then If pos('ETIME:',MovesLog.Strings[MovesLog.Count-1])=0 Then
                   MovesLog.Strings[MovesLog.Count-1]:=MovesLog.Strings[MovesLog.Count-1]+'ETIME:'+IntToStr(StartMin)+'/'+IntToStr(StartSec)+',';
    If pos('SLOT:',MovesLog.Strings[MovesLog.Count-1])=0 Then MovesLog.Strings[MovesLog.Count-1]:=MovesLog.Strings[MovesLog.Count-1]+'SLOT:';
    For I:=1 to 7 Do MovesLog.Strings[MovesLog.Count-1]:=MovesLog.Strings[MovesLog.Count-1]+Slot7[MoveIs][i].Letter+'/'+IntToStr(Slot7[MoveIs][i].Image)+',';
    {����������� ���� ���������-����������}
    case Opponent of
    PC: begin
    DoChoiceScreen(MoveIs,Off_m);
    If FinishGame Then Exit;
    If (HintLimit>0) Then MainScreen.MenuHelpHInt.Enabled:=True;
    MainScreen.MenuHelpComputeScore.Enabled:=True;
                      end;
    Human: begin
                  Helped:=False;
                  DoChoiceScreen(MoveIs,Off_m);
           If (CheckSlots(MoveIs)<>0) and (LettersLeft<>0) Then DoChoiceScreen(MoveIs,On_m)
                                    Else begin
    WhatIDoNow:=Play;
    { ��� ������ ����� ���� ����� }
    StartLetterSelectionCompleted:=true;
    If MoveLimit Then InitMoveTimer(MoveIs);
                                         end;
           end;
    end;
                              end
                                  end else begin
{ ����� ������� � �������� ���� ��� �� ����� � �������� ���� }
If ActiveLetter<>nil Then begin
   MPosX:=(Sender as TImage).Left+MPosX; MPosY:=(Sender as TImage).Top+MPOsY;
   MainScreenImageClick(Sender);
   exit;
                          end;
If ((Sender as TImage).Tag=MoveIs) and (WhatIDoNow=Play) Then begin
{c �������� ����}
Temp1:=(Sender as TImage).Left; Temp2:=(Sender as TImage).Top;
If (sender as TImage).Parent=MainScreen Then
 begin
 TempX:=((Sender as TImage).Left+19) div 28;  TempY:=((Sender as TImage).Top+19) div 28;
 WorkField[TempX,TempY].HotSpot:=' '; WorkField[TempX,TempY].Image:=-1;
 (Sender as TImage).Tag:=0;
 ActiveLetter:=(Sender as TImage); ActiveLetter.Picture:=Images[1,GetLetterNum(ActiveLetter.Hint[1])+1];
 ActiveLetter.BringToFront;
 ActiveLetter.Enabled:=false;
 MainScreen.MenuHelpHInt.Enabled:=False;
 MainScreen.MenuHelpComputeScore.Enabled:=False;
  end else
{�� �������������� �����}
For I:=1 To 7 Do
  If ((Sender as TImage).Left=Slot7[MoveIs,I].SlotX)and((Sender as TImage).Top=Slot7[MoveIs,I].SlotY) Then
  begin Slot7[MoveIs,I].Mark:=False; Slot7[MoveIs,I].Image:=-1;
        (Sender as TImage).Tag:=0; ActiveLetter:=(Sender as TImage);
        ActiveLetter.Picture:=Images[1,GetLetterNum(Slot7[MoveIs,I].Letter)+1];
        ActiveLetter.BringToFront;
        ActiveLetter.Enabled:=false;
        Slot7[MoveIs,I].Letter:=' ';
        MainScreen.MenuHelpHInt.Enabled:=False;
        MainScreen.MenuHelpComputeScore.Enabled:=False;
        break;
  end;
 ActiveLetterForm:=TForm.Create(Application);
 ActiveLetterForm.FormStyle:=fsStayOnTop; ActiveLetterForm.BorderStyle:=bsNone; ActiveLetterForm.AutoSize:=true;
 ActiveLetterForm.Left:=(Sender as TImage).Left+(Sender as TImage).parent.Left;
 ActiveLetterForm.Top:=(Sender as TImage).Top+(Sender as TImage).parent.Top;
 ActiveLetterForm.Enabled:=false;
 ActiveLetterForm.Show;
 MoveLetterTimer.Enabled:=true;
 If I_Form<>nil Then I_Form.Enabled:=false;

 while (CursorStatus>=0) Do CursorStatus:=ShowCursor(False);                 
                                  end Else
{ ������ �� ������������ ����� }
If (Sender as TImage).Tag=-2 Then begin
                                  end;
end;

end;
{---------------------------------------------}
{������� �� �������� ����� �� �����}
procedure TMainScreen.MMove (Sender: TObject; Shift: TShiftState;
X, Y: Integer);
var i,j,TempX,TempY:word; Im,Im1:TImage; Sndr:Tcontrol;
begin
{�������� ����}
If Lens_Form<>nil Then begin
   Lens_Form.Left:=Mouse.CursorPos.X-Lens_Form.Width div 2; Lens_Form.Top:=Mouse.CursorPos.Y-Lens_Form.Height div 2;
   Lens_Form.DoubleBuffered:=true; Lens_Form.Repaint; Lens_Form.DoubleBuffered:=false;
   MainScreen.Update;
   If (Mouse.CursorPos.X<>MPosX) or (Mouse.CursorPos.Y<>MPOsY) Then
     application.CancelHint{ Else application.hintpause:=3000};
   MPosX:=Mouse.CursorPos.X; MPosY:=Mouse.CursorPos.Y;
   exit;
                       end;
If (Sender = InGameButtongHint) and (WhatIDoNow=Helping) Then
    begin Screen.Cursor:=crDefault; end
    Else If (WhatIDoNow=Helping) Then Screen.Cursor:=crHourGlass;
If Screen.Cursor=crHourGlass Then Exit;
If DemoMode Then Exit;
MPosX:=X; MPosY:=Y;
If Sender = InGameTagSponsorLogo Then begin Screen.Cursor:=crHandPoint;
                                     If not Logo_White.Visible then Logo_White.Show; end;
If Sender = MainScreen Then begin
   TempX:=trunc((MPosX-19)/28)+1; TempY:=trunc((MPosY-19)/28)+1;
   If not FinishGame and (WhatIDoNow<>Take) Then
       try
       If WorkField[trunc((MPosXOld-19)/28)+1,trunc((MPosYOld-19)/28)+1].Color<>WorkField[TempX,TempY].Color Then Application.CancelHint;
       If WorkField[TempX,TempY].Color>1 Then begin
           Application.HintHidePause:=50000;
           case WorkField[TempX,TempY].Color of
             2: begin MainScreen.Hint:=' '+GlobalTextStrings.Items.Values['TagCellLetter']+' � 2 '; end;
             4: begin MainScreen.Hint:=' '+GlobalTextStrings.Items.Values['TagCellLetter']+' � 3 '; end;
             3: begin MainScreen.Hint:=' '+GlobalTextStrings.Items.Values['TagCellWord']+' � 2 '; end;
             5: begin MainScreen.Hint:=' '+GlobalTextStrings.Items.Values['TagCellWord']+' � 3 '; end;
             6: begin MainScreen.Hint:=' '+GlobalTextStrings.Items.Values['InGameLayoutTagCellStartCell']+' '; end;
           end;
           MposXOld:=MposX; MPosYOld:=MPosY;
                                              end
                                         Else begin Application.HintHidePause:=20000;
                                                    Application.CancelHint; MainScreen.Hint:=''; end;
       except  end;
    If WhatIDoNow=Take Then begin Application.HintHidePause:=20000; Application.CancelHint; MainScreen.Hint:=''; end;
    Screen.Cursor:=TempCursor; If Logo_White.Visible then Logo_White.Hide;
                                  If (Y<20) and (CursorStatus<0) Then while (CursorStatus<0) Do CursorStatus:=ShowCursor(True);
                              end;
If Sender = RC_Form Then begin Screen.Cursor:=TempCursor; If Logo_White.Visible then Logo_White.Hide; end;

If FinishGame Then exit;
If not (sender is TForm) Then begin X:=(Sender as TControl).Left+X; Y:=(Sender as TControl).Top+Y; end;


If Sender is TShape Then
                         If not PopupPanel.Visible Then
                         begin
                         PopupPanel.Left:=(Sender as TShape).Left+MPosX+10; PopupPanel.Top:=(Sender as TShape).Top+MposY+20;
                         PopupTimer.Interval:=1500;
                         PopupTimer.Tag:=1;
                         PopupTimer.Enabled:=True;
                         end
                    Else Else
                    if PopupTimer.Tag=1 then begin PopupTimer.Enabled:=False; PopupPanel.Hide; end;

 {���� �� ������ ����� ������� ����}
 If Shift<>[ssLeft] Then begin
  ShowSelection:=false;
 {��������� �������� ��� �����}
 If Not FinishGame Then
  try
  If Sh<>nil then
       if (sh.Width=26) and (sh.Height=26) then begin
       TempX:=(sh.Left+2+19) div 28;  TempY:=(sh.Top+2+19) div 28;
       SelectField[TempX,TempY]:=SelectField[TempX,TempY]-1;
       sh.hide; sh:=nil;
                                                end;
  except end;
 {�������� � ������}
 sndr:=sender as TControl;
 If Players[MoveIs].PLtype<>PC Then
 If ActiveLetter<>nil Then
    if ActiveLetter.Tag<>-1 Then begin
   If sender is TForm Then ActiveLetter.parent:=(sender as TForm);
   If (Y>=20) and (CursorStatus=0) Then while (CursorStatus>=0) Do CursorStatus:=ShowCursor(False);
   TempX:=(X+19) div 28;  TempY:=(Y+19) div 28;
   If not(TempX>WorkFieldDimentionX+1) and not (TempY>WorkFieldDimentionY+1)
     Then
   if (not WorkField[TempX,TempY].available and (CursorStatus<0) and
     (X > ChoiceFieldImage.BoundsRect.Left) and (X < ChoiceFieldImage.BoundsRect.Right) and
     (Y > ChoiceFieldImage.BoundsRect.Top) and (Y < ChoiceFieldImage.BoundsRect.Bottom))
     or (((ActiveLetter.parent as TForm).Tag<>MoveIs) and (ActiveLetter.parent<>MainScreen))
     Then
      begin while (CursorStatus<0) Do CursorStatus:=ShowCursor(true); Screen.Cursor:=crNoDrop; end;
   ActiveLetter.SetBounds(X,Y,ActiveLetter.Width,ActiveLetter.Height);
   ActiveLetter.Refresh;
      if Sender is TImage Then
      if ((Sender as TImage).HelpContext=1) and ((Sender as TImage).Tag=-2) and TakeStar
        Then
        if ((Sender as TImage).Hint[1]=ActiveLetter.Hint[1]) Then
           begin
               If CursorStatus>=0 Then while (CursorStatus>=0) Do CursorStatus:=ShowCursor(false);
               If not PopupPanel1.Visible Then begin
                  PopupPanel1.Left:=(Sender as TImage).Left+MPosX+10; PopupPanel1.Top:=(Sender as TImage).Top+MposY+20;
                  PopupTimer.Interval:=500;
                  PopupTimer.Tag:=2;
                  PopupTimer.Enabled:=True;
                                               end;
           end
                                             Else  Else If PopupPanel1.Visible Then begin PopupPanel1.Hide; PopupTimer.Enabled:=False; end
                                             Else  Else If PopupPanel1.Visible Then begin PopupPanel1.Hide; PopupTimer.Enabled:=False; end;
   exit;
                           end else else
 begin
 If Sender is TImage Then begin
{ For I:=0 To letters.Count-1 Do begin
   Im:=Letters.Items[i];
   If (X>=Im.Left)and(X<=Im.Left+24)and(Y>=Im.Top)and(Y<=Im.Top+24) and }
  If (LeftStr((sender as TImage).Name,4)='Lett')
      Then begin
         If ((sender as TImage).Tag>-2) and (sender as TImage).Visible Then begin
                     If ((WhatIDoNow=Take) and ((sender as TImage).Tag>0)) or
                        ((WhatIDoNow=Play) and ((sender as TImage).Tag<>MoveIs))
                        and ((sender as TImage).Tag<>-1)
                     Then Screen.Cursor:=crNoDrop
                     Else Screen.Cursor:=crDefault;
                                                                            end;
            end Else Screen.Cursor:=crDefault;
                      end Else Screen.Cursor:=crDefault;
   If PopupPanel1.Visible Then begin PopupPanel1.Hide; PopupTimer.Enabled:=False; end
 end;
 end
 {���� ���������� �e��� ������� �����}
 else begin
 if not AllowSelect Then exit;
 if not (Sender is TImage) Then exit;
 if (Sender as TImage).Parent<>MainScreen Then exit;
 if (Sender as TImage).Tag=-1 Then exit;
 TempX:=((Sender as TImage).Left+19) div 28;  TempY:=((Sender as TImage).Top+19) div 28;
 if (SelectField[TempX,TempY]=0)
   Then begin
      PopupTimer.Interval:=30; PopupTimer.Tag:=3; PopupTimer.Enabled:=true;
     if ShowSelection Then
      begin
      SelectField[TempX,TempY]:=SelectField[TempX,TempY]+1;
      setlength(SelectShapes, length(SelectShapes)+1);
      SelectShapes[length(SelectShapes)-1]:=TShape.Create(self);
      Sh:=SelectShapes[length(SelectShapes)-1];
      sh.Name:='selectshape'+intToStr(length(SelectShapes));
      Sh.Left:=(Sender as TImage).Left-1;
      Sh.Top:=(Sender as TImage).Top-1;
      Sh.Width:=26;
      Sh.height:=26; Sh.ParentShowHint:=false;
      Sh.Shape:=stRoundRect; sh.Brush.Style:=bsClear;
      sh.Pen.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGameHorizSelection'],IntToStr(clRed)));
      sh.Pen.style:=psSolid; sh.Pen.Width:=3;
      sh.Parent:=MainScreen;
      sh.BringToFront; sh.Show;
                            end
                       Else exit;
                                    end;
 Im:=Nil;
 For I:=0 To WorkFieldDimentionX*WorkFieldDimentionY-1 Do begin
   Im:=Letters[i];
   If (X>=Im.Left)and(X<=Im.Left+24)and(Y>=Im.Top)and(Y<=Im.Top+24) and (Im.Tag<>-1)
      Then begin
           If TempImage=Im Then exit;
           If (Im.Left<>(Sender as TImage).Left) and (Im.Top<>(Sender as TImage).Top) Then exit;
           if (X>Sh.Left+Sh.Width) and (Sh.Tag<>2)// and (SelectField[(X-163) div 28,TempY]<>1)
               and (X-Sh.Left-Sh.Width < 30) Then
                  begin sh.Width:=sh.Width+28; sh.Tag:=1; sh.Pen.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGameHorizSelection'],IntToStr(clRed)));
                        if (SelectField[(X+19) div 28,TempY]=0)
                        or (SelectField[(X+19) div 28,TempY]=2)
                        Then SelectField[(X+19) div 28,TempY]:=SelectField[(X+19) div 28,TempY]+1;
                        //TempX:=(Im.Left+19) div 28;
                        SelectField[TempX,TempY]:=1;
                        sh.OnMouseUp:=MainScreen.FormMouseDown;
                        sh.OnMouseMove:=MainScreen.MMove;
                    end;
           if (X<Sh.Left) and (Sh.Tag<>2) // and (SelectField[(X-163) div 28,TempY]<>1)
               and (Sh.Left-X < 30) Then
                  begin sh.Left:=sh.Left-28; sh.Width:=sh.Width+28; sh.Tag:=1; sh.Pen.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGameHorizSelection'],IntToStr(clRed)));
                        if (SelectField[(Im.Left+19) div 28,TempY]=0)
                        or (SelectField[(Im.Left+19) div 28,TempY]=2)
                        Then SelectField[(Im.Left+19) div 28,TempY]:=SelectField[(Im.Left+19) div 28,TempY]+1;
                        //TempX:=(Im.Left+19) div 28;
                        SelectField[TempX,TempY]:=1;
                        sh.OnMouseUp:=MainScreen.FormMouseDown;
                        sh.OnMouseMove:=MainScreen.MMove;
                    end;
           if (Y>Sh.Top+Sh.Height) and (Sh.Tag<>1)//  and (SelectField[TempX,(Y-35) div 28]<>2)
               and (Y-Sh.Top-sh.Height < 30) Then
                  begin sh.Height:=sh.Height+28;  sh.Tag:=2; sh.Pen.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGameVertSelection'],IntToStr($000080FF)));
                        if (SelectField[TempX,(Y+19) div 28]=0)
                        or (SelectField[TempX,(Y+19) div 28]=1)
                        Then SelectField[TempX,(Y+19) div 28]:=SelectField[TempX,(Y+19) div 28]+2;
                        //TempY:=(Im.Top+19) div 28;
                        SelectField[TempX,TempY]:=2;
                        sh.OnMouseUp:=MainScreen.FormMouseDown;
                        sh.OnMouseMove:=MainScreen.MMove;
                    end;
           if (Y<Sh.Top) and (Sh.Tag<>1)//   and (SelectField[TempX,(Y-35) div 28]<>2)
               and (Sh.Top-Y < 30) Then
                  begin sh.Top:=sh.Top-28; sh.Height:=sh.Height+28;  sh.Tag:=2;
                        sh.Pen.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGameVertSelection'],IntToStr($000080FF)));
                        if (SelectField[TempX,(Im.Top+19) div 28]=0)
                        or (SelectField[TempX,(Im.Top+19) div 28]=1)
                        Then SelectField[TempX,(Im.Top+19) div 28]:=SelectField[TempX,(Im.Top+19) div 28]+2;
                        //TempY:=(Im.Top+19) div 28;
                        SelectField[TempX,TempY]:=2;
                        sh.OnMouseUp:=MainScreen.FormMouseDown;
                        sh.OnMouseMove:=MainScreen.MMove;
                    end;
            TempImage:=Im;
            break;
           end;
                    end;
      end;
end;
{--------------------------------------------------}
{������ ���� �� ���� ������}
procedure TMainScreen.MainScreenImageClick(Sender: TObject);
var TempX,TempY,I,J:word; Im:TImage; Flag:Boolean;
begin
If WhatIDoNow=Helping Then ProceedHelp:=True;
If Ex_Form<>nil Then If Ex_Form.visible Then exit;
If (Screen.Cursor=crHourGlass) or Demomode  Then Exit;
//FlashAnnounce.Tag:=0;
Flag:=False;
{ � ������� ���� - ����� }
If ActiveLetter<>nil Then begin
{ ������ ���� ��� �������� ����� � �������� �������� ���� }
{If (MposX>ChoiceFieldImage.Left) and (MposX<ChoiceFieldImage.BoundsRect.Right)
and (MPosY>ChoiceFieldImage.Top) and (MPosY<ChoiceFieldImage.Top+418) }
If sender is TImage Then if (sender as TImage).Parent=MainScreen Then Flag:=true;
If (sender=MainScreen) or flag Then
                          begin
 Flag:=False;
 TempX:=trunc((MPosX+19)/28); TempY:=trunc((MPosY+19)/28);
 If TempX>WorkFieldDimentionX Then TempX:=WorkFieldDimentionX;
 If TempY>WorkFieldDimentionY Then TempY:=WorkFieldDimentionY;
 If TempX<1 Then TempX:=1; If TempY<1 Then TempY:=1;
 If WorkField[TempX,TempY].available Then
    If WorkField[TempX,TempY].HotSpot=' ' Then
                                          Else
        For I:=0 To length(letters)-1 Do begin
           Im:=Letters[i];
           If (Im.Left=(TempX-1)*28+19) and (Im.Top=(TempY-1)*28+19) and (Im.Tag=MoveIs)
             Then begin Flag:=True; Flag1:=I; break; end;
                            end
                          Else {If WorkField[TempX,TempY].available}
   begin
   if Sender is TImage Then
     If TakeStar and
     ((Sender as TImage).HelpContext=1) and ((Sender as TImage).Hint[1]=ActiveLetter.Hint[1])
     Then {������ ��������}
       begin                                                                    
             ActiveLetter.HelpContext:=1;
             ActiveLetter.Picture:=Images[1,AlphCount+1];
             ActiveLetter.Hint:=chr(FirstAlphCode+AlphCount);
             (Sender as TImage).HelpContext:=0;
             (Sender as TImage).Hint:=copy((Sender as TImage).Hint,1,2);
           with Sender as TImage do
               begin  Canvas.Font.Color := clBlack;
                      Canvas.Font.Style := [fsBold];
                      Canvas.Font.Size := 13;
                      Canvas.Brush.Color:=clBlack;
                      Canvas.Brush.Style:=bsClear;
                      Canvas.TextOut(14, 2, '*');
                 end;
            (Sender as TImage).Repaint;
            TempX:=trunc((MPosX+19)/28); TempY:=trunc((MPosY+19)/28);
            For I:=0 To length(letters)-1 Do If Letters[i]=ActiveLetter Then break;
            If not GameLoading Then begin
              If pos('TAKESTAR',MovesLog.Strings[MovesLog.Count-1])=0 Then MovesLog.Strings[MovesLog.Count-1]:=MovesLog.Strings[MovesLog.Count-1]+'TAKESTAR:';
              MovesLog.Strings[MovesLog.Count-1]:=MovesLog.Strings[MovesLog.Count-1]+IntToStr(I)+'/'+IntToStr(WorkField[TempX,TempY].Image)+',';
                                    end;
       end;
       exit;
   end;
 ActiveLetter.Left:=(TempX-1)*28+19; ActiveLetter.Top:=(TempY-1)*28+19;
 ActiveLetter.Tag:=MoveIs; WorkField[TempX,TempY].hotspot:=ActiveLetter.Hint[1];
 WorkField[TempX,TempY].Image:=StrToInt(copy(ActiveLetter.Name,5,3))-1;
 If WorkField[TempX,TempY].color>1 Then begin
      ActiveLetter.Canvas.Brush.Style:=bsSolid;  ActiveLetter.Canvas.Pen.Style:=psClear;
             case WorkField[TempX,TempY].color of
                   2: ActiveLetter.Canvas.Brush.Color:=$0200ffA8;
                   3: ActiveLetter.Canvas.Brush.Color:=$02ffff00;
                   4: ActiveLetter.Canvas.brush.Color:={ $0200ffE6;}clYellow;
                   5: ActiveLetter.Canvas.brush.Color:=$020000FF;
              end;
     If WorkField[TempX,TempY].color<6 Then ActiveLetter.Canvas.Polygon([point(1,2),Point(1,8), Point(8,1)]);
                                   end;
 ActiveLetter.Enabled:=true;
 If Flag Then begin ActiveLetter:=Im; ActiveLetter.Left:=MPosX; ActiveLetter.Top:=MPosY;
                   ActiveLetter.Picture:=Images[1,GetLetterNum(ActiveLetter.Hint[1])+1];
                   ActiveLetter.BringToFront; ActiveLetter.Enabled:=false; end
        Else begin ActiveLetter:=nil; MoveLEtterTimer.Enabled:=false;
                   ActiveLetterForm.Release; ActiveLetterForm:=nil;
                   If I_Form<>nil Then I_Form.Enabled:=true;
                   If (HintLimit>0) Then MainScreen.MenuHelpHInt.Enabled:=True;
                   MainScreen.MenuHelpComputeScore.Enabled:=True;
                   while (CursorStatus<0) Do CursorStatus:=ShowCursor(True); end;
                         end else
{ ������ ���� ��� �������� ����� � �������� ����� }
If ((sender as TControl).Tag=MoveIs) Then
For I:=1 To 7 Do
If (MposX+12>Slot7[MoveIs,I].SlotX) and (MposX+12<Slot7[MoveIs,I].SlotX+24)
and (MPosY+12>Slot7[MoveIs,I].SlotY) and (MPosY+12<Slot7[MoveIs,I].SlotY+24) Then
  begin
   If Slot7[MoveIs,I].Letter=' ' Then
                                 Else
       For J:=0 To WorkFieldDimentionX*WorkFieldDimentionY-1 Do begin
           Im:=Letters[J];
           If (Im.Left=Slot7[MoveIs,I].SlotX) and (Im.Top=Slot7[MoveIs,I].SlotY)
             and (Im.Tag=MoveIs) and ((sender as TControl).Tag=MoveIs)
                Then begin Flag:=True; Flag1:=J; break; end;
                           end;
   Slot7[MoveIs,I].Letter:=ActiveLetter.Hint[1];
   Slot7[MoveIs,I].Mark:=False; Slot7[MoveIs,I].Image:=StrToInt(copy(ActiveLetter.Name,5,3))-1;
   ActiveLetter.Left:=Slot7[MoveIs,I].SlotX; ActiveLetter.Top:=Slot7[MoveIs,I].SlotY;
   ActiveLetter.Tag:=MoveIs;
   ActiveLetter.Enabled:=true;
If Flag Then begin ActiveLetter:=Im; ActiveLetter.Left:=MPosX; ActiveLetter.Top:=MPosY;
                   ActiveLetter.Picture:=Images[1,GetLetterNum(ActiveLetter.Hint[1])+1];
                   ActiveLetter.BringToFront; ActiveLetter.Enabled:=false; end
        Else begin ActiveLetter:=nil; MoveLEtterTimer.Enabled:=false;
                   ActiveLetterForm.Release; ActiveLetterForm:=nil;
                    If (HintLimit>0) Then MainScreen.MenuHelpHInt.Enabled:=True;
                    MainScreen.MenuHelpComputeScore.Enabled:=True;
                    while (CursorStatus<0) Do CursorStatus:=ShowCursor(True); end;
  break;
  end;
                             end; { if ActiveLetter<>nil }
end;
{-------------------------------------------------}
{�������� �������� ����}
procedure TMainScreen.FormClose(Sender: TObject; var Action: TCloseAction);
const Rect: TRect = (Left: 0; Top: 0; Right: 0; Bottom: 0);
      OppArr:array[0..3] of string[6]=('Human','PC','Net','');
      AddWrd:array[0..3] of string[6]=('No','Yes','Ask','');
      Colors:array[2..6] of string[6]=('Green','Blue','Yellow','Red','Black');
var I,J:integer; sr:TSearchRec; TempBitmap:TBitmap; TempStr:TStringList;
begin
If sender=Lens_Form Then begin Action:=caNone; exit; end;
while (CursorStatus<0) Do CursorStatus:=ShowCursor(True);
HintLimit:=StoreHintLimit;
{  �������������� ���������� ���� ���������}
ErrorWindow.Left:=MainScreen.Left; ErrorWindow.Top:= MainScreen.Top;
If MoveTimer.Enabled Then begin
   HideLetters; MoveTimer.Enabled:=False;
                          end;
If Question(0,0,chr(13)+GlobalTextStrings.Items.Values['InGameQuestionExitFromProgram'])
Then begin
try
FlashTimer.Enabled:=false; SystemTimer.Enabled:=false;
{ ����� ������� ���� }
_Label:=Comment2; _Label1:=Comment3; _Label2:=Comment1;
If not FinishGame and not DemoMode Then SaveData(254);
{ ������� ����� ������� }
   For I:=0 to length(PlayerForms)-1 Do begin PlayerForms[i].Release; end;
   setlength(PlayerForms,0);
If RC_Form<>nil then begin RC_Form.release; RC_Form:=nil; end;
For I:=1 to 10 Do If mESSAGEForms[I]<>nil Then MessageForms[I].Release;
If DemoMode Then begin
   For I:=1 to PlayersNumber do begin Players[I].PLtype:=TempCodes[I]; end;
                 end;
Screen.Cursor:=crHourGlass;

{ ��������� �������}
For I:=0 to length(DictArray)-1 Do DictArray[I].Free;
//DictArray:=nil;

If BonusInfo.Visible Then BonusInfo.Close;
MainScreen.Hide;
If CursorStatus<0 Then while (CursorStatus<0) Do ShowCursor(True);
//if Letters<>nil then Letters.Free;
MainBackground[1].Free; MainBackground[2].Free; MainBackground[3].Free; MainBackgroundBackup.Free;
QuestWinBackground.Free; ErrorWinBackground.Free; SaveWinBackground.Free;
StarWinBackground.Free; GameOverWinBackground.Free; HallFameWinBackground.Free;
Shadow_Form.Release;
For I:=1 To 9 Do SafeImages[i].Free;
For I:=1 To 3 Do For J:=1 To 4 Do SlotImages[i,J].Free;
For I:=1 To 3 Do For J:=1 TO 33 Do Images[I,J].Free;
ActiveLetter.Free;
try
For I:=0 To GFX_Elem.Count-1 Do begin
  tempBitmap:=GFX_Elem.Items[i]; TempBitmap.free; end;
except end;  
GFX_Elem.Clear;
Rewrite(PickedWordsFile); CloseFile(PickedWordsFile); Erase(PickedWordsFile);
Rewrite(AddedWordsFile); CloseFile(AddedWordsFile); Erase(AddedWordsFile);
Rewrite(ClearedWordsFile); CloseFile(ClearedWordsFile); Erase(ClearedWordsFile);

{ ���������� ������� ��������� � ���� ������������� }
TempStr:=TStringList.Create;
TempStr.Add('[Last Player]');
TempStr.Add('Player1='+Players[1].Name);
TempStr.Add(chr(13)+'[Options Common]');
TempStr.Add('ShowAdvancedHallFame='+IntToStr(ord(ShowAdvancedHallFame)));
TempStr.Add(chr(13)+'[Options Appearance]');
TempStr.Add('Skin='+Skin);
TempStr.Add('ShowShadows='+IntToStr(ord(ShowShadows)));
TempStr.Add(chr(13)+'[Members]');
I:=1;
While Members[i-1].Name<>'' Do begin
      TempStr.Add('Member'+inttostr(I)+'='+Members[i-1].Name+'/'+Members[i-1].Image+'/'+OppArr[Members[i-1].pltype]+'/'+IntToStr(Members[i-1].code));
      inc(i);
                               end;

SaveUnicodeFile('erudit.ini',tempStr,nil,false,convert);
TempStr.Free;

{ ��������� ������� �������� }
//For I:=1 To 7 Do IniData.HallFame[I]:=HallFameArray[I];

//Rewrite(IniFile); Write(IniFile,IniData); CloseFile(IniFile);

SaveIni(Players[1].Name);

Action:=caFree;

BASS_Stop;
BASS_Free();

BoundsRect := Rect;
Screen.Cursor:=crDefault;
mHHelp.Free;
HHCloseAll;

// ������� ������
FindFirst('FONTS\*.*',0,sr);
repeat
If win32Platform<>ver_platform_win32_nt Then
     RemoveFontResource(PChar('FONTS\'+sr.name))
                         Else begin
     hDLL := LoadLibrary(PCHAR('gdi32.dll'));
     @MYAFREX:= GetProcAddress(hDLL,PCHAR('RemoveFontResourceExA'));
     MYAFREX(PChar('FONTS\'+sr.name),FR_PRIVATE,0);
     FreeLibrary(hDLL);
                              end;
until FindNext(sr)<>0;
finally
Halt;
end;
     end
Else begin Action:=caNone;
     If MoveLimit Then begin ShowLetters;
                             If WhatIDoNow=Play Then MoveTimer.Enabled:=True; end;
     end;
end;
{-------------------------------------------------------}
{ ���������� ������ }
Procedure EndCurrentGame;
var F,J,K,Winner:byte; I:word; Im:TImage; AddPlayer:boolean; s:string[5]; Temp,Temp1:byte;
const clear=2;
begin
try
MainScreen.MessageTimer.Enabled:=false;
If MainScreen.InfoTimer.Enabled Then MainScreen.InGameButtongInfoClick(MainScreen);
If RC_Form=nil Then exit;
MainScreen.update;
If Not FinishGame Then FinishGame:=True;
MainScreen.MediaPlayer1.Notify:=False;
If PlayBackgroundMusic Then
 begin MainScreen.MediaPlayer1.Close; BASS_StreamFree(BgrMusic); end;
 AddPlayer:=True;
If CursorStatus<0 Then while (CursorStatus<0) Do CursorStatus:=ShowCursor(True);
MainScreen.ElaspedTimer.Enabled:=False;
MainScreen.MoveTimer.Enabled:=False; MoveLimit:=false;
For I:=1 to Length(SelectShapes) do SelectShapes[I-1].Free;
setLength(SelectShapes,0);

{ ���������� ���������� }
SplashWindow.Tag:=GetWinner; Winner:=GetWinner;
If Winner=0 Then begin
               SplashWindow.NoWinner.Caption:=GlobalTextStrings.Items.Values['InGameMessageNoWinner']+chr(13)+intToStr(Players[1].Points)+' - '+intToStr(Players[2].Points);
               SplashWindow.NoWinner.Show; SplashWindow.NoWinnerShadow.Show;
               SplashWindow.WinnerName.Hide; SplashWindow.WinnerNameShadow.Hide;
               SplashWindow.LabelWinner.Hide;
                    end
               Else begin
               SplashWindow.WinnerName.Caption:=Players[GetWinner].Name+chr(13)+intToStr(Players[GetWinner].Points);
               SplashWindow.NoWinner.Hide; SplashWindow.NoWinnerShadow.Hide;
               SplashWindow.WinnerName.Show; SplashWindow.WinnerNameShadow.Show;
               SplashWindow.LabelWinner.Show;
                    end;

{  �������������� ���������� ���� 'Game Over' }
SplashWindow.Left:=MainScreen.Left; SplashWindow.Top:=MainScreen.Top;
If SplashWindow.Hint<>'Showed' Then ShowGameOverScreen;

{ �������, ���� ����� ������ � "��� �����"}
If not DemoMode
              then begin
If Winner=0 Then AddPlayer:=False;
{ ��������� ���� ����������� }
If Players[Winner].Points>=100 Then begin
{ ��������� ������������ �� ��� ����������  � ��� ���� }
If not ShowAdvancedHallFame Then
For J:=1 To 7 Do
 If HallFameArray[J].Name=Players[Winner].Name Then
    If StrToInt(HallFameArray[J].Code+HallFameArray[J].Points)>=Players[Winner].Points Then AddPlayer:=False;
{ ��������� ����������� }
If AddPlayer Then begin
 For J:=1 To 7 Do begin
  If StrToInt(HallFameArray[J].Code+HallFameArray[J].Points)<Players[Winner].Points Then begin
  If not ShowAdvancedHallFame
      Then if (HallFameArray[J].Name=Players[Winner].Name) Then continue;
      For K:=7 downto J do
                       HallFameArray[K+1]:=HallFameArray[K];
      HallFameArray[J].Name:=Players[Winner].Name;
      s:=IntToStr(Players[Winner].Points);
      HallFameArray[J].Points:=copy(s, length(s)-2, 3);
      If length(s)>3 Then HallFameArray[J].Code:=s[1]
                     Else HallFameArray[J].Code:='';
      break;
                                                           end;
                  end;
if j=8 then AddPlayer:=false;
{ ������� ���������� ������ � ������� ������ }
If not ShowAdvancedHallFame Then
For F:=1 to 7 Do
  If (StrToInt(HallFameArray[F].Code+HallFameArray[F].Points)<>Players[Winner].Points) and
     (HallFameArray[F].Name=Players[Winner].Name)
     Then begin
      For K:=F to 7 do HallFameArray[K]:=HallFameArray[K+1];
      break;
          end;
                  end;
{ ���������� ���� "��� �����" }
If AddPlayer Then begin HallFame.Tag:=J; MainScreen.MenuGameBestScore.Click; end;
{ ���������� hallfame-���� }
If NewGameWindow.LabelPlayerList.Items[0]<>'' Then begin
 Rewrite(HallFameFile); Write(HallFameFile,HallFameArray); CloseFile(HallFameFile);
                                                  end;
                            end;                      
                 end;
with Mainscreen do begin
FlashTimer.Enabled:=False;
SystemTimer.Enabled:=False;
{ ����� ������� ���� }
_Label:=Comment2; _Label1:=Comment3; _Label2:=Comment1;
If not DemoMode Then SaveData(254);
ShowTitleMenu;
end;
{ �������� �� ����������� ������ }
MainScreen.ElaspedTimer.Enabled:=False;
MainBackGround[1].bitmap.Canvas.Draw(0,0,MainBackgroundBackup.bitmap);
MainBackGround[2].bitmap.Canvas.Draw(0,0,MainBackgroundBackup.bitmap);
MainScreen.Invalidate;
MainScreen.MenuButton4.Hide; MainScreen.InGameLabel.Hide;
MainScreen.InGameButtongInfo.Hide; MainScreen.InGameButtongConfig.Hide;
MainScreen.InGameButtongLoadGame.Hide; MainScreen.InGameButtongSaveGame.Hide;
MainScreen.Comment1.Hide; MainScreen.Comment2.Hide;
MainScreen.Comment3.Hide; MainScreen.Comment4.Hide;
MainScreen.ChoiceFieldImage.Hide;
MainScreen.InGameButtongGo.Hide; MainScreen.InGameButtongGo.Parent:=MainScreen;
MainScreen.InGameButtongChangeLetters.Hide; MainScreen.InGameButtongChangeLetters.Parent:=MainScreen;
MainScreen.InGameButtongHint.Hide; MainScreen.InGameButtongHint.Parent:=MainScreen;
MainScreen.InGameButtongPreview.Hide; MainScreen.InGameButtongPreview.Parent:=MainScreen;
MainScreen.Marker1.Hide; MainScreen.Marker2.Hide;
If ShowExplanatoryPanel Then begin MainScreen.InGameLabelExplanationPanelClick(MainScreen.InGameLabelExplanationPanel);
                                   ShowExplanatoryPanel:=true; end;

For I:=1 to 15 Do Prevalue[I].Hide;

MainScreen.MenuGame.Enabled:=True; MainScreen.MenuHelp.Enabled:=True;
MainScreen.MenuIntellect.Enabled:=True;
MainScreen.MenuGameNew.Enabled:=True; MainScreen.MenuGameEnd.Enabled:=False;
MainScreen.MenuHelpHInt.Enabled:=False; MainScreen.MenuHelpComputeScore.Enabled:=False;
MainScreen.MenuIntellectLow.Enabled:=True; MainScreen.MenuIntellectNormal.Enabled:=True;
MainScreen.MenuIntellectHigh.Enabled:=True; MainScreen.MenuGameSave.Enabled:=False;
MainScreen.MenuGameNew.Enabled:=True;
MainScreen.MenuIntellect.Visible:=True; MainScreen.MenuGameDemo.Enabled:=true;

HintLimit:=StoreHintLimit;
MainScreen.MenuHelpHInt.Caption:=copy(MainScreen.MenuHelpHInt.Caption,1,pos('(',MainScreen.MenuHelpHInt.Caption)-2+22*ord(pos('(',MainScreen.MenuHelpHInt.Caption)=0));

with MainScreen Do begin
MenuBgr.Show; menuButton1.Show; menuButton2.Show; menuButton3.Show; menuButton6.Show;
ScreenButtonTitleNewGame.Show; ScreenButtonTitleLoadGame.Show; ScreenButtonTitleExit.Show;
ScreenButtonTitleContinue.Show; ScreenButtonTitleLastPlayer.Show;
end;
finally
 RC_Form.Hide;
{ ������� ����� ������� }
If length(PlayerForms)>0 Then begin
   For I:=0 to length(PlayerForms)-1 Do begin PlayerForms[i].Release; end;
   setlength(PlayerForms,0);
                              end;
   If RC_Form<>nil then begin
   For I:=0 to RC_Form.ControlCount-1 Do
                             begin
                             RC_Form.Controls[0].Hide;
                             RC_Form.Controls[0].Parent:=MainScreen;
                                           end;
   RC_Form.Free; RC_Form:=nil;
                       end;
   For I:=1 to 10 Do If mESSAGEForms[I]<>nil Then
    begin MessageForms[I].Release; MessageForms[I]:=nil; end;

MainScreen.FlashAnnounce.Hide;
setlength(Slot7,0,0);
MovesLog.Free; MovesLog:=nil;
MainScreen.MakeImageList(WorkFieldDimentionX*WorkFieldDimentionY,clear);
Temp:=WorkFieldDimentionX; Temp1:=WorkFieldDimentionY;
PrepareColorMatching('classic.map');
WorkFieldDimentionX:=Temp; WorkFieldDimentionY:=Temp1;
MainScreen.Hint:='';
end;
end;
{-------------------------------------------------------}
{ ����� ���� "��������� ������" }
procedure TMainScreen.MenuGameEndClick(Sender: TObject);
begin
If Ex_Form<>nil Then If Ex_Form.visible Then exit;
If Screen.Cursor=crHourGlass Then exit;
If ActiveLetterForm<>nil Then exit;
if not MenuGameEnd.Enabled Then exit;
If DemoMode Then begin
  If Question(0,0,chr(13)+GlobalTextStrings.Items.Values['InDemoQuestionBreakDemoGame']) Then FinishGame:=true; exit; end;
If WhatIDoNow=Helping Then begin ProceedHelp:=True; Exit; end;
{ �������������� ���������� ���� ��������� }
ErrorWindow.Left:=MainScreen.Left; ErrorWindow.Top:=MainScreen.Top;
If (Players[1].Points>=300) or (Players[2].Points>=300) or (Players[3].Points>=300)
or (Players[4].Points>=300) Then EndCurrentGame Else
If Question(0,0,GlobalTextStrings.Items.Values['InGameQuestionBreakGame'])
Then EndCurrentGame
Else Screen.Cursor:=crDefault;
end;
{----------------------------------------}
{������ �� ������ "������ ����� ������"}
procedure TMainScreen.N3Click(Sender: TObject);
var I,J:byte; Song:SongFileType;                               
begin
{ ��������� ������ ����������� ����������}
If Options.MusicListboxSelectedSongs.Items.Count=0 Then begin;
if FileExists('MEDIA\songs.lst') Then begin
AssignFile(SongFile,'MEDIA\songs.lst'); Reset(SongFile);
While not EOF(SongFile) do begin
Read(SongFile,Song);
Options.MusicListboxSelectedSongs.Items.Add(Song.Name); Options.PathList.Items.Add(Song.Path);
Options.ShuffleList.Items.Add('..');
                           end;
CloseFile(SongFile);
                                      end; end;

{  �������������� ���������� ���� '����� ������' }
With NewGameWindow Do begin
Left:=MainScreen.Left; Top:=MainScreen.Top;
                      end;
MainMenuUpdate:=MainMenu1;

If not DemoMode Then ShowNewGameScreen;

{ �������� ��������������� ��������� � ���� "���������"}
case PCIntellect of
  Low:MainScreen.MenuIntellectLowClick(Sender);
  Middle:MainScreen.MenuIntellectNormalClick(Sender);
  High:MainScreen.MenuIntellectHighClick(Sender);
end;
If not DemoMode Then begin
   If NewGameWindow.ModalResult=mrNo Then
                       begin MenuIntellect.Visible:=True; Exit; end;
Screen.Cursor:=crHourGlass;
                     end;
//MainBackground[1].Canvas.Draw(0,0,MainBackgroundBackup);
//MainBackground[2].Canvas.Draw(0,0,MainBackgroundBackup);
MenuBgr.Hide; menuButton1.Hide; menuButton2.Hide; menuButton3.Hide; menuButton6.Hide;
ScreenButtonTitleNewGame.Hide; ScreenButtonTitleLoadGame.Hide; ScreenButtonTitleExit.Hide;
ScreenButtonTitleContinue.Hide; ScreenButtonTitleLastPlayer.Hide;
//MainScreen.refresh;
For I :=0 To 19 Do
  If Members[i].Name<>'' Then MainMenu1.Items[0].Items[3].Items[i].OnClick:=n5Click
                         Else break;
MenuGameNew.Enabled:=False;
If not DemoMode then MenuGameSave.Enabled:=True; MenuGameEnd.Enabled:=True;
MenuGameNew.Enabled:=False; MenuGameDemo.Enabled:=False;

FinishGame:=False;
ShowTerminals:=true;

If (HintLimit>=0) and (HintLimit<11) Then begin
  InGameButtongHint.Hint:=copy(InGameButtongHint.Hint,1,pos(chr(13),InGameButtongHint.Hint)-1+21*ord(pos(chr(13),InGameButtongHint.Hint)=0))+chr(13)+GlobalTextStrings.Items.Values['InGameTagHintsLeft']+IntToStr(HintLimit)+' ';
  MenuHelpHInt.Caption:=copy(MainScreen.MenuHelpHInt.Caption,1,pos('(',MainScreen.MenuHelpHInt.Caption)-2+22*ord(pos('(',MainScreen.MenuHelpHInt.Caption)=0))+' ('+IntToStr(HintLimit)+')';
  If HintLimit=0 Then begin InGameButtongHint.Cursor:=crNoDrop; MenuHelpHInt.Enabled:=false; end
                                         end
                                    Else begin
  InGameButtongHint.Hint:=copy(InGameButtongHint.Hint,1,pos(chr(13),InGameButtongHint.Hint)-1+21*ord(pos(chr(13),InGameButtongHint.Hint)=0));
  MainScreen.MenuHelpHInt.Caption:=copy(MainScreen.MenuHelpHInt.Caption,1,pos('(',MainScreen.MenuHelpHInt.Caption)-2+22*ord(pos('(',MainScreen.MenuHelpHInt.Caption)=0));
                                         end;


{ �������� ������ }
If (Options.MusicListboxSelectedSongs.Items.Count>0) and PlayBackgroundMusic Then begin
If PlayShuffle Then begin
   If Options.ShuffleList.SelCount=Options.ShuffleList.Items.Count Then
    For I:=0 to Options.ShuffleList.Items.Count-1 Do Options.ShuffleList.Selected[i]:=False;
    PlaySong:=random(Options.MusicListboxSelectedSongs.Items.Count);
    While Options.ShuffleList.Selected[PlaySong] do
     PlaySong:=random(Options.MusicListboxSelectedSongs.Items.Count);
    Options.ShuffleList.Selected[PlaySong]:=True;
                    end;
If PlaySong>Options.MusicListboxSelectedSongs.Items.Count-1 Then PlaySong:=0;
 If pos('.mid',Options.MusicListboxSelectedSongs.Items[PlaySong])=0 Then
   begin
   BASS_StreamFree(BgrMusic);
   BgrMusic:=BASS_StreamCreateFile(false,pchar(Options.PathList.Items[PlaySong]+Options.MusicListboxSelectedSongs.Items[PlaySong]),0,0,0);
   BASS_ChannelSetAttributes(BgrMusic,0,MusicVolume,-101);
   BASS_StreamPlay(BgrMusic,false,0);
   MediaPlayer1.Notify:=True;
   end
                           Else begin
MediaPlayer1.FileName:=Options.PathList.Items[PlaySong]+Options.MusicListboxSelectedSongs.Items[PlaySong];
If FileExists(MediaPlayer1.FileName) Then begin
MediaPlayer1.Open; MediaPlayer1.Notify:=True; MediaPlayer1.Tag:=1;
MediaPlayer1.Play; SetCurrentDir(CurrentDir); end
                                     Else begin MediaPlayer1.Notify:=True; MediaPlayer1.Open; end;
                                end;
                                                                  end;
SetLength(HelpedWords,0);
SetLength(SelectShapes,0);
//For I:=0 to WorkFieldDimention+1 do For J:=0 to WorkFieldDimention+1 do SelectField[I,J]:=0;
Application.ProcessMessages;
StartGame;
If pos('Move',Limit)=0  then begin ElaspedTimer.Enabled:=True;
                                   ElaspedTimer.Tag:=0; end;
If pos('Move',Limit)<>0 Then
  Options.LimitsComboboxListMoveTime.Text:=Options.LimitsComboboxListMoveTime.Items[StrToInt(copy(Limit,pos('Move-',Limit)+5,1))-1];
end;
{---------------------------------------------------------------}
Procedure ShowGameGrafix;
var I:byte;
begin
Screen.Cursor:=crHourGlass;
{ �������� �������� ������� � ������ }
with MainScreen Do begin
Pl_Form:=PlayerForms[0];
For I:=0 to Pl_Form.ControlCount-1 Do
    If PL_Form.Controls[I] is TImage Then
                                       begin
   DrawShadows((PL_Form.Controls[I] as TImage),PL_Form.Controls[I].Left-3,PL_Form.Controls[I].Top+5,512,True);
   DrawShadows((PL_Form.Controls[I] as TImage),PL_Form.Controls[I].Left-2,PL_Form.Controls[I].Top+3,256,True);
                                       end;
For I:=0 to length(PlayerForms)-1 Do begin
 If not GameLoading and MinimizeWindows Then begin
   If (PlayersNumber>3) and (I>0) Then MinimizeWindow(PlayerForms[i]);
   If I>1 Then PlayerForms[I].Top:=PlayerForms[I-1].BoundsRect.Bottom+2;
                        end;
   PlayerForms[i].Show; PlayerForms[i].Repaint;
                                     end;
MainScreen.Repaint;
InGameButtongHint.Picture:=GFX_Elem.Items[0];
InGameButtongPreview.Picture:=GFX_Elem.Items[2];
For I:=0 to RC_Form.ControlCount-1 Do
    If (RC_Form.Controls[I] is TImage) and (pos('logo',LowerCase(RC_Form.Controls[I].Name))=0) Then begin
   DrawShadows((RC_Form.Controls[I] as TImage),RC_Form.Controls[I].Left-3,RC_Form.Controls[I].Top+5,512,True);
   DrawShadows((RC_Form.Controls[I] as TImage),RC_Form.Controls[I].Left-2,RC_Form.Controls[I].Top+3,256,True);
                                       end;
RC_Form.Repaint;
end;
MainScreen.Repaint;
end;

{---------------------------------------------------------------}
{�������� ��������� ����}
Procedure CreatePlayersForms;
var PlImage, ScImage, SltImage, DpImage:TImage; PLImageA:TRXGifAnimator;
    ScLabel, DpLabel:TLabel; Bord,PLBord:TShape; MyRect:TRect; PlLabel:TTNTLabel;
    Anim:TRXGifAnimator; PrevForm:TForm; PLButt1,PLButt2:TSpeedButton;
    AlignHOriz:boolean; AreaRect:TRect; K:word;
begin
 setlength(PlayerForms,PlayersNumber);
 setlength(Slot7,PlayersNumber+1,7+1);
 SystemParametersInfo(SPI_GETWORKAREA, 0, @AreaRect, 0);

If pos(' Move-',Limit)<>0 Then MoveLimit:=True Else MoveLimit:=False;
If copy(Limit,1,pos('-',Limit)-1)='Time' Then TimeLimit:=true Else TimeLimit:=False;
If AllPlayersOpen Then begin
MinimizeWindows:=false; AlignHoriz:=false;
If (PlayersNumber=8) and (Screen.Width<1280) Then MinimizeWindows:=true;
If PlayersNumber>3 Then begin
   If (((PlayersNumber-ord(PlayersNumber=8)) div 2)*(320+ord(MoveLimit or TimeLimit)*40)>Screen.Height+5)
    and (MainScreen.Height+(320+ord(MoveLimit or TimeLimit)*40)>screen.Height+20) Then MinimizeWindows:=true
                                                                               Else
   If MainScreen.BoundsRect.Right>screen.Width-340 Then
      If MainScreen.Width+170*3>Screen.Width Then
         If MainScreen.Height+(320+ord(MoveLimit or TimeLimit)*40)<=screen.Height+20
            Then begin
                     AlignHoriz:=true; MainScreen.Top:=AreaRect.Top; //MainScreen.Left:=172;
                 end
            Else MinimizeWindows:=true
                                             Else MainScreen.Left:=MainScreen.Left-(MainScreen.BoundsRect.Right-(Screen.Width-340));
                           end;
                               end {If AllPlayersOpen} Else MinimizeWindows:=true;

 { ������� ���� ������� }
 For I:=1 to PlayersNumber do begin
 Pl_Form:=TForm.Create(Application);
 Pl_Form.FormStyle:=fsStayOnTop; Pl_Form.BorderStyle:=bsNone;
 Pl_Form.Width:=170;
 If MoveLimit or TimeLimit Then Pl_Form.height:=360 Else Pl_Form.height:=320;
 If (PlayersNumber<=3) or MinimizeWindows Then begin
 If I=1 Then PL_Form.Left:=MainScreen.Left-Pl_Form.Width
        Else PL_Form.Left:=MainScreen.Left+MainScreen.Width;
 If I<=2 Then
         If MainScreen.Top+20+320+PL_Form.height-2>AreaRect.Bottom Then PL_Form.Top:=AreaRect.Bottom-320-PL_Form.height-2
                                                                   Else PL_Form.Top:=MainScreen.Top+20
    Else PL_Form.Top:=PrevForm.BoundsRect.Bottom+2;
                                              end;
 If (PlayersNumber>3) and not MinimizeWindows Then begin
   If AlignHoriz Then begin
        If I=1 Then begin PL_Form.Left:=MainScreen.Left-Pl_Form.Width; PL_Form.top:=MainScreen.BoundsRect.Bottom-Pl_Form.Height-320; end;
        If I=2 Then begin PL_Form.Left:=MainScreen.Left-Pl_Form.Width; PL_Form.top:=MainScreen.BoundsRect.Bottom+2; end;
        If I>2 Then begin PL_Form.Left:=PrevForm.Left+170; PL_Form.top:=MainScreen.BoundsRect.Bottom; end;                      end
                 Else begin
     If I<=2-ord((not(PlayersNumber=8))) Then PL_Form.Left:=MainScreen.Left-Pl_Form.Width
            Else If (I-ord(PlayersNumber=8)) mod 2=0 Then PL_Form.Left:=Screen.Width-170*2
                                                     Else PL_Form.Left:=Screen.Width-170;
     If (I>2-ord((not(PlayersNumber=8)))) Then PL_Form.Top:=(AreaRect.Top+Screen.Height-(PL_Form.Height*((PlayersNumber-ord(PlayersNumber=8)) div 2))) div 2+(((I-ord(PlayersNumber=8)) div 2)-1)*PL_Form.Height-20
                                          Else
                                           If MainScreen.Top+20+320+PL_Form.height+2>AreaRect.Bottom Then
                                              PL_Form.Top:=AreaRect.Bottom-320-PL_Form.height-PL_Form.height*(ord((PlayersNumber=8)))-2
                                                                                                     Else
                                              PL_Form.Top:=MainScreen.Top*(ord((not(PlayersNumber=8))))+20+PL_Form.Height*(I div 2);
                      end;
                         end;
 Pl_Form.Color:=clNavy; PL_Form.KeyPreview:=true;
 PL_Form.OnCloseQuery:=SplashScreen.FormCloseQuery;
 PL_Form.OnPaint:=MainScreen.OnPaint;
 PL_Form.OnMouseDown:=MainScreen.OnMouseDown;
 PL_Form.OnMouseMove:=MainScreen.MMove;
 PL_Form.OnClick:=MainScreen.MainScreenImageClick;
 PL_Form.OnActivate:=BonusInfo.OnActivate;
 PL_Form.OnKeyPress:=MainScreen.OnKeypress;
 Pl_Form.Name:='Pl'+IntToStr(i)+'form';
 Pl_Form.Tag:=I; //PL_Form.ControlStyle:=[csOpaque];
 //Pl_Form.HelpContext:=MainScreen.Left-Pl_Form.Left*1000+(MainScreen.Top-Pl_Form.Top);
 //PL_Form.DockSite:=true; PL_Form.DragKind:=dkDock; Pl_Form.DragMode:=dmAutomatic;
 Bord:=TShape.Create(Pl_Form); Bord.Parent:=PL_Form;
 MyRect.Left:=2; MyRect.Top:=2; MyRect.Right:=PL_Form.Width-3; MyRect.bottom:=22;
 Bord.BoundsRect:=MyRect; Bord.Brush.Style:=bsClear;
 Bord.Pen.Style:=psSolid; Bord.Pen.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGamePlayerBorder'],IntToStr(clWhite)));
 Bord.Enabled:=false;
 Bord:=TShape.Create(Pl_Form); Bord.Parent:=PL_Form;
 MyRect.Left:=2; MyRect.Top:=2; MyRect.Right:=PL_Form.Width-3; MyRect.bottom:=21;
 Bord.BoundsRect:=MyRect; Bord.Brush.Style:=bsClear;
 Bord.Pen.Style:=psSolid; Bord.Pen.Color:=clblack; Bord.Name:='Caption'+IntToStr(I);
 Bord.Cursor:=crSizeAll;
 Bord:=TShape.Create(Pl_Form); Bord.Parent:=PL_Form;
 MyRect.Left:=1; MyRect.Top:=2; MyRect.Right:=PL_Form.Width-3; MyRect.bottom:=PL_Form.Height-1;
 Bord.Anchors:=[akBottom];
 Bord.BoundsRect:=MyRect; Bord.Brush.Style:=bsClear;
 Bord.Pen.Color:=clBlack; Bord.Enabled:=false;
 Bord:=TShape.Create(Pl_Form); Bord.Parent:=PL_Form;
 MyRect.Left:=2; MyRect.Top:=1; MyRect.Right:=PL_Form.Width-2; MyRect.bottom:=PL_Form.Height-2;
 Bord.Anchors:=[akTop,akBottom];
 Bord.BoundsRect:=MyRect; Bord.Brush.Style:=bsClear;
 Bord.Pen.Color:=StrToint(ifthen(CustomColors,Colors.Values['InGamePlayerBorder'],IntToStr(clWhite)));
 Bord.Enabled:=false;

 PlLabel:=TTNTLabel.Create(Pl_Form); PlLabel.Parent:=Pl_Form; PlLabel.AutoSize:=false;
 PlLabel.Transparent:=true; PlLabel.Caption:=Players[I].Name;
 PlLabel.Font.Name:=FontNames[ttfPlayer];
 PlLabel.Font.Charset:=DEFAULT_CHARSET;
 PlLabel.Font.Size:=10; //PlLabel.Font.Style:=[fsBold];
 PlLabel.Font.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGamePlayerCap'],IntToStr(clWhite)));
 PlLabel.Height:=21; PlLabel.Width:=160; PLlabel.Alignment:=taCenter;
 PlLabel.Top:=4; PlLabel.Left:=(PL_Form.Width-PlLabel.Width) div 2;
 PlLabel.Name:='Pl'+IntToStr(I)+'Label';  PlLabel.Cursor:=crSizeAll;
 PLLabel.OnMouseMove:=MainScreen.OnMouseMove;
 PLLabel.OnMouseDown:=MainScreen.OnMouseDown;

  PLButt1:=TSpeedButton.Create(PL_Form); PlButt1.Parent:=PL_Form;
 With PLButt1 do begin
  Left:=150; Top:=5; Width:=15; Height:=15; Caption:='y';
  Flat:=False; Font.Charset:=SYMBOL_CHARSET; Font.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGamePlayerCapButtons'],IntToStr(clBlue)));
  Font.Style:=[fsBold];
  Font.Height:=-12; Font.Name:='Wingdings'; Spacing:=0; Layout:=blGlyphRight;
  cursor:=crHandPoint; ShowHint:=true; Hint:=GlobalTextStrings.Items.Values['UserWindowTagButtonMinimaze'];
  OnMouseMove:=MainScreen.OnMouseMove; name:='MinButt'+IntToStr(I);
  OnClick:=MainScreen.SpeedButton1Click;
  end;

  PLButt2:=TSpeedButton.Create(PL_Form); PlButt2.Parent:=PL_Form;
 With PLButt2 do begin
  Left:=5; Top:=5; Width:=15; Height:=15; Caption:='v'; GroupIndex:=1; AllowAllUp:=true;
  Flat:=False; Font.Charset:=SYMBOL_CHARSET; Font.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGamePlayerCapButtons'],IntToStr(clBlue)));
  Font.Height:=-12; Font.Name:='Wingdings'; Spacing:=0; Layout:=blGlyphRight;
  cursor:=crHandPoint; ShowHint:=true; Hint:=GlobalTextStrings.Items.Values['UserWindowTagButtonLock'];
  OnMouseMove:=MainScreen.OnMouseMove; name:='FixButt'+IntToStr(I);
  OnClick:=MainScreen.SpeedButton1Click;
  end;

 { �������� �������� �������}
 If RightStr(Players[I].Image,1)<>'A' Then
    BEGIN
 PlImage:=TImage.Create(Pl_Form); plImage.Parent:=Pl_Form; PlImage.AutoSize:=false;
 PlImage.Center:=true; PlImage.Width:=119; PlImage.Height:=122; PlImage.ShowHint:=true;
 try
  PLImage.Picture.Assign((ImageScreen.ScrollBox1.FindComponent(Players[I].Image) as TImage).Picture)
  except  For K:=0 to ImageScreen.ScrollBox1.ControlCount-1 Do
            If pos(Players[I].Image, ImageScreen.ScrollBox1.Controls[K].Hint)<>0 Then
               begin PLImage.Picture.Assign((ImageScreen.ScrollBox1.Controls[K] as TImage).Picture);
                     Players[I].Image:=ImageScreen.ScrollBox1.Controls[K].Name; break;
                 end;
          If K=ImageScreen.ScrollBox1.ControlCount then begin
             PLImage.Picture.Assign((ImageScreen.ScrollBox1.FindComponent('Im0') as TImage).Picture);
             Players[I].Image:='Im0';
                                                        end;
    end;

 PlImage.Left:=(Pl_Form.Width-PLImage.Width) div 2; PlImage.Top:=30;
 PlImage.Name:='Pl'+IntToStr(I)+'Im';
 PlImage.Enabled:=false;
    END Else
    BEGIN
 PlImageA:=TRXGifAnimator.Create(PL_Form);
 PlImageA.Parent:=PL_Form; PlImageA.AutoSize:=false;
 PlImageA.Width:=119; PlImageA.Height:=122;
 PlImageA.Left:=(Pl_Form.Width-PlImageA.Width) div 2; PlImageA.Top:=30;
 PlImageA.Center:=true; PLImageA.Image.Assign((ImageScreen.ScrollBox1.FindComponent(Players[I].Image) as TRXGifAnimator).Image);
 PlImageA.ShowHint:=true;
 PlImageA.Name:='Pl'+IntToStr(I)+'Im';
 PlImageA.Enabled:=false;
 PLImageA.Animate:=not AnimActiveAvatar;
    END;

 PlLabel:=TTNTLabel.Create(Pl_Form); PlLabel.Parent:=Pl_Form; PlLabel.AutoSize:=true;
 PlLabel.Transparent:=true; PlLabel.Caption:=IntToStr(I);
 PlLabel.Font.Name:=FontNames[ttfPlayer];
 PlLabel.Font.Charset:=DEFAULT_CHARSET;
 PlLabel.Font.Size:=18; //PlLabel.Font.Style:=[fsBold];
 PlLabel.Font.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGamePlayerNum'],IntToStr(clAqua)));
 //PlLabel.ShadowColor:=clBlack; PLLabel.ShadowPos:=spLeftBottom;
 //PlLabel.Height:=21; PlLabel.Width:=160; PLlabel.Alignment:=taRightJusti;
 PlLabel.Top:=(PL_Form.FindComponent('Pl'+IntToStr(I)+'im') as TControl).Top+93;
 PlLabel.Left:=(PL_Form.FindComponent('Pl'+IntToStr(I)+'im') as TControl).left+95;
 PlLabel.Name:='Pl'+IntToStr(I)+'num';
 PLLabel.OnMouseMove:=MainScreen.OnMouseMove;

 PLBord:=TShape.Create(PL_Form); PlBord.Parent:=PL_Form;
 PlBord.Width:=(PL_Form.FindComponent('Pl'+IntToStr(I)+'im') as TControl).Width;
 PlBord.Height:=(PL_Form.FindComponent('Pl'+IntToStr(I)+'im') as TControl).Height;
 PLBord.Left:=(PL_Form.FindComponent('Pl'+IntToStr(I)+'im') as TControl).Left;
 PLBord.Top:=(PL_Form.FindComponent('Pl'+IntToStr(I)+'im') as TControl).Top;
 PLBord.Brush.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGamePlayerImageBgr'],IntToStr(clBlue)));
 PLBord.Pen.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGamePlayerImageBorder'],IntToStr($002FB1C4)));
 PlBord.Pen.Style:=psSolid; PlBord.Pen.Width:=2;
 PlBord.Name:='Pl'+IntToStr(I)+'bord';
 PlBord.Sendtoback;

 Anim:=TRXGIFAnimator.Create(Pl_Form); Anim.Parent:=PL_Form;
 Anim.Left:=(PL_Form.FindComponent('Pl'+IntToStr(I)+'im') as TControl).BoundsRect.Right-5;
 Anim.Top:=(PL_Form.FindComponent('Pl'+IntToStr(I)+'im') as TControl).BoundsRect.Top+95;
 Anim.Loop:=true; Anim.Animate:=false; Anim.Enabled:=false; Anim.Name:='Arrow'+IntToStr(I);

 ScImage:=TImage.Create(Pl_Form); ScImage.Parent:=Pl_Form; ScImage.AutoSize:=true;
 ScImage.Transparent:=true;
 ScImage.ShowHint:=true; ScImage.Hint:=GlobalTextStrings.Items.Values['InGameTagPlayerScore']+' �'+Players[I].Name+'�';
 If I mod 2 <> 0 Then LoadSkinnedImage(ScImage.Picture,'ScrG1') Else LoadSkinnedImage(ScImage.Picture,'ScrM1');
 ScImage.Left:=(Pl_Form.Width-ScImage.Width) div 2;; ScImage.Top:=(PL_Form.FindComponent('Pl'+IntToStr(I)+'im') as TControl).Top+(PL_Form.FindComponent('Pl'+IntToStr(I)+'im') as TControl).Height+7;
 ScImage.Name:='Sc'+IntToStr(I)+'Im';
 ScImage.Enabled:=false;

 ScLabel:=TLabel.Create(Pl_Form); ScLabel.Parent:=Pl_Form; ScLabel.AutoSize:=false;
 ScLabel.Transparent:=true; ScLabel.Caption:=IntToStr(Players[I].Points);
 ScLabel.Font.Name:=FontNames[ttfDigi]; ScLabel.Font.Size:=16; ScLabel.Font.Style:=[fsBold,fsItalic];
 If I mod 2 <> 0 Then ScLabel.Font.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGamePlayerColor1'],IntToStr(clLime))) else ScLabel.Font.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGamePlayerColor2'],InttoStr(clFuchsia)));
 ScLabel.Height:=21; ScLabel.Width:=49; Sclabel.Alignment:=taCenter;
 ScLabel.ShowHint:=true; ScLabel.Hint:=GlobalTextStrings.Items.Values['InGameTagPlayerScore']+' �'+Players[I].Name+'�';
 ScLabel.Top:=ScImage.Top+7; ScLabel.Left:=ScImage.Left+(ScImage.Width-ScLabel.Width) div 2;
 ScLabel.Name:='Sc'+IntToStr(I)+'Label';
 ScLabel.OnMouseMove:=MainScreen.OnMouseMove;

 SltImage:=TImage.Create(Pl_Form); SltImage.Parent:=Pl_Form; SltImage.AutoSize:=true;
 SltImage.Transparent:=true;
 If I mod 2 <> 0 Then LoadSkinnedImage(SltImage.Picture,'slot7ch1') Else LoadSkinnedImage(SltImage.Picture,'slot7ch2');
 SltImage.Left:=(Pl_Form.Width-SltImage.Width) div 2;; SltImage.Top:=ScImage.Top+ScImage.Height+5;
 SltImage.Name:='Slt'+IntToStr(I)+'Im';
 SltImage.Enabled:=false;

 if MoveLimit or TimeLimit Then
 begin
    DpImage:=TImage.Create(Pl_Form); DpImage.Parent:=Pl_Form; DpImage.AutoSize:=true;
    DpImage.Transparent:=true;
    LoadSkinnedImage(DpImage.Picture,'timet1');
    DpImage.Left:=(Pl_Form.Width-DpImage.Width) div 2;; DpImage.Top:=SltImage.Top+SltImage.Height+5;
    DpImage.Name:='Dp'+IntToStr(I)+'Im';
    DpImage.Enabled:=false;

    DpLabel:=TLabel.Create(Pl_Form); DpLabel.Parent:=Pl_Form; DpLabel.AutoSize:=false;
    DpLabel.Transparent:=true; DpLabel.Caption:='00:00';
    DpLabel.Font.Name:=FontNames[ttfDigi]; DpLabel.Font.Size:=15; DpLabel.Font.Style:=[fsBold,fsItalic];
    DpLabel.Font.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGameTimeInActive'],IntToStr(clTeal)));
    DpLabel.Height:=23; DpLabel.Width:=64; Dplabel.Alignment:=taCenter;
    DpLabel.Top:=DPImage.Top+9; DpLabel.Left:=(Pl_Form.Width-DpLabel.Width) div 2;
    DpLabel.Name:='Dp'+IntToStr(I)+'Label';
    DpLabel.ShowHint:=true;
    If MoveLimit Then DpLabel.Hint:=GlobalTextStrings.Items.Values['InGameTagPlayerMoveTime']+' �'+Players[I].Name+'�'
                 Else DpLabel.Hint:=GlobalTextStrings.Items.Values['InGameTagGameTime'];
    DpLabel.OnMouseMove:=MainScreen.OnMouseMove;
 end;
 PlayerForms[i-1]:=Pl_Form; PL_Form:=nil;PrevForm:=PlayerForms[i-1];
 PrepareSevenLettersSlots(I,SltImage);
                   end;

 { ������� ���� � �������� }
 RC_Form:=TForm.Create(Application);
 RC_Form.FormStyle:=fsStayOnTop; RC_Form.BorderStyle:=bsNone;
 RC_Form.Width:=170; RC_Form.height:=320;
 RC_Form.Left:=PlayerForms[0].Left;
 RC_Form.Top:=(PlayerForms[2-ord((not(PlayersNumber=8) or AlignHoriz))-1] as TForm).BoundsRect.Bottom+1;
 RC_Form.Color:=clNavy; RC_Form.OnCloseQuery:=SplashScreen.FormCloseQuery;
 RC_Form.OnPaint:=MainScreen.OnPaint; RC_Form.OnMouseDown:=MainScreen.OnMouseDown;
 RC_Form.OnMouseMove:=MainScreen.MMove; //RC_Form.OnClick:=MainScreen.MainScreenImageClick;
 RC_Form.OnKeyPress:=MainScreen.OnKeyPress;
 RC_Form.OnActivate:=BonusInfo.OnActivate;
 RC_Form.Name:='RC_form';
 Bord:=TShape.Create(RC_Form); Bord.Parent:=RC_Form;
 MyRect.Left:=2; MyRect.Top:=2; MyRect.Right:=RC_Form.Width-3; MyRect.bottom:=24;
 Bord.BoundsRect:=MyRect; Bord.Brush.Style:=bsClear;  Bord.Name:='RC_Caption';
 Bord.Pen.Style:=psSolid; Bord.Pen.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGamePlayerBorder'],InttOStr(clWhite)));
 Bord.Enabled:=false;
 Bord:=TShape.Create(RC_Form); Bord.Parent:=RC_Form;
 MyRect.Left:=2; MyRect.Top:=2; MyRect.Right:=RC_Form.Width-3; MyRect.bottom:=25;
 Bord.BoundsRect:=MyRect; Bord.Brush.Style:=bsClear;
 Bord.Pen.Style:=psSolid; Bord.Pen.Color:=clblack;
 Bord.Cursor:=crSizeAll;
 Bord:=TShape.Create(RC_Form); Bord.Parent:=RC_Form;
 MyRect.Left:=1; MyRect.Top:=2; MyRect.Right:=RC_Form.Width-3; MyRect.bottom:=RC_Form.Height-1;
 Bord.BoundsRect:=MyRect; Bord.Brush.Style:=bsClear;
 Bord.Pen.Color:=clBlack; Bord.Enabled:=false;
 Bord:=TShape.Create(RC_Form); Bord.Parent:=RC_Form;
 MyRect.Left:=2; MyRect.Top:=1; MyRect.Right:=RC_Form.Width-2; MyRect.bottom:=RC_Form.Height-2;
 Bord.BoundsRect:=MyRect; Bord.Brush.Style:=bsClear;
 Bord.Pen.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGamePlayerBorder'],IntToStr(clWhite)));
 Bord.Enabled:=false;
 PlLabel:=TTNTLabel.Create(RC_Form); PlLabel.Parent:=RC_Form; PlLabel.AutoSize:=false;
 PlLabel.Transparent:=true; PlLabel.Caption:=GlobalTextStrings.Items.Values['InGameMessageWait'];
 PlLabel.Font.Name:=FontNames[ttfPlayer];
 PlLabel.Font.Charset:=DEFAULT_CHARSET;
 PlLabel.Font.Size:=11; //PlLabel.Font.Style:=[fsBold];
 PlLabel.Font.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGameMessageWait'],InttoStr(clWhite)));
 //PlLabel.ShadowColor:=clBlack; PLLabel.ShadowPos:=spLeftBottom;
 PlLabel.Height:=21; PlLabel.Width:=160; PLlabel.Alignment:=taCenter;
 PlLabel.Top:=4; PlLabel.Left:=(RC_Form.Width-PlLabel.Width) div 2;
 PlLabel.Name:='RC_Label';  PlLabel.Cursor:=crSizeAll;
 PLLabel.OnMouseMove:=MainScreen.OnMouseMove;
 PLLabel.OnMouseDown:=MainScreen.OnMouseDown;

 For I:=1 to 10 Do MessageForms[I]:=nil;

 With MainScreen do begin
 InGameButtongChangeLetters.Parent:=RC_Form; InGameButtongChangeLetters.Left:=23; InGameButtongChangeLetters.top:=50; InGameButtongChangeLetters.Show;
 InGameButtongGo.Parent:=RC_Form; InGameButtongGo.Left:=InGameButtongChangeLetters.BoundsRect.Right; InGameButtongGo.top:=50; InGameButtongGo.Show;
 InGameButtongHint.Parent:=RC_Form; InGameButtongHint.Left:=45; InGameButtongHint.top:=120; InGameButtongHint.Show;
 InGameButtongPreview.Parent:=RC_Form; InGameButtongPreview.Left:=95; InGameButtongPreview.top:=120; InGameButtongPreview.Show;
 InGameButtongConfig.Parent:=RC_Form; InGameButtongConfig.Left:=15; InGameButtongConfig.top:=180; InGameButtongConfig.Show;
 InGameButtongSaveGame.Parent:=RC_Form; InGameButtongSaveGame.Left:=52; InGameButtongSaveGame.top:=180; InGameButtongSaveGame.Show;
 InGameButtongLoadGame.Parent:=RC_Form; InGameButtongLoadGame.Left:=90; InGameButtongLoadGame.top:=180; InGameButtongLoadGame.Show;
 InGameButtongInfo.Parent:=RC_Form; InGameButtongInfo.Left:=126; InGameButtongInfo.top:=180; InGameButtongInfo.Show;
 MenuButton4.Parent:=RC_Form; MenuButton4.Left:=10; MenuButton4.top:=225; MenuButton4.Show;
 InGameLabel.Parent:=RC_Form; InGameLabel.Left:=MenuButton4.Left-8; InGameLabel.Top:=MenuButton4.top+5; InGameLabel.Show;
 InGameTagSponsorLogo.Parent:=RC_Form; InGameTagSponsorLogo.Left:=15; InGameTagSponsorLogo.Top:=280; InGameTagSponsorLogo.Show;
 Logo_White.Parent:=RC_Form; Logo_White.Left:=InGameTagSponsorLogo.Left; Logo_White.Top:=InGameTagSponsorLogo.Top;
                     end;
end;

{---------------------------------------------------------------}
{������ ����� ������}
Procedure StartGame;
var I:byte;
const create=1;
begin
 If MovesLog<>nil Then MovesLog.Free; MovesLog:=TStringList.Create;
 PrepareColorMatching(Template);
 MainScreen.MakeImageList((WorkFieldDimentionX*WorkFieldDimentionY),create);
 MainScreen.Update;

 Helped:=False;
  StartHour:=0; StartMin:=0; StartSec:=0; OldHour:=0; LastLoadedTime:='';
  For I:=1 to PlayersNumber Do begin
  Players[I].Points:=0; Players[I].Changes:=0;
                               end;
 CreatePlayersForms;
 ClearWorkArray;
 LoadGrafix;
 MainScreen.Update;
 FillComments;
 SetLength(ClearedWords,0);

If TimeLimit Then begin
  For I:=0 to PlayersNumber-1 Do begin
                  (PlayerForms[I].FindComponent('Dp'+IntToStr(I+1)+'Label') as TLabel).Caption:=copy(Limit,pos('-',Limit)+1,2)+'.00';
                  (PlayerForms[I].FindComponent('Dp'+IntToStr(I+1)+'Label') as TLabel).Font.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGameTimeActive'],InttoStr(clAqua)));
                                 end;
  StartMin:=StrToInt(copy(Limit,pos('-',Limit)+1,2))-1;
  StartSec:=60; OldSecond:=0;
                    end;
StarWindow.FormCreate(StarWindow);
ShowGameGrafix;
RC_Form.Show; RC_Form.Update;
 If not LettersAutoSelect Then begin
    MainScreen.ChoiceFieldImage.Show; MainScreen.ChoiceFieldImage.update;
                                end;
CreateChoiceScreen;
SplashWindow.Hint:='';
FirstWord:=true;

MainScreen.FlashTimer.Enabled:=True;
MainScreen.SystemTimer.Enabled:=True;
MoveIs:=random(PlayersNumber)+1;
Opponent:=Players[MoveIs].PLtype;
StartLetterSelectionCompleted:=false;
case Opponent of
                   PC: begin
                       WhatIDoNow:=Take;
                       ComputerDoChoice(MoveIs);
                       If FinishGame Then begin EndCurrentGame; Exit; end;
                       DoChoiceScreen(MoveIs,off_m);
                       //inc(MoveIs); If MoveIs>PlayersNumber Then MoveIs:=1;
                       //Opponent:=Players[MoveIs].PLtype;
                       If LettersAutoSelect or DemoMode Then begin
                          While CheckSlots(MoveIs)=7 Do begin
                          WhatIDoNow:=Take;
                          ComputerDoChoice(MoveIs);
                          If FinishGame Then begin EndCurrentGame; Exit; end;
                          DoChoiceScreen(MoveIs,off_m);
                                                        end;
                          If MoveLimit Then InitMoveTimer(MoveIs);
                                                 end
                                            Else ;
                       end;
                   Human:begin
                       WhatIDoNow:=Take;
                       DoChoiceScreen(MoveIs,On_m);
                       If LettersAutoSelect Then begin
                                           DoChoiceScreen(MoveIs,off_m);
                                           While CheckSlots(MoveIs)=7 Do begin
                                                WhatIDoNow:=Take;
                                                ComputerDoChoice(MoveIs);
                                                DoChoiceScreen(MoveIs,off_m);
                                                                         end;
                                           If MoveLimit Then InitMoveTimer(MoveIs);
                                                 end;
                         end;
                 end;
 end;
{----------------------------------------------------------}
{ ������ ������ �������� ���� �� ����� � �������� �������� ���� }  
procedure TMainScreen.RightMBClick(Sender:TObject; Button:TMouseButton; Shift:TShiftState; X,Y:integer); { TODO : Right Click }
var TempX,TempY:byte; Im:TImage; NoChange:boolean; i,j:byte; flag,flag1:boolean; TempUTFStr:utf8string;
 begin
  If WhatIDoNow=Helping Then begin ProceedHelp:=True; exit; end;
  if ActiveLetter<>nil Then begin
                                 if ContextHelpMenu.Items.Count>0 Then
                                  While ContextHelpMenu.Items.Count>0 Do ContextHelpMenu.Items[0].Free;
                                 exit;
                            end;
  NoChange:=True;

  If Button=mbRight Then begin
  If not DemoMode Then  begin
  If ((Sender as TImage).Tag=MoveIs) and (WhatIDoNow=Play) and (Opponent<>PC) Then begin
  {c �������� ����}
  If (Sender as TImage).Parent=MainScreen
  {If ((Sender as TImage).Left>ChoiceFieldImage.Left-10) and ((Sender as TImage).Left<ChoiceFieldImage.Left+419+10)
  and ((Sender as TImage).Top>ChoiceFieldImage.Top-10) and ((Sender as TImage).Top<ChoiceFieldImage.Top+418+10)}
   Then
   begin
   TempX:=((Sender as TImage).Left+19) div 28;  TempY:=((Sender as TImage).Top+19) div 28;
   TakeLetter(Play,MoveIs,WorkField[TempX,TempY].HotSpot,TempX,TempY);
   WorkField[TempX,TempY].HotSpot:=' '; WorkField[TempX,TempY].Image:=-1;
   end
   else
   { ������ � �������� ����� }
   {If ((Sender as TImage).Left<ChoiceFieldImage.Left-10)
   or ((Sender as TImage).Left>ChoiceFieldImage.Left+429)
     Then}
      If Shift=[ssShift] Then begin
               For TempX:=1 To 7 Do If not Slot7[MoveIS,TempX].Mark Then NoChange:=False;
               If NoChange Then For TempX:=1 To 7 Do begin Slot7[MoveIS,TempX].Mark:=False;
                                                              Im:=Letters[Slot7[MOveIs,TempX].Image];
                                                              Im.Picture:=Images[1,GetLetterNum(Slot7[MoveIs,TempX].Letter)+1];
                                                     end
                           Else begin
  { �������� ����� � �������� ���� }
  For TempY:=1 to WorkFieldDimentionY Do For TempX:=1 to WorkFieldDimentionX Do
    If (WorkField[TempX,TempY].HotSpot<>' ') and (WorkField[TempX,TempY].main=' ') Then
       begin
       TakeLetter(Play,MoveIs,WorkField[TempX,TempY].HotSpot,TempX,TempY);
       WorkField[TempX,TempY].HotSpot:=' '; WorkField[TempX,TempY].Image:=-1;
       end;
  For TempX:=1 To 7 Do Slot7[MoveIS,TempX].Mark:=True;
                                end;
                             end
                              Else
   For TempX:=1 To 7 Do
      If Slot7[MoveIs,TempX].Image=StrToInt(copy((sender as TImage).Name,5,3))-1
                                 Then begin
                                     Slot7[MoveIs,TempX].Mark:=Not(Slot7[MoveIs,TempX].Mark);
                                     Im:=Letters[Slot7[MOveIs,TempX].Image];
                                     Im.Picture:=Images[1,GetLetterNum(Slot7[MoveIs,TempX].Letter)+1];
                                      end;
                                                                end;
                                                           end;
  {������ �� ������������� ����� ��� ����������� �������}
  If ((Sender as TImage).Tag=-2) and (WhatIDoNow=Play) Then
   begin
    {���������� �����, ������� ���������� �� ��� �����}
    TempX:=((Sender as TImage).Left+19) div 28;  TempY:=((Sender as TImage).Top+19) div 28;
    if ContextHelpMenu.Items.Count>0 Then
     While ContextHelpMenu.Items.Count>0 Do ContextHelpMenu.Items[0].Free;
   {������� ������ ����������}
  //If LanguageExpl<>'' Then
    For i:=1 to PlayersNumber do begin
      j:=1;
      While Words[j,i].Word<>'' do begin
        if ((tempX>=Words[j,i].Wbegin) and (tempX<=Words[j,i].Wend) and (tempY=Words[j,i].Coord) and (Words[j,i].Direction=1))
        or ((tempY>=Words[j,i].Wbegin) and (tempY<=Words[j,i].Wend) and (tempX=Words[j,i].Coord) and (Words[j,i].Direction=2))
           Then begin
                  LoadItem:=TTNTMenuItem.Create(ContextHelpMenu);
                  tempUTFStr:=ansitoutf8(Words[j,i].Word);
                  If GetLanguageCodepage(LanguageDict)<>1251 Then CorrectUTFForSave(TempUTFStr,Words[j,i].Word);
                  LoadItem.Caption:=Utf8decode(TempUtfStr);
                  LoadItem.ShortCut:=0;
                  LoadItem.Name:='contextitem'+inttostr(i)+inttostr(j);
                  LoadItem.OnClick:=contextitemClick;
                  ContextHelpMenu.Items.Add(LoadItem);
                end;
        inc(j);
                              end;
                     end;
   if (CustomDict.Use) Then
   begin
   {������� ����� "���������"}
    LoadItem:=TTNTMenuItem.Create(ContextHelpMenu);
    LoadItem.Caption:='-';
    LoadItem.Name:='contextitem1'; LoadItem.Tag:=1;
    ContextHelpMenu.Items.Add(LoadItem);
   {���������� �����, ������� ���������� �� ��� �����}
    j:=200;
    While j>=1 Do begin
    flag1:=true;
    For I:=1 to PlayersNumber Do If (Words[j,i].Word<>'') Then Flag1:=false;
    If Flag1 Then begin dec(j); continue; end;
    for I:= 1 To PlayersNumber Do begin
    If (Words[j,i].Word<>'') Then
      if ((tempX>=Words[j,i].Wbegin) and (tempX<=Words[j,i].Wend) and (tempY=Words[j,i].Coord) and (Words[j,i].Direction=1))
      or ((tempY>=Words[j,i].Wbegin) and (tempY<=Words[j,i].Wend) and (tempX=Words[j,i].Coord) and (Words[j,i].Direction=2))
                Then begin
    LoadItem:=TTNTMenuItem.Create(ContextHelpMenu);
    tempUTFStr:=ansitoutf8(Words[j,i].Word);
    If GetLanguageCodepage(LanguageDict)<>1251 Then CorrectUTFForSave(TempUTFStr,Words[j,i].Word);
    LoadItem.Caption:=GlobalTextStrings.Items.Values['ContextMenuItemExcludeWord']+' '+utf8decode(tempUTFStr);
    LoadItem.Tag:=1; LoadItem.Bitmap.Assign(DelImage.Picture.Graphic);
    LoadItem.Name:='contextitemdel'+IntTostr(i)+IntTostr(j); LoadItem.OnClick:=contextitemClick;
    ContextHelpMenu.Items.Add(LoadItem);
    LoadItem:=TTNTMenuItem.Create(ContextHelpMenu);
                     end;
                       end;
    dec(j)
                  end;
    end;
   PopupTimer.Enabled:=False; If PopupPanel.Visible Then PopupPanel.Hide;
   end
    Else     if ContextHelpMenu.Items.Count>0 Then
                 While ContextHelpMenu.Items.Count>0 Do ContextHelpMenu.Items[0].Free;
                        end; { if Button}

 end;

procedure TMainScreen.Label1Click(Sender: TObject);
begin
halt;
end;
{----------------------------------------------------}
{ ����������� ������� ����� � ���������� �� �� ����� ��������� }
Procedure StopLettersFlashing;
var I:byte; Im:TImage;
begin
For I:=1 To 7 Do
  If Slot7[MoveIs,I].Mark Then begin
                          Slot7[MoveIs,I].Mark:=False;
                          Im:=Letters[Slot7[MoveIs,I].Image];
                          Im.Picture:=Images[1,GetLetterNum(Slot7[MoveIs,I].Letter)+1];
                          Im.Update;
                               end;
end;
{----------------------------------------------------}
{ �������� ����� � �������� ���� }
Procedure GatherLettersFromWorkField;
var Im:TImage; TempX,TempY:byte;
begin
  For TempY:=1 to WorkFieldDimentionY Do For TempX:=1 to WorkFieldDimentionX Do
    If (WorkField[TempX,TempY].HotSpot<>' ') and (WorkField[TempX,TempY].main=' ') Then
       begin
       Im:=Letters[WorkField[TempX,TempY].Image];
       Im.Picture:=Images[1,GetLetterNum(Im.Hint[1])+1];
       If Im.Tag>600 Then begin Im.Tag:=MoveIs; Im.Show; end;
       TakeLetter(Play,MoveIs,WorkField[TempX,TempY].HotSpot,TempX,TempY);
       WorkField[TempX,TempY].HotSpot:=' '; WorkField[TempX,TempY].Image:=-1;
       end;
end;
{----------------------------------------------------}
{ ����� �������� "����!"}
procedure TMainScreen.InGameButtongGoClick(Sender: TObject);
var Im:TImage; I,J:byte;
begin
If WhatIDoNow=Helping Then begin ProceedHelp:=True; Exit; end;
If WhatIDoNow=Take Then Exit;
If ActiveLetter<>nil Then exit;
If Screen.Cursor=crHourGlass Then exit;
If DemoMode Then Exit;
(Sender as TImage).Enabled:=False;
{ ������ ������� ������ }
case MoveIs of
1: begin
   LoadSkinnedImage(InGameButtongGo.Picture,'Go!_1p'); InGameButtongGo.Repaint;
   TimeDelay(300);
   LoadSkinnedImage(InGameButtongGo.Picture,'Go!_1'); InGameButtongGo.Update;
   end;
end;
{����������� ������� �����, ���� ���� �������}
StopLettersFlashing;
{  �������������� ���������� ���� ������ ���������}
StarWindow.Left:=MainScreen.Left; StarWindow.Top:=MainScreen.Top;
{ ���������� ���� }
Pl_Form:=PlayerForms[MoveIs-1];
For I:=0 to PL_Form.ControlCount-1 Do begin
   If PL_Form.Controls[I].Name='Sc'+IntToStr(MoveIs)+'Label' Then
      ScoreLabel:=PL_form.Controls[I] as TLabel;
   If PL_Form.Controls[I].Name='Sc'+IntToStr(MoveIs)+'Im' Then
       ScoreDisplay:=Pl_Form.Controls[I] as TImage;
                                                  end;
If Helped Then begin
  If (HintLimit>0) and (StoreHintLimit<11) Then begin
  dec(HintLimit);
  InGameButtongHint.Hint:=copy(InGameButtongHint.Hint,1,pos(chr(13),InGameButtongHint.Hint)-1+21*ord(pos(chr(13),InGameButtongHint.Hint)=0))+chr(13)+GlobalTextStrings.Items.Values['InGameTagHintsLeft']+IntToStr(HintLimit)+' ';
  If HintLimit=0 Then begin InGameButtongHint.Cursor:=crNoDrop; MenuHelpHInt.Enabled:=false; end;
  MenuHelpHInt.Caption:=copy(MainScreen.MenuHelpHInt.Caption,1,pos('(',MainScreen.MenuHelpHInt.Caption)-2+22*ord(pos('(',MainScreen.MenuHelpHInt.Caption)=0))+' ('+IntToStr(HintLimit)+')';
                                                end; end;
HintBut:=MainScreen.InGameButtongHint;
{  �������������� ���������� ���� ���������}
ErrorWindow.Left:=MainScreen.Left; ErrorWindow.Top:=MainScreen.Top;
{ ������ ���� }
Screen.Cursor:=crHourGlass;
InGameButtongSaveGame.cursor:=crNoDrop; InGameButtongLoadGame.cursor:=crNoDrop;  MenuGameSave.Enabled:=false; MenuGameLoad.Enabled:=false; MenuGameEnd.Enabled:=false;
PressGo:=false;
ElaspedTimer.Enabled:=false;

CheckPlayersWord(MoveIs,FinishGame);

InGameButtongSaveGame.cursor:=crHandPoint; InGameButtongLoadGame.cursor:=crHandpoint; MenuGameSave.Enabled:=true; MenuGameLoad.Enabled:=true; MenuGameEnd.Enabled:=true;
Screen.Cursor:=crDefault;
(Sender as TImage).Enabled:=True;
   If Length(SelectShapes)>0 Then
     For I:=0 to Length(SelectShapes)-1 do
      If SelectShapes[I]<>nil Then If SelectShapes[I].Visible Then SelectShapes[I].Hint:='';
If FinishGame Then begin EndCurrentGame; exit; end;
{ ��������� ���� ������� ������ � ��������� � ����� ������ ����}
If PressGo=True Then begin
  { �������� ������ ��������� }
  For I:=1 to Length(SelectShapes) do If SelectShapes[I-1]<>nil Then begin SelectShapes[I-1].Free; SelectShapes[I-1]:=nil end;
  setLength(SelectShapes,0);
  For I:=0 to WorkFieldDimentionX+1 do For J:=0 to WorkFieldDimentionY+1 do SelectField[I,J]:=0;
  Helped:=False; {PressGo:=False;}
  DoChoiceScreen(MoveIs,On_m);
  If (LettersAutoSelect) Then
     begin DoChoiceScreen(MoveIs,Off_m);
     If MoveLimit Then InitMoveTimer(MoveIs);
        end;
                     end;
end;
{---------------------------------------------------------}
{ ����� �������� "�����!"}
procedure TMainScreen.InGameButtongChangeLettersClick(Sender: TObject);
var I,J:byte; NoChoice:Boolean; Im:TImage;
begin
If WhatIDoNow=Helping Then begin ProceedHelp:=True; Exit; end;
If WhatIDoNow=Take Then Exit;
If ActiveLetter<>nil Then Exit;
If Screen.Cursor=crHourGlass Then exit;
If DemoMode Then Exit;
case MoveIs of
1: begin
   LoadSkinnedImage(InGameButtongChangeLetters.Picture,'Cng!_1p'); InGameButtongChangeLetters.Repaint;
   TimeDelay(300);
   LoadSkinnedImage(InGameButtongChangeLetters.Picture, 'Cng!_1'); InGameButtongChangeLetters.Repaint;
   end;
end;
{  �������������� ���������� ���� ���������}
ErrorWindow.Left:=MainScreen.Left; ErrorWindow.Top:=MainScreen.Top;
NoChoice:=True;
For I:=1 To 7 Do If Slot7[MoveIs,I].Mark Then NoChoice:=False;
If NoChoice Then begin
       If MoveLimit Then begin MoveTimer.Enabled:=False; HideLetters; end;
       If PlaySounds Then BASS_SamplePlay(ErrorSound);
       Announce(0,0,GlobalTextStrings.Items.Values['InGameMessageChangeLettersNoOneSelected']);
       If MoveLimit Then begin MoveTimer.Enabled:=True; ShowLetters; end
                 end
       Else begin
{ ��������� ����� ����� 5 ����� }
If Players[MoveIs].Changes>4 Then
  If not Question(0,0,GlobalTextStrings.Items.Values['InGameQuestionTooMuchLettersExchange'])
  Then begin EndCurrentGame; exit; end;

  { �������� ����� � �������� ���� }
  GatherLettersFromWorkField;
  { �������� ������ ��������� }
  For I:=1 to Length(SelectShapes) do If SelectShapes[I-1]<>nil Then begin SelectShapes[I-1].Free; SelectShapes[I-1]:=nil end;
  setLength(SelectShapes,0);
  For I:=0 to WorkFieldDimentionX+1 do For J:=0 to WorkFieldDimentionY+1 do SelectField[I,J]:=0;
If Helped Then begin
  dec(HintLimit);
  If (HintLimit>=0) and (StoreHintLimit<11) Then begin
  InGameButtongHint.Hint:=copy(InGameButtongHint.Hint,1,pos(chr(13),InGameButtongHint.Hint)-1+21*ord(pos(chr(13),InGameButtongHint.Hint)=0))+chr(13)+GlobalTextStrings.Items.Values['InGameTagHintsLeft']+IntToStr(HintLimit)+' ';
  If HintLimit=0 Then begin InGameButtongHint.Cursor:=crNoDrop; MenuHelpHInt.Enabled:=false  end;
  MenuHelpHInt.Caption:=copy(MainScreen.MenuHelpHInt.Caption,1,pos('(',MainScreen.MenuHelpHInt.Caption)-2+22*ord(pos('(',MainScreen.MenuHelpHInt.Caption)=0))+' ('+IntToStr(HintLimit)+')';
                                                end;
              end;
  Helped:=False;
  _MoveTimer.Enabled:=False;
  ChangeLetters(MoveIs,FinishGame);
  DoChoiceScreen(MoveIs,On_m);
  If LettersAutoSelect Then begin DoChoiceScreen(MoveIs,Off_m);
  If MoveLimit Then InitMoveTimer(MoveIs);
                            end;
            end;
end;
{-------------------------------------------------------}
{ ������ ��� ����������� ������� ����� }
procedure TMainScreen.FlashTimerTimer(Sender: TObject);
var I:word; Im:TImage; TempX, TempY:byte;
begin
 If GameLoading Then exit;
 If FinishGame Then exit;
{ ������� �������� ������� }
If FlashAnnounce.Tag=666 Then begin
   FlashTimer.Interval:=500;
   FlashAnnounce.Visible:={not FlashAnnounce.Visible;}true;
   FlashAnnounce.BringToFront; MainScreen.Update;
                              end
                         Else If FlashAnnounce.Visible Then FlashAnnounce.Hide;

{ ������� ������ ������ }
If AnimActivePlayer Then
  (PlayerForms[MoveIs-1].FindComponent('Pl'+IntToStr(MoveIs)+'num') as TTNTLabel).Visible:= not (PlayerForms[MoveIs-1].FindComponent('Pl'+IntToStr(MoveIs)+'num') as TTNTLabel).Visible;

{ ������� ���������� ���� � ����� }
For I:=1 To 7 Do
  If (Slot7[MoveIs,I].Mark) and (Slot7[MoveIs,I].Image>-1) Then begin
             FlashTimer.Interval:=250;
             Im:=Letters[Slot7[MoveIs,I].Image];
             If Tag mod 2=0 Then begin
                                    Im.Picture:=Images[1,GetLetterNum(Slot7[MoveIs,I].Letter)+1];
                                    Im.Repaint;
                                 end
                               Else begin Im.Picture:=nil; end;
                                                                end;
{ ������� ���� �� ���� ���� }
 For I:=0 To WorkFieldDimentionX*workFieldDimentionY-1 Do begin
    Im:=Letters[i];
    If Im.Tag>600 then begin
       If Im.Hint[1]<>chr(FirstAlphCode+AlphCount) then FlashTimer.Interval:=500
                                Else FlashTimer.Interval:=250;
       If Tag mod 2=0 Then begin
                Im.Show; Im.Update;
                     end
                     Else begin Im.Hide; Im.Update end;
                        end;
                     end;

 If FlashStarMarkers and TakeStar Then
{ ������� ����=��������� �� ���� ���� }
 For I:=0 To (WorkFieldDimentionX*workFieldDimentionY)-1 Do begin
    Im:=Letters[i];
    If (Im.Tag=-2) and (Im.HelpContext=1) then begin
          FlashTimer.Interval:=500;
          TempX:=(Im.Left+19) div 28;  TempY:=(Im.Top+19) div 28;
           with Im do
               begin
                      if Canvas.Font.Color= clWhite Then Canvas.Font.Color:= clSilver
                                     Else Canvas.Font.Color:= clWhite;
                      Canvas.Font.Style := [fsBold];
                      Canvas.Font.Size := 13;
                      Canvas.Brush.Color:=clBlack;
                      Canvas.Brush.Style:=bsClear;
                      Canvas.TextOut(14, 2, '*');
                 end;
          Im.Repaint;
                                                        end;
                       end;
Tag:=Tag+1; If Tag=1001 Then Tag:=0;
end;
{-------------------------------------------------------}
{���������-����� �� ����}
procedure TMainScreen.StarFlashTimerTimer(Sender: TObject);
var I:byte; Im:TImage; TempX, TempY:byte;
begin

end;
{-------------------------------------------------------}
{ ����� ���� "�����" }
procedure TMainScreen.MenuGameExitClick(Sender: TObject);
begin
 If Ex_Form<>nil Then If Ex_Form.visible Then exit;
 Colors.Free;
 MainScreen.Close;
end;
{-------------------------------------------------------}
{ ����� ���� "���������" }
procedure TMainScreen.MenuHelpHIntClick(Sender: TObject);
var TempIntellect,I:byte; Im:TImage; TempRgn:HRgn; J:word;
begin
 If ActiveLetter<>nil Then Exit;
 If WhatIDoNow=Helping Then begin StopHelp:=True; ProceedHelp:=true; exit; end;
 If WhatIDoNow=Take Then exit;
  MainScreen.FlashAnnounce.Caption:=' '+GlobalTextStrings.Items.Values['StatusHint']+' ';
  MainScreen.FlashAnnounce.Tag:=666; MainScreen.FlashAnnounce.Font.Color:=clRed;
  HintBut:=MainScreen.InGameButtongHint;
  tempCursor:=crHourGlass;
  InGameButtongHint.Picture:=GFX_elem[1]; InGameButtongHint.Tag:=666;
  (RC_Form.FindComponent('RC_Caption') as TShape).Brush.Color:=clRed;
  (RC_Form.FindComponent('RC_Label') as TTNTLabel).Font.Color:=clYellow;
  (RC_Form.FindComponent('RC_Label') as TTNTLabel).Caption:=GlobalTextStrings.Items.Values['InGameMessageHintInProgress'];
If Not Helped Then begin
  If (HintLimit>0) and (StoreHintLimit<11) Then begin
  InGameButtongHint.Hint:=copy(InGameButtongHint.Hint,1,pos(chr(13),InGameButtongHint.Hint)-1+21*ord(pos(chr(13),InGameButtongHint.Hint)=0))+chr(13)+GlobalTextStrings.Items.Values['InGameTagHintsLeft']+IntToStr(HintLimit)+' ';
  If HintLimit=0 Then begin InGameButtongHint.Cursor:=crNoDrop; MenuHelpHInt.Enabled:=false end;
  MenuHelpHInt.Caption:=copy(MainScreen.MenuHelpHInt.Caption,1,pos('(',MainScreen.MenuHelpHInt.Caption)-2+22*ord(pos('(',MainScreen.MenuHelpHInt.Caption)=0))+' ('+IntToStr(HintLimit)+')';
                                         end
                                    Else begin
  InGameButtongHint.Hint:=copy(InGameButtongHint.Hint,1,pos(chr(13),InGameButtongHint.Hint)-1+21*ord(pos(chr(13),InGameButtongHint.Hint)=0));
  MainScreen.MenuHelpHInt.Caption:=copy(MainScreen.MenuHelpHInt.Caption,1,pos('(',MainScreen.MenuHelpHInt.Caption)-2+22*ord(pos('(',MainScreen.MenuHelpHInt.Caption)=0));
                                         end;

                   end;
{  �������������� ���������� ���� ���������}
ErrorWindow.Left:=MainScreen.Left; ErrorWindow.Top:=MainScreen.Top;

  { �������� ������ ��������� }
  For I:=1 to Length(SelectShapes) do If SelectShapes[I-1]<>nil Then begin SelectShapes[I-1].Free; SelectShapes[I-1]:=nil end;
  { �������� ����� � �������� ���� }
  GatherLettersFromWorkField;
  { ����������� ������� �����, ���� ���� �������}
  StopLettersFlashing;

  WhatIDoNow:=Helping; StopHelp:=False;
  TempIntellect:=PCIntellect; PCIntellect:=High;
  MainScreen.MenuGame.Enabled:=False;  MainScreen.MenuHelp.Enabled:=False;
  MainScreen.MenuIntellect.Enabled:=False;
  MainScreen.InGameButtongSaveGame.cursor:=crNoDrop;; MainScreen.InGameButtongLoadGame.cursor:=crNoDrop;
  Helped:=True; PCMove(MoveIs,Help,FinishGame);
  MainScreen.InGameButtongSaveGame.cursor:=crHandPoint; MainScreen.InGameButtongLoadGame.cursor:=crHandPoint;
  {���� ���������� �����, ����� �� � ������}
    Reset(ClearedWordsFile);
  If filesize(ClearedWordsFile)>0 Then begin
    For J:=0 To Filesize(ClearedWordsFile)-1 Do begin
        SetLength(HelpedWords, length (HelpedWords)+1);
        Seek(ClearedWordsFile,J); Read(ClearedWordsFile,HelpedWords[length(HelpedWords)-1]);
                                                end;
                                       end;
  CloseFile(ClearedWordsFile);
 { �������� ������ �� ��� }
  If MoveLimit Then
        begin MoveTimer.Enabled:=True; end;
  { �������� ����� � �������� ���� }
  If StopHelp Then GatherLettersFromWorkField;
  Marker1.Hide; Marker2.Hide;
  PCIntellect:=TempIntellect; StopHelp:=False;
  If FinishGame Then begin EndCurrentGame; exit; end;
  MainScreen.MenuGame.Enabled:=True;  MainScreen.MenuHelp.Enabled:=True;
  MainScreen.MenuIntellect.Enabled:=True;
  InGameButtongHint.Picture:=GFX_elem[0]; HintBut.Tag:=0;
  Screen.Cursor:=crDefault; TempCursor:=crDefault;
  (PlayerForms[MoveIs-1].FindComponent('Caption'+IntToStr(MoveIs)) as TShape).Brush.Style:=bsClear;
  MainScreen.FlashAnnounce.Tag:=0;
  WhatIDoNow:=Play;
end;
{-------------------------------------------------------}
{ ����� �������� "���������" }
procedure TMainScreen.InGameButtongHintClick(Sender: TObject);
begin
  If Screen.Cursor=crHourGlass Then Exit;
  If InGameButtongHint.Cursor=crNoDrop Then Exit;  
  If WhatIDoNow=Take Then Exit;
  If DemoMode Then Exit;
  MenuHelpHIntClick(Sender);
  end;
{-------------------------------------------------------}
{ ����� ���� "������� ������" }
procedure TMainScreen.MenuHelpComputeScoreClick(Sender: TObject);
var Temp:boolean; I:byte;
begin
   If ActiveLetter<>nil Then Exit;
   If WhatIDoNow=Take Then exit;
   Screen.Cursor:=crHourGlass;
   InGameButtongPreview.Enabled:=false;
   InGameButtongPreview.Picture:=GFX_elem[3];
   {  �������������� ���������� ���� ������ ���������}
   StarWindow.Left:=MainScreen.Left; StarWindow.Top:=MainScreen.Top;
   {  �������������� ���������� ���� ���������}
   ErrorWindow.Left:=MainScreen.Left; ErrorWindow.Top:=MainScreen.Top;
   Temp:=Helped;
   Preview:=True;
   If MoveLimit Then _MoveTimer.Enabled:=False;
   CheckPlayersWord(1,FinishGame);
   If Length(SelectShapes)>0 Then
     For I:=0 to Length(SelectShapes)-1 do
      If SelectShapes[I]<>nil Then If SelectShapes[I].Visible Then SelectShapes[I].Hint:='';
   If MoveLimit Then _MoveTimer.Enabled:=True;
   Preview:=False;
   Helped:=Temp;
   InGameButtongPreview.Picture:=GFX_elem[2];
   Screen.Cursor:=crDefault;
   InGameButtongPreview.Enabled:=true;
   If FinishGame Then begin EndCurrentGame; exit; end;
end;
{-------------------------------------------------------}
{ ����� �������� "������� ������" }
procedure TMainScreen.InGameButtongPreviewClick(Sender: TObject);
begin
  If Screen.Cursor=crHourGlass Then Exit;
  If WhatIDoNow=Take Then Exit;
  If WhatIDoNow=Helping Then begin ProceedHelp:=True; Exit; end;
  If DemoMode Then Exit;
  MenuHelpComputeScoreClick(Sender);
end;
{-------------------------------------------------------}
{ ����� ���� "��������� ���������" }
procedure TMainScreen.MenuIntellectHighClick(Sender: TObject);
begin
MenuIntellectLow.Checked:=False; MenuIntellectNormal.Checked:=False; MenuIntellectHigh.Checked:=True;
PCIntellect:=High;
If not FinishGame Then FillComments;
end;
{-------------------------------------------------------}
{ ����� ���� "��������� ��� ����, ���Ĩ�" }
procedure TMainScreen.MenuIntellectNormalClick(Sender: TObject);
begin
MenuIntellectLow.Checked:=False; MenuIntellectNormal.Checked:=True; MenuIntellectHigh.Checked:=False;
PCIntellect:=Middle;
If not FinishGame Then FillComments;
end;
{-------------------------------------------------------}
{ ����� ���� "�� ������!" }
procedure TMainScreen.MenuIntellectLowClick(Sender: TObject);
begin
MenuIntellectLow.Checked:=True; MenuIntellectNormal.Checked:=False; MenuIntellectHigh.Checked:=False;
PCIntellect:=Low;
If not FinishGame Then FillComments;
end;
{-------------------------------------------------------}
{ ����� ���� "���������" }
procedure TMainScreen.MenuGameConfigClick(Sender: TObject);
//const Rect: TRect = (Left: 0; Top: 0; Right: 0; Bottom: 0);
var I,J:word; Im:TImage; TempColorLetters:Boolean; TempBgr:string; TempBitmap:TImage;
    ActualSkin:string[50];
begin
If Screen.Cursor=crHourGlass Then Exit;
If ActiveLetterForm<>nil Then exit;
TempColorLetters:=ShowColorLetters;
{  �������������� ���������� ���� ���������}
ErrorWindow.Left:=MainScreen.Left; ErrorWindow.Top:=MainScreen.Top;
If FinishGame Then Options.Hint:='FinishGame' Else Options.Hint:='';
Options.Tag:=0;
If MoveLimit Then begin MoveTimer.Enabled:=False; HideLetters; end;
TempBgr:=BackgroundImage;

CursorStatus:=ShowCursor(true);
ActualSkin:=Skin;
Options.ShowModal;
CursorStatus:=ShowCursor(false);
MainScreen.update;
if TempBgr<>BackgroundImage Then begin
                              LoadBackgroundBitmap; MainScreen.Invalidate;
                                 end;
if ShowShadows Then Else begin MainBackGround[1].bitmap.Canvas.Draw(0,0,MainBackgroundBackup.bitmap);
                               MainBackGround[2].bitmap.Canvas.Draw(0,0,MainBackgroundBackup.bitmap);
                          end;

If MoveLimit Then begin If WhatIDoNow=Play Then MoveTimer.Enabled:=true; ShowLetters; end;

If Not FinishGame Then begin
If ElaspedTimer.Enabled then begin
//MainScreen.TimeTerminal1.Visible:=ShowTerminals;
//MainScreen.TimeTerminal2.Visible:=ShowTerminals;
//MainScreen.Time1.Visible:=ShowTerminals;
//MainScreen.Time2.Visible:=ShowTerminals;
                             end;
{ ����� �������� ���� }
If MenuGame.Visible Then MenuGame.Visible:=True;
If MenuIntellect.Visible Then MenuIntellect.Visible:=True;
If MenuHelp.Visible Then MenuHelp.Visible:=True;
BASS_SetVolume(SoundVolume);
If PlayBackgroundMusic Then
BASS_ChannelSetAttributes(BgrMusic,0,MusicVolume,-101);
If not FinishGame and (MediaPlayer1.Mode<>mpPlaying) and
(Options.MusicListboxSelectedSongs.Items.Count<>0) and  (BASS_ChannelIsActive(BgrMusic)=BASS_ACTIVE_STOPPED)
 Then begin
{ ����� ���������� �������� }
If PlayShuffle Then begin
   If Options.ShuffleList.SelCount=Options.ShuffleList.Items.Count Then
    For I:=0 to Options.ShuffleList.Items.Count-1 Do Options.ShuffleList.Selected[i]:=False;
    PlaySong:=random(Options.MusicListboxSelectedSongs.Items.Count);
    While Options.ShuffleList.Selected[PlaySong] do
     PlaySong:=random(Options.MusicListboxSelectedSongs.Items.Count);
    Options.ShuffleList.Selected[PlaySong]:=True;
                    end;
If PlaySong>Options.MusicListboxSelectedSongs.Items.Count-1 Then PlaySong:=0;
If pos('.mid',Options.MusicListboxSelectedSongs.Items[PlaySong])=0 Then
   begin
   BASS_StreamFree(BgrMusic);
   BgrMusic:=BASS_StreamCreateFile(false,pchar(Options.PathList.Items[PlaySong]+Options.MusicListboxSelectedSongs.Items[PlaySong]),0,0,0);
   BASS_ChannelSetAttributes(BgrMusic,0,MusicVolume,-101);
   BASS_StreamPlay(BgrMusic,false,0);
   end
                           Else begin
MediaPlayer1.FileName:=Options.PathList.Items[PlaySong]+Options.MusicListboxSelectedSongs.Items[PlaySong];
If FileExists(MediaPlayer1.FileName) Then begin
MediaPlayer1.Open; MediaPlayer1.Notify:=True; MediaPlayer1.Tag:=1;
MediaPlayer1.Play; SetCurrentDir(CurrentDir); end
                                     Else begin MediaPlayer1.Notify:=True; MediaPlayer1.Open; end;
                                end;
       end;
If Not PlayBackgroundMusic Then begin
If MediaPlayer1.Mode=mpPlaying Then
 begin MediaPlayer1.Notify:=False; MediaPlayer1.Stop; end;
   BASS_StreamFree(BgrMusic);
 end;

FillComments;

If not AllowSelect Then
  begin
   { �������� ������ ��������� }
    For I:=1 to Length(SelectShapes) do If SelectShapes[I-1]<>nil Then begin SelectShapes[I-1].Free; SelectShapes[I-1]:=nil end;
    setLength(SelectShapes,0);
    For I:=0 to WorkFieldDimentionX+1 do For J:=0 to WorkFieldDimentionY+1 do SelectField[I,J]:=0;
  end;

{ ������ ����������� ������ ��� ����-���������� � �������}
For I:=1 to WorkFieldDimentionX do For J:=1 to WorkFieldDimentionY do
   If Crossword_Mode Then
      If (WorkField[I,J].main=' ') Then begin
            If ((WorkField[I-1,J].Main<>' ') and (WorkField[I,J-1].Main<>' '))
            or ((WorkField[I,J-1].Main<>' ') and (WorkField[I+1,J].Main<>' '))
            or ((WorkField[I+1,J].Main<>' ') and (WorkField[I,J+1].Main<>' '))
            or ((WorkField[I-1,J].Main<>' ') and (WorkField[I,J+1].Main<>' '))
             Then WorkField[I,J].Available:=False;
                                       end Else
                      else
     If (WorkField[I,J].main=' ') and (not WorkField[I,J].available)
         Then WorkField[I,J].available:=true;

{ ����� ������ ����� }
If ShowColorLetters<>TempColorLetters Then
{If ShowColorLetters Then
  For i:=1 to AlphCount do begin
   If LoadSkinnedImage(Images[2,i],'LETTERS\G'+IntToStr(i))='bmp' Then Images[2,i].Bitmap.PixelFormat:=pf24bit;
   If LoadSkinnedImage(Images[3,i],'LETTERS\M'+IntToStr(i))='bmp' then Images[3,i].Bitmap.PixelFormat:=pf24bit;
                    end
                    else
  For i:=1 to AlphCount do begin
   Images[2,i].Free; Images[2,i]:=TPicture.Create;
   If LoadSkinnedImage(Images[2,i],'LETTERS\D'+IntToStr(i))='bmp' Then Images[2,i].Bitmap.PixelFormat:=pf24bit;
                    end;}
LoadGrafix;                    

//If Letters<>nil Then
 For I:=0 To (WorkFieldDimentionX*workFieldDimentionY)-1 Do begin
    Im:=Letters[i];
    If Im.Tag=-2 Then If ShowColorLetters Then Im.Picture:=Images[ord(not odd(StrToInt(Im.Hint[2])))+2,GetLetterNum(Im.Hint[1])+1]
                                          Else Im.Picture:=Images[2,GetLetterNum(Im.Hint[1])+1];
    If (Im.HelpContext=1) and (Im.Tag=-2) and TakeStar Then with Im do
                  begin  Canvas.Font.Color := clWhite;
                         Canvas.Font.Style := [fsBold];
                         Canvas.Font.Size := 13;
                         Canvas.Brush.Color:=clBlack;
                         Canvas.Brush.Style:=bsClear;
                         Canvas.TextOut(14, 2, '*');
                    end;
                   end;
  If KeepBonuses Then
   For I:=1 to WorkFieldDimentionX Do
      For J:=1 to WorkFieldDimentionY Do
     If WorkField[I,J].Image<>-1 Then
        begin
     Im:=Letters[WorkField[I,J].Image];
     If WorkField[I,J].color>1 Then begin
         Im.Canvas.Brush.Style:=bsSolid;  Im.Canvas.Pen.Style:=psClear;
             case WorkField[I,J].color of
                   2: Im.Canvas.Brush.Color:=$0200ffA8;
                   3: Im.Canvas.Brush.Color:=$02ffff00;
                   4: Im.Canvas.brush.Color:={ $0200ffE6;} clYellow;
                   5: Im.Canvas.brush.Color:=$020000FF;
              end;
     If WorkField[I,J].color<6 Then Im.Canvas.Polygon([point(1,2),Point(1,8), Point(8,1)]);
                                         end;
        end;
                                         end; {if not FinishGame}

If Skin<>ActualSkin Then Announce(0,0,GlobalTextStrings.Items.Values['OptionsMessageChangeSkin']);
end;
{-------------------------------------------------------}
{ ����� �� ����� ���� ������ }
procedure TMainScreen.SystemTimerTimer(Sender: TObject); {Tag: >0 - �������� ������� }
var SHour,SMinute:string[2]; I:byte; PrevMove:byte; z,k:integer; TempStr:TCaption; TempUTFStr:utf8string;
    Temp:tagcomboboxinfo; TempInt:Integer; TempUStr:widestring; TempCorrect:boolean;
begin
  If GameLoading Then exit;
 If FinishGame Then exit;
 {�������� �� ������������ ������}
 if (BASS_ChannelIsActive(BgrMusic)=BASS_ACTIVE_STOPPED)
 and (BgrMusic<>0) Then
    begin
    MediaPlayer1Notify(MediaPlayer1);
    end;
 {�������� �� ��������� �������� ������}
 If length(PlayerForms)>0 Then begin
 For I:=0 to PlayersNumber-1 Do
 If ((PlayerForms[I].FindComponent('Caption'+IntToStr(I+1)) as TShape).Brush.Style<>bsClear)
    and (I+1<>MoveIs) Then
    begin
         (PlayerForms[I].FindComponent('Caption'+IntToStr(I+1)) as TShape).Brush.Style:=bsClear;
         (PlayerForms[I].FindComponent('Pl'+IntToStr(I+1)+'num') as TTNTLabel).Font.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGamePlayerNum'],InttoStr(clAqua)));
         (PlayerForms[I].FindComponent('Pl'+IntToStr(I+1)+'num') as TTNTLabel).Show;
         (PlayerForms[I].FindComponent('Arrow'+IntToStr(I+1)) as TRXGifAnimator).Animate:=false;
         (PlayerForms[I].FindComponent('Arrow'+IntToStr(I+1)) as TRXGifAnimator).Hide;
         If AnimActiveAvatar Then
            If RightStr(Players[I+1].Image,1)='A' then begin (PlayerForms[I].FindComponent('Pl'+IntToStr(I+1)+'Im') as TRXGifAnimator).Animate:=false;
                                                             (PlayerForms[I].FindComponent('Pl'+IntToStr(I+1)+'Im') as TRXGifAnimator).FrameIndex:=0;
                                                              end;
         break;
    end;
 If (PlayerForms[MoveIs-1].FindComponent('Caption'+IntToStr(MoveIs)) as TShape).Brush.Style=bsClear Then
    begin
         (PlayerForms[MoveIs-1].FindComponent('Caption'+IntToStr(MoveIs)) as TShape).Brush.Style:=bsSolid;
         (PlayerForms[MoveIs-1].FindComponent('Caption'+IntToStr(MoveIs)) as TShape).Brush.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGamePlayerBgrSel'],InttoStr(clBlue)));
         (PlayerForms[MoveIs-1].FindComponent('Pl'+IntToStr(MoveIs)+'num') as TTNTLabel).Font.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGamePlayerNumSel'],InttoStr(clYellow)));
         (RC_Form.FindComponent('RC_Caption') as TShape).Brush.Style:=bsSolid;
         If RightStr(Players[MoveIs].Image,1)='A' then (PlayerForms[MoveIs-1].FindComponent('Pl'+IntToStr(MoveIs)+'Im') as TRXGifAnimator).Animate:=true;
         PrevMove:=MoveIs-2; If PrevMove>200 Then PrevMove:=PlayersNumber-1;
         If MinimizeWindows Then begin
             MinimizeWindow(PlayerForms[PrevMove]);
             MaximizeWindow(PlayerForms[MoveIs-1]);
             AdjustWindows;
             PlayerForms[MoveIs-1].BringToFront;
                                 end;
         If not DemoMode Then begin
            If WhatIDoNow=Take Then FlashAnnounce.Caption:=' '+Players[MoveIs].Name+' '+GlobalTextStrings.Items.Values['StatusNetOrPCTakingLetters']+' '
                              Else FlashAnnounce.Caption:=' '+Players[MoveIs].Name+' '+GlobalTextStrings.Items.Values['StatusNetOrPCMoving']+' ';
            FlashAnnounce.Tag:=666; FlashAnnounce.Font.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGamePlayerColor1'],InttoStr(clLime)));
                            end;
         If Players[MoveIs].PLtype<>PC Then begin
            If MoveIs mod 2<>0 Then begin
                                  (RC_Form.FindComponent('RC_Caption') as TShape).Brush.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGamePlayerColor1Bgr'],IntToStr(clGreen))); //$002DCBE1
                                  (RC_Form.FindComponent('RC_Label') as TTNTLabel).Font.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGamePlayerColor1'],IntToStr(clLime)));
                                 end
                            Else begin (RC_Form.FindComponent('RC_Caption') as TShape).Brush.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGamePlayerColor2Bgr'],InttoStr(clPurple)));
                                       (RC_Form.FindComponent('RC_Label') as TTNTLabel).Font.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGamePlayerColor2'],InttoStr($00FF9DFF)));
                                 end;
           //$002DCBE1;
           (RC_Form.FindComponent('RC_Label') as TTNTLabel).Caption:=(PlayerForms[MoveIs-1].FindComponent('Pl'+IntToStr(MoveIs)+'label') as TTNTLabel).Caption+' �����'
                                             end
                                        Else begin {If Players[MoveIs].PLtype<>PC}
                                  (RC_Form.FindComponent('RC_Caption') as TShape).Brush.Style:=bsClear; //$002DCBE1
                                  (RC_Form.FindComponent('RC_Label') as TTNTLabel).Font.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGameMessageWait'],InttoStr(clWhite)));
                                  (RC_Form.FindComponent('RC_Label') as TTNTLabel).Caption:=GlobalTextStrings.Items.Values['InGameMessageWait'];
                                            end;
                       (PlayerForms[MoveIs-1].FindComponent('Arrow'+IntToStr(MoveIs)) as TRXGifAnimator).Left:=30;
                        LoadSkinnedGIF((PlayerForms[MoveIs-1].FindComponent('Arrow'+IntToStr(MoveIs)) as TRXGifAnimator).Image,'ANIMATIO\Arrow_right');
         (PlayerForms[MoveIs-1].FindComponent('Arrow'+IntToStr(MoveIs)) as TRXGifAnimator).Animate:=AnimActivePlayer;
         (PlayerForms[MoveIs-1].FindComponent('Arrow'+IntToStr(MoveIs)) as TRXGifAnimator).show;
       { ����� ��� � ���� ����� ��� ���������� ������ }
        If not GameLoading Then begin
         If LeftStr(MovesLog[MovesLog.Count-1],pos('=',MovesLog[MovesLog.Count-1]))<>'('+IntToStr(MoveIs)+')'+Players[MoveIs].Name+'=' Then MovesLog.Add('('+IntToStr(MoveIs)+')'+Players[MoveIs].Name+'=');
         If TimeLimit Then _ElaspedTimer.Enabled:=true;         
                                end;
    end;
                                        end;
 { ���������� ������� ��� ������ ������� }
  If SystemTimer.Tag>-1 Then begin
     If BufferStringList=nil Then begin BufferStringList:=TTNTStringList.Create;
                                        //BufferStringList.Parent:=MainScreen;
                                        BufferStringList.Sorted:=true;
                                        //BufferStringList.Duplicates:=dupIgnore;
                                        ExplCBox.CharCase:=ecLowerCase; ExplCBox.Enabled:=false;
                                        ExplCBox.Text:=GlobalTextStrings.Items.Values['StatusLoading'];
                                    end;
     If DictArray[SystemTimer.Tag]<>nil Then begin
             //BufferStringList.Clear;
             TempCorrect:=GetLanguageCodepage(LanguageDict)<>1251;
             For z:=0 to DictArray[SystemTimer.Tag].Count-1 Do
               begin If DictArray[SystemTimer.Tag].Names[z]<>''
                       then tempStr:=DictArray[SystemTimer.Tag].Names[z]
                       Else TempStr:=DictArray[SystemTimer.Tag].Strings[z];
                     TempUtfStr:=ansitoutf8(TempStr);
                     If TempCorrect Then CorrectUTFForSave(TempUtfStr,TempStr);
                     //utf8tounicode(pwidechar(TempUStr),length(TempUTFStr),pchar(TempUTFStr),0);
                     TempUStr:=UTF8decode(TempUTFStr);
                     //If ExplCBox.Perform(CB_FINDSTRING,-1,integer(PChar(tempStr)))=CB_ERR Then
                     //  If ExplCBox.Items.IndexOf(TempStr)=-1 Then
                     //For k:=1 to length(TempUTFStr)-1 do
                     //                   TempUStr:=TempUStr+TempUTFStr[k];
                     BufferStringList.Add(TempUStr);
                 end;
                                              end;
    If SystemTimer.Tag=AlphCount Then begin SystemTimer.Tag:=-1;
                                            ExplCBox.Enabled:=true; ExplCBox.CharCase:=ecUpperCase;
                                            ExplCBox.Clear;
                                            iF BufferStringList.Strings[0]<>'' Then
                                                      ExplCBox.Items.Add(BufferStringList.Strings[0]);
                                            try
                                            For k:=1 to BufferStringList.Count-1 Do
                                                          ExplCBox.Items.Add(BufferStringList.Strings[k]);
                                            except end;

                                            //ExplCBox.Items.LoadFromFile(CurrentDir+'\dict\'+LanguageDict+'\dictionary.txt');
                                            BufferStringList.Free; BufferStringList:=nil;
                                        end Else SystemTimer.Tag:=SystemTimer.Tag+1;
                            end;
end;
{-------------------------------------------------------}
{ ����������������� ������ � ������ ������� }
procedure TMainScreen.ElaspedTimerTimer(Sender: TObject);
var SHour,SMinute,SSec:string[2]; I:byte;
begin
 If WhatIDoNow=Take Then Exit;
 If not RunMinimized Then
   If ApplicationMiniMized Then
     If Players[MoveIs].PLtype=0 Then exit;
 If GameLoading Then exit;
 { ����������������� }
 If Not TimeLimit Then begin
{ ElaspedTimer.Tag:=ElaspedTimer.Tag+1;
 If ElaspedTimer.Tag=60 Then begin
     inc(StartMin);
     If (StartMin mod 60)=0 then begin
         inc(StartHour); StartMIn:=0;
                                 end;
     If StartHour<10 Then SHour:='0'+IntToStr(StartHour) Else SHour:=IntToStr(StartHour);
     If StartMin<10 Then SMinute:='0'+IntToStr(StartMin) Else SMinute:=IntToStr(StartMin);
        For I:=0 to PlayersNumber-1 Do
       (PlayerForms[I].FindComponent('Dp'+IntToStr(I+1)+'Label') as TLabel).Caption:=SHour+' .'+SMinute;
     ElaspedTimer.Tag:=0;
                             end;}
                        end
 { ������ ������� }
 Else begin
   If Finishgame then exit;
   If StartSec>0 Then dec(StartSec);
   If StartMin<10 Then SMinute:='0'+IntToStr(StartMin) Else SMinute:=IntToStr(StartMin);
   If StartSec<10 Then SSec:='0'+IntToStr(StartSec) Else SSec:=IntToStr(StartSec);
     For I:=0 to PlayersNumber-1 Do
       (PlayerForms[I].FindComponent('Dp'+IntToStr(I+1)+'Label') as TLabel).Caption:=SMinute+' .'+SSec;
//    If StartMin=0 Then Time2.Font.Color:=clRed;
    If StartSec=0 Then begin
    If (StartMin=0) Then begin
             ElaspedTimer.Enabled:=False;
             If StarWindow.Visible Then StarWindow.ModalResult:=mrNo;
             If ErrorWindow.Visible Then ErrorWindow.ModalResult:=mrNo;
             If Options.Visible Then Options.ModalResult:=mrNo;
             If SaveGameWindow.Visible Then SaveGameWindow.ModalResult:=mrNo;
             FinishGame:=True; EndCurrentGame; Exit;
                        end;
     StartSec:=60; If StartMin>0 Then dec(StartMin);
                      end;
      end;
end;
{-------------------------------------------------------}
{ ����� ���� "���� ������ ����������" }
procedure TMainScreen.N17Click(Sender: TObject);
begin
InGameLabel.Caption:=GlobalTextStrings.Items.Values['InGameTagButtonEndGame'];
Options.Hint:='FinishGame';
MainScreen.N3Click(Sender);
end;
{-------------------------------------------------------}
{ ������� ������ �� ����������� }
procedure TMainScreen.TimeTerminal1DblClick(Sender: TObject);
begin
end;
{-------------------------------------------------------}
{ ������� ������ �� �������������� �������� }
procedure TMainScreen.Comment1DblClick(Sender: TObject);
begin
ShowTerminals:=True;
Comment1.Hide; Comment2.Hide; Comment3.Hide;
//TimeTerminal1.Show; TimeTerminal2.Show;
//Time1.Show; Time2.Show;
end;
{-------------------------------------------------------}
{ ����������� �� ��� }
procedure TMainScreen.MoveTimerTimer(Sender: TObject);
var SMinute, SSec:string[2]; i,J:byte;
begin
 {�������� �� ������������ ������}
 if (BASS_ChannelIsActive(BgrMusic)=BASS_ACTIVE_STOPPED)
 and (BgrMusic<>0) Then
    begin
    MediaPlayer1Notify(MediaPlayer1);
    end;;

 If not RunMinimized Then
   If ApplicationMiniMized Then
     If Players[MoveIs].PLtype=0 Then exit;
     
   If GameLoading Then exit;

   If StartSec>0 Then dec(StartSec);
   If StartMin<10 Then SMinute:='0'+IntToStr(StartMin) Else SMinute:=IntToStr(StartMin);
   If StartSec<10 Then SSec:='0'+IntToStr(StartSec) Else SSec:=IntToStr(StartSec);
   If (StartSec<=10) and (StartSec>0) and (StartMin=0) Then
   If PlaySounds Then BASS_SamplePlay(TimeOutSound);

   (PlayerForms[MoveIs-1].FindComponent('Dp'+IntToStr(MoveIs)+'Label') as TLabel).Caption:=SMinute+' .'+SSec;
   If (StartSec=20) and (StartMin=0) Then (PlayerForms[MoveIs-1].FindComponent('Dp'+IntToStr(MoveIs)+'Label') as TLabel).Font.Color:=clRed;
    If (StartSec=0) or TimeLimit Then begin
        { ��������� ������� �� ��� }
        If ((StartMin=0) and MoveLimit) or not MoveLimit Then begin
        MovePass:=True;  MoveTimer.Enabled:=false;
        MovesLog.Delete(MovesLog.Count-1); // ������� ��������� ������ ���� �����        
        While ErrorWindow.Visible Do exit;
       If PlaySounds and MoveLimit Then BASS_SamplePlay(ChangeMoveSound);
        { ��������� ������� ����� }
        StopLettersFlashing;
        { ��������� ����� � ������� � ��������� �� � 7 ����-���� }
        If ActiveLetter<>nil Then
        For I:=1 To 7 Do
          If Slot7[MoveIs,I].Image=-1 Then begin
              Slot7[MoveIs,I].Letter:=ActiveLetter.Hint[1];
              Slot7[MoveIs,I].Mark:=False; Slot7[MoveIs,I].Image:=StrToInt(copy(ActiveLetter.Name,5,3))-1;
              ActiveLetter.Left:=Slot7[MoveIs,I].SlotX; ActiveLetter.Top:=Slot7[MoveIs,I].SlotY;
              ActiveLetter.Tag:=MoveIs; ActiveLetter.Enabled:=True; ActiveLetter.Parent:=PlayerForms[MoveIs-1];
              ActiveLetter:=nil;
              InGameButtongGo.Enabled:=True; InGameButtongChangeLetters.Enabled:=True;
              InGameButtongHint.Enabled:=True; If HintLimit>0 Then MenuHelpHInt.Enabled:=true;
              InGameButtongPreview.Enabled:=True; MenuHelpComputeScore.Enabled:=true;
              while (CursorStatus<0) Do CursorStatus:=ShowCursor(True); break;
                                           end;
         If CheckSlots(MoveIs)<>0 Then begin InGameButtongGoClick(InGameButtongGo);
                                            If PressGo Then exit;
                                       end;
        { �������� ������ ��������� }
         For I:=1 to Length(SelectShapes) do If SelectShapes[I-1]<>nil Then begin SelectShapes[I-1].Free; SelectShapes[I-1]:=nil end;
         setLength(SelectShapes,0);
         For I:=0 to WorkFieldDimentionX+1 do For J:=0 to WorkFieldDimentionY+1 do SelectField[I,J]:=0;
        { �������� ����� � �������� ���� }
         RestoreStars;
         GatherLettersFromWorkField;

        inc(MoveIs); If MoveIs>PlayersNumber Then MoveIs:=1;
        Opponent:=Players[MoveIs].PLtype;        
        If MoveLimit Then InitMoveTimer(MoveIs);
        { ���� �������� - ��������� }
        If (Opponent=PC) Then begin
        Pl_Form:=PlayerForms[MoveIs-1];
         For I:=0 to PL_Form.ControlCount-1 Do begin
             If PL_Form.Controls[I].Name='Sc'+IntToStr(MoveIs)+'Label' Then
                ScoreLabel:=PL_form.Controls[I] as TLabel;
             If PL_Form.Controls[I].Name='Sc'+IntToStr(MoveIs)+'Im' Then
                     ScoreDisplay:=Pl_Form.Controls[I] as TImage;
                                                 end;
        {  �������������� ���������� ���� ���������}
        MainScreen.MenuGame.Enabled:=False;  MainScreen.MenuHelp.Enabled:=False;
        MainScreen.MenuIntellect.Enabled:=False;
        Helped:=False;
        MainScreen.InGameButtongSaveGame.cursor:=crNoDrop; MainScreen.InGameButtongLoadGame.cursor:=crNoDrop;
        If MoveLimit Then InitMoveTimer(MoveIs);
        WhatIDoNow:=Play;
        PCMoveNumber:=1; PCMove(MoveIs,Move,FinishGame);
        If FinishGame Then begin EndCurrentGame; exit; end;
        If (PCIntellect=High) and (CheckSlots(MoveIs)<>7) and Not PCChangedLetters Then begin
           MoveTimer.Enabled:=True;
           PCMoveNumber:=2; PCMove(MoveIs,Move,FinishGame);
           If FinishGame Then begin EndCurrentGame; exit; end;
                               end;
        WhatIDoNow:=Take; ComputerDoChoice(MoveIs); DoChoiceScreen(MoveIs,Off_m);
        If MoveLimit Then InitMoveTimer(MoveIs);
        If FinishGame Then begin EndCurrentGame; exit; end;
        MainScreen.InGameButtongSaveGame.cursor:=crHandPoint; MainScreen.InGameButtongLoadGame.cursor:=crHandPoint;
        MainScreen.MenuGame.Enabled:=True;  MainScreen.MenuHelp.Enabled:=True;
        MainScreen.MenuIntellect.Enabled:=True;
        WhatIDoNow:=Play;
        Screen.Cursor:=crDefault;
            exit;
                                             end;
        { ���� �������� - ������� }

                            end;
        StartSec:=60; If StartMin>0 Then dec(StartMin);
                      end;
      end;
{-------------------------------------------------------}
{ �������� ������ �� ��� }
Procedure InitMoveTimer(Pl:byte);
var S:string[2]; Timer:TLabel; I:byte;
begin
MainScreen.MoveTimer.Enabled:=True;
MainScreen.MoveTimer.Tag:=Pl;
For I:=0 to PlayersNumber-1 Do
  If I+1<>Pl Then begin
                  (PlayerForms[I].FindComponent('Dp'+IntToStr(I+1)+'Label') as TLabel).Caption:='00.00';
                  (PlayerForms[I].FindComponent('Dp'+IntToStr(I+1)+'Label') as TLabel).Font.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGameTimeInActive'],IntToStr(clTeal)));
                  end;
StartMin:=StrToInt(copy(Limit,pos('Move-',Limit)+5,1))-1; StartSec:=60;
S:='0'+copy(Limit,pos('Move',Limit)+5,1); S:=copy(S,Length(S)-1,2);
Timer:=(PlayerForms[Pl-1].FindComponent('Dp'+IntToStr(Pl)+'Label') as TLabel);
Timer.Font.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGameTimeActive'],IntToStr(clLime)));
Timer.Caption:=S+'.00';
Timer.Update;
end;
{-------------------------------------------------------}
{ ����� �� ������� ESC}
procedure TMainScreen.FormKeyPress(Sender: TObject; var Key: Char);
begin
If WhatIDoNow=Helping then ProceedHelp:=True;
If Key=#27 Then
   If MinimizeOnEsc Then Application.Minimize
                            Else
          If WhatIDoNow=Helping Then StopHelp:=True
                                Else
              If DemoMode Then
                 If Question(0,0,GlobalTextStrings.Items.Values['InDemoQuestionBreakDemoGame']) Then
                              FinishGame:=true Else
                          Else MainScreen.Close;
If MainScreen.ActiveControl=ExplCBox Then exit;                          
If (Key IN ['N','n','�','�']) Then
   begin try MediaPlayer1.Stop; except end; MediaPlayer1.Tag:=1;
         BASS_StreamFree(BgrMusic);
                 MediaPlayer1Notify(MediaPlayer1);
     end;
If (Key IN ['P','p','�','�']) Then begin
   try MediaPlayer1.stop; except end;
   MediaPlayer1.Tag:=2; BASS_StreamFree(BgrMusic);
   MediaPlayer1Notify(MediaPlayer1);
                                    end;
If (Key IN ['S','s','�','�']) Then
   begin PlayBackgroundMusic:=False;
         Comment4.Caption:='';
         BASS_StreamFree(BgrMusic);
         try MediaPlayer1.Stop; except end;
     end;
end;
{---------------------------------------------------------------}
{ ���� ������ ����� ������ }
Procedure ShowNewGameScreen;
var I:byte;
begin
Screen.Cursor:=crDefault;
With NewGameWindow Do begin
{ ��������� ������� }
LoadSkinnedImage(ButtonSelectDifficulty.Picture,'edit_opt');
ButtonSelectDictionary.Picture:=ButtonSelectDifficulty.Picture;
ButtonSelectLimits.Picture:=ButtonSelectDifficulty.Picture;
ButtonSelectLayout.Picture:=ButtonSelectDifficulty.Picture;
ButtonSelectLanguage.Picture:=ButtonSelectDifficulty.Picture;
{ ��������� ������ ������ ����� }
LabelPlayerList.Items.Clear;
For I:=0 To 18 Do
 with NewGameWindow do
 If Members[I].Name<>'' Then begin
  LabelPlayerList.Items.Add(Members[I].Name);
                             end;
                     end;

NewGameWindow.Position:=poMainFormCenter;
//Shadow_Form.Show;
NewGameWindow.ShowModal;
Shadow_Form.Hide;
end;
{-------------------------------------------------------}
{ ����� ���� "��������� ������" }
procedure TMainScreen.MenuGameSaveClick(Sender: TObject);
begin
If Screen.Cursor=crHourGlass Then Exit;
If Ex_Form<>nil Then If Ex_Form.visible Then exit;
If InGameButtongSaveGame.Cursor=crNoDrop Then Exit;
If ActiveLetterForm<>nil Then exit;
If ActiveLetter<>nil Then exit;
Screen.Cursor:=crDefault;
CursorStatus:=ShowCursor(true);
SaveGameWindow.Position:=poMainFormCenter;
SaveGameWindow.Tag:=1;
_Label:=Comment2; _Label1:=Comment3; _Label2:=Comment1;
//Save.ChoiceFieldStatus:=ChoiceFieldImage.Visible;
If MoveLimit Then begin MoveTimer.Enabled:=False; HideLetters; end;
SaveGameWindow.ShowModal;
Shadow_Form.Hide;
CursorStatus:=ShowCursor(false);
If MoveLimit Then begin If WhatIDoNow=Play Then MoveTimer.Enabled:=True;
                        ShowLetters; end;
end;

{-------------------------------------------------------}
{ �������� ���� �� ��� ����� }
Procedure LoadTXTGame(Num:byte);
var TempStr,TempStr1,TempStr2:string; TempStrList:TStringList; I,J,K,l:word; IncMoveFlag,isPlaygroundflag:boolean;
    TempX,TempY:byte; TakeStarSubstr:string; Slot7NotFull:boolean; TempPlaySounds:boolean;
    LoadTime:boolean;
begin
If FinishGame Then
  With MainScreen Do begin
  MenuBgr.Hide; menuButton1.Hide; menuButton2.Hide; menuButton3.Hide; menuButton6.Hide;
  ScreenButtonTitleNewGame.Hide; ScreenButtonTitleLoadGame.Hide; ScreenButtonTitleExit.Hide;
  ScreenButtonTitleContinue.Hide; ScreenButtonTitleLastPlayer.Hide;
                     end;
FinishGame:=true;
TempPlaySounds:=PlaySounds; PlaySounds:=false;
    { �������� ������ ��������� � ������� ������ }
     For I:=1 to Length(SelectShapes) do If SelectShapes[I-1]<>nil Then begin SelectShapes[I-1].Free; SelectShapes[I-1]:=nil end;
     setLength(SelectShapes,0); setlength(WorkField,0,0); setlength(SelectField,0,0);
     setlength(WorkField,WorkFieldDimentionX+2,WorkFieldDimentionY+2);
     setlength(Words,201,PlayersNumber+1);
     MainScreen.MakeImageList(length(Letters),2); //������� ������ �����
    { ������� ��������� �����}
    If length(PlayerForms)>0 Then begin
      For I:=0 to length(PlayerForms)-1 Do begin PlayerForms[i].free; end;
      setlength(PlayerForms,0);
                                  end;
    If RC_Form<>nil then begin
      For I:=0 to RC_Form.ControlCount-1 Do begin
                             RC_Form.Controls[0].Hide;
                             RC_Form.Controls[0].Parent:=Application.MainForm;
                                             end;
     RC_Form.Free; RC_Form:=nil;
                         end;
  LoadBackgroundBitmap;                       
  TempStrList:=TStringList.Create;
  If Num=254 Then ExtractFile(CurrentDir+'\save\savelast.'+IntToStr(Players[1].code))
             Else ExtractFile(CurrentDir+'\'+'save\save'+IntToStr(Players[1].Code)+'.00'+IntToStr(Num));
  LoadUnicodeFile(CurrentDir+'\$$$.tmp',TempStrList,nil,GetLanguageCodepage(LanguageDict)<>1251, convert);
  DeleteFile(PChar(CurrentDir+'\$$$.tmp'));
  Opponent:=StrToInt(TempStrList.Values['Opponent']);
  PCIntellect:=StrToInt(TempStrList.Values['Intellect']);
  WorkFieldDimentionX:=StrToInt(TempStrList.Values['PlayFieldDimX']);
  WorkFieldDimentionY:=StrToInt(TempStrList.Values['PlayFieldDimY']);
  LanguageDict:=TempStrList.Values['Language'];
  LanguageExpl:=TempStrList.Values['LanguageExpl'];
     LoadAlphabet;
     LoadDictionarytoMemory(true);
  StoreHintLimit:=StrToInt(TempStrList.Values['HintLimit']);
  KeepBonuses:=StrToInt(TempStrList.Values['KeepBonuses'])=1;
  Limit:=TempStrList.Values['Limits'];
  If ((LastLoadedTime=TempStrList.Values['LastElaspedTime'])
  or (LastLoadedTime=TempStrList.Values['MoveTime'])) and (LastLoadedTime<>'')
                                                          Then LoadTime:=false
                                                          Else begin
                                                                LoadTime:=true;
                                                                LastLoadedTime:=ifthen(TempStrList.Values['LastElaspedTime']<>'',TempStrList.Values['LastElaspedTime'],TempStrList.Values['MoveTime']);
                                                               end;
  {������ ���������� �� �������}
  I:=1; PlayersNumber:=0; setlength(Players,1);
  While TempStrList.Values['Player'+IntToStr(I)]<>'' Do begin
     TempStr:=TempStrList.Values['Player'+IntToStr(I)];
     inc(PlayersNumber); setLength(Players,length(Players)+1);
     Players[I].Name:=LeftStr(TempStr,pos('/',TempStr)-1); delete(TempStr,1,pos('/',TempStr));
     //Players[I].Points:=StrToInt(LeftStr(TempStr,pos('/',TempStr)-1)) div 10000;
     Players[I].Changes:=StrToInt(LeftStr(TempStr,pos('/',TempStr)-1)) mod 10000; delete(TempStr,1,pos('/',TempStr));
     Players[I].Code:=StrToInt(LeftStr(TempStr,pos('/',TempStr)-1)); delete(TempStr,1,pos('/',TempStr));
     Players[I].PLtype:=StrToInt(LeftStr(TempStr,pos('/',TempStr)-1)); delete(TempStr,1,pos('/',TempStr));
     Players[I].Image:=TempStr;
     //For J:=0 to 19 Do If Players[i].Name=Members[j].Name Then begin Players[I].Image:=Members[j].Image; break; end;
     inc(i);
                                                        end;
    For I:=1 to 10 Do If mESSAGEForms[I]<>nil Then begin MessageForms[I].Release; MessageForms[I]:=nil; end;
    { ������� ����� ��������� ����� }
    CreatePlayersForms;
    { �������� ������ �������}
    If ShowExplanatoryPanel
       or AlwaysShowDictionaryPanel Then begin ShowExplanatoryPanel:=true;
                                               MainScreen.InGameLabelExplanationPanelClick(MainScreen.InGameLabelExplanationPanel);
                                         end;
  { ������ ����������� � ��������� ���� ������� }
  TempStr:=TempStrList.Values['PlayerForms']; I:=1;
  While TempStr<>'' Do begin
     TempStr1:=LeftStr(TempStr,pos(',',TempStr)-1); delete(TempStr,1,pos(',',TempStr));
     PlayerForms[I-1].Left:=Screen.Width - (StrToInt(LeftStr(TempStr1,pos('/',TempStr1)-1)) div 10000);
     PlayerForms[I-1].Top:=Screen.Height - (StrToInt(LeftStr(TempStr1,pos('/',TempStr1)-1)) mod 10000); delete(TempStr1,1,pos('/',TempStr1));
     If StrToInt(LeftStr(TempStr1,pos('/',TempStr1)-1))=1 Then begin
       (PlayerForms[I-1].FindComponent('MinButt'+IntToStr(PlayerForms[I-1].Tag)) as TSpeedButton).Caption:='o';
       MinimizeWindow(PlayerForms[I-1]);
                                                               end Else MaximizeWindow(PlayerForms[I-1]); delete(TempStr1,1,pos('/',TempStr1));
    PlayerForms[I-1].HelpContext:=StrToInt(TempStr1);
    If PlayerForms[I-1].HelpContext=666 Then begin
     (PlayerForms[I-1].FindComponent('FixButt'+IntToStr(PlayerForms[I-1].Tag)) as TSpeedButton).Down:=true;
     MainScreen.SpeedButton1Click((PlayerForms[I-1].FindComponent('FixButt'+IntToStr(PlayerForms[I-1].Tag)) as TSpeedButton));
                                                               end;
     inc(i);
                       end;
     ClearWorkArray;
     setlength(SelectField,WorkFieldDimentionX+2,WorkFieldDimentionY+2);
     For I:=0 to WorkFieldDimentionX+1 do For J:=0 to WorkFieldDimentionY+1 do SelectField[I,J]:=0;
     //ShowGameGrafix;
  { ������ ������� ���� � ��� ���������� b ���� ������ }
  Template:=TempStrList.Values['Template'];
  TempStr:=TempStrList.Values['PlayField'];
  TempStr1:=TempStrList.Values['Letters'];
  setlength(WorkField,WorkFieldDimentionX+2,WorkFieldDimentionY+2);
     J:=1;I:=1; For k:=1 to WorkFieldDimentionX*WorkFieldDimentionY Do begin
                  WorkField[I,J].color:=StrToInt(TempStr[k]);
                  WorkField[I,J].forChoice:=tempStr1[1]; delete(TempStr1,1,2);
                  inc(I); If I>WorkFieldDimentionX Then begin I:=1; inc(J); end;
                                                                      end;
  try
  PrepareColorMatching('saved');
  TempStr:=TempStrList.Values['MainFormXY'];
     MainScreen.Left:=Screen.Width - (StrToInt(TempStr) div 10000);
     MainScreen.Top:=Screen.Height - (StrToInt(TempStr) mod 10000);
  except end;
  try TempStr:=TempStrList.Values['ControlFormXY'];
     RC_Form.Left:=Screen.Width - (StrToInt(TempStr) div 10000);
     RC_Form.Top:=Screen.Height - (StrToInt(TempStr) mod 10000);
  except end;


  { ��������� ����� �� ���� ������ }
  MainScreen.MakeImageList(WorkFieldDimentionX*WorkFieldDimentionY,1); // ������� �����
  LoadGrafix;
  CreateChoiceScreen;
 try
  {������ ������ �����}
  l:=TempStrList.IndexOf('[Moves]')+1;
  HintLimit:=StoreHintLimit;
    For l:=l to TempStrList.Count-1 Do begin
    TempStr:=TempStrList.Names[l]; //For I:=1 to PlayersNumber Do If Players[i].Name=TempStr then break;
    If TempStr='' Then break;
    MoveIs:=StrToInt(TempStr[2]);
    Opponent:=Players[MoveIs].PLtype;
    TempStr1:=TempStrList.Strings[l]; TempStr1:=ANSIReplaceText(TempStr1,TempStr+'=','');
    incMoveflag:=false;
    { ������ ���������, ���� ���� }
    TakeStarSubstr:='';
    If pos('TAKESTAR:',TempStr1)<>0 Then begin
       TempStr1:=ANSIReplaceText(TempStr1,'TAKESTAR:','');
       TakeStarSubstr:='TAKESTAR:';
       While pos(',',LeftStr(TempStr1,8))<>0 Do begin
       TempStr:=LeftStr(TempStr1,pos(',',TempStr1)-1); delete(TempStr1,1,pos(',',TempStr1));
       TempStr2:=LeftStr(TempStr,pos('/',TempStr)-1); delete(TempStr,1,pos('/',TempStr));
       For k:=1 to 7 Do If Slot7[MoveIs,k].Image=StrToInt(TempStr2) Then break;
       For I:=1 to WorkFieldDimentionX do begin
          For J:=1 to WorkFieldDimentionY do If WorkField[I,J].Image=StrToInt(TempStr) Then break;
          If WorkField[I,J].Image=StrToInt(TempStr) Then break;
                                          end;
       Letters[WorkField[I,J].Image].HelpContext:=0;
       Letters[WorkField[I,J].Image].Hint:=copy(Letters[WorkField[I,J].Image].Hint,1,2);
       with Letters[WorkField[I,J].Image] do
         begin Canvas.Font.Color := clBlack; Canvas.Font.Style := [fsBold]; Canvas.Font.Size := 13;
               Canvas.Brush.Color:=clBlack; Canvas.Brush.Style:=bsClear; Canvas.TextOut(14, 2, '*');
           end;
       Letters[Slot7[MoveIs,k].Image].HelpContext:=1;
       Letters[Slot7[MoveIs,k].Image].Hint:=chr(FirstAlphCode+AlphCount);
       Slot7[MoveIs,k].Letter:=chr(FirstAlphCode+AlphCount);
       Letters[Slot7[MoveIs,k].Image].Picture:=Images[1,AlphCount+1];
       TakeStarSubstr:=TakeStarSubstr+TempStr2+'/'+TempStr+',';
                                            end;
       If pos('SLOT:',TempStr1)=0 Then MovesLog.Add(TempStrList.Names[l]+'='+TakeStarSubStr);
                                                  end;
    { ���������� ����� ������ ����, ���� ������� ���� }
    If pos('ETIME:',TempStr1)<>0 Then begin
       TempStr1:=ANSIReplaceText(TempStr1,'ETIME:','');
       TempStr:=LeftStr(TempStr1,pos(',',TempStr1)-1); delete(TempStr1,1,pos(',',TempStr1));
       If LoadTime Then StartMin:=StrToInt(LeftStr(TempStr,pos('/',TempStr)-1)); delete(TempStr,1,pos('/',TempStr));
       If LoadTime Then StartSec:=StrToInt(TempStr);
                                      end;                                                  
    { ���������� ����� �� ���, ���� ������� ���� }
    If pos('MTIME:',TempStr1)<>0 Then begin
       TempStr1:=ANSIReplaceText(TempStr1,'MTIME:','');
       TempStr:=LeftStr(TempStr1,pos(',',TempStr1)-1); delete(TempStr1,1,pos(',',TempStr1));
       If LoadTime Then StartMin:=StrToInt(LeftStr(TempStr,pos('/',TempStr)-1)); delete(TempStr,1,pos('/',TempStr));
       If LoadTime Then StartSec:=StrToInt(TempStr);
                                      end;
    {���������� ����� +15}
    If pos('FULLSETBONUS',TempStr1)<>0 Then begin TempStr1:=ANSIReplaceText(TempStr1,'FULLSETBONUS,','');
                                             inc(Players[MoveIs].Points,15);
                                             For I:=1 to 7 do Slot7[MoveIs,I].Mark:=true;
                                            end;
    {���������� �����, ������� �������������� ��� ����������� ����}
    If pos('(USED:',TempStr1)<>0 Then begin TempStr:=copy(TempStr1,pos('(USED:',TempStr1)+6,pos('),',TempStr1)-6-pos('(USED:',TempStr1));
                                            For I:=1 to length(TempStr) do Slot7[MoveIs,StrToInt(TempStr[i])].Mark:=true;
                                            TempStr1:=ANSIReplaceText(TempStr1,'(USED:'+TempStr+'),','');
                                            end;
    { ����������, ���� �� ������������ ����� }
    If pos('WORDS:',TempStr1)<>0 Then begin
       SetLength(ClearedWords,0); TempStr1:=ANSIReplaceText(TempStr1,'WORDS:','');
       If pos('X,',TempStr1)<>0 Then HintLimit:=ifthen(HintLimit>0,HintLimit-1,0);
       While (LeftStr(TempStr1,4)<>'SLOT') and (TempStr1<>'') Do begin
          SetLength(ClearedWords,Length(ClearedWords)+1);
          TempStr:=LeftStr(TempStr1,pos(',',TempStr1)-1); delete(TempStr1,1,pos(',',TempStr1));
          ClearedWords[Length(ClearedWords)-1].Word:=LeftStr(TempStr,pos('(',TEmpStr)-1); delete(TempStr,1,pos('(',TempStr));
          ClearedWords[Length(ClearedWords)-1].Value:=byte(StrToInt(LeftStr(TempStr,pos(')',TEmpStr)-1))); delete(TempStr,1,pos(')',TempStr)) ;
          TempStr:=ANSIReplaceText(TempStr,'X','');
          ClearedWords[Length(ClearedWords)-1].Direction:=ifthen(TempStr[length(TempStr)]='H',1,2); delete(TempStr,length(TempStr),1);
          ClearedWords[Length(ClearedWords)-1].Wbegin:=StrToInt(TempStr) div 10000;
          //ClearedWords[Length(ClearedWords)-1].Wend:=(StrToInt(LeftStr(TempStr,pos(',',TEmpStr)-1)) mod 10000) div 100;
          ClearedWords[Length(ClearedWords)-1].AltCoord:=(StrToInt(TempStr) mod 10000) mod 100;
          incMoveflag:=true;
                             end;
          PCMove(MoveIs,Move,FinishGame);
          If TempStr1='' Then MovesLog.Add(TempStrList.strings[l]);
                                      end;
    For I:=1 to 7 do Slot7[MoveIs,I].Mark:=false;
    If pos('SLOT:',TempStr1)<>0 Then begin
       { ����� ���, ��� ��������� ����, ����� ����������� ������ ����� �� ���� ������ ��� ������������� }
        For I:=1 To 7 Do
         If Slot7[MoveIs,I].Image<>-1 Then begin
           ChoiceEmptyXY(TempX,TempY); WorkField[TempX,TempY].ForChoice:=Slot7[MoveIs,I].Letter;
           Letters[Slot7[MoveIs,I].Image].Parent:=MainScreen.ChoicePanel;
           Letters[Slot7[MoveIs,I].Image].Left:=28*(TempX-1); Letters[Slot7[MoveIs,I].Image].Top:=28*(TempY-1);
           Letters[Slot7[MoveIs,I].Image].Tag:=-1; Letters[Slot7[MoveIs,I].Image].Picture:=Images[2,AlphCount+1];
           Slot7[MoveIs,I].Letter:=' '; Slot7[MoveIs,I].Image:=-1;
                                            end;
     Slot7notFull:=false;
     TempStr1:=ANSIReplaceText(TempStr1,'SLOT:','');
     MovesLog.Add(TempStrList.strings[l]);
     { ��������� ��� ���� ���� }
     For I:=1 to 7 Do begin
          Slot7[MoveIs,I].Letter:=LeftStr(TempStr1,pos('/',TempStr1)-1)[1]; delete(TempStr1,1,pos('/',TempStr1));
          Slot7[MoveIs,I].Image:=StrToInt(LeftStr(TempStr1,pos(',',TempStr1)-1)); delete(TempStr1,1,pos(',',TempStr1));
          If Slot7[MoveIs,I].Image<>-1 Then begin
          If Letters[Slot7[MoveIs,I].Image].Tag=-1 Then
             WorkField[(Letters[Slot7[MoveIs,I].Image].Left+38) div 28, (Letters[Slot7[MoveIs,I].Image].Top+38) div 28].forChoice:=' ';
          Letters[Slot7[MoveIs,I].Image].Parent:=PlayerForms[MoveIs-1];
          Letters[Slot7[MoveIs,I].Image].Left:=Slot7[MoveIs,I].SlotX;
          Letters[Slot7[MoveIs,I].Image].Top:=Slot7[MoveIs,I].SlotY;
          Letters[Slot7[MoveIs,I].Image].Tag:=MoveIs;
          Letters[Slot7[MoveIs,I].Image].Picture:=Images[1,GetLetterNum(Slot7[MoveIs,I].Letter)+1];
                                            end
                                       Else Slot7NotFull:=true;
          incMoveflag:=true;
                      end;
     If Slot7notFull Then MovesLog.Strings[MovesLog.count-1]:=LeftStr(MovesLog[MovesLog.count-1],pos('SLOT:',MovesLog[MovesLog.count-1])-1);                      
                                      end;
    {������ �����, �� ������� ���� ����� ���������}
    If pos('HELPED:',TempStr1)<>0 Then begin
     Helped:=true;
     TempStr:=copy(TempStr1,pos('HELPED:',TempStr1)+7,1000);
     TempStr1:=ANSIReplaceText(TempStr1,'HELPED:'+TempStr,'');
     While TempStr<>'' Do begin
          SetLength(HelpedWords,Length(HelpedWords)+1);
          TempStr2:=LeftStr(TempStr,pos(',',TempStr)-1); delete(TempStr,1,pos(',',TempStr));
          HelpedWords[Length(HelpedWords)-1].Word:=LeftStr(TempStr2,pos('(',TEmpStr2)-1); delete(TempStr2,1,pos('(',TempStr2));
          HelpedWords[Length(HelpedWords)-1].Value:=byte(StrToInt(LeftStr(TempStr2,pos(')',TEmpStr2)-1))); delete(TempStr2,1,pos(')',TempStr2)) ;
          HelpedWords[Length(HelpedWords)-1].Direction:=ifthen(TempStr2[length(TempStr2)]='H',1,2); delete(TempStr2,length(TempStr2),1);
          HelpedWords[Length(HelpedWords)-1].Wbegin:=StrToInt(TempStr2) div 100;
          //ClearedWords[Length(ClearedWords)-1].Wend:=(StrToInt(LeftStr(TempStr,pos(',',TEmpStr)-1)) mod 10000) div 100;
          HelpedWords[Length(HelpedWords)-1].AltCoord:=StrToInt(TempStr2) mod 100;
                          end
                                           end;
    {����������� ������ �����, ���� ����� ���� �� ������� ����}
    isPlaygroundflag:=false;
    If pos('PLAYGROUND:',TempStr1)<>0 Then begin
     TempStr1:=ANSIReplaceText(TempStr1,'PLAYGROUND:','');
     isPlaygroundflag:=true;
     While TempStr1<>'' Do begin
          TempStr2:=LeftStr(TempStr1,pos(',',TempStr1)-1); delete(TempStr1,1,pos(',',TempStr1));
          For I:=1 to 7 do
            If Slot7[MoveIs,I].Image=StrToInt(copy(TempStr2,pos('/',TempStr2)+1,3)) Then break;
          If I<8 Then begin
            Letters[Slot7[MoveIs,I].Image].Parent:=MainScreen;
            TempX:=StrToInt(LeftStr(TempStr2,pos('/',TEmpStr2)-1)) div 1000;
            TempY:=StrToInt(LeftStr(TempStr2,pos('/',TEmpStr2)-1)) mod 1000;
            Letters[Slot7[MoveIs,I].Image].Left:=(TempX-1)*28+19;
            Letters[Slot7[MoveIs,I].Image].Top:=(TempY-1)*28+19;
            WorkField[TempX,TempY].hotspot:=Slot7[MoveIs,I].Letter;
            WorkField[TempX,TempY].Image:=Slot7[MoveIs,I].Image;
            Slot7[MoveIs,I].Image:=-1;
            Slot7[MoveIs,I].Letter:=' ';
                     end;
                          end;
                                           end
                                       end;
  {���������� ���������, ���� �����}
  If TempStrList.IndexOf('[Selections]')<>0 Then
       If (TempStrList.Values['ShapesNum']>'0') and (TempStrList.Values['Shapes']<>'')
               Then begin
           TempStr:=TempStrList.Values['SelectMap'];
   k:=1;
   For I:=0 to WorkFieldDimentionX+1 do For J:=0 to WorkFieldDimentionY+1 do
      begin SelectField[I,J]:=StrToInt(TempStr[k]); inc(k); end;

   setLength(SelectShapes,StrToInt(TempStrList.Values['ShapesNum']));
   TempStr:=TempStrList.Values['Shapes'];
  try
  For I:=0 to length(SelectShapes)-1 Do begin
       SelectShapes[I]:=TShape.Create(MAinScreen);
       TempStr1:=LeftStr(TempStr,pos('/',TempStr)-1); delete(TempStr,1,pos('/',TempStr));
       Sh:=SelectShapes[I]; sh.Name:=TempStr1;
       TempStr1:=LeftStr(TempStr,pos('/',TempStr)-1); delete(TempStr,1,pos('/',TempStr));
       Sh.Left:=StrToInt(TempStr1) div 10000; Sh.Top:=StrToInt(TempStr1) mod 10000;
       TempStr1:=LeftStr(TempStr,pos('/',TempStr)-1); delete(TempStr,1,pos('/',TempStr));
       sh.Pen.Color:=StrToInt(TempStr1);
       TempStr1:=LeftStr(TempStr,pos('/',TempStr)-1); delete(TempStr,1,pos('/',TempStr));
       Sh.Width:=StrToInt(TempStr1) div 1000;  Sh.height:=StrToInt(TempStr1) mod 1000;
       TempStr1:=LeftStr(TempStr,pos(',',TempStr)-1); delete(TempStr,1,pos(',',TempStr));
       Sh.Tag:=StrToInt(TempStr1);
       Sh.Shape:=stRoundRect; sh.Brush.Style:=bsClear;
       sh.Pen.style:=psSolid; sh.Pen.Width:=3; Sh.ParentShowHint:=false;
       sh.Parent:=MainScreen; sh.BringToFront; sh.Show;
       sh.OnMouseUp:=MainScreen.FormMouseDown;
       sh.OnMouseMove:=MainScreen.MMove;
                                         end;
  except
      For I:=1 to Length(SelectShapes) do SelectShapes[I-1].Free;
      setLength(SelectShapes,0);
      For I:=0 to WorkFieldDimentionX+1 do For J:=0 to WorkFieldDimentionY+1 do SelectField[I,J]:=0;
  end;

                      end;
  except end;
  SetLength(ClearedWords,0);
  LettersLeft:=0;
  For I:=1 to WorkFieldDimentionX do For J:=1 to WorkFieldDimentionY do
     If WorkField[I,J].forChoice<>' ' Then inc(LettersLeft);
  If (CheckSlots(MoveIs)<>0) and not isPlaygroundFlag
        Then begin WhatIDoNow:=Take; {MainScreen.ChoicePanel.Show;} end
        Else begin if incMoveflag Then begin inc(MoveIs); if MoveIs>PlayersNumber Then MoveIs:=1; end;
                   Opponent:=Players[MoveIs].PLtype;
                   WhatIDoNow:=Play;
              end;
//  StoreHintLimit:=StrToInt(TempStrList.Values['HintLeft']);
  For I:=0 to PlayersNumber-1 Do
     (PlayerForms[i].FindComponent('Sc'+IntToStr(I+1)+'label') as TLabel).Caption:=IntToStr(Players[I+1].points);
  ShowGameGrafix;
  StarWindow.FormCreate(StarWindow);
  RC_Form.Show; RC_Form.Update;
  TempStrList.Free;
  GameLoading:=false;
  PlaySounds:=TempPlaySounds;
  Screen.Cursor:=crDefault;
end;
{-------------------------------------------------------}
{ ����� ���� "������������ ������" }
procedure TMainScreen.N5Click(Sender: TObject); { TODO : Load Game }
var I,J:word; Im:TImage; TempPlayer:PlayersType; Song:SongFileType;
const create=1; clear=2;
begin
If not QuickLoad Then begin
    If DemoMode Then exit;
    If Ex_Form<>nil Then If Ex_Form.visible Then exit;
    If ActiveLetterForm<>nil Then exit;
    If InGameButtongLoadGame.Cursor=crNoDrop Then Exit;
    If Screen.Cursor=crHourGlass Then Exit;
    { �������� ��� ��������� � ������� }
    saveIni(Players[1].name);
    TempPlayer:=Players[1];
    If Sender is TTNTMenuItem Then
       begin if not fileexists('GRAFIX\PLAYERS\'+Members[StrToInt(copy((Sender as TTNTMenuItem).Name,5,10))].Image+'.bmp') Then Members[StrToInt(copy((Sender as TTNTMenuItem).Name,5,10))].Image:=Members[StrToInt(copy((Sender as TTNTMenuItem).Name,5,10))].Image+'1';
             Players[1]:=Members[StrToInt(copy((Sender as TTNTMenuItem).Name,5,10))];
         end;
    Screen.Cursor:=crDefault;
    CursorStatus:=ShowCursor(true);
    {  �������������� ���������� ���� ���������}
    SaveGameWindow.Position:=poMainFormCenter;
    SaveGameWindow.Tag:=2;
    _Label:=Comment2; _Label1:=Comment3; _Label2:=Comment1;
    If MoveLimit Then begin MoveTimer.Enabled:=False; HideLetters; end;
    SaveGameWindow.ShowModal;
    Shadow_Form.Hide;
    CursorStatus:=ShowCursor(false);
                     end
                Else begin SaveGameWindow.ModalResult:=mrYes; QuickLoad:=false; end;

If SaveGameWindow.ModalResult=mrYes Then
BEGIN
GameLoading:=true;
If MovesLog<>nil Then MovesLog.Free; MovesLog:=TStringList.Create;
FlashAnnounce.Caption:=' '+GlobalTextStrings.Items.Values['StatusLoading']+' '; FlashAnnounce.Tag:=666; FlashAnnounce.Font.Color:=clYellow;
FlashAnnounce.Show;
FlashTimer.Enabled:=false; ElaspedTimer.Enabled:=false; MoveTimer.Enabled:=false; SystemTimer.Enabled:=false;
loadIni(Players[1].name);
{If ParamStr(1)='newsave' Then begin}
LoadTXTGame(StrToInt(SaveGameWindow.Hint));
For I:=0 To (WorkFieldDimentionX*WorkFieldDimentionY)-1 Do begin
    Im:=Letters[i]; If Im.Tag=-2 Then Im.HelpKeyword:='';
                                                           end;
(*                              end else BEGIN {----------------------------------------------}
LanguageDict:=Ifthen(Save.LangDict<>'',Save.LangDict,LanguageDict);
LanguageExpl:=Save.LangExpl;
Opponent:=Save.Opnt;
LoadAlphabet;
LoadDictionarytoMemory;
PCIntellect:=Save.Intellect;
Limit:=Save.Limits;
Theme:=Save.Themes;
StartHour:=Save.StartHour; StartMin:=Save.StartMin; StartSec:=Save.StartSec;
Screen.Cursor:=crHourGlass;
{ �������� ������ ��������� }
For I:=1 to Length(SelectShapes) do If SelectShapes[I-1]<>nil Then begin SelectShapes[I-1].Free; SelectShapes[I-1]:=nil end;
setLength(SelectShapes,0);
setlength(WorkField,0,0);
setlength(SelectField,00);
WorkFieldDimentionX:=Save.WorkFieldDimentionX;
WorkFieldDimentionY:=Save.WorkFieldDimentionY;
setlength(WorkField,WorkFieldDimentionX+2,WorkFieldDimentionY+2);
setlength(SelectField,WorkFieldDimentionX+2,WorkFieldDimentionY+2);
For I:=0 to WorkFieldDimentionX+1 do For J:=0 to WorkFieldDimentionY+1 do SelectField[I,J]:=0;
For I:=0 To WorkFieldDimentionX+1 Do For J:=0 To WorkFieldDimentionY+1
                      Do WorkField[I,J]:=Save.WorkField[I,J];
PlayersNumber:=Save.PlayersNumber;
setlength(Players,PlayersNumber+1); setlength(Words,201,PlayersNumber+1);
MoveIs:=Save.Move;
Helped:=Save.Help;
WhatIDoNow:=Save.Mode;
HintDelay:=Save.HintDelay;
HintLimit:=Save.HintLimit;
StoreHintLimit:=Save.StoreHintLimit;
Theme:=Save.Themes;
Template:=Save.Template;
KeepBonuses:=Save.KeepBonuses;
try
For I:=1 To PlayersNumber Do Players[I]:=Save.Players[I];
For I:=1 To 200 Do For J:=1 To PlayersNumber Do Words[I,J]:=Save.WordList[I,J];
except end;
{If Sender is TMenuItem Then
   begin Players[1].Image:=Members[StrToInt(copy((Sender as TMenuItem).Name,5,10))].Image;
     end;}

//If Letters<>nil Then
   MainScreen.MakeImageList(length(Letters),2); // ������� ������ �����
{ ������� ��������� �����}
If length(PlayerForms)>0 Then begin
   For I:=0 to length(PlayerForms)-1 Do begin PlayerForms[i].Free; end;
   setlength(PlayerForms,0);
                              end;
   If RC_Form<>nil then begin
   For I:=0 to RC_Form.ControlCount-1 Do
                             begin
                             RC_Form.Controls[0].Hide;
                             RC_Form.Controls[0].Parent:=Application.MainForm;
                                           end;
   RC_Form.Free; RC_Form:=nil;
                       end;
   For I:=1 to 10 Do If mESSAGEForms[I]<>nil Then
    begin MessageForms[I].Release; MessageForms[I]:=nil; end;

CreatePlayersForms;
For I:=1 To PlayersNumber Do For J:=1 To 7 Do begin
    Slot7[I,J].Letter:=Save.Slot7[I,J].Letter;
    Slot7[I,J].Mark:=Save.Slot7[I,J].Mark;
    Slot7[I,J].Image:=Save.Slot7[I,J].Image;
                                                end;

If Save.FloatingForms[0].X>Screen.Width Then RC_Form.Left:=Save.FloatingForms[0].X-65535
                                          Else RC_Form.Left:=Save.FloatingForms[0].X;
If Save.FloatingForms[0].Y>Screen.Height Then RC_Form.Top:=Save.FloatingForms[0].Y-65535
                                           Else RC_Form.Top:=Save.FloatingForms[0].Y;
RC_Form.Show;
For J:=0 to length(PlayerForms)-1 Do begin
If Save.FloatingForms[J+1].X>Screen.Width Then PlayerForms[J].Left:=Save.FloatingForms[J+1].X-65535
                                          Else PlayerForms[J].Left:=Save.FloatingForms[J+1].X;
If Save.FloatingForms[J+1].Y>Screen.Height Then PlayerForms[J].Top:=Save.FloatingForms[J+1].Y-65535
                                           Else PlayerForms[J].Top:=Save.FloatingForms[J+1].Y;
PlayerForms[J].Show; PlayerForms[J].refresh;
If Save.FloatingForms[J+1].Locked=666 Then begin
  (PlayerForms[J].FindComponent('FixButt'+IntToStr(PlayerForms[J].Tag)) as TSpeedButton).Down:=true;
  MainScreen.SpeedButton1Click((PlayerForms[J].FindComponent('FixButt'+IntToStr(PlayerForms[J].Tag)) as TSpeedButton));
                                           end;
(PlayerForms[J].FindComponent('Pl'+IntToStr(PlayerForms[J].Tag)+'Im') as TControl).Hint:=GlobalTextStrings.Items.Values['InGameTagPlayerWordsList']+chr(13)+'----------------------------------';
For I:=1 To 200 Do
  If Words[I,J+1].Word<>'' Then (PlayerForms[J].FindComponent('Pl'+IntToStr(PlayerForms[J].Tag)+'Im') as TControl).Hint:=(PlayerForms[J].FindComponent('Pl'+IntToStr(PlayerForms[J].Tag)+'Im') as TControl).Hint+chr(13)+Words[I,J+1].Word+'  (+'+IntToStr(Words[I,J+1].Value)+')'
                         Else break;
                                     end;
MainBackground[1].bitmap.Canvas.Draw(0,0,MainBackgroundBackup.bitmap);
MainBackground[2].bitmap.Canvas.Draw(0,0,MainBackgroundBackup.bitmap);
 If ShowExplanatoryPanel
  or AlwaysShowDictionaryPanel Then begin ShowExplanatoryPanel:=true;
                                          MainScreen.InGameLabelExplanationPanelClick(MainScreen.InGameLabelExplanationPanel);
                                      end;
ShowGameGrafix;
For J:=0 to length(PlayerForms)-1 Do
    If Save.FloatingForms[J+1].Status=0 Then MaximizeWindow(PlayerForms[J]) Else MinimizeWindow(PlayerForms[J]);
PrepareColorMatching('saved');
If Save.MainFieldForm.X<>0 Then
  If Save.MainFieldForm.X>Screen.Width Then MainScreen.Left:=Save.MainFieldForm.X-65535
                                       Else MainScreen.Left:=Save.MainFieldForm.X;
If Save.MainFieldForm.Y<>0 Then
  If Save.MainFieldForm.Y>Screen.Height Then MainScreen.Top:=Save.MainFieldForm.Y-65535
                                        Else MainScreen.Top:=Save.MainFieldForm.Y;
LoadGrafix;

LettersLeft:=0;
{ ��������� ����� }
MainScreen.MakeImageList(WorkFieldDimentionX*WorkFieldDimentionY,1); // ������� �����
For I:=0 To WorkFieldDimentionX*WorkFieldDimentionY-1 Do begin
    Im:=Letters[i];
    Im.Left:=Save.Letters[I].Left; Im.Top:=Save.Letters[I].Top;
    Im.Hint:=Save.Letters[I].Hint;
    Im.HelpContext:=0;
    Im.Tag:=Save.Letters[I].Tag;
    If Save.Letters[I].Parent>0 Then Im.Parent:=PlayerForms[Save.Letters[I].Parent-1]
                                Else
                                If Im.Tag=-1 Then Im.Parent:=ChoicePanel Else Im.Parent:=MainScreen;
    If pos(chr(FirstAlphCode+AlphCount),Im.Hint)<>0 Then Im.HelpContext:=1;
  If Im.Tag=-2 Then begin
     If ShowColorLetters Then Im.Picture:=Images[ord(not odd(StrToInt(Im.Hint[2])))+2,ord(Im.Hint[1])-FirstAlphCode+1]
                                        Else Im.Picture:=Images[2,ord(Im.Hint[1])-FirstAlphCode+1];
     If (Im.HelpContext=1) and TakeStar Then
                with Im do
                  begin  Canvas.Font.Color := clWhite;
                         Canvas.Font.Style := [fsBold];
                         Canvas.Font.Size := 13;
                         Canvas.Brush.Color:=clBlack;
                         Canvas.Brush.Style:=bsClear;
                         Canvas.TextOut(14, 2, '*');
                    end;
     Im.Enabled:=True;
     Im.HelpKeyword:='';
                    end;
  If Im.Tag=-1 Then begin Im.Picture:=Images[2,AlphCount+1]; Im.Enabled:=True; inc(LettersLeft); end;
  If Im.Tag>-1 Then begin Im.Picture:=Images[1,ord(Im.Hint[1])-FirstAlphCode+1]; Im.Enabled:=True; end;
    Im.Visible:=Save.Letters[I].Visible; Im.BringToFront;
                                          end;
{ ���������� ������� �������� �����}
  //If KeepBonuses Then
   For I:=1 to WorkFieldDimentionX Do
      For J:=1 to WorkFieldDimentionY Do
     If WorkField[I,J].Image<>-1 Then
        begin
     Im:=Letters[WorkField[I,J].Image];
     If WorkField[I,J].color>1 Then begin
         Im.Canvas.Brush.Style:=bsSolid;  Im.Canvas.Pen.Style:=psClear;
             case WorkField[I,J].color of
                   2: Im.Canvas.Brush.Color:=$0200ffA8;
                   3: Im.Canvas.Brush.Color:=$02ffff00;
                   4: Im.Canvas.brush.Color:={ $0200ffE6;}clYellow;
                   5: Im.Canvas.brush.Color:=$020000FF;
              end;
     If WorkField[I,J].color<6 Then Im.Canvas.Polygon([point(1,2),Point(1,8), Point(8,1)]);
                                   end;
         end;
{���������� ���������, ���� �����}
setLength(SelectShapes,Save.ShapesNumber);
If Save.ShapesNumber>0 Then begin
For I:=0 to WorkFieldDimentionX+1 do For J:=0 to WorkFieldDimentionY+1 do SelectField[I,J]:=Save.SelectField[I,J];
try
For I:=0 to length(SelectShapes)-1 Do begin
      SelectShapes[I]:=TShape.Create(self);
      Sh:=SelectShapes[I]; sh.Name:=Save.SelectShapes[I].Name;
      If pos('inv',Sh.Name)=0 Then begin
      Sh.Tag:=Save.SelectShapes[I].Tag;
      Sh.Left:=Save.SelectShapes[I].Left; Sh.Top:=Save.SelectShapes[I].Top;
      Sh.Width:=Save.SelectShapes[I].Width;  Sh.height:=Save.SelectShapes[I].Height;
      Sh.Shape:=stRoundRect; sh.Brush.Style:=bsClear; sh.Pen.Color:=Save.SelectShapes[I].Color;
      sh.Pen.style:=psSolid; sh.Pen.Width:=3; Sh.ParentShowHint:=false;
      sh.Parent:=MainScreen; sh.BringToFront; sh.Show;
      sh.OnMouseUp:=MainScreen.FormMouseDown;
      sh.OnMouseMove:=MainScreen.MMove;
                                   end Else begin ANSIReplaceText(sh.Name,'inv','');
                                                  sh.Hint:='x'; sh.Hide; end;
                                      end;
except
     For I:=1 to Length(SelectShapes) do SelectShapes[I-1].Free;
      setLength(SelectShapes,0);
end;
                            end;

                                                END; {-------------------------------------} *)
If pos(' Move-',Limit)<>0 Then
 begin
        MoveLimit:=True;
        If WhatIDoNow=Play Then begin
            MoveTimer.Enabled:=True; MoveTimer.Tag:=MoveIs;
                                end;
        ElaspedTimer.Enabled:=False;
 end
   Else begin MoveLimit:=False;
              MoveTimer.Enabled:=False; ElaspedTimer.Enabled:=True;
        end;

If copy(Limit,1,pos('-',Limit)-1)='Time' Then begin
  TimeLimit:=True;
  OldHour:=0; SystemTimerTimer(SystemTimer);
                                              end
                                        { Else begin
  OldHour:=0; SystemTimerTimer(SystemTimer);
                                              end};

{ �������� ��������������� ��������� � ���� "���������"}
case PCIntellect of
  Low:MainScreen.MenuIntellectLowClick(Sender);
  Middle:MainScreen.MenuIntellectNormalClick(Sender);
  High:MainScreen.MenuIntellectHighClick(Sender);
end;
If (HintLimit>=0) and (HintLimit<11) Then begin
  InGameButtongHint.Hint:=copy(InGameButtongHint.Hint,1,pos(chr(13),InGameButtongHint.Hint)-1+21*ord(pos(chr(13),InGameButtongHint.Hint)=0))+chr(13)+GlobalTextStrings.Items.Values['InGameTagHintsLeft']+IntToStr(HintLimit)+' ';
  If HintLimit=0 Then begin InGameButtongHint.Cursor:=crNoDrop; MenuHelpHInt.Enabled:=false; end Else begin MenuHelpHInt.Enabled:=True; InGameButtongHint.Cursor:=crDefault; end;
  MenuHelpHInt.Caption:=copy(MainScreen.MenuHelpHInt.Caption,1,pos('(',MainScreen.MenuHelpHInt.Caption)-2+22*ord(pos('(',MainScreen.MenuHelpHInt.Caption)=0))+' ('+IntToStr(HintLimit)+')';
                                           end
                                    Else
If (StoreHintLimit=11) Then begin
  InGameButtongHint.Hint:=copy(InGameButtongHint.Hint,1,pos(chr(13),InGameButtongHint.Hint)-1+21*ord(pos(chr(13),InGameButtongHint.Hint)=0));
  MainScreen.MenuHelpHInt.Caption:=copy(MainScreen.MenuHelpHInt.Caption,1,pos('(',MainScreen.MenuHelpHInt.Caption)-2+22*ord(pos('(',MainScreen.MenuHelpHInt.Caption)=0));
  MenuHelpHInt.Enabled:=True;
                       end
                                    Else
                                    begin
  InGameButtongHint.Hint:=copy(InGameButtongHint.Hint,1,pos(chr(13),InGameButtongHint.Hint)-1+21*ord(pos(chr(13),InGameButtongHint.Hint)=0));
  MainScreen.MenuHelpHInt.Caption:=copy(MainScreen.MenuHelpHInt.Caption,1,pos('(',MainScreen.MenuHelpHInt.Caption)-2+22*ord(pos('(',MainScreen.MenuHelpHInt.Caption)=0));
  MenuHelpHInt.Enabled:=False;
                                         end;
If DemoMode Then begin FinishGame:=true; DemoMode:=False; end;
If FinishGame Then begin
  MenuBgr.Hide; menuButton1.Hide; menuButton2.Hide; menuButton3.Hide; menuButton6.Hide;
  ScreenButtonTitleNewGame.Hide; ScreenButtonTitleLoadGame.Hide; ScreenButtonTitleExit.Hide;
  ScreenButtonTitleContinue.Hide; ScreenButtonTitleLastPlayer.Hide;
                   end;
InGameLabel.Caption:=GlobalTextStrings.Items.Values['InGameTagButtonEndGame'];
//MainScreen.Refresh;

If FinishGame Then begin
{ ��������� ������ ����������� ����������}
If Options.MusicListboxSelectedSongs.Items.Count=0 Then begin
if FileExists('MEDIA\songs.lst') Then begin
AssignFile(SongFile,'MEDIA\songs.lst'); Reset(SongFile);
While not EOF(SongFile) do begin
Read(SongFile,Song);
Options.MusicListboxSelectedSongs.Items.Add(Song.Name); Options.PathList.Items.Add(Song.Path);
Options.ShuffleList.Items.Add('..');
                           end;
CloseFile(SongFile);
                                      end; end;
{ �������� ������ }
If (Options.MusicListboxSelectedSongs.Items.Count<>0) and PlayBackgroundMusic Then begin
{ ����� ���������� �������� }
If PlayShuffle Then begin
   If Options.ShuffleList.SelCount=Options.ShuffleList.Items.Count Then
    For I:=0 to Options.ShuffleList.Items.Count-1 Do Options.ShuffleList.Selected[i]:=False;
    PlaySong:=random(Options.MusicListboxSelectedSongs.Items.Count);
    While Options.ShuffleList.Selected[PlaySong] do
     PlaySong:=random(Options.MusicListboxSelectedSongs.Items.Count);
    Options.ShuffleList.Selected[PlaySong]:=True;
                    end;
If PlaySong>Options.MusicListboxSelectedSongs.Items.Count-1 Then PlaySong:=0;
If pos('.mid',Options.MusicListboxSelectedSongs.Items[PlaySong])=0 Then
   begin
   BASS_StreamFree(BgrMusic);
   BgrMusic:=BASS_StreamCreateFile(false,pchar(Options.PathList.Items[PlaySong]+Options.MusicListboxSelectedSongs.Items[PlaySong]),0,0,0);
   BASS_ChannelSetAttributes(BgrMusic,0,MusicVolume,-101);
   BASS_StreamPlay(BgrMusic,false,0);
   end
                           Else begin
MediaPlayer1.FileName:=Options.PathList.Items[PlaySong]+Options.MusicListboxSelectedSongs.Items[PlaySong];
If FileExists(MediaPlayer1.FileName) Then begin
MediaPlayer1.Open; MediaPlayer1.Notify:=True; MediaPlayer1.Tag:=1;
MediaPlayer1.Play; SetCurrentDir(CurrentDir); end
                                     Else begin MediaPlayer1.Notify:=True; MediaPlayer1.Open; end;
                                 end;
                                          end;
FinishGame:=False; SplashWindow.Hint:='';
MenuGameNew.Enabled:=False;
MenuGameEnd.Enabled:=True;
MenuGameSave.Enabled:=True;
MenuHelpComputeScore.Enabled:=True;
MenuGameDemo.Enabled:=False;
end;
if not PlayBackgroundMusic then BASS_StreamFree(BgrMusic);
ChoiceFieldImage.Visible:=true;

If not Finishgame Then SystemTimer.Enabled:=true;
If (Opponent=Human) Then
 If WhatIDoNow=Take Then
     If not LettersAutoSelect Then ChoicePanel.Visible:=true
                          Else begin
               WhatIDoNow:=Take; ComputerDoChoice(MoveIs);DoChoiceScreen(MoveIs,off_m);
                               end
                   Else begin
                           If random(100)<33 Then
                             If PlaySounds Then BASS_SamplePlay(YourMove1Sound)
                                             Else Else
                           If random(100)<66 Then
                             If PlaySounds Then BASS_SamplePlay(YourMove2Sound)
                                             Else Else
                             If PlaySounds Then BASS_SamplePlay(YourMove3Sound);
                         end
                     Else begin
                     Pl_Form:=PlayerForms[MoveIs-1];
                       For I:=0 to PL_Form.ControlCount-1 Do begin
                         If PL_Form.Controls[I].Name='Sc'+IntToStr(MoveIs)+'Label' Then
                             ScoreLabel:=PL_form.Controls[I] as TLabel;
                              If PL_Form.Controls[I].Name='Sc'+IntToStr(MoveIs)+'Im' Then
                                    ScoreDisplay:=Pl_Form.Controls[I] as TImage;
                                                             end;
      //DemoMode:=true;
      PCMoveNumber:=1; PCMove(MoveIs,Move,FinishGame);
      If FinishGame Then begin EndCurrentGame; exit; end;
           If (PCIntellect=High) and (CheckSlots(MoveIs)<>7) and Not PCChangedLetters Then begin
           If MoveLimit Then MainScreen.MoveTimer.Enabled:=True;
           PCMoveNumber:=2; PCMove(MoveIs,Move,FinishGame);
           If FinishGame Then begin try EndCurrentGame; except;end; exit; end;
                                                                                           end;
           ComputerDoChoice(MoveIs); DoChoiceScreen(MoveIs,Off_m);
                          end;
FlashTimer.Enabled:=True;
FillComments;
{ ����������, ���� �� ����������� ���� }
(*If AllPlayersOpen Then begin
MinimizeWindows:=false;
If (PlayersNumber=8) and (Screen.Width<1280) Then MinimizeWindows:=true;
If PlayersNumber>3 Then begin
   If ((PlayersNumber-ord(PlayersNumber=8)) div 2)*(320+ord(MoveLimit or TimeLimit)*40)>Screen.Height Then MinimizeWindows:=true
                                                                               Else
   If MainScreen.BoundsRect.Right>screen.Width-340 Then
      If MainScreen.Width+170*3>Screen.Width Then MinimizeWindows:=true;
                           end;
                               end {If AllPlayersOpen} Else MinimizeWindows:=true;*)
END
  Else begin Players[1]:=TempPlayer;
             If FinishGame then exit;
             If MoveLimit Then begin MoveTimer.Enabled:=true; ShowLetters; end;
        end;
If MoveLimit Then begin
   If WhatIDoNow=Play Then MoveTimer.Enabled:=True;
   If (StartSec<=20) and (StartMin=0) Then (PlayerForms[MoveIs-1].FindComponent('Dp'+IntToStr(MoveIs)+'Label') as TLabel).Font.Color:=clRed
                                     Else
   If MoveIs mod 2<>0 Then (PlayerForms[MoveIs-1].FindComponent('Dp'+IntToStr(MoveIs)+'Label') as TLabel).Font.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGamePlayerColor1'],IntToStr(clLime)))
                         Else (PlayerForms[MoveIs-1].FindComponent('Dp'+IntToStr(MoveIs)+'Label') as TLabel).Font.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGamePlayerColor2'],InttoStr(clFuchsia)));
   ShowLetters; end;
If TimeLimit Then
  For I:=0 to PlayersNumber-1 Do (PlayerForms[I].FindComponent('Dp'+IntToStr(I+1)+'Label') as TLabel).Font.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGameTimeActive'],InttoStr(clAqua)));
Screen.Cursor:=crDefault;
GameLoading:=false;
end;
{-------------------------------------------------------}
{ ����������� ��������� ���� ���� }
procedure TMainScreen.FormPaint(Sender: TObject);
var temprgn:hrgn; z:word;
begin
 If sender=RC_Form Then (sender as TForm).Canvas.Draw(0,0,MainBackground[2].bitmap)
                   Else
 If sender=Mainscreen Then begin
                         (sender as TForm).Canvas.Draw(0,0,MainBackground[3].bitmap);
                         If not FiniShGame Then begin
                                    If MAinScreen.ClientWidth<>WorkFieldDimentionX*28+32 Then MAinScreen.ClientWidth:=WorkFieldDimentionX*28+32;
                                    If MAinScreen.clientheight<>WorkFieldDimentionY*28+32+35*ord(ShowExplanatoryPanel) Then
                                        MAinScreen.ClientHeight:=WorkFieldDimentionY*28+32+35*ord(ShowExplanatoryPanel);
                                    MainScreen.Canvas.Brush.color:=clGray; MainScreen.Canvas.Pen.Color:=clGray;
                                    MainScreen.Canvas.RoundRect(MenuButton5.Left-4,MenuButton5.Top-2,MenuButton5.BoundsRect.Right+4,MenuButton5.BoundsRect.Bottom+6,15,15);
                                    MainScreen.Canvas.Brush.color:=$00BFEFFF; MainScreen.Canvas.Pen.Color:=clWhite;
                                    MainScreen.Canvas.RoundRect(MenuButton5.Left-3,MenuButton5.Top-1,MenuButton5.BoundsRect.Right+3,MenuButton5.BoundsRect.Bottom+6,15,15);
                                    MenuButton5.Update; InGameLabelExplanationPanel.Update; 
                                    If ShowExplanatoryPanel Then begin
                                       z:=1; While z<MainBackground[3].bitmap.Width Do begin MainScreen.Canvas.Draw(z,MainBackground[3].Height-34,ExplPanelBackground.Graphic); z:=z+ExplPanelBackground.Graphic.Width end;
                                                                 end;
                                                end;
                           end
                   Else (sender as TForm).Canvas.Draw(0,0,MainBackground[1].bitmap);
end;
{-------------------------------------------------------}
{ }
procedure TMainScreen.GoButton1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
If ActiveLetter<>nil Then (Sender as TImage).ShowHint:=False
                     Else (Sender as TImage).ShowHint:=True;
end;
{-------------------------------------------------------}
{ ����� ���� "� ���������..." }
procedure TMainScreen.MenuHelpAboutClick(Sender: TObject);
begin
About.ShowModal;
end;
{-------------------------------------------------------}
{ ����� ���� "������ ����������" }
procedure TMainScreen.MenuGameBestScoreClick(Sender: TObject);
var TempVolume:DWord;
begin
If PlaySounds Then BASS_SamplePlay(HallFameSound);
Screen.Cursor:=crDefault;
CursorStatus:=ShowCursor(true);
{  �������������� ���������� ���� ���������}
//HallFame.Left:=MainScreen.Left; HallFame.Top:=MainScreen.Top;
{ ������ ���������� ���� ��������� �� ����������� }
HallFame.Position:=poMainFormCenter;
{Shadow_Form.Left:=HallFame.Left+7; Shadow_Form.Top:=HallFame.Top+7;
Shadow_Form.Width:=HallFame.Width; Shadow_Form.Height:=HallFame.Height;
Shadow_Form.Show;}
HallFame.ShowModal;
Shadow_Form.Hide;
CursorStatus:=ShowCursor(false);
If PlaySounds Then BASS_SampleStop(HallFameSound);
//If PlayBackgroundMusic Then SetMidiVolume(TempVolume);
end;
{-------------------------------------------------------}
{ ���������� ����� ���. ���������� }
procedure TMainScreen.MediaPlayer1Notify(Sender: TObject);
var I:byte;
begin
{ ������� ���� ������ ������ ��� ��������� ���������������}
If (Options.MusicListboxSelectedSongs.Items.Count=0) or FinishGame
   or not PlayBackgroundMusic Then Exit;
If MediaPlayer1.Mode=mpPlaying then exit;
If BASS_ChannelIsActive(BgrMusic)=BASS_ACTIVE_PLAYING Then exit;
//If (MediaPlayer1.Mode=mpPaused) and HallFame.Visible Then Exit;
{ ����� ���������� �������� }
If PlayShuffle Then begin
   If Options.ShuffleList.SelCount=Options.ShuffleList.Items.Count Then
    For I:=0 to Options.ShuffleList.Items.Count-1 Do Options.ShuffleList.Selected[i]:=False;
    PlaySong:=random(Options.MusicListboxSelectedSongs.Items.Count);
    While Options.ShuffleList.Selected[PlaySong] do
     PlaySong:=random(Options.MusicListboxSelectedSongs.Items.Count);
    Options.ShuffleList.Selected[PlaySong]:=True;
                    end
Else
begin
{ ����� ���������/���������� ��������� }
If MediaPlayer1.Tag=2 Then begin
dec(PlaySong); If PlaySong=255 Then PlaySong:=Options.MusicListboxSelectedSongs.Items.Count-1;
                           end;
If MediaPlayer1.Tag=1 Then begin
inc(PlaySong); If PlaySong>=Options.MusicListboxSelectedSongs.Items.Count Then PlaySong:=0;
                           end;
end;
FillComments;
{ ��������������� ����� }
If pos('.mid',Options.MusicListboxSelectedSongs.Items[PlaySong])=0 Then
   begin
   BASS_StreamFree(BgrMusic);
   BgrMusic:=BASS_StreamCreateFile(false,pchar(Options.PathList.Items[PlaySong]+Options.MusicListboxSelectedSongs.Items[PlaySong]),0,0,0);
   BASS_ChannelSetAttributes(BgrMusic,0,MusicVolume,-101);
   BASS_StreamPlay(BgrMusic,false,0);
   end
                           Else
   begin
  MediaPlayer1.FileName:=Options.PathList.Items[PlaySong]+Options.MusicListboxSelectedSongs.Items[PlaySong];
  If FileExists(MediaPlayer1.FileName) Then begin
   MediaPlayer1.Open; MediaPlayer1.Tag:=1;
   MediaPlayer1.Notify:=true; MediaPlayer1.Play;
   SetCurrentDir(CurrentDir);
                                            end
                                       Else begin MediaPlayer1.Notify:=True; MediaPlayer1.Open; end;
   end
end;

{-------------------------------------------------------}
{ ����� ������ � ��������� ���� }
{procedure TMainScreen.MenuHelpAlphabetClick(Sender: TObject);
begin
If BonusInfo.Visible Then
   begin MenuHelpAlphabet.Checked:=False; BonusInfo.Hide end
                    Else
   begin MenuHelpAlphabet.Checked:=True; BonusInfo.Show; end;
end;}

procedure TMainScreen.MenuHelpRulesClick(Sender: TObject);
begin
mHHelp.HelpTopic('rules.htm');
end;

procedure TMainScreen.MenuHelpHowStartGameClick(Sender: TObject);
begin
mHHelp.HelpTopic('play.htm');
end;

procedure TMainScreen.InGameTagSponsorLogoClick(Sender: TObject);
begin
ShellExecute(0, nil,'http://www.scarlett.ru',nil,nil,1);
end;

procedure TMainScreen.N1Click(Sender: TObject);
begin
exit;
end;

procedure TMainScreen.MenuHelpGameClick(Sender: TObject);
begin
mHHelp.HelpTopic('');
end;

procedure TMainScreen.CopyToBuffer(Sender: TObject);
var TempClipboard:TClipboard; TempString:string;
begin
TempClipboard:=TClipboard.Create;
TempString:=(Ex_Form.FindComponent('Ex_Word') as TRXLabel).Caption+chr(13);
TempString:=TempString+(Ex_Form.FindComponent('Ex_Explanation') as TTNTLabel).Caption;
TempClipboard.SetTextBuf(Pchar(TempString));
TempClipboard.Free;
end;

procedure TMainScreen.CloseRefWindow(Sender: TObject);
var I:byte;
begin
//Ex_Form.ModalResult:=mrNo;
Ex_Form.Hide; Shadow_Form.hide;
RC_Form.Enabled:=true;
For I:=0 to PlayersNumber-1 Do PlayerForms[i].Enabled:=true;
end;

procedure TMainScreen.PaintRefWindow(Sender: TObject);
var TempPic:TPicture;
begin
  TempPic:=TPicture.Create; TempPic.Bitmap.width:=(sender as TForm).Width; TempPic.Bitmap.Height:=30;
  TempPic.Bitmap.Canvas.CopyRect(Rect(0,0,(sender as TForm).Width,30),QuestWinBackground.Bitmap.Canvas,Rect(0,0,QuestWinBackground.Width,30));
  (sender as TForm).Canvas.Draw(0,0,TempPic.Graphic);
  TempPic.Bitmap.Canvas.CopyRect(Rect(0,0,(sender as TForm).Width,30),QuestWinBackground.Bitmap.Canvas,Rect(0,QuestWinBackground.Height-30,QuestWinBackground.Width,QuestWinBackground.Height));
  (sender as TForm).Canvas.Draw(0,(sender as TForm).Height-30,TempPic.Graphic);
  TempPic.Free; TempPic:=TPicture.Create; TempPic.Bitmap.width:=(sender as TForm).Width; TempPic.Bitmap.Height:=(sender as TForm).Height-30;
  TempPic.Bitmap.Canvas.CopyRect(Rect(0,0,(sender as TForm).Width,(sender as TForm).Height-30),QuestWinBackground.Bitmap.Canvas,Rect(0,31,QuestWinBackground.Width,QuestWinBackground.Height-30));
  (sender as TForm).Canvas.StretchDraw(Rect(0,30,(sender as TForm).Width,(sender as TForm).Height-30), TempPic.Graphic);
  TempPic.Free; //Lens_Form.Hide;
  If sender=Lens_Form then begin
    Lens_Form.Canvas.CopyRect(Rect(3, 3, Lens_Form.ClientRect.Right-3, Lens_Form.ClientRect.Bottom-3), DeskTopBitmap.Canvas, Rect(Mouse.CursorPos.X+4-Lens_Form.Width div 6, Mouse.CursorPos.Y+4-Lens_Form.Height div 6, Mouse.CursorPos.X+4+Lens_Form.Width div 6, Mouse.CursorPos.Y+4+Lens_Form.Height div 6 { 100,100,140,140}));
                           end;
end;

procedure TMainScreen.ActivateRefWindow(Sender: TObject);
begin
If not Shadow_Form.Visible then begin
   Shadow_Form.Left:=Ex_Form.Left+7; Shadow_Form.Top:=Ex_Form.Top+10;
   Shadow_Form.Width:=Ex_Form.Width; Shadow_Form.Height:=Ex_Form.Height;
   Shadow_form.Show; Ex_form.BringToFront;
                             end;
end;
{-------------------------------------------------------}
{ ������ �� ������ ����������� ���� }
procedure TMainScreen.contextitemClick(Sender: TObject);{ TODO : ����� ����������� ���� }
var res:Hwnd; DeletedWord:ShortString; S:wideString;
    DeleteWordNow, AddExpl:boolean; i,j:byte; k:word; MasX,MasY:byte; MessX,MessY:word;
    Im, Im1:TImage; DelDictionaryFile:textfile; TempLetter:TImage; Flag1:boolean; TempStr1:string;
    PrevMove:byte; TempAnim:TRXGIFAnimator; TempStr:widestring; TempStrings:TStringList; TempWStrings:TTNTStringList;
    TempLabel:TRXLabel; TempExplLabel:TTNTLabel; TempRXButton:TRXGifAnimator; c:char; TempSpButt:TSpeedButton;
    TempPic:TPicture;

    //--------- ������ ���������� �� ����� -----------
    Function ReadExplFromFile(filename:string):integer;
     var ExplFile:textfile; ExplStr, TempWS:utf8string; WordToExpl, TempS:string; ExplToParse:widestring;
         flag:boolean;
     begin
      If not FileExists(filename) Then exit;
      LanguageCodepage:=getLanguageCodepage(LanguageDict);
      AssignFile(ExplFile,filename);
      Reset(ExplFile);
      Read(ExplFile,c,c,c); // ������ ������ 3 �����, ����������� UTF-8
      While not EOF(ExplFile) do begin
        Readln(ExplFile,ExplStr);
        TempS:=UTF8toANSI(ExplStr);
        if TempS='' Then continue;
        If TempS[1]<>'>' Then begin  TempS:='>'+TempS; ExplStr:='>'+ExplStr; end;
        TempWS:=MidStr(ExplStr,2,pos('=',ExplStr)-2);
        WordToExpl:=MidStr(TempS,2,pos('=',TempS)-2);
        if WordToExpl='' Then continue;
        If LanguageCodePage<>1251 then CorrectANSI(WordToExpl,TempWS);
        If ANSIUppercase(WordToExpl)[1]<>(Sender as TMenuItem).Caption[1] then continue; // ���� ������ ����� �� ��������, �� ���������� �����
        //WordToExpl:=MidStr(WordToExpl,2,pos('=',WordToExpl)-2);
        flag:=false;
         While ANSIUppercase(WordToExpl)=(Sender as TTNTMenuItem).Caption Do
           begin
            flag:=true;
            //ExplToParse:=UTF8toANSI(MidStr(ExplStr,pos('=',ExplStr)+1,1000));
            ExplToParse:=Utf8decode(ExplStr);
            delete(ExplToParse,1,pos('=',ExplToParse));
            //If getLanguageCodepage(LanguageExpl)<>1251 then CorrectANSI(ExplToParse,MidStr(ExplStr,pos('=',ExplStr)+1,1000));
            { �������� �� ������ ���������� �� ������ ����� }
            If pos('[/',ExplToParse)<>0 Then
               If pos('['+LanguageExpl+']',ExplToParse)<>0 Then begin
                           TempWStrings.Add(MidStr(ExplToParse,pos('['+LanguageExpl+']',ExplToParse)+5,pos('[/'+LanguageExpl+']',ExplToParse)-pos('['+LanguageExpl+']',ExplToParse)-5));
                                                            end
                                    Else Else
                           TempWStrings.Add(ExplToParse);
            Readln(ExplFile,ExplStr);
            TempS:=UTF8toANSI(ExplStr); if TempS='' Then break;
            If TempS[1]<>'>' Then TempS:='>'+TempS;
            WordToExpl:=MidStr(TempS,2,pos('=',TempS)-2); TempWS:=MidStr(ExplStr,2,pos('=',ExplStr)-2);
            If LanguageCodepage<>1251 then CorrectANSI(WordToExpl,TempWs);
           end;
         if flag then break;
                                 end;
       CloseFile(ExplFile);
     end;

begin
{ ������� ����� ���������� }
If (Sender as TTNTMenuItem).Tag<>1 Then begin
   //If ReferenceOn Then begin
      //res:=HtmlHelp(GetDesktopWindow, PCHAR('erudit.chm'), HH_DISPLAY_INDEX, DWORD(PCHAR((Sender as TMenuItem).Caption)));
      //SendMessage(res, WM_COMMAND, MAKELONG(3006, BN_CLICKED), 0)
      If Ex_Form<>nil Then begin
                              Ex_Form.ModalResult:=mrNo; Shadow_Form.Hide; Ex_Form.free; Ex_Form:=nil;
                              RC_Form.Enabled:=true; For I:=0 to PlayersNumber-1 Do PlayerForms[i].Enabled:=true;
                              MainScreen.Update;
                             end;
      TempStr1:=(Sender as TTNTMenuItem).Caption;
      If GetLanguageCodepage(LanguageDict)<>1251 Then CorrectANSI(TempStr1, utf8encode((Sender as TTNTMenuItem).Caption));
      (Sender as TTNTMenuItem).Caption:=TempStr1;
      TempWStrings:=TTNTStringList.Create;
      Screen.Cursor:=crHourGlass;
      //LoadUnicodeFile(CurrentDir+'\dict\'+LanguageDict+'\expl\'+LanguageExpl+'\explanatory.txt',TempStrings);
      ReadExplFromFile(CurrentDir+'\dict\'+LanguageDict+'\expl\'+LanguageExpl+'\explanatory.txt');
      ReadExplFromFile(CurrentDir+'\dict\'+LanguageDict+'\diction.user.add.txt');
      Ex_Form:=TForm.Create(Application);
      Ex_Form.FormStyle:=fsStayOnTop; Ex_Form.BorderStyle:=bsNone;
      Ex_Form.AutoSize:=false; {Ex_Form.Color:=$00BFEFFF;} Ex_Form.OnActivate:=ActivateRefWindow;;
      Ex_Form.Enabled:=true; Ex_Form.OnPaint:=PaintRefWindow;
      Ex_Form.Name:='Explform'; Ex_Form.Width:=347; Ex_Form.Height:=347;
      Ex_Form.HelpKeyword:=(Sender as TTNTMenuItem).Caption;
      { ����� �����}
      TempLabel:=TRXLabel.Create(Ex_Form);
      with TempLabel do begin
        Parent:=Ex_Form; Left:=10; Top:=20; width:=327; height:=30; autosize:=false;
        Font.Charset:=Setcharset(LanguageDict); Font.Name:=FontNames[ttfMess];
        Font.Size:=16; Font.Color:=StrToInt(ifthen(CustomColors,Colors.Values['ExplanationCap'],IntToStr(clLime))); Transparent:=true;
        shadowpos:=spLeftBottom; shadowColor:=clBlack; caption:=(Sender as TTNTMenuItem).Caption;
        alignment:=taCenter; name:='Ex_Word';
                        end;
      Ex_Form.Height:=80;
      { ����� ���������� }
      TempExplLabel:=TTNTLabel.Create(Ex_Form);
      with TempExplLabel do begin
        Parent:=Ex_Form; Left:=15; Top:=60; Font.Style:=[fsBold];
        Font.Name:='MS San Serif'; Font.Charset:=DEFAULT_CHARSET; autosize:=false;
        Font.Size:=11; Font.Color:=StrToInt(ifthen(CustomColors,Colors.Values['ExplanationText'],IntToStr(clWhite)));  layout:=tlCenter;
        //shadowsize:=1; shadowpos:=spLeftBottom; shadowColor:=clBlack;
        name:='Ex_Explanation';
        If TempWstrings.Count>0 Then
          If tempWstrings.Count=1 Then begin alignment:=taCenter; caption:=TempWStrings.Strings[0];
                                         end
                                 Else begin
                                        alignment:=taLeftJustify;
                                        For I:=0 to tempWStrings.Count-1 Do
                                          TempWStrings.strings[i]:='  ('+IntToStr(I+1)+')  '+TempWStrings.strings[i];
                                        caption:=Trim(TempWStrings.Text);
                                      end
                               Else begin
                                  s:=(Sender as TTNTMenuItem).Caption;
                                  TempStr:=WideReplaceText(GlobalTextStrings.Items.Values['InGameQuestionAddWordExplanation'],'%s',s);
                                  If CustomDict.WarnAddExplanation Then begin AddExpl:=Question(0,0,TempStr);
                                                                              If AddExpl Then begin
                                                                                  If (sender as TTNTMenuItem).Name='DictPanel' Then begin
                                                                                       ExplCBox.Color:=clWhite; ExplCBox.Items.Add(ExplCBox.text);
                                                                                                                                 end;
                                                                                                   Options.Tag:=22;
                                                                                                    Options.Edit1.Text:=s;
                                                                                                    Options.ShowModal;
                                                                                              end;
                                                                              TempWStrings.Free;
                                                                              Shadow_Form.Hide; Ex_Form.Release; Ex_Form:=nil;
                                                                              exit;
                                                                        end
                                                                   Else begin alignment:=taCenter;
                                                                              caption:=GlobalTextStrings.Items.Values['InGameMessageNoWordExplanation'];
                                                                         end;
                                      end;
        Transparent:=true;
        autosize:=true;  width:=322; wordwrap:=true; autosize:=true; width:=322; 
                        end;
      If TEmpExplLabel.Height>Screen.Height-150 Then begin TEmpExplLabel.AutoSize:=false;
                                                           TEmpExplLabel.Height:=Screen.Height-150;
                                                     end;      
      Ex_Form.Height:=110+TEmpExplLabel.Height;
      Ex_Form.FormStyle:=fsStayOnTop;
      Ex_Form.Position:=poScreenCenter;
      { ����� �����}
      TempLabel:=TRXLabel.Create(Ex_Form);
      with TempLabel do begin
        Parent:=Ex_Form; Left:=20 ; Top:=Ex_Form.Height-35; autosize:=true;
        Font.Name:='MS Sans Serif'; Font.Charset:=Setcharset(Language);
        Font.Size:=9; Font.Color:=StrToInt(ifthen(CustomColors,Colors.Values['ExplanationLanguage'],IntToStr(clYellow)));
        Transparent:=true;
        shadowpos:=spLeftBottom; shadowColor:=clBlack;
        If LanguageExpl<>'' Then caption:=GetLanguageName(LanguageExpl)
                            Else caption:=GetLanguageName(LanguageDict);
        alignment:=taLeftJustify; show;
                        end;
      { ������ ����������� � ����� }
      TempSpButt:=TSpeedButton.Create(Ex_Form); TempSpButt.Parent:=Ex_Form;
      TempPic:=TPicture.Create; LoadSkinnedImage(TempPic,'copy');
      TempSpButt.Glyph:=TempPic.Bitmap; TempPic.Free;
      TempSpButt.Transparent:=true; TempSpButt.Flat:=true;
      TempSpButt.Left:=310; TempSpButt.Top:=22; TempSPButt.Width:=24; TempSpButt.Height:=24;
      TempSpButt.OnClick:=CopyToBuffer; TempSpButt.Cursor:=crHandPoint;
      TempSpButt.Hint:=GlobalTextStrings.Items.Values['ExplanationWindowCopyButtonHint']; TempSpButt.ShowHint:=true;
      TempSpButt.Show;
      { ������ �������� ���� }
      TempRXButton:=TRXGifAnimator.Create(Ex_Form); TempRXButton.Parent:=Ex_Form; TempRXButton.AutoSize:=true;
      LoadSkinnedGIF(TempRXButton.Image,'ANIMATIO\x_button'); TempRXbutton.Left:=Ex_Form.Width-45; tempRXbutton.Top:=Ex_Form.Height-45;
      TempRXbutton.Animate:=true; TempRXbutton.OnClick:=CloseRefWindow; TempRXButton.Enabled:=true;
      TempRXButton.Cursor:=crHandPoint;
      Screen.Cursor:=crDefault;
      RC_Form.Enabled:=false;
      For I:=0 to PlayersNumber-1 Do PlayerForms[i].Enabled:=false;
      TempWStrings.Free;
      Ex_Form.Show; Ex_Form.BringToFront;
      //While Ex_Form.ModalResult=mrNone Do Application.ProcessMessages;
      //Shadow_Form.Hide; Ex_Form.Release; Ex_Form:=nil; RC_Form.Enabled:=true;
      //For I:=0 to PlayersNumber-1 Do PlayerForms[i].Enabled:=true;
                                                       end
                  //Else {if ReferenceOn}
      //MainScreen.WordReference(MainScreen)
                                 Else
                                     begin
  { ������� ����� ���������� }
   ErrorWindow.Left:=MainScreen.Left; ErrorWindow.Top:=MainScreen.Top;
   {���������� �����, ������� ���������� �� ��� �����}
   MasX:=((ContextHelpMenu.PopupComponent as TImage).Left+19) div 28;
   MasY:=((ContextHelpMenu.PopupComponent as TImage).Top+19) div 28;
          TempStr1:=(Sender as TTNTMenuItem).Caption;
          if GetLanguageCodepage(LanguageDict)<>1251 Then CorrectANSI(TempStr1,utf8encode((Sender as TTNTMenuItem).Caption));
          delete(tempStr1,1,10);
          j:=200;
          While j>=1 Do begin
            flag1:=true;
            For I:=1 to PlayersNumber Do If (Words[j,i].Word<>'') Then Flag1:=false;
            If Flag1 Then begin dec(j); continue; end;
            for I:=1 to PlayersNumber Do
                if Words[j,i].Word =tempStr1 Then break;
            if i>PlayersNumber then dec(j) else break;
                       end;
        { ������ ����� � ������ �������������, ���� ���� }
       FlashWord(On_m,Words[j,i].WBegin,Words[j,i].WEnd,Words[j,i].Coord,Words[j,i].Direction);
       case Words[j,i].Direction of
         1: begin If MasX>WorkFieldDimentionX div 2 Then MessX:=Application.MainForm.Left+(MasX+1)*28-325 Else MessX:=Application.MainForm.Left+MasX*28-7;
                  If MasY>WorkFieldDimentionY div 2 Then MessY:=Application.MainForm.Top+MasY*28-142+47 Else MessY:=Application.MainForm.Top+MasY*28+70;
             end;
         2: begin
                  If MasX>WorkFieldDimentionX div 2 Then MessX:=Application.MainForm.Left+(MasX)*28-335 Else MessX:=Application.MainForm.Left+(MasX+1)*28;
                  If MasY>WorkFieldDimentionY div 2 Then MessY:=Application.MainForm.Top+(MasY+1)*28-142+47 Else MessY:=Application.MainForm.Top+MasY*28+70;
             end;
        end;
       TempStr:=WideReplaceText(GlobalTextStrings.Items.Values['InGameQuestionExcludeWordFromDictionary'],'%s',TempStr1);
       If CustomDict.WarnDelete Then DeleteWordNow:=Question(MessX,MessY,TempStr)
                                Else DeleteWordNow:=True;
        FlashWord(Off_m,Words[j,i].WBegin,Words[j,i].WEnd,Words[j,i].Coord,Words[j,i].Direction);
       If DeleteWordNow Then
        begin
        Screen.Cursor:=crHourGlass;
        { ���������� ����� � ���� ���������� }
        TempStrings:=DictArray[length(DictArray)-1];
        If TempStrings=nil Then TempStrings:=TStringList.create;
        If TempStrings.count>0 Then
           if (TempStrings.IndexOfName(Words[j,i].Word)<>-1)
           or (TempStrings.IndexOf(Words[j,i].Word)<>-1) Then DeleteWordNow:=false;
        If DeleteWordNow Then begin
         TempStrings.Add(Words[j,i].word);
         SaveUnicodeFile('dict\'+LanguageDict+'\diction.user.del.txt',TempStrings,nil, GetLanguageCodepage(LanguageDict)<>1251, convert);
         LoadDictionaryToMemory(false);
                              end;

       PrevMove:=MoveIs-1; If PrevMove=0 Then PrevMove:=PlayersNumber;
        j:=200; While (Words[j,PrevMove].Word='') and (j>1) Do dec(j);
  try
       If Undo.LastWordsCount>0 Then
         For I:=0 to Undo.LastWordsCount-1 Do
             If Words[j-I,PrevMove].Word=TempStr1 Then break;
  { ���� ����� ���������� � ��������� ���, ��� �������� }
  if ((ContextHelpMenu.PopupComponent as TImage).HelpKeyword='new')
     and (Players[PrevMove].PLtype=1) and RepeatTurn and not DemoMode and (I<Undo.LastWordsCount) then
    begin
   GatherLettersFromWorkField;
   MinimizeWindow(PlayerForms[MoveIs-1]);
   MaximizeWindow(PlayerForms[PrevMove-1]);
   AdjustWindows;
   PlayerForms[PrevMove-1].BringToFront;
   If PlaySounds Then BASS_SamplePlay(change2Sound);
   For I:=1 To 7 do Slot7[PrevMove,I].Mark:=Undo.Slot7Mark[I];
   { ������ ������ ���������� ����}
   TempAnim:=TRXGIFAnimator.Create(nil);
   LoadSkinnedGIF(TempAnim.Image,'ANIMATIO\explosio');
   For I:=1 To TempAnim.Image.Count Do begin
                   For J:=1 To 7 Do
                     If Slot7[PrevMove,J].Mark Then begin
                         TempLetter:=Letters[Slot7[PrevMove,J].Image];
                         TempLetter.Transparent:=true;
                         TempLetter.Picture.Assign(TempAnim.Image.Frames[I-1].Bitmap);
                         TempLetter.Update;
                                               end;
                   TimeDelay(35);

                     end;
    TempAnim.free;
                 { ������� ����� �� ����� � ������������ ������ ���� ������ }
                 For I:=1 To 7 Do If Slot7[PrevMove,I].Mark Then begin
				    Slot7[PrevMove,I].Mark:=False;
                                    TempLetter:=Letters[Slot7[PrevMove,I].Image];
                                    TempLetter.Transparent:=false;
                                    ChoiceEmptyXY(MasX,MasY);
                                    WorkField[MasX,MasY].ForChoice:=Slot7[PrevMove,I].Letter;
                                    TempLetter.Parent:=MainScreen.ChoicePanel;
                                    TempLetter.Left:=28*(MasX-1); TempLetter.Top:=28*(MasY-1);
                                    TempLetter.Tag:=-1; TempLetter.Picture:=Images[2,AlphCount+1];
                                    //TempLetter.Visible:=False;
                                    TempLetter.Update;
                                    Slot7[PrevMove,I].Letter:=' '; Slot7[PrevMove,I].Image:=-1;
                                    TempLetter:=nil;
                                                           end;
        { ��������� ����� c �������� ���� � ���� }
        for k:=0 to LastLetters.Count-1 Do begin
            Im:=LastLetters.Items[k];
            MasX:=(Im.Left+19) div 28;  MasY:=(Im.Top+19) div 28;
            WorkField[MasX,MasY].main:=' '; WorkField[MasX,MasY].hotspot:=' ';
            WorkField[MasX,MasY].Image:=-1; WorkField[MasX,MasY].Checked:=false;
            // ��������� ���������
            If Im.HelpContext=1 Then Im.Hint:=chr(FirstAlphCode+AlphCount)
                                Else
               // �������� ��������� � ���������, ���� �� �� ��� ��������
               If pos(chr(FirstAlphCode+AlphCount),Im.Hint)<>0 Then begin
                  For I:= 1 to 7 Do
                   If Slot7[MoveIs,I].Letter=chr(FirstAlphCode+AlphCount) Then begin
                      Slot7[MoveIs,I].Letter:=Im.Hint[1];
                      Im1:=Letters[Slot7[MoveIs,I].Image];
                      Im1.Picture:=Images[1,GetLetterNum(Slot7[MoveIs,I].Letter)+1];
                      Im1.Hint:=Im.Hint[1];
                      break;
                                                      end;
                  Im.HelpContext:=1; Im.Hint:=chr(FirstAlphCode+AlphCount);
                                           end;
            Im.Hint:=Im.Hint[1]; Im.Tag:=2;
            For I:=1 to 7 do
             If Slot7[PrevMove,I].Letter=' ' Then begin
                TransferLetter(PrevMove,Application.MainForm, PlayerForms[PrevMove-1], Im.Left,Im.Top,Slot7[PrevMove,I].SlotX,Slot7[PrevMove,I].SlotY);
                Slot7[PrevMove,I].Letter:=Im.Hint[1]; Slot7[PrevMove,I].Mark:=False;
                Slot7[PrevMove,I].Image:=StrToInt(copy(Im.Name,5,3))-1;
                Im.Picture:=Images[1,GetLetterNum(Im.Hint[1])+1];
                break;
                                          end;
                                            end;
        { ������ ����� ���� }
        For i:=1 to WorkFieldDimentionX do
           for j:=1 to WorkFieldDimentionY do
             begin
                WorkField[i,j].available:=Undo.Avail[i,j];
                WorkField[i,j].color:=Undo.Colors[i,j];
                WorkField[i,j].hotspot:=Undo.HotSpots[i,j];
             end;
        //PrevMove:=MoveIs-1; If PrevMove=0 Then PrevMove:=PlayersNumber;
        incScore(PrevMove,-(Players[PrevMove].Points-Undo.Points));
        j:=200;
        While (Undo.LastWordsCount<>0) and (j>0) Do begin
          If Words[j,PrevMove].Word='' Then begin dec(j); continue; end;
          Words[j,PrevMove].Word:='';
          dec(j); dec(Undo.LastWordsCount);
          i:=length((PlayerForms[PrevMove-1].FindComponent('Pl'+IntToStr(PrevMove)+'Im') as TImage).Hint);
          While (PlayerForms[PrevMove-1].FindComponent('Pl'+IntToStr(PrevMove)+'Im') as TImage).Hint[i]<>chr(13) Do dec(I);
          (PlayerForms[PrevMove-1].FindComponent('Pl'+IntToStr(PrevMove)+'Im') as TImage).Hint:=copy((PlayerForms[PrevMove-1].FindComponent('Pl'+IntToStr(PrevMove)+'Im') as TImage).Hint,1,i-1);
                       end;
         Screen.Cursor:=crDefault;
        MovesLog.Delete(MovesLog.Count-1); // ������� ��������� ������ ���� �����
        { ������� ������ �� ����������� ����, ����� ����� ��������� ������� ���� � ����������}
        If MoveLimit Then begin StartSec:=0; StartMin:=0; end;
        MoveIs:=PrevMove-1; If MoveIs=0 then MoveIs:=PlayersNumber;
        MainScreen.MoveTimerTimer(self);
      end Else begin  TempStr:=WideReplaceText(GlobalTextStrings.Items.Values['InGameMessageWordExcluded'],'%s',tempStr1);
                      Announce(0,0,TempStr)
                end;
    except end;  
     end;

                                  end
end;

procedure TMainScreen.MenuHelpGameSiteClick(Sender: TObject);
begin
ShellExecute(0, nil,'http://www.scarlett.ru/games/erudit',nil,nil,1);
end;

procedure TMainScreen.Score1Click(Sender: TObject);
begin
If WhatIDoNow=Helping Then ProceedHelp:=True;
end;

procedure TMainScreen.Time1Click(Sender: TObject);
begin
If WhatIDoNow=Helping Then ProceedHelp:=True;
end;

procedure TMainScreen.Time2Click(Sender: TObject);
begin
If WhatIDoNow=Helping Then ProceedHelp:=True;
end;

procedure TMainScreen.Score2Click(Sender: TObject);
begin
If WhatIDoNow=Helping Then ProceedHelp:=True;
end;

procedure TMainScreen.MainMessageClick(Sender: TObject);
begin
If WhatIDoNow=Helping Then ProceedHelp:=True;
end;

procedure TMainScreen.PlayerName2ShadowClick(Sender: TObject);
begin
If WhatIDoNow=Helping Then ProceedHelp:=True;
end;

procedure TMainScreen.PlayerName1ShadowClick(Sender: TObject);
begin
If WhatIDoNow=Helping Then ProceedHelp:=True;
end;


procedure TMainScreen.PopupTimerTimer(Sender: TObject);
begin
case PopupTimer.tag of
1: begin PopupPanel.Show; PopupPanel.Repaint;  end;
2: begin PopupPanel1.Show; PopupPanel1.Repaint;  end;
3: begin ShowSelection:=true; PopupTimer.enabled:=False; end;
4: begin MenuLensClick(MenuLens); end;
end;
PopupTimer.Enabled:=false;
end;

procedure TMainScreen.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var TempX, TempY:byte; I,J:integer;
begin
{ ���� ��� ���������� ���� }
If sender=Lens_Form Then begin
       Lens_Form.Release; Lens_Form:=nil; DeskTopBitmap.Free;
       while (CursorStatus<0) Do CursorStatus:=ShowCursor(True);
       Application.HintPause:=1000; Application.HintHidePause:=20000;
       exit;
                         end;
if button<>mbLeft Then exit;
if Sender is TShape Then begin
   I:=(Sender as TShape).Left;
   While I<(Sender as TShape).Left+(Sender as TShape).Width
   do begin
      J:=(Sender as TShape).Top;
      While J<(Sender as TShape).Top+(Sender as TShape).Height
        do  begin
            TempX:=(I+19) div 28;  TempY:=(J+19) div 28;
            if (Sender as TShape).Width>26 Then
               If (SelectField[TempX,TempY]=1)
               or (SelectField[TempX,TempY]=3) Then
               SelectField[TempX,TempY]:=SelectField[TempX,TempY]-1;
            if (Sender as TShape).Height>26 Then
               If (SelectField[TempX,TempY]=2)
               or (SelectField[TempX,TempY]=3) Then
               SelectField[TempX,TempY]:=SelectField[TempX,TempY]-2;
            inc(J,28);
            end;
      inc(I,28);
      end;
  (Sender as TShape).Hide; (Sender as TShape).Hint:='x';
  exit;
                         end;

If (Sender<>MainScreen) and (Y<50) then begin
 ReleaseCapture;
 If sender is TForm Then (sender as TForm).Perform(WM_SYSCOMMAND, $F012, 0)
                    Else (sender as TControl).parent.Perform(WM_SYSCOMMAND, $F012, 0)
                           end;
end;

procedure TMainScreen.MenuGameDemoClick(Sender: TObject);
begin
DemoMode:=True;
MainScreen.InGameButtongGo.Cursor:=crNoDrop; MainScreen.InGameButtongChangeLetters.Cursor:=crNoDrop;
MainScreen.InGameButtongHint.Cursor:=crNoDrop; MainScreen.InGameButtongPreview.Cursor:=crNoDrop;
MainScreen.MenuHelpHInt.Enabled:=false; MainScreen.MenuHelpComputeScore.Enabled:=false;
MainScreen.InGameButtongSaveGame.Cursor:=crNoDrop; MainScreen.InGameButtongLoadGame.Cursor:=crNoDrop;
For I:=1 to PlayersNumber do begin TempCodes[I]:=Players[I].PLtype; Players[I].PLtype:=PC; end;
Opponent:=PC;
InGameLabel.Caption:=GlobalTextStrings.Items.Values['InGameTagButtonEndDemo']; MenuGameLoad.Enabled:=false;
FlashAnnounce.Caption:=' '+GlobalTextStrings.Items.Values['StatusDemoMode']+' '; FlashAnnounce.Tag:=666; FlashAnnounce.Font.Color:=clYellow;
try
MainScreen.N3Click(Sender);
finally
FlashAnnounce.Caption:=''; FlashAnnounce.Tag:=0;
MenuGameLoad.Enabled:=true;
For I:=1 to PlayersNumber do begin Players[I].PLtype:=TempCodes[I]; end;
DemoMode:=False;
MainScreen.InGameButtongGo.Cursor:=crHandPoint; MainScreen.InGameButtongChangeLetters.Cursor:=crHandPoint;
MainScreen.InGameButtongHint.Cursor:=crHandPoint;
MainScreen.InGameButtongPreview.Cursor:=crHandPoint;
If HintLimit>0 Then MainScreen.MenuHelpHInt.Enabled:=true; MainScreen.MenuHelpComputeScore.Enabled:=false;
MainScreen.InGameButtongSaveGame.Cursor:=crHandPoint; MainScreen.InGameButtongLoadGame.Cursor:=crHandPoint;
       end;
end;

{ ���� �� �������� "����" }
procedure TMainScreen.InGameButtongInfoClick(Sender: TObject);
var Bord:TShape; MyRect:TREct;
begin
If Screen.Cursor=crHourGlass Then Exit;
If ActiveLetterForm<>nil Then exit;
If ShowTerminals Then begin
InfoTimer.Tag:=0;
InfoTimer.Enabled:=true;
ShowTerminals:=false;
 If I_Form<>nil Then begin I_Form.Release; I_Form:=nil; end;
 I_Form:=TForm.Create(Application);
 I_Form.FormStyle:=fsStayOnTop; I_Form.BorderStyle:=bsNone;
 I_Form.AutoSize:=false;
 I_Form.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGameInfoCommentBgr'],IntToStr(clNavy)));
 I_Form.OnCloseQuery:=SplashScreen.FormCloseQuery;
 //I_Form.Enabled:=false;
 I_Form.OnActivate:=BonusInfo.OnActivate;
 I_Form.Name:='Infoform';
 //If win32Platform=ver_platform_win32_nt then begin I_Form.AlphaBlend:=true; I_Form.AlphaBlendValue:=200; end;
 Comment1.Parent:=I_Form; Comment1.Left:=0; Comment1.top:=5;
 Comment2.Parent:=I_Form;  Comment2.Left:=0; Comment2.top:=20;
 Comment3.Parent:=I_Form;  Comment3.Left:=0; Comment3.top:=35;
 I_Form.Tag:=70; I_Form.Height:=70;  I_Form.Width:=406;
 If Comment4.Caption<>'' Then begin
 Comment4.Parent:=I_Form;  Comment4.Left:=0; Comment4.top:=65;  I_Form.Tag:=85; I_Form.Height:=85;
                             end;
 I_Form.Left:=MainScreen.Left+(MainScreen.Width-I_Form.Width) div 2;
 I_Form.Top:=(WorkFieldDimentionY*28+32)-I_Form.Height+77+MainScreen.Top;
 For I:=0 to I_Form.ControlCount-1 Do begin
  (I_Form.Controls[i] as TTNTLabel).OnClick:=InGameButtongInfoClick;
  (I_Form.Controls[i] as TTNTLabel).OnMouseMove:=MMOve;
                                      end;
 Bord:=TShape.Create(I_Form); Bord.Parent:=I_Form;
 MyRect.Left:=1; MyRect.Top:=1; MyRect.Right:=I_Form.Width-1; MyRect.bottom:=I_Form.Height-1; Bord.Enabled:=false;
 Bord.BoundsRect:=MyRect; Bord.Brush.Style:=bsClear; Bord.Pen.Style:=psSolid;
 Bord.Pen.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGameInfoCommentBord'],IntToStr(clYellow)));
 Bord.Enabled:=false;
 I_Form.Height:=1; I_Form.OnMouseMove:=MMove; I_Form.OnClick:=InGameButtongInfoClick;
 I_Form.Show;
 Comment1.Show; Comment2.Show; Comment3.Show; Comment4.Show;
                      end
                 Else begin
InfoTimer.Enabled:=false;
Comment1.Hide; Comment2.Hide; Comment3.Hide; Comment4.Hide;
Comment1.Parent:=MainScreen; Comment2.Parent:=MainScreen; Comment3.Parent:=MainScreen;
Comment4.Parent:=MainScreen;
I_Form.Release; I_Form:=nil;
ShowTerminals:=true;
                      end;
end;

procedure TMainScreen.InfoTimerTimer(Sender: TObject);
begin
InfoTimer.Tag:=InfoTimer.Tag+1;
If I_Form.Height<I_Form.Tag Then begin I_Form.Top:=I_Form.Top-1;
                                       I_Form.Height:=I_Form.Height+1;
                                       I_Form.Update;
                                 end;
If InfoTimer.Tag>1000 Then begin
   ShowTerminals:=False;
   MainScreen.InGameButtongInfoClick(MainScreen);
                         end;
end;

{ �������� ���� � ������ }
procedure TMainScreen.MoveLetterTimerTimer(Sender: TObject);
begin
 If ActiveLetter=nil Then exit;
 If ((Mouse.cursorpos.X>ActiveLetter.Parent.BoundsRect.Right-24)
 or (Mouse.cursorpos.X<ActiveLetter.Parent.BoundsRect.left)
 or (Mouse.cursorpos.Y>ActiveLetter.Parent.BoundsRect.bottom-24)
 or (Mouse.cursorpos.Y<ActiveLetter.Parent.BoundsRect.top))
 and (ActiveLetter.parent<>ActiveLetterForm) Then
  ActiveLetter.parent:=ActiveLetterForm;
  if ActiveLetter.Tag<>-1 Then begin
   ActiveLetterForm.Left:=Mouse.CursorPos.X; ActiveLetterForm.Top:=Mouse.CursorPos.Y;
   ActiveLetterForm.Update;
                           end
end;

{ �������� ��������� }
procedure TMainScreen.MessageTimerTimer(Sender: TObject);
var fcounter, I:0..10;
begin
 fCounter:=0;
 For I:=1 to 10 do
 If MessageForms[I]<>nil Then begin
   inc(fCounter);
   If MessageForms[I].Top>1 Then MessageForms[I].Top:=MessageForms[I].Top-1;
   MainScreen.SetFocus;
   MessageForms[I].tag:=MessageForms[I].tag+1;
   If win32Platform=ver_platform_win32_nt
      Then begin
          If MessageForms[I].tag=140 Then MessageForms[I].AlphaBlend:=true;
          If MessageForms[I].tag>140 then MessageForms[I].AlphaBlendValue:=MessageForms[I].AlphaBlendValue-4;
           end;
   If MessageForms[I].Tag=200 Then begin MessageForms[I].Release; MessageForms[I]:=nil end;
                              end;
 If fCounter=0 Then MessageTimer.Enabled:=false;
end;

procedure TMainScreen.SpeedButton1Click(Sender: TObject);
begin
If pos('Min',(Sender as TSpeedButton).Name)<>0 Then begin
(Sender as TSpeedButton).Tag:=100;
If (Sender as TSpeedButton).Caption='o' Then MaximizeWindow(PlayerForms[(Sender as TSpeedButton).parent.tag-1])
                                        Else MinimizeWindow(PlayerForms[(Sender as TSpeedButton).parent.tag-1]);
(Sender as TSpeedButton).Tag:=0;
                                                     end
                                                    Else
If pos('Fix',(Sender as TSpeedButton).Name)<>0 Then begin
   If (Sender as TSpeedButton).Down Then begin
      (Sender as TSpeedButton).Caption:='w';
      (Sender as TSpeedButton).Font.Color:=clRed;
      (Sender as TSpeedButton).Hint:=GlobalTextStrings.Items.Values['UserWindowTagButtonUnLock'];
      PlayerForms[(Sender as TSpeedButton).parent.tag-1].HelpContext:=666;
                                         end
                                     Else
                                         begin
      (Sender as TSpeedButton).Caption:='v';
      (Sender as TSpeedButton).Font.Color:=clBlue;
      (Sender as TSpeedButton).Hint:=GlobalTextStrings.Items.Values['UserWindowTagButtonLock'];
       PlayerForms[(Sender as TSpeedButton).parent.tag-1].HelpContext:=0;
                                         end
                                                       end;
end;

procedure TMainScreen.LoadGlobalTextStrings(Mode:byte); { TODO : LoadGlobalTextStrings }
var I,J,k:word; tempCap,tempHint:widestring; TempObjName,TempWndName:string[255]; TempObj:TComponent;
    tempStr:string; TempWStr:pwidechar;
    TempThemesStrings:TTNTListBox; TempCharset:TFontCharset;
begin
CASE MODE OF
All: BEGIN
  If Fileexists(CurrentDir+'\lang\'+Language+'\strings.txt') Then begin
   { ����������� ������ ��������� ������ }
   LoadUnicodeFile(CurrentDir+'\lang\'+Language+'\strings.txt',nil,GlobalTextStrings,GetLanguageCodepage(Language)<>1251, noconvert);
   TempWStr:=pwidechar(GlobalTextStrings.Items.strings[0]);
   TempCharset:=SetCharset(Language);
   While TempWStr<>'[Dynamic]' Do begin
   If TempWStr[0]=';' then GlobalTextStrings.Items.Delete(0)
                     Else begin
                       TempObjName:=LeftStr(TempWStr,pos(':',TempWStr)-1); TempObj:=nil;
                       TempWndName:=LeftStr(TempObjName,pos('.',TempObjName)-1);
                       Delete(TempObjName,1,pos('.',TempObjName));
                       If TempObjName<>'' Then
                          TempObj:=(Application.FindComponent(TempWndName)).FindComponent(TempObjName)
                                          Else
                          TempObj:=(Application.FindComponent(TempWndName));
                       TempCap:=''; k:=pos(':',TempWStr)+1;
                       If K>1 Then
                       While TempWStr[k+1]<>'/' do begin
                         If TempWStr[k]='#' Then TempWStr[k]:=chr(13);  TempCap:=TempCap+TempWStr[k];
                         inc(k);
                                                 end;
                       TempHint:=''; k:=pos('/',TempWStr)+1;
                       If K>1 Then
                       While k<length(TempWStr)-1 do begin
                         If TempWStr[k]='#' Then TempWStr[k]:=chr(13);  TempHint:=TempHint+TempWStr[k];
                         inc(k);
                                                 end;
                       //TempCap:=pwidechar(MidStr(TempWStr,26, 10));
                       //TempHint:=PWideChar(MidStr(TempWStr,pos('/',TempWStr)+2, length(TempWStr)-pos('/',TempWStr)-2));
                       //TempHint:=pwidechar(ReplaceStr(TempHint,'#',chr(13)));
                       If TempObj<>nil Then begin
                          If (TempCap<>'') or (TempHint<>'') Then
                          If tempObj is TTNTMenuItem Then (TempObj as TTNTMenuItem).Caption:=TempCap Else
                          If tempObj is TTNTLabel Then begin
                                                          (TempObj as TTNTLabel).Caption:=TempCap;
                                                          If TempHint<>'' Then (TempObj as TTNTLabel).Hint:=TempHint;
                                                    end Else
                          If tempObj is TRXLabel Then begin
                                                            (TempObj as TRXLabel).Caption:=TempCap;
                                                            (TempObj as TRXLabel).Hint:=TempHint;
                                                      end Else
                          If tempObj is TRXGIFAnimator Then begin
                                                            (TempObj as TRXGIFAnimator).Hint:=TempHint;
                                                      end Else
                          If tempObj is TImage Then begin
                                                            (TempObj as TImage).Hint:=TempHint;
                                                      end Else
                          If tempObj is TTNTCheckListBox Then begin
                                                                (TempObj as TTNTCheckListBox).Hint:=TempHint;
                                                       end Else
                          If tempObj is TTNTCheckBox Then begin (TempObj as TTNTCheckBox).Caption:=TempCap;
                                                                (TempObj as TTNTCheckBox).Hint:=TempHint;
                                                          end Else
                          If tempObj is TTNTRadioButton Then begin
                                                                (TempObj as TTNTRadioButton).Caption:=TempCap;
                                                                (TempObj as TTNTRadioButton).Hint:=TempHint;
                                                          end Else
                          If tempObj is TTNTTabSheet Then begin
                                                             (TempObj as TTNTTabSheet).Caption:=TempCap;
                                                       end Else
                          If tempObj is TTNTSpeedButton Then begin
                                                                (TempObj as TTNTSpeedButton).Caption:=TempCap;
                                                                (TempObj as TTNTSpeedButton).Hint:=TempHint;
                                                          end Else
                          If tempObj is TTNTBitBtn Then begin
                                                           (TempObj as TTNTBitBtn).Caption:=TempCap;
                                                           (TempObj as TTNTBitBtn).Hint:=TempHint;
                                                     end Else
                          If tempObj is TForm Then begin
                                                         (TempObj as TForm).Caption:=TempCap;
                                                   end Else
                          If tempObj is TTNTListBox Then begin
                                                                  (TempObj as TTNTListBox).Items.Text:=TempCap;
                                                                  (TempObj as TTNTListBox).Hint:=TempHint;
                                                            end Else
                          If tempObj is TTNTComboBox Then begin
                                                                   (TempObj as TTNTComboBox).Items.Text:=TempCap;
                                                                   (TempObj as TTNTComboBox).Hint:=TempHint;
                                                            end Else
                          If tempObj is TTNTGroupBox Then begin
                                                             (TempObj as TTNTGroupBox).Caption:=TempCap;
                                                             (TempObj as TTNTGroupBox).Hint:=TempHint;
                                                       end;
                          //If TempHint<>'' Then
                            // If tempObj is TControl Then begin
                             //(TempObj as TControl).Hint:='';
                             //For K:=1 to length(TempHint) Do (TempObj as TControl).Hint:=(TempObj as TControl).Hint+TempHint[k];

                           //                              end;
                                            end;
                       GlobalTextStrings.Items.Delete(0);
                         end;
 TempWStr:=pwidechar(GlobalTextStrings.Items.Strings[0])
                                            end; { while TempStr<>[Dict...}
 GlobalTextStrings.Items.Delete(0); { ������� �� ������ ����� ����� [Dynamic] � �������� '#' �� ������� ������}
 TempCap:=GlobalTextStrings.Items.GetTextW;
 For I:=0 to length(TempCap) Do If TempCap[I]='#' Then tempCap[I]:=chr(13);
 GlobalTextStrings.Items.SetTextW(pwidechar(TempCap));
 { ������ ������ ��� �� themes.txt }
 LoadGlobalTextStrings(OnlyThemes);
                                  end; {if FileExists}
   END;
OnlyThemes: BEGIN { ���� ������ �� �����, ��������������� ����� �������� }
  If Fileexists(CurrentDir+'\dict\'+LanguageDict+'\themes.txt') Then begin
   TempThemesStrings:=TTNTListBox.Create(nil); TempThemesStrings.Parent:=MainScreen;
   LoadUnicodeFile(CurrentDir+'\dict\'+LanguageDict+'\themes.txt',nil,TempThemesStrings,GetLanguageCodepage(LanguageDict)<>1251, noconvert);
   TempWStr:=pwidechar(TempThemesStrings.Items.Strings[0]);
   While TempWStr<>'[DictionaryThemes]' Do begin
   TempThemesStrings.Items.Delete(0); TempWStr:=pwidechar(TempThemesStrings.Items.Strings[0]);
                                            end; { while TempStr<>[Dict...}
   TempThemesStrings.Items.Delete(0);
   Options.ThemesTipListBox.Items.Clear; Options.ThemesTipListBox.HelpKeyword:='';
   TempWStr:=pwidechar(TempThemesStrings.Items.Strings[0]);
   While TempWStr<>'endoffile' Do begin
    If TempWStr[0]=';' then TempThemesStrings.Items.Delete(0)
                      Else begin
                           k:=pos('=',TempWStr); TempCap:='';
                           For k:=k to length(TempWStr)-1 Do tempCap:=TempCap+TempWStr[k];
                           Options.ThemesTipListBox.Items.text:=Options.ThemesTipListBox.Items.text+TempCap;
                           Options.ThemesTipListBox.HelpKeyword:=Options.ThemesTipListBox.HelpKeyword+TempWStr[0];
                           TempThemesStrings.Items.Delete(0);
                           end;
    TempWStr:=pwidechar(TempThemesStrings.Items.Strings[0]);
                                 end; { while TempStr}
    TempThemesStrings.Free;
                                end;
           END;
END;
end;

procedure TMainScreen.AppEvents1Exception(Sender: TObject; E: Exception);
begin
//ShowMessage('SelectShapesLength='+InttOStr(length(SelectShapes))+', PCMoveNumber='+IntToStr(PCMoveNumber)+', '+TempMessage);
end;

{ --------- ���������� ������ ���������� ������ ������� ------------------}
procedure TMainScreen.ExButtonClick(Sender: TObject);
var TempMenuItem:TTNTMenuItem; TempStr:string;
begin
 If ((Sender as TControl).Name='EP_AddButton') Then begin
 // If (ExplCBox.Color=$00D7D7FF) then begin
       If ExplCBox.Color=$00D7D7FF Then ExplCBox.Items.Add(ExplCBox.text);
       ExplCBox.Color:=clWhite;
       Options.Tag:=22; Options.Edit1.Text:=ExplCBox.text;
       Options.ShowModal;
 //                                    end;
                                                exit; end;
 If ((Sender as TControl).Name='EP_DelButton') Then begin
  If (ExplCBox.Color<>$00D7D7FF) then begin
       Options.Tag:=23; Options.Edit2.Text:=ExplCBox.text;
       Options.ShowModal;
                                     end;     exit; end;

 If pos('EP_LangButton',(Sender as TControl).Name)<>0 then begin
                                                             LanguageExpl:=(Sender as TControl).HelpKeyword;
                                                             If Ex_Form=nil Then exit Else
                                                                If not Ex_Form.Visible Then exit
                                                                   Else ExplCBox.Text:=Ex_Form.HelpKeyword;
                                                           end
                                                      Else
                                                           if ExplCBox.Text='' Then exit;

 TempMenuItem:=TTNTMenuItem.Create(MainScreen);
 TempMenuItem.Caption:=ExplCBox.Text;
 TempMenuItem.Name:='DictPanel';
 MainScreen.contextitemClick(TempMenuItem);
 TempMenuItem.Free;
end;

{---------------------------------------------------------------}
{ ����� ������ �������� ������ ������� }
procedure TMainScreen.InGameLabelExplanationPanelClick(Sender: TObject);
var z:word; var I:integer; TempLabel:TTNTLabel; TempSButt, TempSButt2:TTNTSpeedButton; TempBevel:TBevel;
    TempStrings:TStringList; sr:TSearchRec; sLanguage:string;
begin
 If not ShowExplanatoryPanel Then begin
     MainScreen.ClientHeight:=WorkFieldDimentionY*28+32+35;
     //MainScreen.Height:=MainScreen.Height+35;
     MainBackground[3].bitmap.Height:=MainBackground[3].bitmap.Height+35;
     z:=1; While z<MainBackground[3].bitmap.Width Do begin MainBackground[3].bitmap.Canvas.Draw(z,MainBackground[3].Height-34,ExplPanelBackground.Graphic); z:=z+ExplPanelBackground.Graphic.Width end;
     ExplCBox.Left:=7; ExplCBox.Top:=MainScreen.ClientHeight-30;
     ExplCBox.Font.Name:='Verdana';  ExplCBox.Font.Style:=[fsBold];
     ExplCBox.Font.Charset:=DEFAULT_CHARSET; 
     ExplCBox.Width:=(MainScreen.Width div 3)*ord(MainScreen.Width div 3<200)+210*ord(MainScreen.Width div 3>=200);
     ExplCBox.Show;
     With TempSButt do begin
      TempSButt:=TTNTSpeedButton.Create(MainScreen); Parent:=MainScreen;
      Width:=25; Height:=Width; Left:=ExplCBox.BoundsRect.Right+5; Top:=ExplCBox.Top-1; Cursor:=crHandPoint;
      Flat:=true; Transparent:=true; Glyph:=Options.UserDictionaryButtonWordAdd.Glyph;
      Hint:=Options.UserDictionaryButtonWordAdd.Hint; Name:='EP_AddButton'; OnClick:=ExButtonClick;
      show;
      TempSButt:=TTNTSpeedButton.Create(MainScreen); Parent:=MainScreen;
      Width:=25; Height:=Width;
      Left:=(MainScreen.findComponent('EP_AddButton')as TTNTSpeedButton).BoundsRect.Right;
      Top:=ExplCBox.Top-1; Cursor:=crHandPoint;
      Flat:=true; Transparent:=true; Glyph:=Options.UserDictionaryButtonWordUnAdd.Glyph;
      Hint:=Options.UserDictionaryButtonWordExclude.Hint; Name:='EP_DelButton'; OnClick:=ExButtonClick;
      show;
      If LanguageExpl<>'' Then begin // ���� ���� ������� ����������, ������� ������ ����������
        TempSButt:=TTNTSpeedButton.Create(MainScreen); Parent:=MainScreen;
        Width:=100; Height:=22; Font.charset:=OEM_Charset;
        Left:=(MainScreen.findComponent('EP_DelButton')as TTNTSpeedButton).BoundsRect.Right+10;
        Top:=ExplCBox.Top+1; Caption:=GlobalTextStrings.Items.Values['ShowExplanationButtonCaption'];
        Flat:=true; Transparent:=true; OnClick:=ExButtonClick;
        Name:='EP_ExplButton'; Cursor:=crHandPoint; Margin:=9;
        show;
                              end
                        Else
        With TempLabel do begin // ���� ��� �������� ����������, ������� ������
          TempLabel:=TTNTLabel.Create(MainScreen); Parent:=MainScreen; Autosize:=false; Name:='EP_ExplButton';
          Left:=(MainScreen.findComponent('EP_DelButton')as TTNTSpeedButton).BoundsRect.Right+10;
          font.charset:=OEM_CHARSET;
          Top:=ExplCBox.Top-2; Width:=MainScreen.Width-TempLabel.Left-15; Height:=26; WordWrap:=true;
          Caption:=GlobalTextStrings.Items.Values['ShowExplanationNoDictionaties'];
          sLanguage:=getLanguageName(ANSIUpperCase(LanguageDict));
          Caption:=ANSIReplaceText(TempLabel.Caption,'%s',LeftStr(string(sLanguage),pos('(',string(sLanguage))-2+100*ord(pos('(',string(sLanguage))=0)));
          Font.Color:=clMaroon; Font.Style:=[]; Font.Size:=8; Font.Name:='MS San Serif'; Alignment:=taRightJustify;
          Transparent:=true; Cursor:=crArrow; Layout:=tlCenter;
        show;
                           end;
                           end;
     If LanguageExpl<>'' Then
       With TempBevel do begin
        TempBevel:=TBevel.Create(MainScreen); TempBevel.Parent:=MainScreen;
        Left:=(MainScreen.findComponent('EP_ExplButton')as TTNTSpeedButton).Left-2;
        Top:=(MainScreen.findComponent('EP_ExplButton')as TTNTSpeedButton).Top-2;
        Width:=(MainScreen.findComponent('EP_ExplButton')as TTNTSpeedButton).Width+4;
        Height:=(MainScreen.findComponent('EP_ExplButton')as TTNTSpeedButton).Height+4;
        Name:='EP_bevel0'; Enabled:=false; Shape:=bsFrame; SendToBack;
        Show;
                         end;
    { ������� ������ ������ }
    If FindFirst(CurrentDir+'\dict\'+LanguageDict+'\expl\*',faDirectory,sr)=0 Then begin
     I:=0;
     repeat
        if (pos(sr.Name,'..')=0) and (sr.Attr and faDirectory<>0)
           Then begin
                   try
                      With TempSButt do begin
                       TempSButt:=TTNTSpeedButton.Create(MainScreen); Parent:=MainScreen;  groupIndex:=1;
                       sLanguage:=getLanguageName(ANSIUpperCase(sr.Name)); Font.Charset:=OEM_charset;
                       Caption:=LeftStr(string(sLanguage),pos('(',string(sLanguage))-1+100*ord(pos('(',string(sLanguage))=0));
                       Hint:=Caption; ShowHint:=true; Flat:=true; Transparent:=true;
                       Font.Color:=clNavy; Font.Style:=[]; Font.Size:=9; Font.Name:='MS San Serif';
                       Name:='EP_LangButton'+IntToStr(I); Cursor:=crHandPoint; Margin:=7;
                       HelpKeyword:=sr.Name; OnClick:=ExButtonClick;
                                        end;
                   except end;
                   If sr.Name=LanguageExpl Then TempSButt2:=TempSButt;
                  inc(I);
                  end;
      until FindNext(sr)<>0;
                                                                                     end;
     { ����������� ������ ������ }
     If I>0 Then
     For z:=0 to I-1 Do begin
      TempSButt:=(MainScreen.findComponent('EP_LangButton'+IntToStr(z)) as TTNTSpeedButton);
      With TempSButt do begin
          Width:=(MainScreen.Width-(MainScreen.findComponent('EP_ExplButton') as TTNTSpeedButton).BoundsRect.Right-30) div (I);
          If Width>90 Then Width:=90; Height:=22;
          Left:=MainScreen.Width-10-(TempSButt.Width+2)*(z+1); Top:=ExplCBox.Top+1;
          If Length(TempSButt.Caption)*8>TempSButt.Width Then begin
             TempSButt.Caption:=LeftStr(TempSButt.Caption, (TempSButt.Width-14)  div 8)+'...';
             If Length(TempSButt.Caption)<=5 Then TempSButt.Caption:=LeftStr(ANSIUpperCase(TempSButt.HelpKeyword),2);
                                                               end;
          show;
                        end;
       With TempBevel do begin
         TempBevel:=TBevel.Create(MainScreen); TempBevel.Parent:=MainScreen;
         Left:=(MainScreen.findComponent('EP_LangButton'+IntToStr(z))as TTNTSpeedButton).Left-1;
         Top:=(MainScreen.findComponent('EP_LangButton'+IntToStr(z))as TTNTSpeedButton).Top;
         Width:=(MainScreen.findComponent('EP_LangButton'+IntToStr(z))as TTNTSpeedButton).Width+1;
         Height:=(MainScreen.findComponent('EP_LangButton'+IntToStr(z))as TTNTSpeedButton).Height;
         Name:='EP_bevel'+IntToStr(z+1); Enabled:=false; Shape:=bsLeftLine; SendToBack;
         Show;
                       end;
                        end;
     If TempSButt2<>nil Then TempSButt2.Down:=true; // ���������� ������ �������� �����
     ShowExplanatoryPanel:=true; MainScreen.Refresh;
     ExplCBox.Items.Clear;
     SystemTimer.Tag:=0;
     TempLabel:=nil;
                 end
                             Else begin
     ShowExplanatoryPanel:=false;                             
     ExplCBox.Hide; ExplCBox.Items.Clear;
     //MainScreen.Height:=MainScreen.Height-35;
     MainScreen.ClientHeight:=WorkFieldDimentionY*28+32;
     MainScreen.findComponent('EP_AddButton').Free; MainScreen.findComponent('EP_DelButton').Free;
     MainScreen.findComponent('EP_ExplButton').Free;
     For I:=0 to 10 Do begin MainScreen.findComponent('EP_LangButton'+IntToStr(I)).Free;
                             MainScreen.findComponent('EP_bevel'+IntToStr(I)).Free;
                        end;
     MainBackground[3].bitmap.Height:=MainBackground[3].bitmap.Height-35;
     MAinScreen.Update;
                                  end;
end;

procedure TMainScreen.ExplCBoxChange(Sender: TObject);
 var TempStr:wideString; res:integer; //TempRect:TRect;
     TempPos:byte;
begin
TempStr:=ExplCBox.text; TempPos:=ExplCBox.SelStart;
Res:=ExplCBox.Perform(CB_FINDSTRING,-1,integer(PChar(ExplCBox.text)));
If res=CB_ERR
 Then begin ExplCBox.Color:=$00D7D7FF*ord(ExplCBox.text<>'')+clWhite*ord(ExplCBox.text='');
            ExplCBox.DroppedDown:=false end
 Else begin ExplCBox.Color:=clWhite;
            If ExplCBox.Tag=1 Then begin ExplCBox.Perform(CB_SHOWDROPDOWN,Integer(True),0);
                                     end;
            //ExplCBox.Perform(CB_GETDROPPEDCONTROLRECT,0,integer(@TempRect));
            //SetCursorPos(TempRect.Right-60,TempRect.top+32);
            //SetCaptureControl(ExplCBox);
        end;
ExplCBox.text:=TempStr;
ExplCBox.SelStart:=TempPos;
ExplCBox.Tag:=0;
end;

procedure TMainScreen.ExplCBoxCloseUp(Sender: TObject);
var TempStr:TCaption; res:integer;
begin
If ExplCBox.Color=clWhite Then MainScreen.ActiveControl:=nil;
end;

procedure TMainScreen.ExplCBoxExit(Sender: TObject);
begin
If ExplCBox.DroppedDown Then ExplCBox.SetFocus;
end;

procedure TMainScreen.ExplCBoxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
ExplCBox.Tag:=1;
end;

{---------------------------------------------------------------}
{ ������� �������� �� ������ ���������� }
procedure TMainScreen.MenuButton6Click(Sender: TObject);
begin
LoadData(254);
QuickLoad:=true;
N5Click(nil);
end;

procedure TMainScreen.FormShow(Sender: TObject);
var TempPic:TPicture;
begin
end;

{---------------------------------------------------------------}
{ ���� }
procedure TMainScreen.MenuLensClick(Sender: TObject); { TODO : ���� }
var TempCanvas:TCanvas; i:word;
begin
 If Lens_Form<>nil then exit;
 DeskTopDC := GetWindowDC(GetDeskTopWindow);
 TempCanvas:= TCanvas.Create; TempCanvas.Handle := DeskTopDC;
 DeskTopBitmap:=TBitmap.Create; DeskTopBitmap.Width:=Screen.Width; DeskTopBitmap.Height:=Screen.Height;
 DeskTopBitmap.Canvas.CopyRect(Rect(0,0,Screen.Width,Screen.Height),TempCanvas,Rect(0,0,Screen.Width,Screen.Height));
 ReleaseDC(GetDeskTopWindow, DeskTopDC); TempCanvas.Free;
 Lens_Form:=TForm.Create(Application); Lens_Form.FormStyle:=fsStayOnTop;
 Lens_Form.BorderStyle:=bsNone;
 Lens_Form.OnMouseMove:=MMove; Lens_Form.OnPaint:=PaintRefWindow; Lens_Form.OnClose:=FormClose;
 Lens_Form.Constraints.MinHeight:=120; Lens_Form.Constraints.MinWidth:=120;
 Lens_Form.Constraints.MaxHeight:=300; Lens_Form.Constraints.MaxWidth:=300; 
 Lens_Form.Width:=LensSize; Lens_Form.Height:=LensSize;
 Lens_Form.Left:=Mouse.CursorPos.X-LensSize div 2; Lens_Form.Top:=Mouse.CursorPos.Y-LensSize div 2;
 Lens_Form.AlphaBlend:=true; Lens_Form.AlphaBlendValue:=0;
 Lens_Form.Hint:=GlobalTextStrings.Items.Values['LensHint']; Lens_Form.ShowHint:=true;
 Lens_Form.show;
 I:=0;
 While {Lens_Form.AlphaBlendValue+}I*(3+(LensSize div 130))<255 Do begin
     If Lens_Form=nil Then exit;
     Lens_Form.AlphaBlendValue:=I*(3+(LensSize div 130));
     Lens_Form.Repaint; Application.ProcessMessages;
     inc(I);
                   end;
 Lens_Form.AlphaBlendValue:=255;
 Lens_Form.OnMouseDown:=FormMouseDown; Lens_Form.OnMouseWheel:=FormMouseWheel;
 while (CursorStatus>=0) Do CursorStatus:=ShowCursor(False);
 Application.HintPause:=3000; Application.HintHidePause:=5000;
end;

procedure TMainScreen.AppEvents1Message(var Msg: tagMSG;  var Handled: Boolean);
var tempBool:boolean;
begin
if Msg.message = WM_MBUTTONDOWN then
  begin MenuLensClick(MenuLens);
  end;
if Msg.message = WM_KEYDOWN then begin
   If (Ex_Form<>nil) and (Msg.wParam=27) Then begin MainScreen.CloseRefWindow(Ex_Form); exit; end;
   If (Lens_Form=nil) and (Msg.wParam=17) Then begin PopupTimer.Tag:=4; PopupTimer.Interval:=200; PopupTimer.Enabled:=true; end;
   If (Lens_Form<>nil) and ((Msg.wParam=109) or (Msg.wParam=189)) Then FormMouseWheel(Lens_Form,[],-10,point(0,0),tempBool);
   If (Lens_Form<>nil) and ((Msg.wParam=107) or (Msg.wParam=187)) Then FormMouseWheel(Lens_Form,[],10,point(0,0),tempBool);
                                end;
if Msg.message = WM_KEYUP then
  If Lens_Form<>nil Then
      If Msg.wParam=17 Then
        begin PopupTimer.Enabled:=false; FormMouseDown(Lens_Form,mbMiddle,[],0,0);
        end;
end;

procedure TMainScreen.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
 If sender=Lens_form Then begin
   Lens_Form.Left:=Lens_Form.Left-StrToInt(ifthen(WheelDelta>0,'10','-10'));
   Lens_Form.Top:=Lens_Form.Top-StrToInt(ifthen(WheelDelta>0,'10','-10'));
   Lens_Form.Width:=Lens_Form.Width+(StrToInt(ifthen(WheelDelta>0,'10','-10'))*2);
   Lens_Form.Height:=Lens_Form.Height+(StrToInt(ifthen(WheelDelta>0,'10','-10'))*2);
   LensSize:=Lens_Form.Width;
                          end;
end;

procedure TMainScreen.MainMenu1Change(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
ModifyMenu(MainScreen.MainMenu1.Handle, 3, mf_ByPosition {or mf_Popup} or mf_Help or mf_separator or mf_disabled, MainScreen.x.Handle, '');
end;

procedure TMainScreen.AppEvents1ShowHint(var HintStr: String;
  var CanShow: Boolean; var HintInfo: THintInfo);
var I:integer; 
begin
for i := 0 to Application.ComponentCount - 1 do
if Application.Components[i] is THintWindow then
 If ((HintInfo.HintControl is TImage) or (HintInfo.HintControl is TRXGIFAnimator))
   and (LeftStr(HintInfo.HintControl.Name,2)='Pl')
     Then
       with THintWindow(Application.Components[i]).Canvas do
         begin
             Font.charset:=SetCharset(LanguageDict);
         end
     Else THintWindow(Application.Components[i]).Canvas.Font.charset:=DEFAULT_CHARSET;
end;


procedure TMainScreen.SevenZip1Listfile(Sender: TObject;
  Filename: WideString; Fileindex, FileSizeU, FileSizeP, Fileattr,
  Filecrc: Cardinal; Filemethod: WideString; FileTime: Double);
begin
SevenZip1.Files.Clear;
SevenZip1.Files.AddString(IntToStr(fileindex));
end;

procedure TMainScreen.SevenZip1OpenVolume(var arcFileName: WideString;
  Removable: Boolean; out Cancel: Boolean);
begin
beep(10,10);
end;

end.
