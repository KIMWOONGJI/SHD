function plotcompRX(X1, YMatrix1, X2, YMatrix2, X3, YMatrix3)
%CREATEFIGURE(X1, YMatrix1, X2, YMatrix2)
%  X1:  vector of x data
%  YMATRIX1:  matrix of y data
%  X2:  vector of x data
%  YMATRIX2:  matrix of y data
%  X3:  vector of x data
%  YMATRIX3:  matrix of y data

%  Auto-generated by MATLAB on 01-Aug-2022 17:10:14

% Create figure
figure1 = figure('Position',[100 100 100+800 100+600],'NumberTitle','off','Name','Figure','Color',[1 1 1]);

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create multiple lines using matrix input to plot
plot1 = plot(X1,YMatrix1,'LineWidth',2,'Color',[0 0 0]);
set(plot1(1),'DisplayName','R');
set(plot1(2),'DisplayName','X, MATLAB-Similink','LineStyle','--');

% Create multiple lines using matrix input to plot
plot2 = plot(X2,YMatrix2,'LineWidth',2,'Color',[1 0 0]);
set(plot2(1),'DisplayName','R');
set(plot2(2),'DisplayName','X, LTspice','LineStyle','--');

% Create multiple lines using matrix input to plot
plot3 = plot(X3,YMatrix3,'LineWidth',2,'Color',[0 0 1]);
set(plot3(1),'DisplayName','R');
set(plot3(2),'DisplayName','X, COMSOL','LineStyle','--');

% Create ylabel
ylabel('Acoustic resistance and reactance [N\cdots/m^5]');

% Create xlabel
xlabel('Frequency [Hz]');

% Uncomment the following line to preserve the Y-limits of the axes
ylim(axes1,[0 250000]);
box(axes1,'on');
hold(axes1,'off');
% Set the remaining axes properties
set(axes1,'FontName','Times New Roman','FontSize',11,'XGrid','on','YGrid',...
    'on');

% Create legend
legend1 = legend(axes1,'show');
set(legend1,'NumColumns',3,'Location','northoutside');