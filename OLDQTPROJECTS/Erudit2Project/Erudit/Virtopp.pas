{v 1.6.x}
Unit VirtOpp;

INTERFACE
Uses
SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls, RXGif,
Forms, Dialogs, ExtCtrls, Menus, StdCtrls, Procs, bass,SaveGame, GIFCtrl, StrUtils, Math;


{ �������� ���� ���������� }
Procedure PCMove(Opp:byte; Mode:byte; var FinishGame:boolean);

IMPLEMENTATION
Procedure PlaceWord(Opp:byte; Direction:byte);Forward;

var   MasX,MasY:byte;
      HotSpotSelected:array[1..30] of byte;
      FirstWord:boolean;
      CheckTempWords:boolean;
      Counter:integer;
     { ������ ��� ���������� �������� ��������� ����}
      TempWords:array[1..7] of record
	        Word:ShortString;
	        Coord,WBegin,Wend:byte;
	        Direction:byte;
			       end;

{---------------------------------------------------------------}
{ ����������� ����� }
Procedure MakeWord(Mode:byte);
var
   I,J,Files:byte; DictWord:string[35]; TempWrd:string[16];
   flag:boolean; TempStr, DeletedWord:ShortString;
   ThemeMark:string[20]; FindTheme:boolean;
   DeletedWords:text; TempStrList:TStrings; SCount:word;

 Procedure ScanWords;
   var TempWord:string[23]; var I,J:byte;
   begin                                                                 
  flag:=true; I:=1; TempWord:=LettersAvl;
  While (i<=length(DictWord)) and flag Do
  begin
    flag:=false; J:=1;
    While (j<=Length(TempWord)) and not(flag) Do
    begin
      If DictWord[i]=TempWord[j]
	    Then
	      begin
		Delete(TempWord,j,1);
		flag:=true;
	      end;

      j:=j+1;
    end;
          If Not Flag and (PCIntellect>Low) Then
                 If pos(chr(FirstAlphCode+AlphCount),TempWord)<>0 Then begin
                          Delete(TempWord,pos(chr(FirstAlphCode+AlphCount),TempWord),1);
                          flag:=true;
                                              end;
    i:=i+1;
   end;
   end;

begin
  If FinishGame Then exit;
  ReWrite(PickedWordsFile);
  Case Mode of
  1: { ����� ���������� "� ����" }
  For Files:=0 To AlphCount Do begin
  //If not FileExists('dict\'+LanguageDict+'\diction.'+IntToStr(Files)) Then continue;
  { ��������� ��� ������ ��������������� ����� � ����� ���� �������}
    If (pos(chr(LettersCodes[Files]-1),LettersAvl)=0) Then
      If Files=0 Then If not CustomDict.Use Then continue Else
         Else If (pos(chr(FirstAlphCode+AlphCount),LettersAvl)=0) Then Continue;
  //TempStrList:=TStringList.Create;
  //LoadUnicodeFile('dict\'+LanguageDict+'\diction.'+IntToStr(Files),TempStrList);
  TempStrList:=DictArray[Files];
  { ��������� ��� ����� � ������ ����� ������� }
  If tempStrList<>nil then
    If tempStrList.Count>0 Then
  For SCount:=0 to tempStrList.Count-1 Do begin
      Application.ProcessMessages;
      FindTheme:=False; ThemeMark:='';
      If StopHelp Then begin
            Close(PickedWordsFile); Close(DictionaryFile); Exit; end;
      DictWord:=TempStrList.Strings[SCount];
      If pos('=',DictWord)<>0 Then begin
         ThemeMark:=copy(DictWord,pos('=',DictWord),20);
         DictWord:=copy(DictWord,1,pos('=',DictWord)-1); end;
        { �������� �� �������������� � ���� ����� ���������� }
         If (Theme<>'') and (Files<>0) Then begin
           If Theme=DictSpec[0] Then
              If pos('='+DictSpec[0],ThemeMark)<>0 Then begin FindTheme:=True; end;
           If Theme=DictSpec[6] Then
              If pos('='+DictSpec[6],ThemeMark)<>0 Then begin FindTheme:=True; end;
           If Theme=DictSpec[1] Then
              If (pos('='+DictSpec[1],ThemeMark)<>0) or (pos('='+DictSpec[0],ThemeMark)<>0) or (pos('='+DictSpec[2],ThemeMark)<>0)
                  or (pos('='+DictSpec[3],ThemeMark)<>0) or (pos('='+DictSpec[4],ThemeMark)<>0)  or (pos('='+DictSpec[5],ThemeMark)<>0)
               Then begin FindTheme:=True; end;
           If Not FindTheme Then continue;
                          end Else
         {  ���� ��������� ������, �� �������� ������ ��������� ����� }
         If (pos(DictSpec[0],ThemeMark)=0) and (PCIntellect=Low) and not (Files=0) Then continue;

         FindTheme:=true;
         If ThemeList<>'' Then begin
           For I:=1 to length(ThemeList) Do
            If pos(ThemeList[I], ThemeMark)<>0
             Then begin FindTheme:=false; break end;
           If Not FindTheme Then continue;
                               end;
       ScanWords;
  { ���� ����� �������� - ����� ��� � ���� ��������� ���� (��������� �����) }
  If flag=true Then
                  Write(PickedWordsFile,DictWord);
                                    end;
  {TempStrList.Free;} end;
  { ���������� � �������� ����� }
  2:begin
    Reset(AddedWordsFile);
    While Not EOF(AddedWordsFile) Do begin
    Application.ProcessMessages;
    Read(AddedWordsFile,TempStr);
    For Files:=0 To AlphCount Do begin
   // not FileExists('dict\'+LanguageDict+'\diction.'+IntToStr(Files)) Then continue;
  { ��������� ��� ������ ��������������� ����� � ����� ���� �������}
    If (pos(chr(LettersCodes[Files]-1),LettersAvl)=0) and (chr(LettersCodes[Files]-1)<>TempStr[1]) Then
       begin
       If Files=0 Then If not CustomDict.Use Then continue Else
                   Else If (pos(chr(FirstAlphCode+AlphCount),LettersAvl)=0) Then Continue;
       end;
      //AssignFile(DictionaryFile,'DICT\diction.'+IntToStr(Files));
      //Reset(DictionaryFile);
     //TempStrList:=TStringList.Create;
     //LoadUnicodeFile('dict\'+LanguageDict+'\diction.'+IntToStr(Files),TempStrList);
    TempStrList:=DictArray[Files];
  { ��������� ��� ����� � ������ ����� ������� }
   If tempStrList<>nil then
    If tempStrList.Count>0 Then
   For SCount:=0 to tempStrList.Count-1 Do begin
         Application.ProcessMessages;
         FindTheme:=False; ThemeMark:='';
 {        If WhatIDoNow=Play Then begin
             Close(PickedWordsFile); Close(DictionaryFile); Exit; end;}
         DictWord:=TempStrList.Strings[SCount];
         If pos('=',DictWord)<>0 Then begin
           ThemeMark:=copy(DictWord,pos('=',DictWord),20);
           DictWord:=copy(DictWord,1,pos('=',DictWord)-1);
                                      end;
        { �������� �� �������������� � ���� ����� ���������� }
         If (Theme<>'') and (Files<>0) Then begin
           If Theme=DictSpec[0] Then
              If pos('='+DictSpec[0],ThemeMark)<>0 Then begin FindTheme:=True; end;
           If Theme=DictSpec[6] Then
              If pos('='+DictSpec[6],ThemeMark)<>0 Then begin FindTheme:=True; end;
           If Theme=DictSpec[1] Then
              If (pos('='+DictSpec[1],ThemeMark)<>0) or (pos('='+DictSpec[0],ThemeMark)<>0) or (pos('='+DictSpec[2],ThemeMark)<>0)
                  or (pos('='+DictSpec[3],ThemeMark)<>0) or (pos('='+DictSpec[4],ThemeMark)<>0)  or (pos('='+DictSpec[5],ThemeMark)<>0)
               Then begin FindTheme:=True; end;
           If Not FindTheme Then continue;
                          end Else
         {  ���� ��������� ������, �� �������� ������ ��������� ����� }
            If (pos(chr(142),ThemeMark)=0) and (PCIntellect=Low) and not (Files=0) Then continue;

         FindTheme:=true;
         If ThemeList<>'' Then begin
           For I:=1 to length(ThemeList) Do
            If pos(ThemeList[I], ThemeMark)<>0
             Then begin FindTheme:=false; break end;
           If Not FindTheme Then continue;
                               end;

         TempWrd:=DictWord;
         If (DictWord<>TempStr) and
            ((Length(DictWord) > Length(TempStr)) or AllowSelect) Then begin
            If pos(TempStr,DictWord)<>0 Then begin
            Delete(DictWord,pos(TempStr,DictWord),Length(TempStr));
            ScanWords;
           { ���� ����� �������� - ����� ��� � ���� ��������� ���� (��������� �����) }
            If flag=true Then Write(PickedWordsFile,TempWrd);
                                             end;

                                           end;
                                       end;
      {TempStrList.Free;}
                      end;
                                     end;
    Close(AddedWordsFile);
    end;
 end;
  Close(PickedWordsFile);
end;
{---------------------------------------------------------------}
{ ���������� ����� }
Procedure AddWord(Temp1,Temp2,Direction:byte);
var TempStr,piece:string[16]; Index:byte; FoundWord:boolean; I:byte;
    NoStartHotSpot:boolean;
begin
 If FinishGame Then exit;
 For I:=1 To 15 Do HotSpotSelected[I]:=0; Index:=1; LettersAvl:='';
 ReWrite(AddedWordsFile); FoundWord:=False;
 repeat
 If FinishGame Then begin Close(AddedWordsFile); Exit; end;
 While (WorkField[Temp1,Temp2].Main=' ') and ((Temp1<=WorkFieldDimentionX-1) and (Temp2<=WorkFieldDimentionY-1)) Do
 case Direction of
   Horiz: inc(Temp1);
  Vertic: inc(Temp2);
    end;
 TempStr:=''; NoStartHotSpot:=True;
 case Direction of
   Horiz: if (WorkField[Temp1+1,Temp2].Main<>' ') and (Temp1<WorkFieldDimentionX+1) Then begin
             if WorkField[Temp1,Temp2].HotSpot<>' ' Then begin
                 HotSpotSelected[Index]:=Temp1; inc(Index);
                 TempStr:=TempStr+WorkField[Temp1,Temp2].Main;
                  NoStartHotSpot:=False;                  end;
                     inc(Temp1);
                     While WorkField[Temp1,Temp2].Main<>' ' Do begin
                       TempStr:=TempStr+WorkField[Temp1,Temp2].Main;
                       If AllowSelect Then begin HotSpotSelected[Index]:=Temp1; inc(Index); end;
                       inc(Temp1);
                                                                 end;
             If NoStartHotSpot Then
                if WorkField[Temp1-1,Temp2].HotSpot<>' ' Then begin
                     HotSpotSelected[Index]:=Temp1-1; inc(Index); end;

                     Write(AddedWordsFile,TempStr); FoundWord:=True;
      {               If AllowSelect Then begin
                          For I:=1 to length(TempStr)-1 do begin
                                   piece:=copy(TempStr,1,I); Write(AddedWordsFile,piece);
                                                           end;
                          For I:=1 to length(TempStr)-1 do begin
                                   piece:=copy(TempStr,length(TempStr)-I+1,I); Write(AddedWordsFile,piece);
                                                           end;

                                                     end }
               If AllowSelect Then begin
                          For I:=1 to 3 do
                               If I<length(TempStr) Then begin
                                   piece:=copy(TempStr,1,I); Write(AddedWordsFile,piece);
                                                           end;
                          For I:=1 to 3 do
                               If length(TempStr)>I Then begin
                                   piece:=copy(TempStr,length(TempStr)-I+1,I); Write(AddedWordsFile,piece);
                                                           end;
                                    end
                                                     end
                                                Else inc(Temp1);
  Vertic: if (WorkField[Temp1,Temp2+1].Main<>' ') and (Temp2<WorkFieldDimentionY+1) Then begin
             if WorkField[Temp1,Temp2].HotSpot<>' ' Then begin
                   HotSpotSelected[Index]:=Temp2; inc(Index);
                   TempStr:=TempStr+WorkField[Temp1,Temp2].Main;
                   NoStartHotSpot:=False;                end;
                     inc(Temp2);
                     While WorkField[Temp1,Temp2].Main<>' ' Do begin
                       TempStr:=TempStr+WorkField[Temp1,Temp2].Main;
                       If AllowSelect Then begin HotSpotSelected[Index]:=Temp2; inc(Index); end;
                       inc(Temp2);
                                                                                        end;
                    { ���������� ����� ᫮�� }
             If NoStartHotSpot Then
                if WorkField[Temp1,Temp2-1].HotSpot<>' ' Then begin
                     HotSpotSelected[Index]:=Temp2-1; inc(Index); end;

                     Write(AddedWordsFile,TempStr);
                     FoundWord:=True;
    {                 If AllowSelect Then begin
                          For I:=1 to length(TempStr)-1 do begin
                                   piece:=copy(TempStr,1,I); Write(AddedWordsFile,piece);
                                                           end;
                          For I:=1 to length(TempStr)-1 do begin
                                   piece:=copy(TempStr,length(TempStr)-I+1,I); Write(AddedWordsFile,piece);
                                                           end;

                                                     end       }
               If AllowSelect Then begin
                          For I:=1 to 2 do
                               If I<length(TempStr)-1 Then begin
                                   piece:=copy(TempStr,1,I); Write(AddedWordsFile,piece);
                                                           end;
                          For I:=1 to 2 do
                               If length(TempStr)<>I Then begin
                                   piece:=copy(TempStr,length(TempStr)-I+1,I); Write(AddedWordsFile,piece);
                                                           end;
                                    end
                                                     end
                                                Else inc(Temp2);
 end;
 Until (Temp1>=WorkFieldDimentionX) or (Temp2>=WorkFieldDimentionY);
 Close(AddedWordsFile);
 If FoundWord Then begin
     For I:=1 To 7 Do If Slot7[MoveIs,I].Image<>-1 Then LettersAvl:=LettersAvl+Slot7[MoveIs,I].Letter;
                         MakeWord(2);
                         PlaceWord(MoveIs,Direction);
                         LettersAvl:=''; end;
end;
{---------------------------------------------------------------}
{ ��������� ������� ��������� �� ��� ���� ����� }
Procedure TestClearedWord(R:ClearedWordsType);
var I,J:word; Star:boolean; Im, Im1:TImage; flag:boolean;
begin
         flag:=false;
         { ����������� ����� }
         For I:=1 TO Length(R.Word) Do begin
           Star:=true;
            { �������������� ����������� }
           if R.Direction=Horiz Then begin
            For J:=1 To 7 Do
            If (WorkField[R.WBegin-1+I,MasY].Main=' ') and (Slot7[MoveIs,J].Letter=R.Word[I]) Then begin
             flag:=true;
             ActiveLetter:=Letters[Slot7[MoveIs,J].Image];
             ActiveLEtter.Hide;
             ActiveLetter.Left:=(R.Wbegin-1+I-1)*28+19; ActiveLetter.Top:=(MasY-1)*28+19;
             ActiveLetter.Parent:=Application.MainForm;
             ActiveLEtter.Show; Star:=False;
             WorkField[R.WBegin-1+I,MasY].Image:=StrToInt(copy(ActiveLetter.Name,5,3))-1;
             Slot7[MoveIs,J].Letter:=' '; ActiveLetter:=nil; break;
                                                  end;
           { �������� �� ������ }
           If Star and (WorkField[R.WBegin-1+I,MasY].Main=' ') Then For J:=1 To 7 Do
             If Slot7[MoveIs,J].Letter=chr(FirstAlphCode+AlphCount) Then begin
             flag:=true;
             ActiveLetter:=Letters[Slot7[MoveIs,J].Image];
             ActiveLEtter.Hide;
             ActiveLetter.Left:=(R.Wbegin-1+I-1)*28+19; ActiveLetter.Top:=(MasY-1)*28+19;
             ActiveLetter.Picture:=Images[1,GetLetterNum(R.Word[I])+1];
             ActiveLetter.Parent:=Application.MainForm;
             ActiveLetter.show;
             WorkField[R.WBegin-1+I,MasY].Image:=StrToInt(copy(ActiveLetter.Name,5,3))-1;
             Slot7[MoveIs,J].Letter:=' '; ActiveLetter:=nil; break;
                                                        end;
                                     end;
            { ������������ ����������� }
           if R.Direction=Vertic Then begin
            For J:=1 To 7 Do
            If (WorkField[MasX,R.WBegin-1+I].Main=' ') and (Slot7[MoveIs,J].Letter=R.Word[I]) Then begin
             flag:=true;
             ActiveLetter:=Letters[Slot7[MoveIs,J].Image];
             ActiveLEtter.Hide;
             ActiveLetter.Left:=(MasX-1)*28+19; ActiveLetter.Top:=(R.Wbegin-1+I-1)*28+19;
             ActiveLetter.Parent:=Application.MainForm;
             ActiveLetter.show; Star:=False;
             WorkField[MasX,R.WBegin-1+I].Image:=StrToInt(copy(ActiveLetter.Name,5,3))-1;
             Slot7[MoveIs,J].Letter:=' '; ActiveLetter:=nil; break;
                                                                                                    end;
          { �������� �� ������ }
           If Star and (WorkField[MasX,R.WBegin-1+I].Main=' ') Then For J:=1 To 7 Do
             If Slot7[MoveIs,J].Letter=chr(FirstAlphCode+AlphCount) Then begin
             flag:=true;
             ActiveLetter:=Letters[Slot7[MoveIs,J].Image];
             ActiveLEtter.Hide;
             ActiveLetter.Left:=(MasX-1)*28+19; ActiveLetter.Top:=(R.Wbegin-1+I-1)*28+19;
             ActiveLetter.Picture:=Images[1,GetLetterNum(R.Word[I])+1];
             ActiveLetter.Parent:=Application.MainForm;
             ActiveLetter.Show;
             WorkField[MasX,R.WBegin-1+I].Image:=StrToInt(copy(ActiveLetter.Name,5,3))-1;
             Slot7[MoveIs,J].Letter:=' '; ActiveLetter:=nil; break;
                                                     end;

                                      end;
                                       end;
      { ������� ��� ������������ ������ �����}
      if AllowSelect and flag then begin
        setlength(SelectShapes, length(SelectShapes)+1);
        SelectShapes[length(SelectShapes)-1]:=TShape.Create(nil);
        Sh:=SelectShapes[length(SelectShapes)-1];
        sh.Name:='selectshape'+intToStr(length(SelectShapes));
        Sh.Shape:=stRoundRect; sh.Brush.Style:=bsClear; Sh.ParentShowHint:=false;
        sh.Pen.style:=psSolid; sh.Pen.Width:=3;
        case R.Direction of
        Horiz: begin sh.Pen.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGameHorizSelection'],IntToStr(clRed)));
                       Im:=Letters[WorkField[R.WBegin,R.AltCoord].Image]; Im1:=Letters[WorkField[R.WBegin+Length(R.Word)-1,R.AltCoord].Image]; end;
        Vertic:  begin sh.Pen.Color:=StrToInt(ifthen(CustomColors,Colors.Values['InGameVertSelection'],IntToStr($000080FF)));
                       Im:=Letters[WorkField[R.AltCoord,R.WBegin].Image]; Im1:=Letters[WorkField[R.AltCoord,R.WBegin+Length(R.Word)-1].Image]; end;
                     end;
        Sh.SetBounds(Im.Left-1,Im.Top-1,Im1.Left-Im.Left+26, Im1.Top-Im.Top+26);
        sh.Parent:=Application.MainForm;
        sh.show;
                      end;
 Application.ProcessMessages;
 if flag then begin
   If DemoMode Then TimeDelay(300)
                  Else If Helped Then
                         If HintPushButton Then begin
                            ProceedHelp:=false;
                            While not ProceedHelp Do Application.ProcessMessages;
                                                end
                                           Else
                            TimeDelay(length(R.Word)*HintDelay)
                                  Else TimeDelay(HintDelay);
 { ��������������� ���� }
 For I:=1 TO Length(R.Word) Do begin
  If R.Direction=Horiz Then
    If WorkField[R.Wbegin+I-1,MasY].Main=' ' Then
         For J:=1 To 7 Do
         If (Slot7[MoveIs,J].Image=WorkField[R.Wbegin+I-1,MasY].Image)
             and (Slot7[MoveIs,J].Image<>-1) Then begin
             ActiveLetter:=Letters[WorkField[R.Wbegin+I-1,MasY].Image];
             ActiveLEtter.Hide;
             ActiveLetter.Left:=Slot7[MoveIs,J].SlotX;  ActiveLetter.Top:=Slot7[MoveIs,J].SlotY;
             If ord(ActiveLetter.Hint[1])=FirstAlphCode+AlphCount Then ActiveLetter.Picture:=Images[1,AlphCount+1];
             ActiveLetter.Parent:=PlayerForms[MoveIs-1];
             ActiveLetter.show;
             WorkField[R.Wbegin+I-1,MasY].Image:=-1;
             Slot7[MoveIs,J].Letter:=ActiveLetter.Hint[1]; ActiveLetter:=nil;
                                                                            end;
  If R.Direction=Vertic Then
    If WorkField[MasX,R.Wbegin+I-1].Main=' ' Then
         For j:=1 To 7 Do
         If (Slot7[MoveIs,J].Image=WorkField[MasX,R.Wbegin+I-1].Image)
             and (Slot7[MoveIs,J].Image<>-1) Then begin
             ActiveLetter:=Letters[WorkField[MasX,R.Wbegin+I-1].Image];
             ActiveLEtter.Hide;             
             ActiveLetter.Left:=Slot7[MoveIs,J].SlotX;  ActiveLetter.Top:=Slot7[MoveIs,J].SlotY;
             If ord(ActiveLetter.Hint[1])=FirstAlphCode+AlphCount Then ActiveLetter.Picture:=Images[1,AlphCount+1];
             ActiveLetter.Parent:=PlayerForms[MoveIs-1];
             ActiveLetter.show;
             WorkField[MasX,R.Wbegin+I-1].Image:=-1;
             Slot7[MoveIs,J].Letter:=ActiveLetter.Hint[1]; ActiveLetter:=nil;
                                                                           end;
                              end;
                 end;
  If allowSelect and flag Then begin
     For I:=1 to Length(SelectShapes) do If SelectShapes[I-1]<>nil Then SelectShapes[I-1].hide;
     //setLength(SelectShapes,0);
     For I:=0 to WorkFieldDimentionX+1 do For J:=0 to WorkFieldDimentionY+1 do SelectField[I,J]:=0;
                      end;
If StopHelp Then Exit;
end;
{---------------------------------------------------------------}
{ ����������� �������� �����}
Function LetterValue(Letter:char; X,Y:byte;var Multiple:byte):byte;
begin
  case WorkField[X,Y].Color of
   white,black: LetterValue:=LettersValue[GetLetterNum(Letter)];
   green: LetterValue:=(LettersValue[GetLetterNum(Letter)])*2;
   yellow: LetterValue:=(LettersValue[GetLetterNum(Letter)])*3;
   blue: begin
         LetterValue:=LettersValue[GetLetterNum(Letter)]; inc(Multiple,2);
         end;
   red: begin
         LetterValue:=LettersValue[GetLetterNum(Letter)]; inc(Multiple,3);
         end;
  end;

end;
{---------------------------------------------------------------}
{ ������������ ����� �� ������� ����}
Procedure PlaceWord(Opp:byte; Direction:byte);
var PickedWord, PrevPickedWord:ShortString; Index:byte; PosHS:0..31; I,J,R:byte;
    Granted:boolean; Value,Multiple:byte;
    {Double,Triple,DDouble,DTriple,DoubleTriple:boolean;} Flag:boolean;
    FindWord:boolean; DeletedWords:text; DeletedWord:ShortString;
    //MasX,MasY:byte;
begin
  If FinishGame Then exit;
  Assign(DeletedWords,'dict\'+LanguageDict+'\diction.xx');
  { ������� ���������� � ���� � ����� }
  For J:=1 To 7 Do Slot7[Opp,J].Mark:=False;
  Reset(PickedWordsFile);
  PrevPickedWord:='';
  { ����� �� ����� ��������� ����� }
  While Not EOF(PickedWordsFile) Do begin
      Read(PickedWordsFile,PickedWord);
      If length(PickedWord)<=LimitWordLength Then continue;
      If finishgame then begin closefile(PickedWordsFile); exit;end;
      Application.ProcessMessages;
      If StopHelp Then begin CloseFile(PickedWordsFile);exit; end;
  { �������� �� ����������� �����}
{   If CustomDict.Use Then begin
     If FileExists('dict\'+LanguageDict+'\diction.xx') Then Reset(DeletedWords) Else ReWrite(DeletedWords);
     flag:=true;
     while not EOF(DeletedWords) do begin
          Readln(DeletedWords, DeletedWord);
          If PickedWord=DeletedWord Then begin flag:=false; break end;
                                       end;

     CloseFile(DeletedWords);
     if not flag Then continue;
                          end;}
   begin
   { ������ �� ������� ����� }
   Index:=1;
   While HotSpotSelected[Index]<>0 Do begin
    Value:=0; Multiple:=0; //Double:=False; Triple:=False; DDouble:=False; DTriple:=False; DoubleTriple:=False;
    case Direction of
    Horiz: begin
           Granted:=True;
           ClearedWord.AltCoord:=MasY;
           PosHS:=Pos(WorkField[HotSpotSelected[Index],MasY].HotSpot,PickedWord);
           { ��������� ��������� ����� � ������� �������� ���� }
           If HotSpotSelected[Index]<PosHS Then
              Granted:=False;
           If HotSpotSelected[Index]-PosHS+Length(PickedWord) > WorkFieldDimentionX Then Granted:=False;
           { ���� ��������� ����� �������� ���-���� }
           If ((PosHS<>0) or (WorkField[HotSpotSelected[Index],MasY].color=6)) and Granted
              Then begin
                  If PosHS=0 Then PosHS:=1;
                   { ��������� ����������� ��������� }
                   For I:=1 To Length(PickedWord) Do begin
                    If FinishGame Then begin Close(PickedWordsFile); Exit; end;
                    flag:=false;
                    { ���� ������ ������ �� ��������������� ������, �� �����}
                    If WorkField[HotSpotSelected[Index]-PosHS+I,MasY].Available=False Then
                       begin
                       If (WorkField[HotSpotSelected[Index]-PosHS+I,MasY].Main<>PickedWord[I])
                          {and not AllowSelect} Then
                          begin
                               Granted:=False; break;
                          end Else begin
                              If ((I=Length(PickedWord)) and (WorkField[HotSpotSelected[Index]-PosHS+I+1,MasY].Main<>' ') and not Allowselect)
                              or ((I=1) and (WorkField[HotSpotSelected[Index]-PosHS+I-1,MasY].Main<>' ') and not Allowselect)
                                Then begin Granted:=False; break; end;
                                   { ����� ������� �������� �����}
                                   Value:=Value+LetterValue(PickedWord[I],HotSpotSelected[Index]-PosHS+I,MasY,Multiple);
                                   flag:=True; end;
                       end Else begin
                                   { �������������� �������� ��� ������ ������ }
                                   If Helped Then begin
                                   If (WorkField[HotSpotSelected[Index]-PosHS+I,MasY-1].Main<>' ')
                                   or (WorkField[HotSpotSelected[Index]-PosHS+I,MasY+1].Main<>' ')
                                   or ((I=Length(PickedWord)) and (WorkField[HotSpotSelected[Index]-PosHS+I+1,MasY].Main<>' '))
                                   or ((I=1) and (WorkField[HotSpotSelected[Index]-PosHS+I-1,MasY].Main<>' '))
                                   Then
                                      begin Granted:=False; break; end;
                                   For R:=1 To 50 Do
                                     If (PickedWord=Words[R,1].Word) or
                                        (PickedWord=Words[R,2].Word) or
                                        (PickedWord=Words[R,3].Word) or
                                        (PickedWord=Words[R,4].Word) Then
                                          begin Granted:=False; break; end;
                                                  end;
                           For J:=1 To 7 Do
                             If (Slot7[Opp,J].Letter=PickedWord[I]) and Not Slot7[Opp,J].Mark Then begin
                               { ������� �������� ����� }
                               Value:=Value+LetterValue(PickedWord[I],HotSpotSelected[Index]-PosHS+I,MasY,Multiple);
                               flag:=true; Slot7[Opp,J].Mark:=True;
                               break;
                                                                     end;
                            { �������� �� ��������� � ����������� }
                            If not flag Then
                              For J:=1 To 7 Do
                               If (Slot7[Opp,J].Letter=chr(FirstAlphCode+AlphCount)) and Not Slot7[Opp,J].Mark then
                                   begin
                                   { ������� �������� ����� }
                                   Value:=Value+LetterValue(PickedWord[I],HotSpotSelected[Index]-PosHS+I,MasY,Multiple);
                                   flag:=true; Slot7[Opp,J].Mark:=True;
                                   end;
                            If not flag Then Granted:=False;
                                end;
                                                     end;
                       If Multiple>0 Then inc(Value,Value*(Multiple-1));
                   { ������� ���������� � ����� }
                   For J:=1 To 7 Do Slot7[Opp,J].Mark:=False;
                   end Else Granted:=False;
           end;
   Vertic: begin
           Granted:=True;
           ClearedWord.AltCoord:=MasX;
           PosHS:=Pos(WorkField[MasX,HotSpotSelected[Index]].HotSpot,PickedWord);
           If HotSpotSelected[Index]<PosHS Then
              Granted:=False;
           If HotSpotSelected[Index]-PosHS+Length(PickedWord)>WorkFieldDimentionY Then Granted:=False;
           If ((PosHS<>0) or (WorkField[MasX,HotSpotSelected[Index]].color=6)) and Granted
              Then begin
                  If PosHS=0 Then PosHS:=1;
                   For I:=1 To Length(PickedWord) Do begin
                    If FinishGame Then begin Close(PickedWordsFile); Exit; end;
                    flag:=false;

                    If WorkField[MasX,HotSpotSelected[Index]-PosHS+I].Available=False Then
                       begin
                       If WorkField[MasX,HotSpotSelected[Index]-PosHS+I].Main<>PickedWord[I] Then
                          begin
                               Granted:=False; break;
                          end Else begin
                              If ((I=Length(PickedWord)) and (WorkField[MasX,HotSpotSelected[Index]-PosHS+I+1].Main<>' ') and not AllowSelect)
                              or ((I=1) and (WorkField[MasX, HotSpotSelected[Index]-PosHS+I-1].Main<>' ') and not AllowSelect)
                                Then begin Granted:=False; break; end;
                                   Value:=Value+LetterValue(PickedWord[I],MasX,HotSpotSelected[Index]-PosHS+I,Multiple);
                                   flag:=true; end;
                       end Else begin
                                   { �������������� �������� ��� ������ ������ }
                                   If Helped Then begin
                                   If (WorkField[MasX-1,HotSpotSelected[Index]-PosHS+I].Main<>' ')
                                   or (WorkField[MasX+1,HotSpotSelected[Index]-PosHS+I].Main<>' ')
                                   or ((I=Length(PickedWord)) and (WorkField[MasX,HotSpotSelected[Index]-PosHS+I+1].Main<>' '))
                                   or ((I=1) and (WorkField[MasX,HotSpotSelected[Index]-PosHS+I-1].Main<>' '))
                                   Then
                                      begin Granted:=False; break; end;
                                   For R:=1 To 50 Do
                                     If (PickedWord=Words[R,1].Word) or
                                        (PickedWord=Words[R,2].Word) or
                                        (PickedWord=Words[R,3].Word) or
                                        (PickedWord=Words[R,4].Word) Then
                                          begin Granted:=False; break; end;
                                                  end;
                           For J:=1 To 7 Do
                             If (Slot7[Opp,J].Letter=PickedWord[I]) and Not Slot7[Opp,J].Mark Then
                              begin
                               Value:=Value+LetterValue(PickedWord[I],MasX,HotSpotSelected[Index]-PosHS+I,Multiple);
                               flag:=true; Slot7[Opp,J].Mark:=True;
                               break;
                                                                     end;
                            If not flag Then
                              For J:=1 To 7 Do
                               If (Slot7[Opp,J].Letter=chr(FirstAlphCode+AlphCount)) and Not Slot7[Opp,J].Mark Then
                                   begin
                                   Value:=Value+LetterValue(PickedWord[I],MasX,HotSpotSelected[Index]-PosHS+I,Multiple);
                                   flag:=true; Slot7[Opp,J].Mark:=True;
                                   end;
                           If Not flag Then Granted:=False;
                                end;
                                                     end;
                       If Multiple>0 Then inc(Value,Value*(Multiple-1));
                   For J:=1 To 7 Do Slot7[Opp,J].Mark:=False;
                   end Else Granted:=False;
           end;
    end;
    { ���� ����� ����������, �� ���������� ��� � ���� ���������� ������ }
    If Granted Then begin ClearedWord.Word:=PickedWord;
                          ClearedWord.WBegin:=HotSpotSelected[Index]-PosHS+1;
                          ClearedWord.Direction:=Direction;
                          ClearedWord.Value:=Value;
                          If PickedWord<>PrevPickedWord Then begin
                             Write(ClearedWordsFile,ClearedWord);
                             { ����� ������� ���������� ����������� ���� }
                             If (ShowClearedWords and not MoveLimit) Or Helped
                                    Then TestClearedWord(ClearedWord);
                             PrevPickedWord:=PickedWord;
                                                             end;
                      end;
    Inc(Index);
                               end; { While HotSpot..}
                            end;
                                    end; { While Not EOF }
  Close(PickedWordsFile);
end;
{---------------------------------------------------------------}
{ ���������� ���� �� �������� }
Procedure SortWords;
var flag:boolean; TempRec1,TempRec2:^ClearedWordsType; TempList:TList;
    Comp:integer; tempFile:text;

   procedure SortList;
     var I,J:word;
     begin
         If TempList.Count>1 Then
         For I:=0 to TempList.Count-2 Do begin
           For J:=I+1 to TempList.Count-1 Do begin
             TempRec1:=TempList.Items[I];
             TempRec2:=TempList.Items[J];
             If TempRec2^.Value>TempRec1^.Value then TempList.Exchange(I,J);
                                           end;
                                         end;
     end;

begin
If FinishGame Then exit;
 flag:=True;
 Reset(ClearedWordsFile);
 { ���� ������ �����������, �� ����� }
 If Filesize(ClearedWordsFile)=0 Then begin close(ClearedWordsFile); Exit; end;
{ While Flag Do begin
   Flag:=false;
   For Comp:=0 To Filesize(ClearedWordsFile)-2 Do begin
    If FinishGame Then begin closefile(ClearedWordsFile); exit; end;
    Application.ProcessMessages;
    If StopHelp Then begin Close(ClearedWordsFile); Exit; end;
    Seek(ClearedWordsFile,Comp); Read(ClearedWordsFile,TempRec1);
    Seek(ClearedWordsFile,Comp+1); Read(ClearedWordsFile,TempRec2);
    If TempRec1.Value < TempRec2.Value Then begin
                                            Seek(ClearedWordsFile,Comp);
                                            Write(ClearedWordsFile,TempRec2);
                                            Seek(ClearedWordsFile,Comp+1);
                                            Write(ClearedWordsFile,TempRec1);
                                            flag:=True;
                                            end
                                     end;
               end;}
//   SetLength(ClearedWords, FileSize(ClearedWordsFile));
//   For Comp:= 0 To FileSize(ClearedWordsFile)-1 Do
//   Read(ClearedWordsFile,ClearedWords[Comp]);
  Seek(ClearedWordsFile,0);
  TempList:=TList.Create;
  For Comp:=0 To Filesize(ClearedWordsFile)-1 Do begin
   new(TempRec1); Read(ClearedWordsFile,TempRec1^); TempList.Add(TempRec1);
                                                 end;
  CloseFile(ClearedWordsFile);
 SortList;
{ ReWrite(ClearedWordsFile);
  For Comp:=0 To TempList.Count-1 Do begin
   TempRec1:=TempList.Items[Comp]; Write(ClearedWordsFile,TempRec1^);
                                     end;}
   SetLength(ClearedWords, TempList.Count);
   For Comp:= 0 To TempList.Count-1 Do begin
    TempRec1:=TempList.Items[Comp]; ClearedWords[Comp]:=TempRec1^;
                                       end;
  For Comp:=0 to TempList.Count-1 Do dispose(TempList.Items[Comp]);
end;
{---------------------------------------------------------------}
{ �������� ����� �� ������������}
Function CheckWordLast(Opp:byte; CWord:ClearedWordsType; TempComp:integer; var FinishGame:boolean; LastWord:boolean; Recurce:boolean):boolean;
const Horiz=1; Vert=2;
var FirstWord:boolean; { ���� ������� ����� } TempStrings:TStringList;
    MasX,MasY:byte; WBegin,WEnd,D:byte; FirstLetter:char;
    DictWord:string[35]; FindInDict:boolean; FindWord,FullSet:boolean;
    I,J,K,L:word; Message,Message1:String; MessX,MessY:word;
    StarFlag:boolean; ImX:byte; Im:TImage; Flag3:boolean;
    { ������ ��� ���������� �������� ��������� ����}
    NewWords:array[1..7] of record
	        Word:ShortString;
	        Coord,WBegin,Wend:byte;
	        Direction:byte;
                flag:boolean;
			       end;
    WordPoints:word; DeletedWords:text; DeletedWord:ShortString;
    noShapes:boolean; SelNum:byte; noHotSpots:boolean;
    TempStrList:TStrings;
begin
try
  If FinishGame and not GameLoading Then exit;
  CheckWordLast:=False;
  NewWord:=''; WBegin:=1; WEnd:=1; FindWord:=False;
  For I:=1 To 7 Do begin NewWords[I].Word:=''; NewWords[I].flag:=false; end;
  For I:=1 To 3 Do begin Stars[I,1]:=0; Stars[I,2]:=0; end;
  AssignFile(DeletedWords,'dict\'+LanguageDict+'\diction.xx');

  setlength(SelectedWords,0);
  { ���������� ���������� ����� }
  noShapes:=true;
  If AllowSelect Then begin
  If Length(SelectShapes)>0 Then
    for I:=0 To length(SelectShapes)-1 do
      If SelectShapes[I].Visible Then begin
                                        NoHotSpots:=true;
                                        SelectShapes[I].Hint:='';
                                        setlength(SelectedWords,length(SelectedWords)+1);
                                        k:=length(SelectedWords)-1;
                                        SelectedWords[k].Direction:=SelectShapes[I].Tag;
                                        SelectedWords[k].Passed:=false;
                                        SelectedWords[k].Linked:=true;
                                        SelectedWords[k].Tested:=0;
                                        case SelectShapes[I].Tag of
                                          1: begin SelectedWords[k].WBegin:=(SelectShapes[I].BoundsRect.Left+19) div 28;
                                                   SelectedWords[k].WEnd:=(SelectShapes[I].BoundsRect.Right+19) div 28-1;
                                                   SelectedWords[k].Coord:=(SelectShapes[I].BoundsRect.Top+19) div 28;
                                                   For J:=SelectedWords[k].WBegin to SelectedWords[k].WEnd do begin
                                                      If WorkField[J,SelectedWords[k].Coord].HotSpot<>' ' Then
                                                         SelectedWords[k].Word:=SelectedWords[k].Word+WorkField[J,SelectedWords[k].Coord].HotSpot
                                                                                                          Else
                                                         SelectedWords[k].Word:=SelectedWords[k].Word+WorkField[J,SelectedWords[k].Coord].main;
                                                      If WorkField[J,SelectedWords[k].Coord].main=' ' Then NoHotSpots:=false;
                                                                                                              end
                                              end;
                                          2: begin SelectedWords[k].WBegin:=(SelectShapes[I].BoundsRect.Top+19) div 28;
                                                   SelectedWords[k].WEnd:=(SelectShapes[I].BoundsRect.Bottom+19) div 28-1;
                                                   SelectedWords[k].Coord:=(SelectShapes[I].BoundsRect.Left+19) div 28;
                                                   For J:=SelectedWords[k].WBegin to SelectedWords[k].WEnd do begin
                                                      If WorkField[SelectedWords[k].Coord,J].HotSpot<>' ' Then
                                                         SelectedWords[k].Word:=SelectedWords[k].Word+WorkField[SelectedWords[k].Coord,J].HotSpot
                                                                                                          Else
                                                         SelectedWords[k].Word:=SelectedWords[k].Word+WorkField[SelectedWords[k].Coord,J].main;
                                                      If WorkField[SelectedWords[k].Coord,J].main=' ' Then NoHotSpots:=false;
                                                                                                          end;
                                              end;
                                        end;
      If NoHotSpots Then begin setlength(SelectedWords,length(SelectedWords)-1);
                           end Else NoShapes:=false;
                                      end;
                  end;
  If not LastWord Then
  BEGIN
  { ����������� ������ �� �����}
{  If (Words[1,1].Word='') and (Words[1,2].Word='') and (Words[1,3].Word='') and (Words[1,4].Word='') Then
     FirstWord:=True Else FirstWord:=False;}
//  { ������������ �������� ���� �� ���������������� ����� �� ����������� }
  MasY:=1; While MasY <=WorkFieldDimentionY Do begin
    MasX:=1; While MasX<=WorkFieldDimentionX Do begin
    Application.ProcessMessages;
    { ������� ����� � ���� ���-������, ������� ��� �� ������� ���� }
    If ((WorkField[MasX,MasY].HotSpot<>' ') and (WorkField[MasX,MasY].main=' ')) or not noShapes
      Then
      begin
       { ���������� ����� ����� }
        try
	NewWord:=LocateNewWord(MasX,MasY,Horiz,WBegin,WEnd,Flag3,NoShapes,SelNum);
        except end;

        If not noShapes and (NewWord<>'') Then
            begin MasX:=SelectedWords[SelNum].WBegin; MasY:=SelectedWords[SelNum].Coord;
              end;

       { ���� ��� ���� �� ����� ,� �����, �� ���������� }
	If NewWord='' Then begin inc(MasX);continue; end;

       { ��������� �� ����������� �� ����� ����� }
        If not GameLoading Then If Length(NewWord)<=LimitWordLength Then Exit;

       { ��������� ����� �� �������������� �� ���������� ���� ����� ( ������� ��� 2,3... �����) }
        If not GameLoading Then If Not CheckMatching(WBegin,WEnd,MasY,Horiz) Then Exit;

       { ��������� ����� �� ������������� }
        If not GameLoading Then  If RepeatedWord(NewWord,WBegin,WEnd,MasY,D) Then Exit;

       { ��������� ����� �� ������������� � ���� ��� }
       If not GameLoading Then
         For I:=1 To 7 Do begin
          If not AllowWordRepeat then
            If NewWord=NewWords[I].Word Then
                         begin
                If (NewWords[I].Direction=Vertic)
                and (NewWords[I].WBegin<=MasY) and (NewWords[I].WEnd>=MasY)
                and (NewWords[I].Coord>=WBegin) and (NewWords[I].Coord<=WEnd)
                Then
                     NewWords[I].Word:='';
                break;
              end;
          If NewWord=TempWords[I].Word Then Exit;
                          end;

       { ��������� �� ������� ����� � �������}
       FindInDict:=False;
       If NewWord<>CWord.Word Then begin
         FirstLetter:=NewWord[1];
         If DictArray[GetLetterNum(FirstLetter)+1]<>nil Then
         If (DictArray[GetLetterNum(FirstLetter)+1].IndexOfName(NewWord)<>-1)
            or (DictArray[GetLetterNum(FirstLetter)+1].IndexOf(NewWord)<>-1)  Then begin FindInDict:=True;end;
                                   end Else FindInDict:=true;
       If GameLoading Then FindInDict:=true;

         If Not FindInDict Then
          begin
            If Recurce Then exit;
            For I:=TempComp+1 to length(ClearedWords)-1 Do begin
              If (pos(NewWord, ClearedWords[I].Word)<>0) and (ClearedWords[I].AltCoord=MasY)
                 and (ClearedWords[I].Direction=1) Then
          For J:=1 To Length(ClearedWords[I].Word) Do begin
            If WorkField[ClearedWords[I].WBegin+J-1,ClearedWords[I].AltCoord].Main=' '
            Then WorkField[ClearedWords[I].WBegin+J-1,ClearedWords[I].AltCoord].HotSpot:=ClearedWords[I].Word[J];
            If AllowSelect Then SelectField[ClearedWords[I].WBegin+J-1,ClearedWords[I].AltCoord]:=3;
                                                       end;
                    If  CheckWordLast(Opp,ClearedWords[I],TempComp,FinishGame,false,true) Then
                        begin FindInDict:=true; NewWord:=''; end
                        Else Exit
                                                           end;
          end;
          If Not FindInDict Then Exit;

        {��������� �� ���������� � ������� ����������}
       If CustomDict.Use and not GameLoading Then begin
          FindInDict:=true;
          TempStrings:=DictArray[length(DictArray)-1];
          If TempStrings<>nil Then
           If TempStrings.Count>0 Then
              If (TempStrings.IndexOfName(NewWord)<>-1)
              or (TempStrings.IndexOf(NewWord)<>-1) Then FindInDict:=false;
          If not FindInDict then exit;
                             end;

         FindWord:=True; FirstWord:=False;

      { ���� ��� �� �� ����� ������ - ������� ��� �� ��������� ������ }
      If NewWord<>CWord.Word Then
      For I:=1 To 7 Do
          If NewWords[I].Word='' Then begin
                 NewWords[I].Word:=NewWord; NewWords[I].Coord:=MasY;
                 NewWords[I].WBegin:=WBegin; NewWords[I].Wend:=WEnd;
                 NewWords[I].Direction:=Horiz; NewWords[I].flag:=false;
                 break;
                                      end;

      { ������� ��������� ����� �� ���������� ������, ���� ��� ������������� �������}
      If NewWord=CWord.Word Then
         For I:=1 To 7 Do
           If ((pos(TempWords[I].Word, Cword.Word)<>0) and (TempWords[I].Coord=CWord.AltCoord)
              and (TempWords[I].Direction=CWord.Direction))
           or ((TempWords[I].Word=Cword.Word)  and (TempWords[I].Coord<>CWord.AltCoord)
              and (TempWords[I].Direction<>CWord.Direction) and not AllowWordRepeat)
              then TempWords[I].Word:='';

         For I:=1 To 7 Do
           If ((pos(TempWords[I].Word, NewWord)<>0) and (TempWords[I].Coord=MasY)
              and (TempWords[I].Direction=Horiz))
           or ((TempWords[I].Word=NewWord)  and (TempWords[I].Coord<>MasY)
              and (TempWords[I].Direction<>Horiz))
              then if not AllowWordRepeat Then TempWords[I].Word:='';

      { ���� ��� �� �� ������ - ������� ��� �� ��������� ������ }
      If NewWord=CWord.Word Then begin
      For I:=1 To 7 Do
         If (NewWords[I].Word=CWord.Word) Then
           If (NewWords[I].WBegin=CWord.WBegin) and (NewWords[I].Direction=CWord.Direction)
           and (NewWords[I].Coord=CWord.AltCoord) Then break;
      If I=8 Then     
      For I:=1 To 7 Do
         If NewWords[I].Word='' Then begin
              NewWords[I].Word:=CWord.Word;
	      NewWords[I].Coord:=CWord.AltCoord;
              NewWords[I].WBegin:=CWord.WBegin;
              NewWords[I].WEnd:=CWord.WBegin+length(CWord.Word)-1;
	      NewWords[I].Direction:=CWord.Direction;
              NewWords[I].flag:=true;
              break;
                                     end;
                                   end;
      If not noShapes Then begin
      SelectedWords[SelNum].Passed:=true;
                           end;
      MasX:=WEnd+1;
      end Else inc(MasX); end; inc(MasY) end;

  NewWord:='';
  { ��������� ������� ���� �� ����� ����� �� ��������� }
  MasX:=1; While MasX<=WorkFieldDimentionX Do begin
    MasY:=1; While MasY<=WorkFieldDimentionY Do begin
    Application.ProcessMessages;
    { ������� ����� � ���� ���-������, ������� ��� �� ������� ���� }
    If ((WorkField[MasX,MasY].HotSpot<>' ') and (WorkField[MasX,MasY].main=' ')) or not NoShapes
      Then
      begin
       { ���������� ����� ����� }
        try
        NewWord:=LocateNewWord(MasX,MasY,Vertic,WBegin,WEnd,Flag3,noShapes,SelNum);
        except end;

        If not noShapes and (NewWord<>'') Then
            begin MasY:=SelectedWords[SelNum].WBegin; MasX:=SelectedWords[SelNum].Coord;
              end;

       { ���� ��� ���� � �� ����� ,� �����, �� ���������� }
        If NewWord='' Then begin inc(MasY); continue; end;

       { ��������� �� ����������� �� ����� ����� }
        If not GameLoading Then If Length(NewWord)<=LimitWordLength Then Exit;

       { ��������� ����� �� �������������� �� ���������� ���� ����� ( ������� ��� 2,3... �����) }
        If not GameLoading Then If Not CheckMatching(WBegin,WEnd,MasX,Vertic) Then Exit;

       { ��������� ����� �� ������������� }
        If not GameLoading Then  If RepeatedWord(NewWord,WBegin,WEnd,MasX,D) Then Exit;


       { ��������� ����� �� ������������� � ���� ��� }
       If not GameLoading Then
       For I:=1 To 7 Do begin
       If not AllowWordRepeat then
           If NewWord=NewWords[I].Word Then
              begin
                If (NewWords[I].Direction=Horiz)
                and (NewWords[I].WBegin<=MasX) and (NewWords[I].WEnd>=MasX)
                and (NewWords[I].Coord>=WBegin) and (NewWords[I].Coord<=WEnd)
                Then
                     NewWords[I].Word:='';
                exit;
              end;
          If NewWord=TempWords[I].Word Then Exit;
                        end;

       { ��������� �� ������� ����� � �������}
       FindInDict:=False;
       If NewWord<>CWord.Word Then begin
         FirstLetter:=NewWord[1];
         If DictArray[GetLetterNum(FirstLetter)+1]<>nil Then
         If (DictArray[GetLetterNum(FirstLetter)+1].IndexOfName(NewWord)<>-1)
         or (DictArray[GetLetterNum(FirstLetter)+1].IndexOf(NewWord)<>-1) Then begin FindInDict:=True; end;
                                   end Else FindInDict:=true;
       If GameLoading Then FindInDict:=true;

         If Not FindInDict Then
         begin
            If Recurce Then exit;
            For I:=TempComp+1 to length(ClearedWords)-1 Do begin
              If (pos(NewWord, ClearedWords[I].Word)<>0) and (ClearedWords[I].AltCoord=MasX)
                 and (ClearedWords[I].Direction=2) Then
          For J:=1 To Length(ClearedWords[I].Word) Do begin
            If WorkField[ClearedWords[I].AltCoord,ClearedWords[I].WBegin+J-1].Main=' '
            Then WorkField[ClearedWords[I].AltCoord,ClearedWords[I].WBegin+J-1].HotSpot:=ClearedWords[I].Word[J];
            If AllowSelect Then SelectField[ClearedWords[I].AltCoord,ClearedWords[I].WBegin+J-1]:=3;
                                                       end;
                    If  CheckWordLast(Opp,ClearedWords[I],TempComp,FinishGame,false,true) Then
                        begin FindInDict:=true; NewWord:=''; end
                        Else Exit
                                                          end;
         end;
         If Not FindInDict Then Exit;

        {��������� �� ���������� � ������� ����������}
       If CustomDict.Use and not GameLoading Then begin
          FindInDict:=true;
          TempStrings:=DictArray[length(DictArray)-1];
          If TempStrings<>nil Then
           If TempStrings.Count>0 Then
              If (TempStrings.IndexOfName(NewWord)<>-1)
              or (TempStrings.IndexOf(NewWord)<>-1) Then FindInDict:=false;
          If not FindInDict then exit;
                             end;

      FindWord:=True;

      { ���� ��� �� �� ����� ������ - ������� ��� �� ��������� ������ }
      If NewWord<>CWord.Word Then
      For I:=1 To 7 Do
          If NewWords[I].Word='' Then begin
                 NewWords[I].Word:=NewWord; NewWords[I].Coord:=MasX;
                 NewWords[I].WBegin:=WBegin; NewWords[I].Wend:=WEnd;
                 NewWords[I].Direction:=Vert; NewWords[I].flag:=false;
                 break;
                                      end;

      { ������� ��������� ����� �� ���������� ������, ���� ��� ������������� �������}
      If NewWord=CWord.Word Then
         For I:=1 To 7 Do
           If ((pos(TempWords[I].Word, Cword.Word)<>0) and (TempWords[I].Coord=CWord.AltCoord)
              and (TempWords[I].Direction=CWord.Direction))
           or ((TempWords[I].Word=Cword.Word)  and (TempWords[I].Coord<>CWord.AltCoord)
              and (TempWords[I].Direction<>CWord.Direction) and not AllowWordRepeat)
              then TempWords[I].Word:='';

         For I:=1 To 7 Do
           If ((pos(TempWords[I].Word, NewWord)<>0) and (TempWords[I].Coord=MasX)
              and (TempWords[I].Direction=Vert))
           or ((TempWords[I].Word=NewWord)  and (TempWords[I].Coord<>MasX)
              and (TempWords[I].Direction<>Vert))
              then if  not AllowWordRepeat Then TempWords[I].Word:='';

      { ���� ��� �� �� ������ - ������� ��� �� ��������� ������ }
      If NewWord=CWord.Word Then
      For I:=1 To 7 Do If NewWords[I].Word='' Then begin
                          NewWords[I].Word:=CWord.Word;
			  NewWords[I].Coord:=CWord.AltCoord;
                          NewWords[I].WBegin:=CWord.WBegin;
                          NewWords[I].WEnd:=CWord.WBegin+length(CWord.Word)-1;
			  NewWords[I].Direction:=CWord.Direction;
                          NewWords[I].flag:=true;
                          break;
                                                   end;
      If not noShapes Then begin
      SelectedWords[SelNum].Passed:=true;
                           end;
      MasY:=WEnd+1;
      end Else inc(MasY); end;inc(MasX) end;

      { ���� ����� ����� �� �������, �� �������, ����� ���������� �����}
      If Not FindWord Then begin
         {If Counter<FileSize(ClearedWordsFile)-1 Then} exit
                           end;

      {���������� ���������� �����}
      For I:=1 to 7 do begin
        If (NewWords[i].Word<>'') and not NewWords[i].flag Then
           For j:=1 to 7 do
             If TempWords[j].Word='' Then begin
                TempWords[j].Word:=NewWords[i].Word;
                TempWords[j].Coord:=NewWords[i].Coord;
                TempWords[j].WBegin:=NewWords[i].WBegin;
                TempWords[j].Wend:=NewWords[i].Wend;
                TempWords[j].Direction:=NewWords[i].Direction;
                break;
                                     end;
                       end;
   END;
      {      ��������������� ��������� �����}
      If LastWord Then
           For i:=1 to 7 do begin
                NewWords[i].Word:=TempWords[i].Word;
                NewWords[i].Coord:=TempWords[i].Coord;
                NewWords[i].WBegin:=TempWords[i].WBegin;
                NewWords[i].Wend:=TempWords[i].Wend;
                NewWords[i].Direction:=TempWords[i].Direction;
                if NewWords[i].Word<>'' Then NewWords[i].flag:=true;
                             end;

      { �� ������ ����������� ����� �� ������� ���� }
      _ElaspedTimer.Enabled:=false;
      For I:=1 To 7 Do begin
      If (NewWords[I].Word='') or not NewWords[I].flag Then continue;
        For J:=NewWords[I].WBegin To NewWords[I].WEnd Do begin
          StarFlag:=True;
          { ������� ���� �� ����� �� ����}
          For K:=1 To 7 Do begin
          Application.ProcessMessages;
            Case NewWords[I].Direction of
             Horiz:If (WorkField[J,NewWords[I].Coord].hotspot=Slot7[Opp,K].Letter)
                   and (WorkField[J,NewWords[I].Coord].main=' ') and (Slot7[Opp,K].Letter<>' ')
                   and ((GameLoading and Slot7[Opp,K].Mark) or not GameLoading)
                   Then begin
                       Slot7[Opp,K].Letter:=' '; StarFlag:=False;
                      { Im:=Letters.Items[Slot7[Opp,K].Image];}
                       TransferLetter(Opp,PlayerForms[Opp-1],Application.MainForm,Slot7[Opp,K].SlotX,Slot7[Opp,K].SlotY,28*(J-1)+19, 28*(NewWords[I].Coord-1)+19);
                       WorkField[J,NewWords[I].Coord].Image:=Slot7[Opp,K].Image;
                       Slot7[Opp,K].Image:=-1;
                        Break;
                                                                      end;
            Vertic:If (WorkField[NewWords[I].Coord,J].hotspot=Slot7[Opp,K].Letter)
                   and (WorkField[NewWords[I].Coord,J].main=' ') and (Slot7[Opp,K].Letter<>' ')
                   and ((GameLoading and Slot7[Opp,K].Mark) or not GameLoading)
                   Then begin
                       Slot7[Opp,K].Letter:=' '; StarFlag:=False;
                      { Im:=Letters.Items[Slot7[Opp,K].Image];  }
                       TransferLetter(Opp,PlayerForms[Opp-1],Application.MainForm,Slot7[Opp,K].SlotX,Slot7[Opp,K].SlotY,28*(NewWords[I].Coord-1)+19,28*(J-1)+19);
                       WorkField[NewWords[I].Coord,J].Image:=Slot7[Opp,K].Image;
                       Slot7[Opp,K].Image:=-1;
                       Break;
                                                                      end;
                             end {for K}
                                                        end; {for J}

        { ������������� ��������� }
        If StarFlag Then
           For K:=1 To 7 Do If (Slot7[Opp,K].Letter=chr(FirstAlphCode+AlphCount)) and (Slot7[Opp,K].Image>-1) Then begin
           Application.ProcessMessages;
            Case NewWords[I].Direction of
             Horiz:If WorkField[J,NewWords[I].Coord].main=' ' Then
                   begin
                           Im:=Letters[Slot7[Opp,K].Image];
                           TransferLetter(Opp,PlayerForms[Opp-1],Application.MainForm,Slot7[Opp,K].SlotX,Slot7[Opp,K].SlotY,28*(J-1)+19,28*(NewWords[I].Coord-1)+19);
                           Im.Hint:=WorkField[J,NewWords[I].Coord].HotSpot;
                           Im.Picture:=Images[3,GetLetterNum(WorkField[J,NewWords[I].Coord].HotSpot)+1];
                           WorkField[J,NewWords[I].Coord].Image:=Slot7[Opp,K].Image;
                           Slot7[Opp,K].Letter:=' '; Slot7[Opp,K].Image:=-1;
                           Break;

                  end;
            Vertic: If WorkField[NewWords[I].Coord,J].main=' ' Then
                    begin
                         Im:=Letters[Slot7[Opp,K].Image];
                         TransferLetter(Opp,PlayerForms[Opp-1],Application.MainForm,Slot7[Opp,K].SlotX,Slot7[Opp,K].SlotY,28*(NewWords[I].Coord-1)+19,28*(J-1)+19);
                         Im.Hint:=WorkField[NewWords[I].Coord,J].HotSpot;
                         Im.Picture:=Images[3,GetLetterNum(WorkField[NewWords[I].Coord,J].HotSpot)+1];
                         WorkField[NewWords[I].Coord,J].Image:=Slot7[Opp,K].Image;
                         Slot7[Opp,K].Letter:=' '; Slot7[Opp,K].Image:=-1;
                         Break;
                    end;
            end;
                                                                end;
                                                         end;
        { �������� ����� �� ���� ���-������ �� ������� ����}
        CopyToMainField(NewWords[I].Coord,NewWords[I].WBegin,NewWords[I].WEnd,NewWords[I].Direction);
        WordPoints:=0;
        { ��������� �������� ���� }
        If not GameLoading Then begin
           WordPoints:=CountPoints(Opp,NewWords[I].Coord,NewWords[I].WBegin,NewWords[I].WEnd,NewWords[I].Direction);
                                end
                           Else begin
           WordPoints:=ClearedWord.Value;
           inc(Players[MoveIs].Points,WordPoints);
           If not KeepBonuses Then // ��� �������� ������ ������� �������� ������, ���� ����
              For j:=ClearedWord.WBegin to ClearedWord.WBegin+length(ClearedWord.Word)-1 Do
                case ClearedWord.Direction of
                   1: WorkField[j,ClearedWord.AltCoord].color:=White; 2: WorkField[ClearedWord.AltCoord,j].color:=White; end;
                                end;
        { ������������ ���������� ����}
        RegisterWord(Opp,NewWords[I].Word,NewWords[I].WBegin,NewWords[I].WEnd,NewWords[I].Coord,NewWords[I].Direction,WordPoints);
        If not GameLoading Then begin
           If pos('WORDS:',MovesLog.Strings[MovesLog.Count-1])=0 Then begin
                     If TimeLimit Then MovesLog.Strings[MovesLog.Count-1]:=MovesLog.Strings[MovesLog.Count-1]+'ETIME:'+IntToStr(StartMin)+'/'+IntToStr(StartSec)+',';
                     MovesLog.Strings[MovesLog.Count-1]:=MovesLog.Strings[MovesLog.Count-1]+'WORDS:';
                                                                      end;
           MovesLog.Strings[MovesLog.Count-1]:=MovesLog.Strings[MovesLog.Count-1]+NewWords[I].Word+'('+IntToStr(WordPoints)+')'+IntToStr(NewWords[I].WBegin*10000+NewWords[I].Wend*100+NewWords[I].Coord)+ifthen(NewWords[I].direction=1,'H','V')+',';
                                end;
        { �������� ������� ����������� ����� }
        Players[Opp].Changes:=0;
        If not GameLoading Then inc(Undo.LastWordsCount);
                       end; {For I}
       { �������� ������������� ���� ���� ���� }
        If LastWord Then
        begin
        FullSet:=True;
        For I:=1 to 7 Do
          If Slot7[Opp,I].Letter<>' ' Then begin FullSet:=False; break; end;
        { ���������� ������ �� 7 ���� }
        If FullSet and not GameLoading Then begin
                           If PlaySounds Then BASS_SamplePlay(bonus2Sound);
                           ShowMainMessage(0,0,GlobalTextStrings.Items.Values['InGameMessageAllLettersUsedBonus'],$004080FF,'',clRed);
                           TimeDelay(2000);
                           IncScore(Opp,15); FullSet:=False;
                           MovesLog.Strings[MovesLog.Count-1]:=MovesLog.Strings[MovesLog.Count-1]+'FULLSETBONUS'+',';
                           TimeDelay(700);
                        end;
        end;
      { ����������� ���-����� ��� ����������� ����� }
      SetHotSpots;
      { ���� �������� �������� �����}
      CheckWordLast:=True;
      { �������� �� ����������� � ���� }
      CheckLimits(FinishGame);
except
//Application.MessageBox('Error','',0)
end;
end;
{---------------------------------------------------------------}
{ ��������� ����� �� ������������ �� ������� ���� }
Function SelectPCWord(Opp:byte; var Comp:integer;var FinishGame:boolean):boolean;
var TempArr:array of array of char;
    I,J:byte; TempComp:integer;
begin
  If FinishGame and Not GameLoading Then exit;
  { �� ��������� ���� ������� "����"}
  SelectPCWord:=False;
  { ��������� ���� ���������� ���� }
//  Reset(ClearedWordsFile); Seek(ClearedWordsFile,0);
//  Seek(ClearedWordsFile,0);
  { ���� ���� ���� - ����� �� ������� � "����"}
//  If Filesize(ClearedWordsFile)=0 Then begin close(ClearedWordsFile); Exit; end;
if length(ClearedWords)=0 Then exit;

                           If random(100)<33 Then
                              If PlaySounds Then BASS_SamplePlay(isWord1Sound)
                                             Else Else
                           If random(100)<66 Then
                              If PlaySounds Then BASS_SamplePlay(isWord2Sound)
                                             Else Else
                           If random(100)<99 Then
                              If PlaySounds Then BASS_SamplePlay(isWord3Sound);
                           TimeDelay(300);

  For I:=1 to 7 do begin
   TempWords[I].Word:=''; TempWords[I].WBegin:=0; TempWords[I].WEnd:=0;
   TempWords[I].Coord:=0; TempWords[I].Direction:=0; end;
//   SetLength(ClearedWords, FileSize(ClearedWordsFile));
//  For TempComp:= 0 To FileSize(ClearedWordsFile)-1 Do
//   Read(ClearedWordsFile,ClearedWords[TempComp]);
//   CloseFile(ClearedWordsFile);

  setlength(SelectShapes, 0);
  For TempComp:= 0 To length(ClearedWords)-1 Do begin
   { ���������� ������� ��������� ���� ���-������ }
  setlength(TempArr,WorkFieldDimentionX+1,WorkFieldDimentionY+1);
    For I:=1 To WorkFieldDimentionX Do
      For J:= 1 To WorkFieldDimentionY Do
        TempArr[I,J]:=WorkField[I,J].HotSpot;
 { ������ ����� �� ����� ���������� ����}
 { ���� ��������� ������, �� ����� ��� ������ }
 If (PCIntellect=Low) and not GameLoading Then ClearedWord:=ClearedWords[random(length(ClearedWords))]
                                          Else ClearedWord:=ClearedWords[TempComp];
  { ����������� ����� �� ������� ����}
  For I:=1 To Length(ClearedWord.Word) Do begin
    If FinishGame and Not GameLoading Then Exit;
    case ClearedWord.Direction of
     Horiz: begin
            If WorkField[ClearedWord.WBegin+I-1,ClearedWord.AltCoord].Main=' '
            Then WorkField[ClearedWord.WBegin+I-1,ClearedWord.AltCoord].HotSpot:=ClearedWord.Word[I];
            If AllowSelect Then
               {If SelectField[ClearedWord.WBegin+I-1,ClearedWord.AltCoord]=0
               Then SelectField[ClearedWord.WBegin+I-1,ClearedWord.AltCoord]:=1
               Else} SelectField[ClearedWord.WBegin+I-1,ClearedWord.AltCoord]:=1;
            end;
    Vertic: begin
            If WorkField[ClearedWord.AltCoord,ClearedWord.WBegin+I-1].Main=' '
            Then WorkField[ClearedWord.AltCoord,ClearedWord.WBegin+I-1].HotSpot:=ClearedWord.Word[I];
            If AllowSelect Then
              { if SelectField[ClearedWord.AltCoord,ClearedWord.WBegin+I-1]=0
               then SelectField[ClearedWord.AltCoord,ClearedWord.WBegin+I-1]:=2
               else} SelectField[ClearedWord.AltCoord,ClearedWord.WBegin+I-1]:=2;
            end;
    end;
                                          end;
                             { �������� �����, ���� ����}
                            if AllowSelect then begin
                                setlength(SelectShapes, length(SelectShapes)+1);
                                SelectShapes[length(SelectShapes)-1]:=TShape.Create(nil);
                                Sh:=SelectShapes[length(SelectShapes)-1];
                                sh.Name:='selectshape'+intToStr(length(SelectShapes));
                                Sh.Shape:=stRoundRect; sh.Brush.Style:=bsClear; Sh.ParentShowHint:=false;
                                sh.Pen.style:=psClear; sh.Pen.Width:=3;
                                case ClearedWord.Direction of
                                1: begin Sh.Left:=(ClearedWord.WBegin-1)*28+19-1; Sh.Top:=(ClearedWord.AltCoord-1)*28+19;
                                   Sh.Width:=(ClearedWord.WBegin+length(ClearedWord.Word)-1)*28+26-Sh.Left; Sh.Height:=(ClearedWord.Wbegin+length(ClearedWord.Word)-1)*28+19+26-Sh.Top; Sh.Height:=26; Sh.tag:=1; end;
                                2: begin Sh.Left:=(ClearedWord.AltCoord-1)*28-1+19; Sh.Top:=(ClearedWord.WBegin-1)*28+19;
                                   Sh.Width:=26; Sh.Height:=(ClearedWord.Wbegin+length(ClearedWord.Word)-1)*28+26-Sh.Top; sh.tag:=2; end;
                                end;
                                //Sh.Parent:=Application.MainForm;
                                Sh.Show; //Sh.BringToFront; Sh.Repaint;
                                                  end;
   Counter:=TempComp;
   { ��������� ����� �� ������������ }
   For I:=1 to 7 do Slot7Buffer[I]:=Slot7[Opp,I];
   If CheckWordLast(Opp,ClearedWord,TempComp,FinishGame,false,false) Then begin
                              SelectPCWord:=True; Comp:=TempComp;
                              If Sh<>nil Then Sh.Hint:='x';
                              { ���� ��������� �� ������� ��� ����� ������, �� ����������� ������ ���� �����}
                              If ((PCIntellect<High) or FirstWord) and not GameLoading Then break;
                                                          end
                       Else begin
                       { ���� ����� �� ��������, �� �������������� ����� }
                          For I:=1 To WorkFieldDimentionX Do For J:= 1 To WorkFieldDimentionY Do
                              WorkField[I,J].HotSpot:=TempArr[I,J];
                              If Sh<>nil Then begin Sh.visible:=false; Sh.Hint:='x'; end;
                            end;
   If AllowSelect Then begin
      For I:=0 to WorkFieldDimentionX+1 do For J:=0 to WorkFieldDimentionY+1 do SelectField[I,J]:=0;
      sh:=nil;
                       end;
                                                       end;
CheckWordLast(Opp,ClearedWord,TempComp,FinishGame,true,false);
If Not GameLoading Then
   For I:=1 to 7 do if Slot7[MoveIs,I].Letter=' ' then Undo.Slot7Mark[I]:=true
                                                  Else Undo.Slot7Mark[I]:=false;
end;
{---------------------------------------------------------------}
{ ������ ���� ���������� ��� ����������� �������� �� ������� }
Procedure ChangePCLetters(Opp:byte; var FinishGame:Boolean);
var I,J:byte; NoChangeLetters:string; TempAnim:TRXGIFAnimator;
    TempStrings:TStringList;
begin
  If FinishGame Then exit;
  If PlaySounds Then BASS_SamplePlay(NoWordsSound);
  TimeDelay(700);
  { �����, ������� �� �� ������}
  NoChangeLetters:='';
  If FileExists('dict\'+LanguageDict+'\nochange.txt') Then begin
     TempStrings:=TStringList.Create;
     LoadUnicodeFile('dict\'+LanguageDict+'\nochange.txt',TempStrings,nil,GetLanguageCodepage(LanguageDict)<>1251,convert);
     NoChangeLetters:=TempStrings.strings[0]+chr(FirstAlphCode+AlphCount);
     TempStrings.Free;
                                                           end;
  { ��������� ����� ����� 5 ����� }
  If (Players[MoveIs].Changes>4) Then
     If not DemoMode Then
           If not Question(0,0,GlobalTextStrings.Items.Values['2MuchChangesQuest'])
                          Then FinishGame:=True Else
                     Else FinishGame:=True;
  If FinishGame Then Exit;
  { ������� ���� ��� ������ }
  If (PCIntellect=Low) or (Players[MoveIs].Changes>1)
                      Then For I:=1 To 7 Do If Slot7[Opp,I].Letter<>' ' Then Slot7[Opp,I].Mark:=True Else
                      Else For I:=1 To 7 Do If Slot7[Opp,I].Letter<>' ' Then
                                              If Pos(Slot7[Opp,I].Letter,NoChangeLetters)=0
                                                 Then Slot7[Opp,I].Mark:=True;
 If PlaySounds Then BASS_SamplePlay(change2Sound);
   { ������ ������ ���������� ���}
   TempAnim:=TRXGIFAnimator.Create(nil);
   LoadSkinnedGIF(Tempanim.Image, 'ANIMATIO\explosio');
   For I:=1 To TempAnim.Image.Count Do begin
                   For J:=1 To 7 Do
                     If Slot7[Opp,J].Mark Then begin
                         ActiveLetter:=Letters[Slot7[Opp,J].Image];
                         ActiveLetter.Transparent:=true;
                         ActiveLetter.Picture.Assign(TempAnim.Image.Frames[I-1].Bitmap);
                         ActiveLetter.Update;
                                               end;
                   TimeDelay(35);

                     end;
     TempAnim.Free;
                 { ������� ����� �� ����� � ������������ ������ ���� ������ }
                 For I:=1 To 7 Do
                   If Slot7[Opp,I].Mark and (Slot7[Opp,I].Image<>-1) Then begin
				    Slot7[Opp,I].Mark:=False;
                                    ActiveLetter:=Letters[Slot7[Opp,I].Image];
                                    ActiveLetter.Transparent:=false;
                                    ChoiceEmptyXY(MasX,MasY);
                                    If LettersLeft>7 Then
                                        WorkField[MasX,MasY].ForChoice:=Slot7[Opp,I].Letter
                                                     Else begin
                                        WorkField[MasX,MasY].ForChoice:=chr(LettersCodes[random(AlphCount+1)]);
                                        ActiveLetter.Hint:=WorkField[MasX,MasY].ForChoice;
                                                          end;
                                    inc(LettersLeft);
                                    ActiveLetter.Parent:=_ChoicePanel;
                                    ActiveLetter.Left:=28*(MasX-1); ActiveLetter.Top:=28*(MasY-1);
                                    ActiveLetter.Tag:=-1; ActiveLetter.Picture:=Images[2,AlphCount+1];
                                    //ActiveLetter.Visible:=False;
                                    ActiveLetter.Update;
                                    Slot7[Opp,I].Letter:=' '; Slot7[Opp,I].Image:=-1;
                                    ActiveLetter:=nil;
                                                           end;
{ ���������� �������� �����, ����������� ������ }
  inc(Players[Opp].Changes);
end;
{---------------------------------------------------------------}
{ �������� ���� ����������}
Procedure PCMove(Opp:byte; Mode:byte; var FinishGame:boolean);
var I,J,K:word; FoundHotSpot:boolean; NoHotSpots:boolean;
    Index:1..30; Comp:Integer; Im:TImage;
begin
IF NOT GameLoading THEN BEGIN
If (CheckSlots(Opp)=7) and (LettersLeft=0) Then finishgame:=true;
If FinishGame Then exit;
if not DemoMode Then Screen.Cursor:=crHourGlass;
Application.MainForm.Hint:='';
While PlayerForms[Opp-1].height=75 Do Application.ProcessMessages;
if Mode<>Help Then isPCMove:=true;
//If PCMOveNumber=1 Then SaveData(255);
{ ��� ������ ����� ���� ����� � ������ ���� }
StartLetterSelectionCompleted:=true;
  {������� ���� "new" � ����� ������ ���� }
If PCMoveNumber=1 Then
  For I:=0 To (WorkFieldDimentionX*WorkFieldDimentionY)-1 Do begin
      Im:=Letters[i]; If Im.Tag=-2 Then Im.HelpKeyword:='';
                    end;

 { ������� ������ �� ���� }
 For MasX:=1 To WorkFieldDimentionX Do For MasY:=1 To WorkFieldDimentionY Do begin
       If (WorkField[MasX,MasY].HotSpot<>' ') and (WorkField[MasX,MasY].Image=-1) Then
                                       WorkField[MasX,MasY].hotspot:=' ';
                                           end;
                                           
 { ���������� ������ ��� ������ ���� }
If (PCMoveNumber=1) and not GameLoading Then begin
 if LastLetters<>nil Then Freeandnil(LastLetters);
 LastLetters:=TList.Create;
 For i:=1 to WorkFieldDimentionX do
    for j:=1 to WorkFieldDimentionY do begin
           Undo.Avail[i,j]:=WorkField[i,j].available;
           Undo.Colors[i,j]:=WorkField[i,j].Color;
           Undo.Hotspots[i,j]:=WorkField[i,j].hotspot;
                      end;
 Undo.Points:=Players[Opp].Points;
 Undo.LastWordsCount:=0;
                                              end;

 { �������� ��������� � ������ ���� ������ }
 If Mode<>Help Then
 { ��������� ������ �� ��� � ������ ������-����������� �� ���}
               Else begin
   _MoveTimer.Enabled:=False;
                    end;

 NoHotSpots:=True;
 PCChangedLetters:=false;

 { ���������� ������������ ���������  � �������� ��� ���-����� ��� �������� �������. ���� }
 For MasX:=1 To WorkFieldDimentionX Do For MasY:=1 To WorkFieldDimentionY Do begin
       If (WorkField[MasX,MasY].HotSpot<>' ') and (WorkField[MasX,MasY].Image=-1) Then
                                       WorkField[MasX,MasY].hotspot:=' ';
                                           end;

 { �������� ������� ������, ���� ���������� }
 If (Mode=Help) and not FirstWord and ShowHintMarkers
  Then begin _Marker1.Show; _Marker2.Show; end;

 {�������� �� "����� ���������" � ����}
 If TakeStar then
 If (Mode<>Help) and (PCIntellect>Low) Then
   begin
     For I:=1 to WorkFieldDimentionX Do For J:=1 to WorkFieldDimentionY Do
        If WorkField[I,J].Image<>-1 Then begin
             Im:=Letters[WorkField[I,J].Image];
             If (Im.HelpContext=1) and (Im.tag=-2) Then
                begin
                 For k:=1 to 7 do
                   If Slot7[MoveIs,k].Letter=Im.Hint[1] Then
                     begin
                     TransferLetter(MoveIs,PlayerForms[MoveIs-1],Application.MainForm,Slot7[MOveIs,k].SlotX, Slot7[MoveIs,k].SlotY,Im.Left+1,Im.Top+1);
                     If not GameLoading Then begin
                       If pos('TAKESTAR',MovesLog.Strings[MovesLog.Count-1])=0 Then MovesLog.Strings[MovesLog.Count-1]:=MovesLog.Strings[MovesLog.Count-1]+'TAKESTAR:';
                       MovesLog.Strings[MovesLog.Count-1]:=MovesLog.Strings[MovesLog.Count-1]+IntToStr(Slot7[MoveIs,k].Image)+'/'+IntToStr(WorkField[I,J].Image)+',';
                                             end;
                     Im.HelpContext:=0;
                     Im.Hint:=copy(Im.Hint,1,2);
                     with Im do
                       begin Canvas.Font.Color := clBlack;
                             Canvas.Font.Style := [fsBold];
                             Canvas.Font.Size := 13;
                             Canvas.Brush.Color:=clBlack;
                             Canvas.Brush.Style:=bsClear;
                             Canvas.TextOut(14, 2, '*');
                        end;
                     Im.Repaint;
                     Im:=Letters[Slot7[MoveIs,k].Image];
                     Im.Picture:=Images[1,AlphCount+1];
                     Im.HelpContext:=1;
                     Im.Hint:=chr(FirstAlphCode+AlphCount);
                     Slot7[MoveIs,k].Letter:=chr(FirstAlphCode+AlphCount);
                     TransferLetter(MoveIs,Application.MainForm, PlayerForms[MoveIs-1],Im.Left,Im.Top,Slot7[MoveIs,k].SlotX,Slot7[MOveIs,k].SlotY);
                     break;
                     end;
                end;
                                         end;
   end;
 {If PCMoveNumber=1 Then begin If TimeLimit and not GameLoading Then MovesLog.Strings[MovesLog.Count-1]:=MovesLog.Strings[MovesLog.Count-1]+'ETIME:'+IntToStr(StartMin)+'/'+IntToStr(StartSec)+',';
                         end;}

 ReWrite(ClearedWordsFile);
  { �������� ����������� ������ �� ���-����� �� ������������ }
  For MasY:=1 to WorkFieldDimentionY Do begin
   { ���������� ������ � ������ ������ }
   If (Mode=Help) and Not FirstWord and ShowHintMarkers
    Then Begin
   _Marker1.Left:=4;
   _Marker1.Top:=MasY*28-3;
   _Marker2.Left:=Application.MainForm.Width-19;
   _Marker2.Top:=MasY*28-3;
   _Marker1.Update; _Marker2.Update; TimeDelay(50);
         end;
   { ����� ���� ��� ���������� (��������� ���� �������) }
   If PCIntellect>Low Then AddWord(1,MasY,Horiz);
   { ������� ��������� ������ }
   LettersAvl:=''; FoundHotSpot:=False;
   For I:=1 To 15 Do HotSpotSelected[I]:=0; Index:=1;
   For MasX:=1 to WorkFieldDimentionX Do begin
    If FinishGame Then begin Close(ClearedWordsFile); Exit; end;
    Application.ProcessMessages;
    If StopHelp Then begin Close(ClearedWordsFile); Exit; end;
    { ������� ���-���� }
    If ((WorkField[MasX,MasY].HotSpot<>' ') or (WorkField[MasX,MasY].Color=6) ) and
    ((WorkField[MasX-1,MasY].Available=True) or (WorkField[MasX+1,MasY].Available=True) or AllowSelect) Then
      begin
      { ���� ��������� ���-���� }
      If ((WorkField[MasX-1,MasY].Main=' ') and (WorkField[MasX+1,MasY].Main=' ')) Then
	begin
	 { ������� ��� � ������� ������, ���������� ������� ���-����� � ������ }
	 LettersAvl:=LettersAvl+WorkField[MasX,MasY].HotSpot;
         HotSpotSelected[Index]:=MasX; inc(Index);
	 FoundHotSpot:=True; NoHotSpots:=False;
	end;
      end;
                           end;
  { ��������� ������� ������ ������� �� ����� (���� ������ ���� ���� ���-����) }
  If FoundHotSpot Then begin
     For I:=1 To 7 Do If Slot7[Opp,I].Image<>-1 Then LettersAvl:=LettersAvl+Slot7[Opp,I].Letter;
     MakeWord(1);{ ��������� �� ���� ���� ����� }
     PlaceWord(Opp,Horiz); { ������� ����� �� ����������� }
		       end;
		       end;

  { �������� ����������� ������ �� ���-����� �� ��������� }
  For MasX:=1 to WorkFieldDimentionX Do begin
   { ���������� ������ � ������ ������ }
   If (Mode=Help) and Not FirstWord and ShowHintMarkers
    Then Begin
   _Marker1.Left:=MasX*28-3;
   _Marker1.Top:=4;
   _Marker2.Left:=MasX*28-3;
   _Marker2.Top:=Application.MainForm.Height-19-48;
   _Marker1.Update; _Marker2.Update; TimeDelay(50);
          end;
   { ����� ���� ��� ���������� (��������� ���� �������) }
   If PCIntellect>Low Then AddWord(MasX,1,Vertic);
   { ������� ��������� ������ }
   LettersAvl:=''; FoundHotSpot:=False;
   For I:=1 To 15 Do HotSpotSelected[I]:=0; Index:=1;
   For MasY:=1 to WorkFieldDimentionY Do begin

     If FinishGame then begin Close(ClearedWordsFile); Exit; end;
     { ShowCurrentTime }; Application.ProcessMessages;
     If StopHelp Then begin Close(ClearedWordsFile); Exit; end;
    { ������� ���-���� }
    If ((WorkField[MasX,MasY].HotSpot<>' ') or (WorkField[MasX,MasY].Color=6)) and
    ((WorkField[MasX,MasY-1].Available=True) or (WorkField[MasX,MasY+1].Available=True) or AllowSelect) Then
    begin
      { ���� ��������� ���-���� }
     If ((WorkField[MasX,MasY-1].Main=' ') and (WorkField[MasX,MasY+1].Main=' ')) Then
       begin
	 { ������� ��� � ������� ������, ���������� ������� ���-����� � ������ }
	 LettersAvl:=LettersAvl+WorkField[MasX,MasY].HotSpot;
         HotSpotSelected[Index]:=MasY; inc(Index);
	 FoundHotSpot:=True; NoHotSpots:=False;
       end;
    end;
                        end;
  { ��������� ������� ������ ������� �� ����� (���� ������ ���� ���� ���-����) }
  If FoundHotSpot Then begin
     For I:=1 To 7 Do If Slot7[Opp,I].Image<>-1 Then LettersAvl:=LettersAvl+Slot7[Opp,I].Letter;
     MakeWord(1);{ ��������� �� ���� ���� �����}
     PlaceWord(Opp,Vertic); { ������� ����� �� ����������� }
     If FinishGame Then exit;
		       end;
		       end;


  If (FileSize(ClearedWordsFile)=0) and Helped Then begin
      If PlaySounds Then BASS_SamplePlay(ErrorSound);
  Announce(0,0,GlobalTextStrings.Items.Values['InGameMessageHintNoVariants']);
                                                    end;

  Close(ClearedWordsFile);
  CheckLimits(FinishGame);
  { ���� ��� ����� ������, �� ����� � ������ ������������ ���� � ������� }
  If Mode=Help Then Exit;
  { � ����� ��������� ���������� ����� �� �������� }
  SortWords;
  { ����� ������ ��������� ����� �������� �� ���� }
  { ��� ���������� ����� }
  _MoveTimer.Enabled:=False;
  {If MoveLimit Then begin SystemTime.Font.Color:=clGray;
                          ElaspedTime.Font.Color:=clGray; end;}
                          END;
  try
  If Not SelectPCWord(Opp,Comp,FinishGame) Then
    If (PCMoveNumber=1) Then begin
       ChangePCLetters(Opp,FinishGame); PCChangedLetters:=true end
                        Else
                                           Else begin If DemoMode Then TimeDelay(4000);
                                                end;
  If not GameLoading Then
  If (PCMoveNumber=2) or (PCIntellect<High) or (CheckSlots(MoveIs)=7) and not GameLoading Then begin
       MovesLog.Strings[MovesLog.Count-1]:=MovesLog.Strings[MovesLog.Count-1]+'(USED:';
       For I:=1 to 7 Do If Slot7[Opp,I].Letter=' ' Then MovesLog.Strings[MovesLog.Count-1]:=MovesLog.Strings[MovesLog.Count-1]+IntToStr(I);
       MovesLog.Strings[MovesLog.Count-1]:=MovesLog.Strings[MovesLog.Count-1]+'),';
                                                 end;
  finally
    If allowSelect Then begin
     If Length(SelectShapes)>0 Then For I:=1 to Length(SelectShapes) do SelectShapes[I-1].Free;
     setLength(SelectShapes,0);
     For I:=0 to WorkFieldDimentionX+1 do For J:=0 to WorkFieldDimentionY+1 do SelectField[I,J]:=0;
                      end;
  end;
  isPCMove:=false;
  Screen.Cursor:=crDefault;
end;
{---------------------------------------------------------------}
END.
