function regraSimpson38Composta(fx,a,b,n)
%Preparacao
    passo=abs((b-a)/(n*3));
    
    %Metodo
    somaResto=0;
    somaMul3=0;    
    for(i=1:(n*3)-1)
        if(mod(i,3)==0)
            somaMul3=somaMul3+subs(fx,a+passo*(i));
        else
            somaResto=somaResto+subs(fx,a+passo*i);
        end
    end
    
    %Calculo da Integral e Erro
    integral=(passo*(3/8))*(subs(fx,a)+subs(fx,b)+2*somaMul3+3*somaResto); 
    
    integralfx=int(fx,a,b);
    erroRel=abs((integralfx-integral)*100/integralfx);
    derivadafx=diff(fx,4);
    maximo = maximoValor(derivadafx, a, b);
    erroApr=abs(((passo^4)/80)*(b-a)*subs(derivadafx,maximo));
    fprintf('Integral: %.16f \t-\t ErroRel: %.16f%% \t-\t ErroApr: %.16f\n',integral,erroRel,erroApr);
end