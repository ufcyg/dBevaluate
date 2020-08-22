function UpdateDisplayedData
  data = guidata(gcf);
    
    ### CustomerName
  if !isempty(data.data.site.raw(data.UI.currentEntrySite,13){})
    set(data.UI.currentCustomerName,"title",data.data.site.raw(data.UI.currentEntrySite,13){});
  endif
   ###Kontakt vor Ort
  if !isempty(data.data.site.targetDB(data.UI.currentEntrySite,17){})
    ModifyDisplayedData(data.UI.ansprechpartnerNAME,data.data.site.targetDB(data.UI.currentEntrySite,17){});  
  else
    if data.UI.currentEntrySite-1 != 1
      ModifyDisplayedData(data.UI.ansprechpartnerNAME,data.data.site.targetDB(data.UI.currentEntrySite-1,17){});
    endif
  endif
  if !isempty(data.data.site.targetDB(data.UI.currentEntrySite,18){})
    ModifyDisplayedData(data.UI.ansprechpartnerTEL,data.data.site.targetDB(data.UI.currentEntrySite,18){});    
  else
    if data.UI.currentEntrySite-1 != 1
      ModifyDisplayedData(data.UI.ansprechpartnerTEL,data.data.site.targetDB(data.UI.currentEntrySite-1,18){});
    endif
  endif
  if !isempty(data.data.site.targetDB(data.UI.currentEntrySite,19){})
    ModifyDisplayedData(data.UI.ansprechpartnerMAIL,data.data.site.targetDB(data.UI.currentEntrySite,19){});    
  else
    if data.UI.currentEntrySite-1 != 1
      ModifyDisplayedData(data.UI.ansprechpartnerMAIL,data.data.site.targetDB(data.UI.currentEntrySite-1,19){});
    endif  
  endif
  
  ###Kontakt Kunde
  if !isempty(data.data.site.targetDB(data.UI.currentEntrySite,20){})
    ModifyDisplayedData(data.UI.kundenkontaktNAME,data.data.site.targetDB(data.UI.currentEntrySite,20){});   
  else
    if data.UI.currentEntrySite-1 != 1
      ModifyDisplayedData(data.UI.kundenkontaktNAME,data.data.site.targetDB(data.UI.currentEntrySite-1,20){}); 
    endif
  endif
  if !isempty(data.data.site.targetDB(data.UI.currentEntrySite,21){})
    ModifyDisplayedData(data.UI.kundenkontaktTEL,data.data.site.targetDB(data.UI.currentEntrySite,21){});    
  else
    if data.UI.currentEntrySite-1 != 1
      ModifyDisplayedData(data.UI.kundenkontaktTEL,data.data.site.targetDB(data.UI.currentEntrySite-1,21){});
    endif
  endif
  if !isempty(data.data.site.targetDB(data.UI.currentEntrySite,22){})
    ModifyDisplayedData(data.UI.kundenkontaktMAIL,data.data.site.targetDB(data.UI.currentEntrySite,22){});    
  else
    if data.UI.currentEntrySite-1 != 1
      ModifyDisplayedData(data.UI.kundenkontaktMAIL,data.data.site.targetDB(data.UI.currentEntrySite-1,22){});
    endif
  endif
  
  ###Adresseintrag
  if !isempty(data.data.site.targetDB(data.UI.currentEntrySite,12){})
    ModifyDisplayedData(data.UI.streetIF,data.data.site.targetDB(data.UI.currentEntrySite,12){});    
  else
    if data.UI.currentEntrySite-1 != 1
      ModifyDisplayedData(data.UI.streetIF,data.data.site.targetDB(data.UI.currentEntrySite-1,12){});
    endif
  endif
  if !isempty(data.data.site.targetDB(data.UI.currentEntrySite,13){})
    ModifyDisplayedData(data.UI.housenumberIF,data.data.site.targetDB(data.UI.currentEntrySite,13){});    
  else
    if data.UI.currentEntrySite-1 != 1
      ModifyDisplayedData(data.UI.housenumberIF,data.data.site.targetDB(data.UI.currentEntrySite-1,13){});
    endif
  endif
  
  ###LabbaseID
  if !isempty(data.data.site.targetDB(data.UI.currentEntrySite,8){})
    ModifyDisplayedData(data.UI.kundeLabbaseID,data.data.site.targetDB(data.UI.currentEntrySite,8){});    
  else
    if data.UI.currentEntrySite-1 != 1
      ModifyDisplayedData(data.UI.kundeLabbaseID,data.data.site.targetDB(data.UI.currentEntrySite-1,8){});
    endif
  endif
  
  ###Versorgte Häuser
  #1
  if !isempty(data.data.supplied(data.UI.currentEntrySite*20,6){})
    ModifyDisplayedData(data.UI.suppliedHouseStreet1,data.data.supplied(data.UI.currentEntrySite*20,6){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseStreet1,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseStreet1,data.data.supplied((data.UI.currentEntrySite-1)*20,6){});
    endif
  endif
  if !isempty(data.data.supplied(data.UI.currentEntrySite*20,7){})
    ModifyDisplayedData(data.UI.suppliedHouseNumber1,data.data.supplied(data.UI.currentEntrySite*20,7){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseNumber1,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseNumber1,data.data.supplied((data.UI.currentEntrySite-1)*20,7){});
    endif
  endif
  #2
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+1,6){})
    ModifyDisplayedData(data.UI.suppliedHouseStreet2,data.data.supplied((data.UI.currentEntrySite*20)+1,6){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseStreet2,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseStreet2,data.data.supplied(((data.UI.currentEntrySite-1)*20)+1,6){});
    endif
  endif
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+1,7){})
    ModifyDisplayedData(data.UI.suppliedHouseNumber2,data.data.supplied((data.UI.currentEntrySite*20)+1,7){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseNumber2,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseNumber2,data.data.supplied(((data.UI.currentEntrySite-1)*20)+1,7){});
    endif
  endif
  #3
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+2,6){})
    ModifyDisplayedData(data.UI.suppliedHouseStreet3,data.data.supplied((data.UI.currentEntrySite*20)+2,6){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseStreet3,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseStreet3,data.data.supplied(((data.UI.currentEntrySite-1)*20)+2,6){});
    endif
  endif
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+2,7){})
    ModifyDisplayedData(data.UI.suppliedHouseNumber3,data.data.supplied((data.UI.currentEntrySite*20)+2,7){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseNumber3,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseNumber3,data.data.supplied(((data.UI.currentEntrySite-1)*20)+2,7){});
    endif
  endif
  #4
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+3,6){})
    ModifyDisplayedData(data.UI.suppliedHouseStreet4,data.data.supplied((data.UI.currentEntrySite*20)+3,6){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseStreet4,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseStreet4,data.data.supplied(((data.UI.currentEntrySite-1)*20)+3,6){});
    endif
  endif
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+3,7){})
    ModifyDisplayedData(data.UI.suppliedHouseNumber4,data.data.supplied((data.UI.currentEntrySite*20)+3,7){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseNumber4,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseNumber4,data.data.supplied(((data.UI.currentEntrySite-1)*20)+3,7){});
    endif
  endif
  #5
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+4,6){})
    ModifyDisplayedData(data.UI.suppliedHouseStreet5,data.data.supplied((data.UI.currentEntrySite*20)+4,6){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseStreet5,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseStreet5,data.data.supplied(((data.UI.currentEntrySite-1)*20)+4,6){});
    endif
  endif
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+4,7){})
    ModifyDisplayedData(data.UI.suppliedHouseNumber5,data.data.supplied((data.UI.currentEntrySite*20)+4,7){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseNumber5,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseNumber5,data.data.supplied(((data.UI.currentEntrySite-1)*20)+4,7){});
    endif
  endif
  #6
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+5,6){})
    ModifyDisplayedData(data.UI.suppliedHouseStreet6,data.data.supplied((data.UI.currentEntrySite*20)+5,6){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseStreet6,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseStreet6,data.data.supplied(((data.UI.currentEntrySite-1)*20)+5,6){});
    endif
  endif
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+5,7){})
    ModifyDisplayedData(data.UI.suppliedHouseNumber6,data.data.supplied((data.UI.currentEntrySite*20)+5,7){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseNumber6,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseNumber6,data.data.supplied(((data.UI.currentEntrySite-1)*20)+5,7){});
    endif
  endif
  #7
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+6,6){})
    ModifyDisplayedData(data.UI.suppliedHouseStreet7,data.data.supplied((data.UI.currentEntrySite*20)+6,6){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseStreet7,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseStreet7,data.data.supplied(((data.UI.currentEntrySite-1)*20)+6,6){});
    endif
  endif
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+6,7){})
    ModifyDisplayedData(data.UI.suppliedHouseNumber7,data.data.supplied((data.UI.currentEntrySite*20)+6,7){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseNumber7,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseNumber7,data.data.supplied(((data.UI.currentEntrySite-1)*20)+6,7){});
    endif
  endif
  #8
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+7,6){})
    ModifyDisplayedData(data.UI.suppliedHouseStreet8,data.data.supplied((data.UI.currentEntrySite*20)+7,6){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseStreet8,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseStreet8,data.data.supplied(((data.UI.currentEntrySite-1)*20)+7,6){});
    endif
  endif
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+7,7){})
    ModifyDisplayedData(data.UI.suppliedHouseNumber8,data.data.supplied((data.UI.currentEntrySite*20)+7,7){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseNumber8,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseNumber8,data.data.supplied(((data.UI.currentEntrySite-1)*20)+7,7){});
    endif
  endif
  #9
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+8,6){})
    ModifyDisplayedData(data.UI.suppliedHouseStreet9,data.data.supplied((data.UI.currentEntrySite*20)+8,6){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseStreet9,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseStreet9,data.data.supplied(((data.UI.currentEntrySite-1)*20)+8,6){});
    endif
  endif
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+8,7){})
    ModifyDisplayedData(data.UI.suppliedHouseNumber9,data.data.supplied((data.UI.currentEntrySite*20)+8,7){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseNumber9,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseNumber9,data.data.supplied(((data.UI.currentEntrySite-1)*20)+8,7){});
    endif
  endif
  #10
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+9,6){})
    ModifyDisplayedData(data.UI.suppliedHouseStreet10,data.data.supplied((data.UI.currentEntrySite*20)+9,6){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseStreet10,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseStreet10,data.data.supplied(((data.UI.currentEntrySite-1)*20)+9,6){});
    endif
  endif
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+9,7){})
    ModifyDisplayedData(data.UI.suppliedHouseNumber10,data.data.supplied((data.UI.currentEntrySite*20)+9,7){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseNumber10,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseNumber10,data.data.supplied(((data.UI.currentEntrySite-1)*20)+9,7){});
    endif
  endif
  ###
  #11
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+10,6){})
    ModifyDisplayedData(data.UI.suppliedHouseStreet11,data.data.supplied((data.UI.currentEntrySite*20)+10,6){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseStreet11,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseStreet11,data.data.supplied(((data.UI.currentEntrySite-1)*20)+10,6){});
    endif
  endif
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+10,7){})
    ModifyDisplayedData(data.UI.suppliedHouseNumber11,data.data.supplied((data.UI.currentEntrySite*20)+10,7){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseNumber11,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseNumber11,data.data.supplied(((data.UI.currentEntrySite-1)*20)+10,7){});
    endif
  endif
  #12
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+11,6){})
    ModifyDisplayedData(data.UI.suppliedHouseStreet12,data.data.supplied((data.UI.currentEntrySite*20)+11,6){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseStreet12,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseStreet12,data.data.supplied(((data.UI.currentEntrySite-1)*20)+11,6){});
    endif
  endif
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+11,7){})
    ModifyDisplayedData(data.UI.suppliedHouseNumber12,data.data.supplied((data.UI.currentEntrySite*20)+11,7){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseNumber12,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseNumber12,data.data.supplied(((data.UI.currentEntrySite-1)*20)+11,7){});
    endif
  endif
  #13
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+12,6){})
    ModifyDisplayedData(data.UI.suppliedHouseStreet13,data.data.supplied((data.UI.currentEntrySite*20)+12,6){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseStreet13,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseStreet13,data.data.supplied(((data.UI.currentEntrySite-1)*20)+12,6){});
    endif
  endif
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+12,7){})
    ModifyDisplayedData(data.UI.suppliedHouseNumber13,data.data.supplied((data.UI.currentEntrySite*20)+12,7){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseNumber13,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseNumber13,data.data.supplied(((data.UI.currentEntrySite-1)*20)+12,7){});
    endif
  endif
  #14
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+13,6){})
    ModifyDisplayedData(data.UI.suppliedHouseStreet14,data.data.supplied((data.UI.currentEntrySite*20)+13,6){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseStreet14,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseStreet14,data.data.supplied(((data.UI.currentEntrySite-1)*20)+13,6){});
    endif
  endif
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+13,7){})
    ModifyDisplayedData(data.UI.suppliedHouseNumber14,data.data.supplied((data.UI.currentEntrySite*20)+13,7){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseNumber14,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseNumber14,data.data.supplied(((data.UI.currentEntrySite-1)*20)+13,7){});
    endif
  endif
  #15
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+14,6){})
    ModifyDisplayedData(data.UI.suppliedHouseStreet15,data.data.supplied((data.UI.currentEntrySite*20)+14,6){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseStreet15,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseStreet15,data.data.supplied(((data.UI.currentEntrySite-1)*20)+14,6){});
    endif
  endif
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+14,7){})
    ModifyDisplayedData(data.UI.suppliedHouseNumber15,data.data.supplied((data.UI.currentEntrySite*20)+14,7){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseNumber15,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseNumber15,data.data.supplied(((data.UI.currentEntrySite-1)*20)+14,7){});
    endif
  endif
  #16
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+15,6){})
    ModifyDisplayedData(data.UI.suppliedHouseStreet16,data.data.supplied((data.UI.currentEntrySite*20)+15,6){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseStreet16,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseStreet16,data.data.supplied(((data.UI.currentEntrySite-1)*20)+15,6){});
    endif
  endif
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+15,7){})
    ModifyDisplayedData(data.UI.suppliedHouseNumber16,data.data.supplied((data.UI.currentEntrySite*20)+15,7){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseNumber16,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseNumber16,data.data.supplied(((data.UI.currentEntrySite-1)*20)+15,7){});
    endif
  endif
  #17
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+16,6){})
    ModifyDisplayedData(data.UI.suppliedHouseStreet17,data.data.supplied((data.UI.currentEntrySite*20)+16,6){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseStreet17,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseStreet17,data.data.supplied(((data.UI.currentEntrySite-1)*20)+16,6){});
    endif
  endif
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+16,7){})
    ModifyDisplayedData(data.UI.suppliedHouseNumber17,data.data.supplied((data.UI.currentEntrySite*20)+16,7){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseNumber17,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseNumber17,data.data.supplied(((data.UI.currentEntrySite-1)*20)+16,7){});
    endif
  endif
  #18
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+17,6){})
    ModifyDisplayedData(data.UI.suppliedHouseStreet18,data.data.supplied((data.UI.currentEntrySite*20)+17,6){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseStreet18,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseStreet18,data.data.supplied(((data.UI.currentEntrySite-1)*20)+17,6){});
    endif
  endif
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+17,7){})
    ModifyDisplayedData(data.UI.suppliedHouseNumber18,data.data.supplied((data.UI.currentEntrySite*20)+17,7){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseNumber18,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseNumber18,data.data.supplied(((data.UI.currentEntrySite-1)*20)+17,7){});
    endif
  endif
  #19
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+18,6){})
    ModifyDisplayedData(data.UI.suppliedHouseStreet19,data.data.supplied((data.UI.currentEntrySite*20)+18,6){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseStreet19,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseStreet19,data.data.supplied(((data.UI.currentEntrySite-1)*20)+18,6){});
    endif
  endif
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+18,7){})
    ModifyDisplayedData(data.UI.suppliedHouseNumber19,data.data.supplied((data.UI.currentEntrySite*20)+18,7){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseNumber19,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseNumber19,data.data.supplied(((data.UI.currentEntrySite-1)*20)+18,7){});
    endif
  endif
  #20
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+19,6){})
    ModifyDisplayedData(data.UI.suppliedHouseStreet20,data.data.supplied((data.UI.currentEntrySite*20)+19,6){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseStreet20,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseStreet20,data.data.supplied(((data.UI.currentEntrySite-1)*20)+19,6){});
    endif
  endif
  if !isempty(data.data.supplied((data.UI.currentEntrySite*20)+19,7){})
    ModifyDisplayedData(data.UI.suppliedHouseNumber20,data.data.supplied((data.UI.currentEntrySite*20)+19,7){});    
  else
    ModifyDisplayedData(data.UI.suppliedHouseNumber20,"");
    if data.UI.currentEntrySite-1 != 1
      #ModifyDisplayedData(data.UI.suppliedHouseNumber20,data.data.supplied(((data.UI.currentEntrySite-1)*20)+19,7){});
    endif
  endif
  
  SaveFields();
endfunction
