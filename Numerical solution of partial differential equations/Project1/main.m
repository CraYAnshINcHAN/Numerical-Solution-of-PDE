% clear all
% N=200;
% Data=zeros(1,5);
% for i=1:16
%     N=N+50
%     data=TimeRace(N)
%     Data=[Data;data;];
% end
clear all
N=0;
Data=zeros(1,5);
for i=1:20
    N=N+10
    data=TimeRace(N)
    Data=[Data;data;];
end
