function [] = GUI_6()
% Demonstrate how to update one uicontrol with data from others.
% Creates two radiobuttons and a pushbutton.  The pushbutton, when clicked
% shows which radio button (or both or none) is currently selected.  See
% GUI_8 for similar radiobuttongroup GUI.
%
%
% Author:  Matt Fig
% Date:  7/15/2009

S.fh = figure('units','pixels',...
              'position',[400 400 120 100],...
              'menubar','none',...
              'name','GUI_6',...
              'numbertitle','off',...
              'resize','off');
S.pb = uicontrol('style','push',...
                 'unit','pix',...
                 'position',[10 10 100 20],...
                 'string','None Selected',...
                 'tooltip','Push to find out which radio button is selected');

S.rd(1) = uicontrol('style','rad',...
                    'unit','pix',...
                    'position',[10 40 100 20],...
                    'string','  Button A');
S.rd(2) = uicontrol('style','rad',...
                    'unit','pix',...
                    'position',[10 70 100 20],...
                    'string','  Button B');

set(S.pb,'callback',{@pb_call,S}); % Set the callback, pass hands.

function [] = pb_call(varargin)
% Callback for pushbutton.
S = varargin{3};  % Get structure.
R = [get(S.rd(1),'val'), get(S.rd(2),'val')];  % Get state of radios.
str = 'Both selected';  % Default string.

if R(1)==1 && R(2)==0
    str = 'A selected';
elseif R(1)==0 && R(2)==1
    str = 'B selected';
elseif ~any(R)
    str = 'None selected';
end

set(S.pb,'string',str)

if (app.ButtonA.Value == 1 && app.ButtonB.Value == 1)
                app.TextArea.Value = 'Both selected';
            elseif (app.ButtonA.Value == 0 && app.ButtonB.Value == 1)
                app.TextArea.Value = 'B selected';
            elseif (app.ButtonA.Value == 1 && app.ButtonB.Value == 0)
                app.TextArea.Value = 'A selected';
            elseif (app.ButtonA.Value == 0 && app.ButtonB.Value == 0)
                app.TextArea.Value = 'None selected';
            end