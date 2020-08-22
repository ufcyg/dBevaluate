function ShowRawDataAnsprechpartnerKundenkontakt
  data = guidata(gcf);
  currentIndex = data.UI.currentEntrySite;
  
  prompt = {"FROM: Ansprechpartner/Hausmeister","FROM: Bemerkung","TO: AnsprechpartnerNAME","TO: AnsprechpartnerTEL","TO: AnsprechpartnerMAIL","TO: KundenkontaktNAME","TO: KundenkontaktTEL","TO: KundenkontaktMAIL"};
  rowscols =   [1,150; 1,150; 1,150; 1,150; 1,150; 1,150; 1,150; 1,150];
  title = "Ansprechpartner-Hausmeister-Bemerkung";  
  defaults = {data.data.site.raw(currentIndex,29){},
              data.data.site.raw(currentIndex,32){},
              data.data.site.targetDB(currentIndex,17){},
              data.data.site.targetDB(currentIndex,18){},
              data.data.site.targetDB(currentIndex,19){},
              data.data.site.targetDB(currentIndex,20){},
              data.data.site.targetDB(currentIndex,21){},
              data.data.site.targetDB(currentIndex,22){}};
              
  inputSTR = inputdlg (prompt, title, rowscols, defaults);
  if size(inputSTR,1) > 0
    ModifyDisplayedData(data.UI.ansprechpartnerNAME,inputSTR(3,1){});
    data.data.site.targetDB(currentIndex,17) = inputSTR(3){};
    ModifyDisplayedData(data.UI.ansprechpartnerTEL,inputSTR(4,1){});
    data.data.site.targetDB(currentIndex,18) = inputSTR(4){};
    ModifyDisplayedData(data.UI.ansprechpartnerMAIL,inputSTR(5,1){});
    data.data.site.targetDB(currentIndex,19) = inputSTR(5){};
    ModifyDisplayedData(data.UI.kundenkontaktNAME,inputSTR(6,1){});
    data.data.site.targetDB(currentIndex,20) = inputSTR(6){};
    ModifyDisplayedData(data.UI.kundenkontaktTEL,inputSTR(7,1){});
    data.data.site.targetDB(currentIndex,21) = inputSTR(7){};
    ModifyDisplayedData(data.UI.kundenkontaktMAIL,inputSTR(8,1){});
    data.data.site.targetDB(currentIndex,22) = inputSTR(8){};
  else
    disp("user cancelled");
  endif
 guidata(gcf,data); 
endfunction