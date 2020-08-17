function ShowRawDataAnsprechpartner(index)
  data = guidata(gcf);
  inputSTR = inputdlg ({"Ansprechpartner/Hausmeister","Bemerkung","AnsprechpartnerNAME","AnsprechpartnerTEL","AnsprechpartnerMAIL"}, "Ansprechpartner/Hausmeister", [1,150; 1,150; 1,150; 1,150; 1,150], {"input1","input2","output1","output2","output3"});
  if sum(size(inputSTR)) > 0
    ModifyDisplayedData(data.UI.ansprechpartnerNAME,inputSTR(3,1){});
    ModifyDisplayedData(data.UI.ansprechpartnerTEL,inputSTR(4,1){});
    ModifyDisplayedData(data.UI.ansprechpartnerMAIL,inputSTR(5,1){});
  endif
endfunction
