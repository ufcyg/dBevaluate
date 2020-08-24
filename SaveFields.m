### writes the current contents of every input field into the locally loaded DB
function SaveFields
  data = guidata(gcf); # load data from figure
  ###SetEditedFlag
  data.data.site.entryEdited(data.UI.currentEntrySite,1) = true; # flags entry as edited, this will prevent copying data from previous entries if revisited
  ###Kontakt vor Ort
  data.data.site.targetDB(data.UI.currentEntrySite,17) = get(data.UI.ansprechpartnerNAME,"string");
  data.data.site.targetDB(data.UI.currentEntrySite,18) = get(data.UI.ansprechpartnerTEL,"string");
  data.data.site.targetDB(data.UI.currentEntrySite,19) = get(data.UI.ansprechpartnerMAIL,"string");
  ###Kontakt Kunde
  data.data.site.targetDB(data.UI.currentEntrySite,20) = get(data.UI.kundenkontaktNAME,"string");
  data.data.site.targetDB(data.UI.currentEntrySite,21) = get(data.UI.kundenkontaktTEL,"string");
  data.data.site.targetDB(data.UI.currentEntrySite,22) = get(data.UI.kundenkontaktMAIL,"string");
  ###Adresseintrag
  data.data.site.targetDB(data.UI.currentEntrySite,12) = get(data.UI.suppliedHouseStreet1,"string");
  data.data.site.targetDB(data.UI.currentEntrySite,13) = get(data.UI.suppliedHouseNumber1,"string");
  ###LabbaseID
  data.data.site.targetDB(data.UI.currentEntrySite,8) = get(data.UI.kundeLabbaseID,"string");
  ### Versorgte Häuser
  for i=1:1:20
    data.data.supplied.(genvarname(strcat("targetDBsuppliedEntry",num2str(data.UI.currentEntrySite))))(i+1,6) = get(data.UI.(genvarname(strcat("suppliedHouseStreet",num2str(i)))),"string");
    data.data.supplied.(genvarname(strcat("targetDBsuppliedEntry",num2str(data.UI.currentEntrySite))))(i+1,7) = get(data.UI.(genvarname(strcat("suppliedHouseNumber",num2str(i)))),"string");
  endfor

  guidata(gcf,data); # save modified data (for security reasons)
  #SaveData(); # saving to HDD disabled due to long waiting times
endfunction
