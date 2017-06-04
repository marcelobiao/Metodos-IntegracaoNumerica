%n=Quantidade de Pares de subintervalos
function [integral,erroRel,erroApr] = regraSimpsonComposta(fx,a,b,n)
    %Preparacao
    passo=abs((b-a)/(2*n));
    
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
    [erroRel,erroApr] = calculoErro(fx,a,b,integral);
end