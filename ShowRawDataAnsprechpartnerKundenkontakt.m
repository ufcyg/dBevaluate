function ShowRawDataAnsprechpartnerKundenkontakt
  data = guidata(gcf);
  currentIndex = data.UI.currentEntrySite;
  prompt = {"FROM: Ansprechpartner-Hausmeister",
            "FROM: Bemerkung",
            "TO: AnsprechpartnerNAME",
            "TO: AnsprechpartnerTEL",
            "TO: AnsprechpartnerMAIL",
            "TO: KundenkontaktNAME",
            "TO: KundenkontaktTEL",
            "TO: KundenkontaktMAIL"};
  title = "Ansprechpartner-Hausmeister-Bemerkung";          
  rowscols = [1,150; 1,150; 1,150; 1,150; 1,150; 1,150; 1,150; 1,150];
  defaults = {data.data.site.raw(currentIndex,29){},
              data.data.site.raw(currentIndex,32){},
              data.data.site.targetDB(currentIndex,17){},
              data.data.site.targetDB(currentIndex,18){},
              data.data.site.targetDB(currentIndex,19){},
              data.data.site.targetDB(currentIndex,20){},
              data.data.site.targetDB(currentIndex,21){},
              data.data.site.targetDB(currentIndex,22){}};
  inputSTR = inputdlg (prompt, title, [1,150; 1,150; 1,150; 1,150; 1,150; 1,150; 1,150; 1,150], defaults);
  if size(inputSTR,1) > 0
    ModifyDisplayedData(data.UI.kundenkontaktNAME,inputSTR(3,1){});
    ModifyDisplayedData(data.UI.kundenkontaktTEL,inputSTR(4,1){});
    ModifyDisplayedData(data.UI.kundenkontaktMAIL,inputSTR(5,1){});
    ModifyDisplayedData(data.UI.ansprechpartnerNAME,inputSTR(6,1){});
    ModifyDisplayedData(data.UI.ansprechpartnerTEL,inputSTR(7,1){});
    ModifyDisplayedData(data.UI.ansprechpartnerMAIL,inputSTR(8,1){});
  endif
endfunction
