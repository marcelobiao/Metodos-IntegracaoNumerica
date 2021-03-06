%fx:Funcao.
%a:Limite inferior do intervalo.
%b:Limite superior do intervalo.
%n: Quantidade de vezes que a regra � aplicada.
function regraSimpson13Composta(fx,a,b,n)
    %Preparacao
    passo=abs((b-a)/(n*2));
    
    %Metodo
    somaPares=0;
    somaImpares=0;    
    for(i=1:(n*2)-1)
        if(mod(i,2)==1)
           somaImpares=somaImpares+subs(fx,a+passo*(i));
        else
            somaPares=somaPares+subs(fx,a+passo*i);           
        end
    end
    
    %Calculo da Integral e Erro
    integral=(passo/3)*(subs(fx,a)+subs(fx,b)+2*somaPares+4*somaImpares); 
    
    integralfx=int(fx,a,b);
    erroRel=abs((integralfx-integral)*100/integralfx);
    derivadafx=diff(fx,4);
    maximo = maximoValor(derivadafx, a, b);
    erroApr=abs(((passo^4)/180)*(b-a)*subs(derivadafx,maximo));
    fprintf('Integral: %.16f \t-\t ErroRel: %.16f%% \t-\t ErroApr: %.16f\n',integral,erroRel,erroApr);
end