clc;
%Declaração fx
syms t;
g=9.81;
m=68.1;
cd=0.25;
fx=sqrt((g*m)/cd)*tanh(sqrt((g*cd)/m)*t);

%Declaracao Limites
a=0;
b=6;

%Valor Real
integralfx=int(fx,a,b);
fprintf('Valor Real: %.2f\n',integralfx);

%Resolucao Por Integração Numerica
fprintf('Regra Do Trapezio\n');
regraTrapezio(fx,a,b);
fprintf('Regra Do Trapezio Composto\n');
regraTrapezioComposto(fx,a,b,5);

fprintf('Regra De Simpson\n');
regraSimpson13(fx,a,b);
fprintf('Regra De Simpson 1/3 Composta\n');
regraSimpson13Composta(fx,a,b,2);

fprintf('Regra De Simpson 3/8 \n');
regraSimpson38(fx,a,b);
fprintf('Regra De Simpson 3/8 Composta\n');
regraSimpson38Composta(fx,a,b,2);