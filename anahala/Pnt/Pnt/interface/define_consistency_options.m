if nbn==0
       errordlg('You shoud first specify the DAG structure');
else
if length(node_sizes)~=nbn
    errordlg('You shoud first quantify the network');
else
    
%if isempty(find(~isemptycell(evidence)))
 %   errordlg('No evidence defined');
 %else

%if isempty(find(~isemptycell(interest)))
 %   errordlg('No variable of interest defined');

 %else
    
load define_consistency_options

h0 = figure('Color',[0.8 0.8 0.8], ...
	'Colormap',mat0, ...
	'FileName','C:\MATLABR11\work\kk.m', ...
	'PaperPosition',[18 180 576 432], ...
	'PaperUnits','points', ...
	'Position',[105 200 350 300], ...
	'Tag','Fig1', ...
    'MenuBar','none', ...
    'ToolBar','none');

h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'ListboxTop',0, ...
	'Position',[80 186.75 119 18], ...
    'String','Checking consistency', ...
	'Style','text', ...
   	'ForegroundColor',[0 0 1], ...
	'Tag','StaticText1');

h_yes = uicontrol('Parent',h0, ...
    'Callback', 'set_options_yes',...
	'Units','points', ...
	'ListboxTop',0, ...
	'Position',[80 150 50 18], ...
	'String','Yes', ...
	'Style','radiobutton', ...
    'Value',1,...
	'Tag','Radiobutton1');

h_no = uicontrol('Parent',h0, ...
    'Callback', 'set_options_no',...
	'Units','points', ...
	'ListboxTop',0, ...
	'Position',[150 150 50 18], ...
	'String','No', ...
	'Style','radiobutton', ...
	'Tag','Radiobutton2');

h1 = uicontrol('Parent',h0, ...
    'Callback', 'get_consistency_options',...
	'Units','points', ...
	'ListboxTop',0, ...
	'Position',[70 80 57 24.75], ...
   	'String','Ok', ...
	'Tag','Pushbutton1');

h1 = uicontrol('Parent',h0, ...
    'Callback', 'Close',...
	'Units','points', ...
	'ListboxTop',0, ...
	'Position',[150 80 57 24.75], ...
    'String','Cancel', ...
	'Tag','Pushbutton1');


end
end

%end

%end