clear
clc
data = xlsread('Sum_r.xlsx','Sheet2');
data1 = xlsread('Sum_r.xlsx','Sheet3');
N = data(2:end,1);
Data = [data(2:end,2:end),data1(2:end,7:end)];
temp = Data
marker = {'g.-','go-','gx-','g+-','g*-','bs-','bd-','kv-','k^-','bs:','bd:','kv:','k^:'};
sD = size(Data);
subplot(3,3,[1 4 7])
for i = 1:sD(2)
    x = N;
    y = Data(:,i)./0.07330;
    loglog(x,y,char(marker(i)))
    hold on
end
legend('SBB-MRT','LIBB-MRT','QIBB-MRT','MR-MRT',...
    'CLI-MRT','PSM-MRT-A','PSM-MRT-B','IBM-MRT-A','IBM-MRT-B',...
    'PSM-SRT-A','PSM-SRT-B','IBM-SRT-A','IBM-SRT-B',...
    'location','NorthEast')
grid on
axis([min(N) max(N) 0.8 2])
subplot(3,3,2)
yy = [];
for i=1:5
    x = N;
    y = abs(Data(:,i)./0.07330-1);
    yy = [yy,y];
    loglog(x,y,char(marker(i)))
    hold on
end
grid on
a = max(max(yy))/min(N)^-1;
a = a/0.2;
xxx = min(N):1:max(N);
yyy = a.*xxx.^-1;
ymax = max(yyy);
plot(xxx,yyy,'r--','linewidth',2)
grid on
a = min(min(yy))/min(N)^-2;
a = a/0.03;
xxx = min(N):1:max(N);
yyy = a.*xxx.^-2;
ymin = min(yyy);
plot(xxx,yyy,'m--','linewidth',2)
axis([min(N) max(N) ymin ymax])
subplot(3,3,5)
num = [6,7,10,11];
yy = [];
for i=1:numel(num)
    x = N;
    y = abs(Data(:,num(i))./0.07330-1);
    yy = [yy,y];
    loglog(x,y,char(marker(num(i))))
    hold on
end
grid on
a = max(max(yy))/min(N)^-1;
a = a/0.2;
xxx = min(N):1:max(N);
yyy = a.*xxx.^-1;
ymax = max(yyy);
plot(xxx,yyy,'r--','linewidth',2)
grid on
a = min(min(yy))/min(N)^-2;
a = a/0.03;
xxx = min(N):1:max(N);
yyy = a.*xxx.^-2;
ymin = min(yyy);
plot(xxx,yyy,'m--','linewidth',2)
axis([min(N) max(N) ymin ymax])
% axis([0.5 2 0.7 1.3])
subplot(3,3,8)
num = [8,9,12,13];
yy = [];
for i=1:numel(num)
    x = N;
    y = abs(Data(:,num(i))./0.07330-1);
    yy = [yy,y];
    loglog(x,y,char(marker(num(i))))
    hold on
end
grid on
a = max(max(yy))/min(N)^-1;
a = a/0.2;
xxx = min(N):1:max(N);
yyy = a.*xxx.^-1;
ymax = max(yyy);
plot(xxx,yyy,'r--','linewidth',2)
grid on
a = min(min(yy))/min(N)^-2;
a = a/0.03;
xxx = min(N):1:max(N);
yyy = a.*xxx.^-2;
ymin = min(yyy);
plot(xxx,yyy,'m--','linewidth',2)
axis([min(N) max(N) ymin ymax])
subplot(3,3,[3 6 9])
for i = 1:sD(2)
    x = N;
    y = abs(Data(:,i)./0.07330-1);
    
    loglog(x,y,char(marker(i)))
    hold on
end
xlim([min(N),max(N)])
grid on