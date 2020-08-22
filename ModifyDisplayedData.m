function ModifyDisplayedData(handle,string)
  if !isempty(string)
    set(handle,"string",string);
  else
    set(handle,"string","");
  endif
endfunction
