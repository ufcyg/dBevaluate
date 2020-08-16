function UpdateCurrentEntryDisplay(currentEntry)
  data = guidata(gcf);
  if isnumeric(currentEntry)
    currentEntry = num2str(currentEntry);
  endif
  set(data.UI.gotoIF,"string",currentEntry);
endfunction
