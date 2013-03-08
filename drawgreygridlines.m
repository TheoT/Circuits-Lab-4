function drawgreygridlines()
    for dir='XY';
        ticks = get(gca, [dir 'Tick']);
        lim = get(gca, [dir 'lim']);
        for ii=1:length(ticks)
            coord = ticks(ii);

            for jj=1:9,
                if jj==1                  % major grid properties
                    color = [1 1 1]*0.95;
                    weight = 2;
                else                      % minor grid properties
                    color = [1 1 1]*0.95;
                    weight = 1;
                end
                if jj*coord > lim(2)
                    continue
                end
                if dir=='X' 
                    L = line((jj*coord)*[1 1], get(gca, 'ylim'), ...
                             'color', color, 'linewidth', weight);
                else
                    L = line(get(gca, 'xlim'), (jj*coord)*[1 1], ...
                             'color', color, 'linewidth', weight);
                end
                uistack(L, 'bottom');
            end
        end
    end
end