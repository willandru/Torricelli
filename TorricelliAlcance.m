clc; clear;
Hi = [24 21 18 15 12 9 6 3];
Alcance = [15 20.5 23.5 24.5 24.5 23.5 19 14;
    14.5 20.5 23.5 25 24.5 22.5 19.5 14;
    14 21 23.5 24.5 25 23 19.5 14];


Hi=Hi./100;
Alcance=Alcance./100;


Xi_promedio=mean(Alcance)
Xi_desviacion= std(Alcance)
errAbsoluto= Xi_desviacion/sqrt(8) %Incertidumbre Experimental
errRelativo= errAbsoluto.*100./Xi_promedio

Hi=Hi';
Alcance=Alcance';
Promedio= Xi_promedio';
Desviacion= Xi_desviacion';
Err_Abs=errAbsoluto';
Err_Rel=errRelativo';

table(Hi, Alcance)
table(Promedio, Desviacion, Err_Abs, Err_Rel)
table(Hi, Promedio)

plot(Hi, Promedio,'k-o');
xlabel('Altura[m]');
ylabel('Alcance Horizontal[m]');
title('Alcance máximo');
