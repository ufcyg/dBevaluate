function SwitchEntry(h,evt,direction)
  SaveData();
  if !isnumeric(direction)
    direction = str2num(direction);
  endif
  switch (direction)
      case 0
      data = guidata(gcf);
      data.UI.currentEntry = CircleSwap(++data.UI.currentEntry);
      UpdateCurrentEntryDisplay(data.UI.currentEntry);
      case 1
        data = guidata(gcf);
        data.UI.currentEntry = CircleSwap(--data.UI.currentEntry);
        UpdateCurrentEntryDisplay(data.UI.currentEntry);
      case 2
        #cstr = inputdlg ("EntryID", "GOTO Entry", 1);
        #cstr = CapEntry(cstr{});
        data = guidata(gcf);
        data.UI.currentEntry = CapEntry(get(data.UI.gotoIF).string);
        UpdateCurrentEntryDisplay(data.UI.currentEntry);
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
  currentEntry = guidata(gcf).UI.currentEntry;
  maxSize = guidata(gcf).data.action.size;
  
  triedEntry = str2num(triedEntry);
  if size(triedEntry,1) > 0
    entry = round(triedEntry(1));
  else
    entry = currentEntry;
    errordlg("You Dummy!");
  endif
  if entry <1
    entry = 1;
  elseif entry > maxSize
    entry = maxSize;
  endif
endfunction
