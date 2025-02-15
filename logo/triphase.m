A = 5;
f = 1/3;
t = linspace(0, 3, 200);

phiA = 0;
phiB = -2*pi/3;
phiC = 2*pi/3;

V1 = A * sin(2*pi*f*t + phiA);
V2 = A * sin(2*pi*f*t + phiB);
V3 = A * sin(2*pi*f*t + phiC);

figure;
hold on;
plot(t, V1, 'r', 'linewidth', 2);
plot(t, V2, 'g', 'linewidth', 2);
plot(t, V3, 'b', 'linewidth', 2);
hold off;

set(gca, 'XColor', 'k', 'YColor', 'k', 'LineWidth', 1.5);
xlabel(''); ylabel('');
xlim([0, 3]);
ylim([-A-1, A+1]);

tA = 0.75;
text(tA, A * sin(2*pi*f*tA + phiA) + 0.5, 'Network', 'fontsize', 12, 'color', 'r', 'fontweight', 'bold');

tB = 1.5;
text(tB, A * sin(2*pi*f*tB + phiB) - 0.5, 'Syscall', 'fontsize', 12, 'color', 'g', 'fontweight', 'bold');

tC = 2.25;
text(tC, A * sin(2*pi*f*tC + phiC) + 0.5, 'Signal', 'fontsize', 12, 'color', 'b', 'fontweight', 'bold');

print -dpng 'triphase_logo.png'
