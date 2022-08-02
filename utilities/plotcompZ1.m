function plotcompZ1(X1, Y1, X2, YMatrix1, X3, YMatrix2,f_l,f_u,scale_x)
%CREATEFIGURE(X1, Y1, X2, YMatrix1, X3, YMatrix2)
%  X1:  vector of x data
%  Y1:  vector of y data

%  X2:  vector of x data
%  YMATRIX1:  matrix of y data

%  X3:  vector of x data
%  YMATRIX2:  matrix of y data

%  Auto-generated by MATLAB on 22-Jul-2022 20:44:57

% Create figure
figure1 = figure('Position',[100 100 100+800 100+600],'NumberTitle','off','Name','Figure','Color',[1 1 1]);

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create loglog
loglog(X1,Y1,'DisplayName','MATLAB-Simlink','LineWidth',2,'Color',[0 0 0]);

[pks,locs] = findpeaks(Y1,X1);

plot(locs,pks,'x','MarkerSize',10,'Marker','x','LineWidth',2,'LineStyle','none','Color',[0 1 0],'HandleVisibility','off');

for i=1:length(locs)
    text(locs(i)+50,pks(i),num2str(round(locs(i))),'FontName','Times New Roman');
end

[pks,locs] = findpeaks(-Y1,X1);

plot(locs,-pks,'x','MarkerSize',10,'Marker','x','LineWidth',2,'LineStyle','none','Color',[0 1 0 1],'HandleVisibility','off');

for i=1:length(locs)
    text(locs(i)+50,-pks(i),num2str(round(locs(i))),'FontName','Times New Roman');
end

% Create multiple lines using matrix input to loglog
loglog1 = loglog(X2,YMatrix1,'LineWidth',2,'Color',[1 0 0]);
set(loglog1(1),'DisplayName','LTspice','LineStyle','-');
% set(loglog1(2),'DisplayName','LTspice, short(e)','LineStyle',':');

% Create multiple lines using matrix input to loglog
loglog2 = loglog(X3,YMatrix2,'LineWidth',2,'Color',[0 0 1]);
set(loglog2(1),'DisplayName','COMSOL','LineStyle','-');
% set(loglog2(2),'DisplayName','COMSOL, short(e)','LineStyle',':');

% Create ylabel
ylabel('Acoustic Impedance [N\cdot s/m^5]');

% Create xlabel
xlabel('Frequency [Hz]');

% Uncomment the following line to preserve the X-limits of the axes
xlim(axes1,[f_l f_u]);
box(axes1,'on');
hold(axes1,'off');
% Set the remaining axes properties
set(axes1,'FontName','Times New Roman','FontSize',11,'XGrid','on',...
    'XMinorTick','on','XScale',scale_x,'YGrid','on','YMinorTick','on','YScale',...
    'log');
% Create legend
legend1 = legend(axes1,'show');
set(legend1,'NumColumns',5,'Location','northoutside');