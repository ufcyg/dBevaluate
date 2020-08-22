function ShowKundeLabbaseID(h,evt)
  data = guidata(gcf);
  currentIndex = data.UI.currentEntrySite;
  
  prompt = {"TO: KundeLabbaseID"};
  rowscols =   [1,150];
  title = "KundeLabbaseID";  
  defaults = {data.data.site.targetDB(currentIndex,8){}};
              
  inputSTR = inputdlg (prompt, title, rowscols, defaults);
  if size(inputSTR,1) > 0
    ModifyDisplayedData(data.UI.kundeLabbaseID,inputSTR(1,1){});
    data.data.site.targetDB(data.UI.currentEntrySite,8) = inputSTR(1);
  else
    disp("user cancelled");
  endif
  guidata(gcf,data);
endfunction
