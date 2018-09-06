function FigureLatex(titletext,xlab,ylab,enablelegend,legendtext,labellocation,xlimit,ylimit,font,titlefont,linewidth)
%FigureLatex(titletext,xlab,ylab,enablelegend,legendtext,labellocation,xlimit,ylimit,font,titlefont,linewidth)
% Function that modifies the characteristics of the last figure with the
% parameters set by the user. Just call the function after ploting the
% figure.

hold on
% Set line width
if linewidth
    lines = findobj(gcf,'Type','Line');
    for i = 1:numel(lines)
        lines(i).LineWidth = linewidth;
    end
end

% Set fonts for axes numbers to Latex
set(gca,'TickLabelInterpreter','latex')

% Change limits and font size of axes numbers
if length(xlimit)==2
    xlim(xlimit)
end
if length(ylimit)==2
    ylim(ylimit)
end

if font
    set(gca,'FontSize',font);
end

% Grid on and minor
grid on
grid minor

% Write label for the axes and set font to Latex and font size
if xlab
    xlabel(xlab,'FontSize',font,'Interpreter','Latex')
end
if ylab
    ylabel(ylab,'FontSize',font,'Interpreter','Latex')
end
if titletext
    title(titletext,'FontSize',titlefont,'Interpreter','Latex')
end

% Write legend and set font size and interpreter to Latex
if enablelegend
    if labellocation
        h = legend(legendtext,'Location',labellocation);
    else
        h = legend(legendtext,'Location','SouthEast');
    end
    set(h,'FontSize',font,'Interpreter','Latex');
end

hold off
end