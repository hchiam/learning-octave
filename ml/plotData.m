function plotData(x, y, xLabel, yLabel)
  figure; % open a new figure window
  plot(x, y, 'rx', 'MarkerSize', 10); % 'rx' = red X markers
  ylabel(xLabel);
  xlabel(yLabel);
endfunction
