% nodes = [8:8:48]
% nb_parent = 3;
% fid='C:\cygwin\home\licence\res.csv';
% res = [];
% for i = 1:length(nodes)
%     [Bel,t]= prop1evid_wiss(nodes(i),nb_parent);
%     res = cat(1,res,[nodes(i),nb_parent,Bel,t])
% end
% res
% csvwrite(fid,res,0,0);
% clear
nb_parent = 12;
[a,b] = prop1evid_wiss(40,nb_parent)

