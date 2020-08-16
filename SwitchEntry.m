function SwitchEntry(h,evt,direction)
  SaveData();
  switch (direction)
      case 0
      data = guidata(gcf);
      data.UI.currentEntry = CircleSwap(++data.UI.currentEntry);
      UpdateCurrentEntryDisplay(data.UI.currentEntryPanel,data.UI.currentEntry);
      case 1
        data = guidata(gcf);
        data.UI.currentEntry = CircleSwap(--data.UI.currentEntry);
        UpdateCurrentEntryDisplay(data.UI.currentEntryPanel,data.UI.currentEntry);
      case 2
        cstr = inputdlg ("EntryID", "GOTO Entry", 1);
        cstr = CapEntry(cstr{});
        data = guidata(gcf);
        data.UI.currentEntry = cstr;
        UpdateCurrentEntryDisplay(data.UI.currentEntryPanel,data.UI.currentEntry);
   endswitch
   guidata(gcf,data);
   UpdateDisplayedData();
endfunction


function entry = CircleSwap(triedEntry)
  if triedEntry < 1
    entry = guidata(gcf).data.action.size;
  elseif triedEntry > guidata(gcf).data.action.size
    entry = 1;
  else
    entry = triedEntry;
  endif
endfunction

function entry = CapEntry(triedEntry)
  triedEntry = str2num(triedEntry);
  if size(triedEntry,1) > 0
    entry = round(triedEntry(1));  
  else
    entry = 1;
    errordlg("You Dummy!");
  endif
  if entry <1
    entry = 1;
  elseif entry > guidata(gcf).UI.currentEntry
    entry = guidata(gcf).data.action.size;
  endif
endfunction
