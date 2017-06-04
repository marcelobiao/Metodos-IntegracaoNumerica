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
    [erroRel,erroApr] = calculoErro(fx,a,b,integral);
    fprintf('Integral: %.2f \t-\t ErroRel: %.2f%% \t-\t ErroApr: %.2f\n',integral,erroRel,erroApr);
end