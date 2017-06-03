clc;
%Declaração fx
syms x; 
fx=(x^2)+x+1;
%Declaracao Limites
a=2;
b=5;

%Calculo da Integral
integralfx=int(fx,x,a,b);
disp(fx);
fprintf('IntegralFx: %.2f\n',integralfx);

%Resolucao Por Integração Numerica
fprintf('Regra Do Trapezio\n');
[integral,erroRel,erroApr]=regraTrapezio(fx,a,b,integralfx);
fprintf('Integral: %.2f \t-\t ErroRel: %.2f%% \t-\t ErroApr: %.2f\n',integral,erroRel,erroApr);
fprintf('Regra Do Trapezio Composto\n');
[integral,erroRel,erroApr] = regraTrapezioComposto(fx,a,b,integralfx,6);
fprintf('Integral: %.2f \t-\t ErroRel: %.2f%% \t-\t ErroApr: %.2f\n',integral,erroRel,erroApr);
