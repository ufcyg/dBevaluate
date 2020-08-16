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
  currentEntryPanel = uipanel(figureHandle,
  "Position",[ 0.01 0.96 .125 .03],
  "title", "EintragsID");

  
  appdata.UI.currentEntryPanel = currentEntryPanel;
  ## GOTO entry inputfield
  appdata.UI.gotoIF = uicontrol (figureHandle,
                      "style","edit",
                      "string", "-1", 
                      "position",[125 yEnd-40 100 40],
                      "callback", {@SwitchEntry,2});
  guidata(figureHandle, appdata);
  UpdateCurrentEntryDisplay(appdata.UI.currentEntry);
  ###
  ####
  ####
  ### Panel DataOrigin
  appdata.UI.dataOriginBG = uibuttongroup(figureHandle,
  "Position",[ 0 .485 1 .460],
  "Title","Ursprungsdaten");
  ###
  dataOriginBG = uibuttongroup(appdata.UI.dataOriginBG,
  "Position",[0 0 .25 .975],
  "clipping","on",
  "Title","Ansprechpartner");
  ### Input Field
  appdata.UI.originIF.ansprechpartner = uicontrol (dataOriginBG,
                      "clipping","on",
                      "units","normalized",
                      "style","listbox",
                      "position",[0 0.5 1 1],
                      "horizontalalignment","center",
                      "verticalalignment","middle",
                      "string", "asdwx");
  ####[xEnd/2 yEnd - yEnd/4 100 40]
  ####
  ### Panel DataTarget
  dataTargetBG = uibuttongroup(figureHandle,
  "position",[ 0 .05 1 .460],
  "Title","Zieldaten");
  ###
  ####
  ####
  ###






  ### PANEL Ansprechpartner/Hausmeister Split
  % create a button group
  #gp = uibuttongroup (figureHandle, 
  #"Position", [ 0 0.05 1 .45]);
  % create a button group
  #gp = uibuttongroup (figureHandle, "Position", [ 0 0.5 1 1]);
  guidata(figureHandle, appdata);
endfunction
