disp(strcat("Starting dBevaluate..."," - ",ctime(time())));
clc;
clear;
disp(strcat("Loading packages..."," - ",ctime(time())));
pkg load io;
disp(strcat("...done", " - ", ctime(time())));

disp(strcat("Loading data..."," - ",ctime(time())));
#load("dbDummy.mat");
load("dbConverted.mat");
disp(strcat("...done", " - ", ctime(time())));
#save -mat7-binary dbConverted.mat appdata;
disp(strcat("Loading UI..."," - ",ctime(time())));
BuildUI(appdata);
disp(strcat("...done", " - ", ctime(time())));