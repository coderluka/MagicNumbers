Program MagicGuessENG;
uses CRT;

var
  n,brojac : integer;
  c,k,rbk : char;
  izbor,z : boolean;



 procedure BlueCard;
  begin
   TextBackground(Blue);
   TextColor(White);
   Window(1,1,12,10);
   Write('            ');
   Write(' 04  06  12 ');
   Write('   05  07   ');
   Write(' 13  15  21 ');
   Write('   14  20   ');
   Write(' 22  28  30 ');
   Write('   23  29   ');
   Write('            ');
   Write('     #1     ');
  end;

 procedure GreenCard;
  begin
   TextBackground(Green);
   TextColor(White);
   Window(14,1,26,16);
   Writeln('            ');
   Writeln(' 02  06  10 ');
   Writeln('   03  07   ');
   Writeln(' 11  15  19 ');
   Writeln('   14  18   ');
   Writeln(' 22  26  30 ');
   Writeln('   23  27   ');
   Writeln('            ');
   Writeln('     #2     ');
  end;

 procedure YellowCard;
  begin
   TextBackground(Yellow);
   TextColor(White);
   Window(27,1,39,16);
   Writeln('            ');
   Writeln(' 01  05  09 ');
   Writeln('   03  07   ');
   Writeln(' 11  15  19 ');
   Writeln('   13  17   ');
   Writeln(' 21  25  29 ');
   Writeln('   23  27   ');
   Writeln('            ');
   Writeln('     #3     ');
  end;

 procedure RedCard;
  begin
   TextBackground(Red);
   TextColor(White);
   Window(40,1,52,16);
   Writeln('            ');
   Writeln(' 08  10  12 ');
   Writeln('   09  11   ');
   Writeln(' 13  15  25 ');
   Writeln('   14  24   ');
   Writeln(' 26  28  30 ');
   Writeln('   27  29   ');
   Writeln('            ');
   Writeln('     #4     ');
  end;

 procedure MagentaCard;
  begin
   TextBackground(Magenta);
   TextColor(White);
   Window(53,1,65,16);
   Writeln('            ');
   Writeln(' 16  18  20 ');
   Writeln('   17  19   ');
   Writeln(' 21  23  25 ');
   Writeln('   22  24   ');
   Writeln(' 26  28  30 ');
   Writeln('   27  29   ');
   Writeln('            ');
   Writeln('     #5     ');
  end;

 procedure Igra;
  begin
   clrscr;
   BlueCard;
   GreenCard;
   YellowCard;
   RedCard;
   MagentaCard;

   n:=0;

   TextBackground(White);
   TextColor(Black);
   Window(10,11,80,23);

   Writeln('  __________________________________________  ');
   Writeln(' | Chose a Number from the card. Then write | ');
   Writeln(' | the number below the card where your     | ');
   Writeln(' | number is located  .                     | ');
   Writeln(' |_________________________________________ | ');
   Writeln(' | "Note: # does not need to be inputed     | ');
   Writeln(' |                                          | ');
   Writeln(' |__________________________________________| ');
   Writeln('                                              ');
   repeat
    Window(10,21,55,25);
    clrscr;
    repeat
     Write('input: ');
     Readln(rbk);

    Case rbk of
        #49 : begin n:=n+4; z:=true; end;
        #50 : begin n:=n+2; z:=true; end;
        #51 : begin n:=n+1; z:=true; end;
        #52 : begin n:=n+8; z:=true; end;
        #53 : begin n:=n+16; z:=true; end;
     Else
      Write('Wrong Entry!                                ');
    end;
    until z = true;

    Writeln('                                              ');
    Writeln(' Did you chose all the cards, where your      ');
    Writeln(' Number is located?     y/n?                  ');
    Write('izbor: ');
    brojac:=brojac+1;
     If brojac < 5 Then
      begin
       Readln(c);

        Case c of
          'y' : izbor := true;
          'n' : izbor := false;
         Else
          Writeln(' Wrong Entry!                     ');
        end;
      end
     Else
      begin
        TextBackground(Black);
        clrscr;
        TextColor(White);
        Window(13,21,58,25);
        Writeln('       You picked the Number:        ',n);
        Delay(1000);
        Writeln;
        Writeln('       Play Again?       y/n? ');
        Readln(k);
     end;
   until izbor = true;
        TextBackground(Black);
        clrscr;
        TextColor(White);
        Window(13,21,58,25);
        Writeln('        You picked the Number:        ',n);
        Delay(1000);
        Writeln;
        Writeln('       Play Again?       y/n? ');
        Readln(k);
   brojac := 0;
  end;

 Begin
  k := 'd';
  z := false;
  brojac:=0;

  repeat
   Case k of
        'd','D' : Igra;
        'n','N' : Writeln('Exiting the Game!');
     end;
  until k = 'n';
 End.
