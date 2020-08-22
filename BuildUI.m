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
  ###
  ####
  ####
  ### Add Kunde (HV,…) NameDisplay
  appdata.UI.currentCustomerName = uipanel(figureHandle,
                                  "Position",[ .5 0.96 .4 .03],
                                  "units","normalized");
  ###
  ####
  ####
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
  ### Add save button
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
                      "callback", {@ShowRawDataAnsprechpartnerKundenkontakt});
                      
  kundenkontaktBG = uibuttongroup(dataTargetBG,
                                  "units","normalized",
                                  "Position",[ 0 .85 .95 .075],
                                  "title","Kundenkontakt");
  appdata.UI.kundenkontaktNAME = uicontrol(kundenkontaktBG, "style","edit","units","normalized", "position", [0 0 .3 1]);
  appdata.UI.kundenkontaktTEL = uicontrol(kundenkontaktBG, "style","edit","units","normalized", "position", [0.33 0 .3 1]);
  appdata.UI.kundenkontaktMAIL = uicontrol(kundenkontaktBG, "style","edit","units","normalized", "position", [0.66 0 .3 1]);
  addressBG = uibuttongroup(dataTargetBG,
                                  "units","normalized",
                                  "Position",[ 0 .775 .95 .075],
                                  "title","Adresseintrag");
  appdata.UI.streetIF = uicontrol(addressBG, "style","edit","units","normalized", "position",[0 0 .85 1]);
  appdata.UI.housenumberIF = uicontrol(addressBG, "style","edit","units","normalized", "position",[.88 0 .11 1]);
  editB2 = uicontrol (dataTargetBG,
                      "style","pushbutton",
                      "units","normalized",
                      "string", "Bearbeiten", 
                      "position",[.95 .78 .05 .05],
                      "callback", {@ShowDataAddress});
  kundeLabbaseIDBG = uibuttongroup(dataTargetBG,
                                  "units","normalized",
                                  "Position",[ 0 .7 .95 .075],
                                  "title","Kunde Labbase ID");
  appdata.UI.kundeLabbaseID = uicontrol(kundeLabbaseIDBG, "style","edit","units","normalized", "position",[0 0 1 1]);
  editB3 = uicontrol (dataTargetBG,
                      "style","pushbutton",
                      "units","normalized",
                      "string", "Bearbeiten", 
                      "position",[.95 .705 .05 .05],
                      "callback", {@ShowKundeLabbaseID});
  ###
  ####
  ####
  ### Versorgte Häuser
  ansprechpartnerBG = uibuttongroup(dataTargetBG,
                                    "units","normalized",
                                    "Position",[ 0 0.01 .95 .695],
                                    "title","Versorgte Häuser");
  appdata.UI.suppliedHouseStreet1 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0 0.9 .45 .08]);
  appdata.UI.suppliedHouseNumber1 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.45 0.9 .05 .08]);
  appdata.UI.suppliedHouseStreet2 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0 0.8 .45 .08]);
  appdata.UI.suppliedHouseNumber2 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.45 0.8 .05 .08]);
  appdata.UI.suppliedHouseStreet3 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0 0.7 .45 .08]);
  appdata.UI.suppliedHouseNumber3 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.45 0.7 .05 .08]);
  appdata.UI.suppliedHouseStreet4 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0 0.6 .45 .08]);
  appdata.UI.suppliedHouseNumber4 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.45 0.6 .05 .08]);
  appdata.UI.suppliedHouseStreet5 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0 0.5 .45 .08]);
  appdata.UI.suppliedHouseNumber5 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.45 0.5 .05 .08]);
  appdata.UI.suppliedHouseStreet6 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0 0.4 .45 .08]);
  appdata.UI.suppliedHouseNumber6 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.45 0.4 .05 .08]);
  appdata.UI.suppliedHouseStreet7 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0 0.3 .45 .08]);
  appdata.UI.suppliedHouseNumber7 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.45 0.3 .05 .08]);
  appdata.UI.suppliedHouseStreet8 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0 0.2 .45 .08]);
  appdata.UI.suppliedHouseNumber8 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.45 0.2 .05 .08]);
  appdata.UI.suppliedHouseStreet9 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0 0.1 .45 .08]);
  appdata.UI.suppliedHouseNumber9 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.45 0.1 .05 .08]);
  appdata.UI.suppliedHouseStreet10 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0 0 .45 .08]);
  appdata.UI.suppliedHouseNumber10 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.45 0 .05 .08]);
  #
  appdata.UI.suppliedHouseStreet11 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.5 0.9 .45 .08]);
  appdata.UI.suppliedHouseNumber11 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.95 0.9 .05 .08]);
  appdata.UI.suppliedHouseStreet12 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.5 0.8 .45 .08]);
  appdata.UI.suppliedHouseNumber12 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.95 0.8 .05 .08]);
  appdata.UI.suppliedHouseStreet13 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.5 0.7 .45 .08]);
  appdata.UI.suppliedHouseNumber13 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.95 0.7 .05 .08]);
  appdata.UI.suppliedHouseStreet14 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.5 0.6 .45 .08]);
  appdata.UI.suppliedHouseNumber14 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.95 0.6 .05 .08]);
  appdata.UI.suppliedHouseStreet15 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.5 0.5 .45 .08]);
  appdata.UI.suppliedHouseNumber15 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.95 0.5 .05 .08]);
  appdata.UI.suppliedHouseStreet16 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.5 0.4 .45 .08]);
  appdata.UI.suppliedHouseNumber16 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.95 0.4 .05 .08]);
  appdata.UI.suppliedHouseStreet17 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.5 0.3 .45 .08]);
  appdata.UI.suppliedHouseNumber17 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.95 0.3 .05 .08]);
  appdata.UI.suppliedHouseStreet18 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.5 0.2 .45 .08]);
  appdata.UI.suppliedHouseNumber18 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.95 0.2 .05 .08]);
  appdata.UI.suppliedHouseStreet19 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.5 0.1 .45 .08]);
  appdata.UI.suppliedHouseNumber19 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.95 0.1 .05 .08]);
  appdata.UI.suppliedHouseStreet20 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.5 0 .45 .08]);
  appdata.UI.suppliedHouseNumber20 = uicontrol(ansprechpartnerBG, "style","edit","units","normalized", "position",[0.95 0 .05 .08]);
  
  editB4 = uicontrol (dataTargetBG,
                      "style","pushbutton",
                      "units","normalized",
                      "string", "Bearbeiten", 
                      "position",[.95 .45 .05 .05],
                      "callback", {@ShowSuppliedHouses,0});
  editB4 = uicontrol (dataTargetBG,
                      "style","pushbutton",
                      "units","normalized",
                      "string", "Bearbeiten", 
                      "position",[.95 .15 .05 .05],
                      "callback", {@ShowSuppliedHouses,1});
  
  guidata(figureHandle, appdata);
  UpdateDisplayedData();  
endfunction
