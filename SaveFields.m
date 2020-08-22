function SaveFields
  data = guidata(gcf);
  ###Kontakt vor Ort
  data.data.site.targetDB(data.UI.currentEntrySite,17) = get(data.UI.ansprechpartnerNAME,"string");
  data.data.site.targetDB(data.UI.currentEntrySite,18) = get(data.UI.ansprechpartnerTEL,"string");
  data.data.site.targetDB(data.UI.currentEntrySite,19) = get(data.UI.ansprechpartnerMAIL,"string");
  ###Kontakt Kunde
  data.data.site.targetDB(data.UI.currentEntrySite,20) = get(data.UI.kundenkontaktNAME,"string");
  data.data.site.targetDB(data.UI.currentEntrySite,21) = get(data.UI.kundenkontaktTEL,"string");
  data.data.site.targetDB(data.UI.currentEntrySite,22) = get(data.UI.kundenkontaktMAIL,"string");
  ###Adresseintrag
  data.data.site.targetDB(data.UI.currentEntrySite,12) = get(data.UI.streetIF,"string");
  data.data.site.targetDB(data.UI.currentEntrySite,13) = get(data.UI.housenumberIF,"string");
  ###LabbaseID
  data.data.site.targetDB(data.UI.currentEntrySite,8) = get(data.UI.kundeLabbaseID,"string");
  ### Versorgte Häuser
  data.data.supplied(data.UI.currentEntrySite*20,6) = get(data.UI.suppliedHouseStreet1,"string");
  data.data.supplied(data.UI.currentEntrySite*20,7) = get(data.UI.suppliedHouseNumber1,"string");
  
  data.data.supplied(data.UI.currentEntrySite*20+1,6) = get(data.UI.suppliedHouseStreet2,"string");
  data.data.supplied(data.UI.currentEntrySite*20+1,7) = get(data.UI.suppliedHouseNumber2,"string");
  
  data.data.supplied(data.UI.currentEntrySite*20+2,6) = get(data.UI.suppliedHouseStreet3,"string");
  data.data.supplied(data.UI.currentEntrySite*20+2,7) = get(data.UI.suppliedHouseNumber3,"string");
  
  data.data.supplied(data.UI.currentEntrySite*20+3,6) = get(data.UI.suppliedHouseStreet4,"string");
  data.data.supplied(data.UI.currentEntrySite*20+3,7) = get(data.UI.suppliedHouseNumber4,"string");
  
  data.data.supplied(data.UI.currentEntrySite*20+4,6) = get(data.UI.suppliedHouseStreet5,"string");
  data.data.supplied(data.UI.currentEntrySite*20+4,7) = get(data.UI.suppliedHouseNumber5,"string");
  
  data.data.supplied(data.UI.currentEntrySite*20+5,6) = get(data.UI.suppliedHouseStreet6,"string");
  data.data.supplied(data.UI.currentEntrySite*20+5,7) = get(data.UI.suppliedHouseNumber6,"string");
  
  data.data.supplied(data.UI.currentEntrySite*20+6,6) = get(data.UI.suppliedHouseStreet7,"string");
  data.data.supplied(data.UI.currentEntrySite*20+6,7) = get(data.UI.suppliedHouseNumber7,"string");
  
  data.data.supplied(data.UI.currentEntrySite*20+7,6) = get(data.UI.suppliedHouseStreet8,"string");
  data.data.supplied(data.UI.currentEntrySite*20+7,7) = get(data.UI.suppliedHouseNumber8,"string");
  
  data.data.supplied(data.UI.currentEntrySite*20+8,6) = get(data.UI.suppliedHouseStreet9,"string");
  data.data.supplied(data.UI.currentEntrySite*20+8,7) = get(data.UI.suppliedHouseNumber9,"string");
  
  data.data.supplied(data.UI.currentEntrySite*20+9,6) = get(data.UI.suppliedHouseStreet10,"string");
  data.data.supplied(data.UI.currentEntrySite*20+9,7) = get(data.UI.suppliedHouseNumber10,"string");
  ###
  data.data.supplied(data.UI.currentEntrySite*20+10,6) = get(data.UI.suppliedHouseStreet11,"string");
  data.data.supplied(data.UI.currentEntrySite*20+10,7) = get(data.UI.suppliedHouseNumber11,"string");
  
  data.data.supplied(data.UI.currentEntrySite*20+11,6) = get(data.UI.suppliedHouseStreet12,"string");
  data.data.supplied(data.UI.currentEntrySite*20+11,7) = get(data.UI.suppliedHouseNumber12,"string");
  
  data.data.supplied(data.UI.currentEntrySite*20+12,6) = get(data.UI.suppliedHouseStreet13,"string");
  data.data.supplied(data.UI.currentEntrySite*20+12,7) = get(data.UI.suppliedHouseNumber13,"string");
  
  data.data.supplied(data.UI.currentEntrySite*20+13,6) = get(data.UI.suppliedHouseStreet14,"string");
  data.data.supplied(data.UI.currentEntrySite*20+13,7) = get(data.UI.suppliedHouseNumber14,"string");
  
  data.data.supplied(data.UI.currentEntrySite*20+14,6) = get(data.UI.suppliedHouseStreet15,"string");
  data.data.supplied(data.UI.currentEntrySite*20+14,7) = get(data.UI.suppliedHouseNumber15,"string");
  
  data.data.supplied(data.UI.currentEntrySite*20+15,6) = get(data.UI.suppliedHouseStreet16,"string");
  data.data.supplied(data.UI.currentEntrySite*20+15,7) = get(data.UI.suppliedHouseNumber16,"string");
  
  data.data.supplied(data.UI.currentEntrySite*20+16,6) = get(data.UI.suppliedHouseStreet17,"string");
  data.data.supplied(data.UI.currentEntrySite*20+16,7) = get(data.UI.suppliedHouseNumber17,"string");
  
  data.data.supplied(data.UI.currentEntrySite*20+17,6) = get(data.UI.suppliedHouseStreet18,"string");
  data.data.supplied(data.UI.currentEntrySite*20+17,7) = get(data.UI.suppliedHouseNumber18,"string");
  
  data.data.supplied(data.UI.currentEntrySite*20+18,6) = get(data.UI.suppliedHouseStreet19,"string");
  data.data.supplied(data.UI.currentEntrySite*20+18,7) = get(data.UI.suppliedHouseNumber19,"string");
  
  data.data.supplied(data.UI.currentEntrySite*20+19,6) = get(data.UI.suppliedHouseStreet20,"string");
  data.data.supplied(data.UI.currentEntrySite*20+19,7) = get(data.UI.suppliedHouseNumber20,"string");

  guidata(gcf,data);
endfunction
