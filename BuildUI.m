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
  prevEntryB = uicontrol (figureHandle,
                      "style","pushbutton" ,
                      "string", "<=", 
                      "position",[0 10 50 36],
                      "callback",{@SwitchEntry,1});
  nextEntryB = uicontrol (figureHandle,
                      "style","pushbutton" ,
                      "string", "=>", 
                      "position",[xEnd-50 10 50 36],
                      "callback",{@SwitchEntry,0});
  ###
  ####          
  ####
  ### CurrentEntry Display
  currentEntryPanel = uipanel(figureHandle,
  "Position",[ 0.01 0.96 .125 .03]);

  UpdateCurrentEntryDisplay(currentEntryPanel,appdata.UI.currentEntry);
  appdata.UI.currentEntryPanel = currentEntryPanel;
  ## GOTO entry button
  goToEntryB = uicontrol (figureHandle,
                      "style","pushbutton" ,
                      "string", "Goto", 
                      "position",[210 yEnd-40 50 40],
                      "callback",{@SwitchEntry,2});
  ###
  ####
  ####
  ### Panel DataOrigin
  dataOriginPanel = uipanel(figureHandle,
  "Position",[ 0 .475 1 .475],
  "Title","Ursprungsdaten");
  ###
  ####
  ####
  ### Panel DataTarget
  dataTargetPanel = uipanel(figureHandle,
  "Position",[ 0 .05 1 .475],
  "Title","ZielDaten");
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
