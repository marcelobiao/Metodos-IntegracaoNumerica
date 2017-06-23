%fx:Funcao.
%a:Limite inferior do intervalo.
%b:Limite superior do intervalo.
%n: Quantidade de vezes que a regra é aplicada.
function regraBoole(fx,a,b)
    %Preparacao
    passo=abs((b-a)/4);    
    
    %Calculo da Integral e Erro
    integral=(passo*(2/45))*(7*subs(fx,a)+32*subs(fx,a+passo)+12*subs(fx,a+(passo*2))+32*subs(fx,a+(passo*3))+7*subs(fx,b)); 
    
    integralfx=int(fx,a,b);
    erroRel=abs((integralfx-integral)*100/integralfx);
    derivadafx=diff(fx,6);
    maximo = maximoValor(derivadafx, a, b);
    erroApr=abs(((8*(passo^4))/945)*(b-a)*subs(derivadafx,maximo));
    fprintf('Integral: %.16f \t-\t ErroRel: %.16f%% \t-\t ErroApr: %.16f\n',integral,erroRel,erroApr);
end