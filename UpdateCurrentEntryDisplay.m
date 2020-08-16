function UpdateCurrentEntryDisplay(handle, currentEntry)
  set(handle,
            "Title",strcat("CurrentEntry: ",num2str(currentEntry)))
  #guidata(gcf, guidata(gcf).UI.currentEntry = num2str(currentEntry));
endfunction
