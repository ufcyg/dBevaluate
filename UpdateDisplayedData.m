function UpdateDisplayedData
  data = guidata(gcf);
  
  ###ansprechpartner
  ansprechpartnerNAME = data.data.site.targetDB(data.UI.currentEntrySite,17){};
  ansprechpartnerTEL = data.data.site.targetDB(data.UI.currentEntrySite,18){};
  ansprechpartnerMAIL = data.data.site.targetDB(data.UI.currentEntrySite,19){};
  
  if !isempty(data.data.site.targetDB(data.UI.currentEntrySite,17){})
    ModifyDisplayedData(data.UI.ansprechpartnerNAME,data.data.site.targetDB(data.UI.currentEntrySite,17){});  
  else
    ModifyDisplayedData(data.UI.ansprechpartnerNAME,"");  
  endif
  if !isempty(data.data.site.targetDB(data.UI.currentEntrySite,18){})
    ModifyDisplayedData(data.UI.ansprechpartnerTEL,data.data.site.targetDB(data.UI.currentEntrySite,18){});    
  else
    ModifyDisplayedData(data.UI.ansprechpartnerTEL,"");
  endif
  if !isempty(data.data.site.targetDB(data.UI.currentEntrySite,19){})
    ModifyDisplayedData(data.UI.ansprechpartnerMAIL,data.data.site.targetDB(data.UI.currentEntrySite,19){});    
  else
    ModifyDisplayedData(data.UI.ansprechpartnerMAIL,"");
  endif
  
  ###
  if !isempty(data.data.site.targetDB(data.UI.currentEntrySite,20){})
    ModifyDisplayedData(data.UI.kundenkontaktNAME,data.data.site.targetDB(data.UI.currentEntrySite,20){});   
  else
    ModifyDisplayedData(data.UI.kundenkontaktNAME,""); 
  endif
  if !isempty(data.data.site.targetDB(data.UI.currentEntrySite,21){})
    ModifyDisplayedData(data.UI.kundenkontaktTEL,data.data.site.targetDB(data.UI.currentEntrySite,21){});    
  else
    ModifyDisplayedData(data.UI.kundenkontaktTEL,"");
  endif
  if !isempty(data.data.site.targetDB(data.UI.currentEntrySite,22){})
    ModifyDisplayedData(data.UI.kundenkontaktMAIL,data.data.site.targetDB(data.UI.currentEntrySite,22){});    
  else
    ModifyDisplayedData(data.UI.kundenkontaktMAIL,"");
  endif
  
endfunction
