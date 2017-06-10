function regraTrapezioComposto(fx,a,b,n)
    %Preparacao
    passo=abs((b-a)/n);
    
    %Metodo
    soma=0;   
    for(i=1:n-1)
        soma=soma+subs(fx,a+passo*i);           
    end
    
    %Calculo da Integral e Erro
    integral=(passo/2)*(subs(fx,a)+subs(fx,b)+2*soma);  
    
    integralfx=int(fx,a,b);
    erroRel=abs((integralfx-integral)*100/integralfx);
    derivadafx=diff(fx,2);
    maximo = maximoValor(derivadafx, a, b);
    erroApr=abs(((passo^2)/12)*(b-a)*subs(derivadafx,maximo));
    fprintf('Integral: %.16f \t-\t ErroRel: %.16f%% \t-\t ErroApr: %.16f\n',integral,erroRel,erroApr);
end