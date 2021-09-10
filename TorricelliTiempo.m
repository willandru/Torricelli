%%
clc; clear;
Hi2=[21 18 15 12 9 6 3];
Tiempo=[23.57 17.68 17.99 15.28 13.31 12.53 11.62;
    24.77 17.76 17.27 15.18 13.2 12.82 11.28;
    24.1 17.78 17.4 14.97 13.1 13 11.07];
Hi2=Hi2./100;

T_promedio=mean(Tiempo)
T_desviacion=std(Tiempo)
errAbsT= T_desviacion/sqrt(7) %Incertidumbre Experimental
errRelT= errAbsT.*100./T_promedio;

Hi=Hi2';
Tiempo=Tiempo';
Time= T_promedio';
Desviacion= T_desviacion';
Err_Abs=errAbsT';
Err_Rel=errRelT';

table(Hi, Tiempo)
table(Time, Desviacion, Err_Abs, Err_Rel)
table(Hi, Time)


figure(1);
plot(Hi, Time,'r-o');
xlabel('Altura [m]');
ylabel('Tiempo [s]');
title('Tiempo de vaciado');

v= sqrt(2*(9.81).*Hi)

Velocidad=v;
table(Hi,Velocidad)

figure(2);
plot(Hi,v,'ko')
hold on;
plot(Hi,v,'-g')
xlabel('Profundidad [m]');
ylabel('Velocidad [m/s]');
title('Velocidad de salida');

