function SaveData
  SaveFields();
  appdata = guidata(gcf);
  #save dbDummy.mat appdata;
  save -mat7-binary dbConverted.mat appdata;
endfunction
