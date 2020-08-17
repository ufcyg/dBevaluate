function ShowRawDataAnsprechpartnerKundenkontakt
  data = guidata(gcf);
  index = data.UI.currentEntry;
  inputSTR = inputdlg ({"Ansprechpartner/Hausmeister","Bemerkung","AnsprechpartnerNAME","AnsprechpartnerTEL","AnsprechpartnerMAIL"}, "Bemerkung", [1,150; 1,150; 1,150; 1,150; 1,150], {"input1","input2","AnsprechpartnerNAME","AnsprechpartnerTEL","AnsprechpartnerMAIL","KundenkontaktNAME","KundenkontaktTEL","KundenkontaktMAIL"});
  if sum(size(inputSTR)) > 0
    ModifyDisplayedData(data.UI.kundenkontaktNAME,inputSTR(3,1){});
    ModifyDisplayedData(data.UI.kundenkontaktTEL,inputSTR(4,1){});
    ModifyDisplayedData(data.UI.kundenkontaktMAIL,inputSTR(5,1){});
    ModifyDisplayedData(data.UI.ansprechpartnerNAME,inputSTR(6,1){});
    ModifyDisplayedData(data.UI.ansprechpartnerTEL,inputSTR(7,1){});
    ModifyDisplayedData(data.UI.ansprechpartnerMAIL,inputSTR(8,1){});
  endif
endfunction
