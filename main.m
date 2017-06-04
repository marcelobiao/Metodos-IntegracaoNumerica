clc;
%Declaração fx
fx=@(x)1/(x^2);
%Declaracao Limites
a=1;
b=7;

%Valor Real
integralfx=int(fx,x,a,b);
fprintf('Valor Real: %.2f\n',integralfx);

%Resolucao Por Integração Numerica
fprintf('Regra Do Trapezio\n');
[integral,erroRel,erroApr]=regraTrapezio(fx,a,b);
fprintf('Integral: %.2f \t-\t ErroRel: %.2f%% \t-\t ErroApr: %.2f\n',integral,erroRel,erroApr);
fprintf('Regra Do Trapezio Composto\n');
[integral,erroRel,erroApr] = regraTrapezioComposto(fx,a,b,10);
fprintf('Integral: %.2f \t-\t ErroRel: %.2f%% \t-\t ErroApr: %.2f\n',integral,erroRel,erroApr);

fprintf('Regra De Simpson\n');
[integral,erroRel,erroApr] = regraSimpson(fx,a,b);
fprintf('Integral: %.2f \t-\t ErroRel: %.2f%% \t-\t ErroApr: %.2f\n',integral,erroRel,erroApr);
fprintf('Regra De SimpsonComposta\n');
[integral,erroRel,erroApr] = regraSimpsonComposta(fx,a,b,10);
fprintf('Integral: %.2f \t-\t ErroRel: %.2f%% \t-\t ErroApr: %.2f\n',integral,erroRel,erroApr);





