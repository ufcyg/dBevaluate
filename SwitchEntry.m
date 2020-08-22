function SwitchEntry(h,evt,direction)
  SaveFields();
  if !isnumeric(direction)
    direction = str2num(direction);
  endif
  switch (direction)
      case 0
        data = guidata(gcf);
        data.UI.currentEntrySite = CircleSwap(++data.UI.currentEntrySite, data.data.site.size);
        data.UI.currentEntryAction = CircleSwap(++data.UI.currentEntryAction, data.data.action.size);
        UpdateCurrentEntryDisplay(data.UI.currentEntrySite, data.UI.currentEntryAction);
      case 1
        data = guidata(gcf);
        data.UI.currentEntrySite = CircleSwap(--data.UI.currentEntrySite, data.data.site.size);
        data.UI.currentEntryAction = CircleSwap(--data.UI.currentEntryAction, data.data.action.size);
        UpdateCurrentEntryDisplay(data.UI.currentEntrySite, data.UI.currentEntryAction);
      case 2
        data = guidata(gcf);
        data.UI.currentEntrySite = CapEntry(get(data.UI.gotoIFSite).string,data.UI.currentEntrySite,data.data.site.size);
        UpdateCurrentEntryDisplay(data.UI.currentEntrySite, data.UI.currentEntryAction);
      case 3
        data = guidata(gcf);
        data.UI.currentEntryAction = CapEntry(get(data.UI.gotoIFAction).string,data.UI.currentEntryAction,data.data.action.size);
        UpdateCurrentEntryDisplay(data.UI.currentEntrySite, data.UI.currentEntryAction);
   endswitch
   guidata(gcf,data);
   UpdateDisplayedData();
endfunction


function entry = CircleSwap(triedEntry, maxSize)
  if triedEntry < 2
    entry = maxSize;
  elseif triedEntry > maxSize
    entry = 2;
  else
    entry = triedEntry;
  endif
endfunction

function entry = CapEntry(triedEntry,currentEntry, maxSize)
  
  triedEntry = str2num(triedEntry);
  if size(triedEntry,1) > 0
    entry = round(triedEntry(1));
  else
    entry = currentEntry;
    errordlg("You Dummy!");
  endif
  if entry < 2
    entry = 2;
  elseif entry > maxSize
    entry = maxSize;
  endif
endfunction
