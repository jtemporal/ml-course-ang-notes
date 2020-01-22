t = [0:0.01:0.98];
y1 = sin (2*pi*4*t);
plot (t, y1);   % this plots whatever you give it
y2 = cos (2*pi*4*t);
plot (t, y2); 

plot (t, y1);
hold on   % this is the command if you want to plot new figures on top of the other
plot (t, y2, 'r');

xlabel('time');
ylabel('value');
legend('sin', 'cos');
title('sin and cos of t = [0:0.01:0.98]');
print -dpng '../images/plots_05_sin_and_cos_of_t.png'; % this saves the plot as a png file (it may take a while)
close  % to close the plot window and avoid plotting everything over the same plot

A = magic (5);
imagesc (A);  % this plots the matrix as a color matrix
print -dpng '../images/plots_05_matrix_color_plot.png';
clf;  % cleans the existing plot
imagesc (A), colorbar, colormap gray;  % colorbar adds the colorbar to the plot and colomap grey sets the coloring to a grey scale 
print -dpng '../images/plots_05_matrix_color_plot_bar_grey.png';