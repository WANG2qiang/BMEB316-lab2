clc;clear;close all;
fh = figure();
set(fh,'Name','Figure: Meet the World!');
set(fh,'NumberTitle','off');
ph = plot([1:10],[1:10].^2);
set(ph,'LineStyle','--');
set(ph,'Marker','square');
set(ph,'MarkerEdgeColor',[1 0 0],'MarkerFaceColor',[0 1 0]);
get(ph); get(fh); %Look at all properties