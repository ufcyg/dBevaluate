function BuildUI(appdata)
  
  [xStart, yStart, xEnd, yEnd] = GetFigureDimensions(125,125);
  
  ### Create mainFigure
  figureHandle = figure(
                      "Position", [xStart, yStart, xEnd, yEnd],
                      "numbertitle", "off", 
                      "name", "dBevaluate",
                      "resize","off",
                      "toolbar","none",
                      "menubar","none");
  ### Add Navigation buttons
  buttonWidth = 250;
  buttonHeight = 42;
  offset = 0;
  prevEntryB = uicontrol (figureHandle,
                      "style","pushbutton" ,
                      "string", "<=", 
                      "position",[offset offset buttonWidth buttonHeight],
                      "callback", {@SwitchEntry,1});
  nextEntryB = uicontrol (figureHandle,
                      "style","pushbutton",
                      "string", "=>", 
                      "position",[xEnd-buttonWidth-offset offset buttonWidth buttonHeight],
                      "callback", {@SwitchEntry,0});
  ###
  ### Add Navigation buttons
  saveB = uicontrol (figureHandle,
                      "style","pushbutton" ,
                      "string", "Änderungen Speichern", 
                      "position",[xEnd/2-buttonWidth/2-offset/2 offset buttonWidth buttonHeight],
                      "callback", {@SaveData});
  ###
  ####          
  ####
  ### CurrentEntry Display
  currentEntryPanelSite = uipanel(figureHandle,
                                  "Position",[ 0.01 0.96 .1 .03],
                                  "title", "EintragsID Anlage");
  ## GOTO entry inputfield
  appdata.UI.gotoIFSite = uicontrol (figureHandle,
                                    "style","edit",
                                    "string", "-1", 
                                    "position",[150 yEnd-40 100 40],
                                    "callback", {@SwitchEntry,2});
                      ### CurrentEntry Display
  currentEntryPanel = uipanel(figureHandle,
  "Position",[ 0.2 0.96 .1 .03],
  "title", "EintragsID Aktion");
  ## GOTO entry inputfield
  appdata.UI.gotoIFAction = uicontrol (figureHandle,
                      "style","edit",
                      "string", "-1", 
                      "position",[450 yEnd-40 100 40],
                      "callback", {@SwitchEntry,3});
                      
  guidata(figureHandle, appdata);
  UpdateCurrentEntryDisplay(appdata.UI.currentEntrySite,appdata.UI.currentEntryAction);
  ###
  ####
  ####
  ### Panel DataTarget
  dataTargetBG = uibuttongroup(figureHandle,
  "Position",[ 0 .05 1 .9]);
  ansprechpartnerBG = uibuttongroup(dataTargetBG,
  "units","normalized",
  "Position",[ 0 .925 .95 .075],
  "title","Ansprechpartner/Hausmeister");
  appdata.UI.ansprechpartnerNAME = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position", [0 0 .3 1]);
  appdata.UI.ansprechpartnerTEL = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position", [0.33 0 .3 1]);
  appdata.UI.ansprechpartnerMAIL = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position", [0.66 0 .3 1]);
   editB1 = uicontrol (dataTargetBG,
                      "style","pushbutton",
                      "units","normalized",
                      "string", "Bearbeiten", 
                      "position",[.95 .875 .05 .1],
                      "callback", {@ShowRawDataAnsprechpartnerKundenkontakt,2});
                      
  kundenkontaktBG = uibuttongroup(dataTargetBG,
  "units","normalized",
  "Position",[ 0 .85 .95 .075],
  "title","Kundenkontakt");
  appdata.UI.kundenkontaktNAME = uicontrol(kundenkontaktBG, "style","edit","units","normalized", "position", [0 0 .3 1]);
  appdata.UI.kundenkontaktTEL = uicontrol(kundenkontaktBG, "style","edit","units","normalized", "position", [0.33 0 .3 1]);
  appdata.UI.kundenkontaktMAIL = uicontrol(kundenkontaktBG, "style","edit","units","normalized", "position", [0.66 0 .3 1]);
  
  ###
  guidata(figureHandle, appdata);
  UpdateDisplayedData();  
endfunction
