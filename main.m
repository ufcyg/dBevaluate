clc;
clear;
#[fname, fpath, fltidx] = uigetfile ();
fpath = "C:\\Users\\10300202\\Desktop\\Praxedo\\dBevaluate\\";
fname = "siteFaster.xlsx";
filePath = strcat(fpath,fname);

pkg load io;
load("dbDummy.mat");

BuildUI(appdata);
#cstr = inputdlg (prompt, title, rowscols, defaults, options)
#necessary, cell array of strings, 
#title, title of board
#rowscols - limits rows can limit both with some crazy shit
#defaults - defaults to be displayed in input field (cell array of strings)
#options - Not supported, only for MATLAB compatibility. get f.
#cstreet = inputdlg ({"Straﬂenname","Hausnummer", "Bonusauswahl"},"Straﬂe, Hausnummer, Bonus",1,{"Kˆrnerstraﬂe 25","",""});



#choice = menu("Choose your team!",{"Pharma","Umwelt","Hygiene","Schimmelpilze","(Team-)Leitung","Sylvie"});
#listdlg;


#f = uimenu ("label", "&File", "accelerator", "f");
#e = uimenu ("label", "&Edit", "accelerator", "e");
#uimenu (f, "label", "Close", "accelerator", "q", ...
#           "callback", "close (gcf)");
#uimenu (e, "label", "Toggle &Grid", "accelerator", "g", ...
#           "callback", "grid (gca)");




% create a button group
#gp = uibuttongroup (figureHandle, "Position", [ 0 0.5 1 1]);
% create a buttons in the group
#b1 = uicontrol (gp,
#                    "style","pushbutton" ,
#                    "string", "Print henlo", 
#                    "position",[0 10 150 36],
#                    "callback",{@Henlo});
                
                

