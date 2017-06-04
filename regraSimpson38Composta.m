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
    [erroRel,erroApr] = calculoErro(fx,a,b,integral);
    fprintf('Integral: %.2f \t-\t ErroRel: %.2f%% \t-\t ErroApr: %.2f\n',integral,erroRel,erroApr);
end