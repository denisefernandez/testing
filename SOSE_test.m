%script that plots SOSE variables: temp, sal as cross sections
%Fernandez June 2013

%start with mean for 2005
load State_bar_2005

S = double(SALT(800:1400,125:320,:));
T = double(THETA(800:1400,125:320,:));

figure;
subplot(3,1,1)
colormap(lbmap(10,'BrownBlue'));
pcolor(S(:,:,1)');shading interp;caxis([34 36]);hold on; colorbar;
[C,h] = contour(S(:,:,1)',[34:0.5:36],'-w');clabel(C,'manual');
title('Southern Ocean State Estimate, mean of Salinity for 2005 (depth level 1)')

subplot(3,1,2)
pcolor(S(:,:,5)');shading interp;caxis([34 36]);hold on; colorbar;
[C,h] = contour(S(:,:,5)',[34:0.5:36],'-w');clabel(C,'manual');
title('Southern Ocean State Estimate, mean of Salinity for 2005 (depth level 5)')

subplot(3,1,3)
pcolor(S(:,:,10)');shading interp;caxis([34 36]);hold on; colorbar;
[C,h] = contour(S(:,:,10)',[34:0.5:36],'-w');clabel(C,'manual');
title('Southern Ocean State Estimate, mean of Salinity for 2005 (depth level 10)')

figure;
subplot(3,1,1)
colormap(jet);
pcolor(T(:,:,1)');shading interp;caxis([5 25]);hold on; colorbar;
[C1] = contour(T(:,:,1)',[5:5:25],'-w');clabel(C1,'manual');
title('Southern Ocean State Estimate, mean of Temperature for 2005 (depth level 1)')

subplot(3,1,2)
pcolor(T(:,:,5)');shading interp;caxis([5 25]);hold on; colorbar;
[C2] = contour(T(:,:,5)',[5:3:25],'-w');clabel(C2,'manual');
title('Southern Ocean State Estimate, mean of Temperature for 2005 (depth level 5)')

subplot(3,1,3)
pcolor(T(:,:,10)');shading interp;caxis([5 25]);hold on; colorbar;
[C3] = contour(T(:,:,10)',[5:3:25],'-w');clabel(C3,'manual');
title('Southern Ocean State Estimate, mean of Temperature for 2005 (depth level 10)')

%cross section along 180

figure;
subplot(2,1,1)
colormap(lbmap(10,'BrownBlue'));
pcolor(S(:,:,1)');shading interp;caxis([34 36]);hold on; colorbar;
[C,h] = contour(S(:,:,1)',[34:0.5:36],'-w');clabel(C,'manual');hold on
title('Southern Ocean State Estimate, mean of Salinity for 2005 (depth level 1)');
annotation('line',[0.434375 0.434375],...
    [0.623348017621145 0.905286343612335]);

subplot(2,1,2)
pcolor(squeeze(S(282,:,:)));shading flat;caxis([34 36]); colormap; hold on
[C,h] = contour(squeeze(S(282,:,:)),[34:0.25:36],'-w');clabel(C,'manual');
title('Southern Ocean State Estimate, mean of Salinity for 2005 (east of NZ)')

