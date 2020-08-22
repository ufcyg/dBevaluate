function ShowSuppliedHouses(h,evt,switchcase)
  ## from 18,19,26
  data = guidata(gcf);
  currentIndex = data.UI.currentEntrySite;
  
  prompt = {"FROM: Objektbezeichnung","FROM: Objektadresse","FROM: Standort Anlage", ...
            "TO: VH1 Straße","TO: VH1 Hausnummer", ...
            "TO: VH2 Straße","TO: VH2 Hausnummer", ...
            "TO: VH3 Straße","TO: VH3 Hausnummer", ...
            "TO: VH4 Straße","TO: VH4 Hausnummer", ...
            "TO: VH5 Straße","TO: VH5 Hausnummer", ...
            "TO: VH6 Straße","TO: VH6 Hausnummer", ...
            "TO: VH7 Straße","TO: VH7 Hausnummer", ...
            "TO: VH8 Straße","TO: VH8 Hausnummer", ...
            "TO: VH9 Straße","TO: VH9 Hausnummer", ...
            "TO: VH10 Straße","TO: VH10 Hausnummer",};
  rowscols =   [1,150;1,150;1,150; 1,150;1,150;1,150;1,150;1,150;1,150;1,150;1,150;1,150;1,150;1,150;1,150;1,150;1,150;1,150;1,150;1,150;1,150;1,150;1,150];
  title = "KundeLabbaseID";  
  switch (switchcase)
    case 0
      defaults = {data.data.site.raw(currentIndex,18){},data.data.site.raw(currentIndex,19){},data.data.site.raw(currentIndex,26){}, ...
              data.data.supplied((data.UI.currentEntrySite*20),6){},data.data.supplied((data.UI.currentEntrySite*20),7){}, ...
              data.data.supplied((data.UI.currentEntrySite*20)+1,6){},data.data.supplied((data.UI.currentEntrySite*20)+1,7){}, ...
              data.data.supplied((data.UI.currentEntrySite*20)+2,6){},data.data.supplied((data.UI.currentEntrySite*20)+2,7){}, ...
              data.data.supplied((data.UI.currentEntrySite*20)+3,6){},data.data.supplied((data.UI.currentEntrySite*20)+3,7){}, ...
              data.data.supplied((data.UI.currentEntrySite*20)+4,6){},data.data.supplied((data.UI.currentEntrySite*20)+4,7){}, ...
              data.data.supplied((data.UI.currentEntrySite*20)+5,6){},data.data.supplied((data.UI.currentEntrySite*20)+5,7){}, ...
              data.data.supplied((data.UI.currentEntrySite*20)+6,6){},data.data.supplied((data.UI.currentEntrySite*20)+6,7){}, ...
              data.data.supplied((data.UI.currentEntrySite*20)+7,6){},data.data.supplied((data.UI.currentEntrySite*20)+7,7){}, ...
              data.data.supplied((data.UI.currentEntrySite*20)+8,6){},data.data.supplied((data.UI.currentEntrySite*20)+8,7){}, ...
              data.data.supplied((data.UI.currentEntrySite*20)+9,6){},data.data.supplied((data.UI.currentEntrySite*20)+9,7){}};
    case 1
      defaults = {data.data.site.raw(currentIndex,18){},data.data.site.raw(currentIndex,19){},data.data.site.raw(currentIndex,26){}, ...
              data.data.supplied((data.UI.currentEntrySite*20)+10,6){},data.data.supplied((data.UI.currentEntrySite*20)+10,7){}, ...
              data.data.supplied((data.UI.currentEntrySite*20)+11,6){},data.data.supplied((data.UI.currentEntrySite*20)+11,7){}, ...
              data.data.supplied((data.UI.currentEntrySite*20)+12,6){},data.data.supplied((data.UI.currentEntrySite*20)+12,7){}, ...
              data.data.supplied((data.UI.currentEntrySite*20)+13,6){},data.data.supplied((data.UI.currentEntrySite*20)+13,7){}, ...
              data.data.supplied((data.UI.currentEntrySite*20)+14,6){},data.data.supplied((data.UI.currentEntrySite*20)+14,7){}, ...
              data.data.supplied((data.UI.currentEntrySite*20)+15,6){},data.data.supplied((data.UI.currentEntrySite*20)+15,7){}, ...
              data.data.supplied((data.UI.currentEntrySite*20)+16,6){},data.data.supplied((data.UI.currentEntrySite*20)+16,7){}, ...
              data.data.supplied((data.UI.currentEntrySite*20)+17,6){},data.data.supplied((data.UI.currentEntrySite*20)+17,7){}, ...
              data.data.supplied((data.UI.currentEntrySite*20)+18,6){},data.data.supplied((data.UI.currentEntrySite*20)+18,7){}, ...
              data.data.supplied((data.UI.currentEntrySite*20)+19,6){},data.data.supplied((data.UI.currentEntrySite*20)+19,7){}};
    endswitch
              
  inputSTR = inputdlg (prompt, title, rowscols, defaults);
  if size(inputSTR,1) > 0
    switch (switchcase)
    case 0
      ModifyDisplayedData(data.UI.suppliedHouseStreet1,inputSTR(4,1){});
      data.data.supplied(data.UI.currentEntrySite*20,6) = inputSTR(4);
      ModifyDisplayedData(data.UI.suppliedHouseNumber1,inputSTR(5,1){});
      data.data.supplied(data.UI.currentEntrySite*20,7) = inputSTR(5);
      ModifyDisplayedData(data.UI.suppliedHouseStreet2,inputSTR(6,1){});
      data.data.supplied(data.UI.currentEntrySite*20+1,6) = inputSTR(6);
      ModifyDisplayedData(data.UI.suppliedHouseNumber2,inputSTR(7,1){});
      data.data.supplied(data.UI.currentEntrySite*20+1,7) = inputSTR(7);
      ModifyDisplayedData(data.UI.suppliedHouseStreet3,inputSTR(8,1){});
      data.data.supplied(data.UI.currentEntrySite*20+2,6) = inputSTR(8);
      ModifyDisplayedData(data.UI.suppliedHouseNumber3,inputSTR(9,1){});
      data.data.supplied(data.UI.currentEntrySite*20+2,7) = inputSTR(9);
      ModifyDisplayedData(data.UI.suppliedHouseStreet4,inputSTR(10,1){});
      data.data.supplied(data.UI.currentEntrySite*20+3,6) = inputSTR(10);
      ModifyDisplayedData(data.UI.suppliedHouseNumber4,inputSTR(11,1){});
      data.data.supplied(data.UI.currentEntrySite*20+3,7) = inputSTR(11);
      ModifyDisplayedData(data.UI.suppliedHouseStreet5,inputSTR(12,1){});
      data.data.supplied(data.UI.currentEntrySite*20+4,6) = inputSTR(12);
      ModifyDisplayedData(data.UI.suppliedHouseNumber5,inputSTR(13,1){});
      data.data.supplied(data.UI.currentEntrySite*20+4,7) = inputSTR(13);
      ModifyDisplayedData(data.UI.suppliedHouseStreet6,inputSTR(14,1){});
      data.data.supplied(data.UI.currentEntrySite*20+5,6) = inputSTR(14);
      ModifyDisplayedData(data.UI.suppliedHouseNumber6,inputSTR(15,1){});
      data.data.supplied(data.UI.currentEntrySite*20+5,7) = inputSTR(15);
      ModifyDisplayedData(data.UI.suppliedHouseStreet7,inputSTR(16,1){});
      data.data.supplied(data.UI.currentEntrySite*20+6,6) = inputSTR(16);
      ModifyDisplayedData(data.UI.suppliedHouseNumber7,inputSTR(17,1){});
      data.data.supplied(data.UI.currentEntrySite*20+6,7) = inputSTR(17);
      ModifyDisplayedData(data.UI.suppliedHouseStreet8,inputSTR(18,1){});
      data.data.supplied(data.UI.currentEntrySite*20+7,6) = inputSTR(18);
      ModifyDisplayedData(data.UI.suppliedHouseNumber8,inputSTR(19,1){});
      data.data.supplied(data.UI.currentEntrySite*20+7,7) = inputSTR(19);
      ModifyDisplayedData(data.UI.suppliedHouseStreet9,inputSTR(20,1){});
      data.data.supplied(data.UI.currentEntrySite*20+8,6) = inputSTR(20);
      ModifyDisplayedData(data.UI.suppliedHouseNumber9,inputSTR(21,1){});
      data.data.supplied(data.UI.currentEntrySite*20+8,7) = inputSTR(21);
      ModifyDisplayedData(data.UI.suppliedHouseStreet10,inputSTR(22,1){});
      data.data.supplied(data.UI.currentEntrySite*20+9,6) = inputSTR(22);
      ModifyDisplayedData(data.UI.suppliedHouseNumber10,inputSTR(23,1){});
      data.data.supplied(data.UI.currentEntrySite*20+9,7) = inputSTR(23);
    case 1
      ModifyDisplayedData(data.UI.suppliedHouseStreet11,inputSTR(4,1){});
      data.data.supplied(data.UI.currentEntrySite*20+10,6) = inputSTR(4);
      ModifyDisplayedData(data.UI.suppliedHouseNumber11,inputSTR(5,1){});
      data.data.supplied(data.UI.currentEntrySite*20+10,7) = inputSTR(5);
      ModifyDisplayedData(data.UI.suppliedHouseStreet12,inputSTR(6,1){});
      data.data.supplied(data.UI.currentEntrySite*20+11,6) = inputSTR(6);
      ModifyDisplayedData(data.UI.suppliedHouseNumber12,inputSTR(7,1){});
      data.data.supplied(data.UI.currentEntrySite*20+11,7) = inputSTR(7);
      ModifyDisplayedData(data.UI.suppliedHouseStreet13,inputSTR(8,1){});
      data.data.supplied(data.UI.currentEntrySite*20+12,6) = inputSTR(8);
      ModifyDisplayedData(data.UI.suppliedHouseNumber13,inputSTR(9,1){});
      data.data.supplied(data.UI.currentEntrySite*20+12,7) = inputSTR(9);
      ModifyDisplayedData(data.UI.suppliedHouseStreet14,inputSTR(10,1){});
      data.data.supplied(data.UI.currentEntrySite*20+13,6) = inputSTR(10);
      ModifyDisplayedData(data.UI.suppliedHouseNumber14,inputSTR(11,1){});
      data.data.supplied(data.UI.currentEntrySite*20+13,7) = inputSTR(11);
      ModifyDisplayedData(data.UI.suppliedHouseStreet15,inputSTR(12,1){});
      data.data.supplied(data.UI.currentEntrySite*20+14,6) = inputSTR(12);
      ModifyDisplayedData(data.UI.suppliedHouseNumber15,inputSTR(13,1){});
      data.data.supplied(data.UI.currentEntrySite*20+14,7) = inputSTR(13);
      ModifyDisplayedData(data.UI.suppliedHouseStreet16,inputSTR(14,1){});
      data.data.supplied(data.UI.currentEntrySite*20+15,6) = inputSTR(14);
      ModifyDisplayedData(data.UI.suppliedHouseNumber16,inputSTR(15,1){});
      data.data.supplied(data.UI.currentEntrySite*20+15,7) = inputSTR(15);
      ModifyDisplayedData(data.UI.suppliedHouseStreet17,inputSTR(16,1){});
      data.data.supplied(data.UI.currentEntrySite*20+16,6) = inputSTR(16);
      ModifyDisplayedData(data.UI.suppliedHouseNumber17,inputSTR(17,1){});
      data.data.supplied(data.UI.currentEntrySite*20+16,7) = inputSTR(17);
      ModifyDisplayedData(data.UI.suppliedHouseStreet18,inputSTR(18,1){});
      data.data.supplied(data.UI.currentEntrySite*20+17,6) = inputSTR(18);
      ModifyDisplayedData(data.UI.suppliedHouseNumber18,inputSTR(19,1){});
      data.data.supplied(data.UI.currentEntrySite*20+17,7) = inputSTR(19);
      ModifyDisplayedData(data.UI.suppliedHouseStreet19,inputSTR(20,1){});
      data.data.supplied(data.UI.currentEntrySite*20+18,6) = inputSTR(20);
      ModifyDisplayedData(data.UI.suppliedHouseNumber19,inputSTR(21,1){});
      data.data.supplied(data.UI.currentEntrySite*20+18,7) = inputSTR(21);
      ModifyDisplayedData(data.UI.suppliedHouseStreet20,inputSTR(22,1){});
      data.data.supplied(data.UI.currentEntrySite*20+19,6) = inputSTR(22);
      ModifyDisplayedData(data.UI.suppliedHouseNumber20,inputSTR(23,1){});
      data.data.supplied(data.UI.currentEntrySite*20+19,7) = inputSTR(23);
    endswitch
  else
    disp("user cancelled");
  endif
  guidata(gcf,data);
endfunction
#