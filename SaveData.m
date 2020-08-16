function SaveData
  appdata = guidata(gcf);
  save("dbDummy.mat", appdata);
endfunction
