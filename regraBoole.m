function regraBoole(fx,a,b)
    %Preparacao
    passo=abs((b-a)/4);    
    
    %Calculo da Integral e Erro
    integral=(passo*(2/45))*(7*subs(fx,a)+32*subs(fx,a+passo)+12*subs(fx,a+(passo*2))+32*subs(fx,a+(passo*3))+7*subs(fx,b));    
    [erroRel,erroApr] = calculoErro(fx,a,b,integral);
    fprintf('Integral: %.2f \t-\t ErroRel: %.2f%% \t-\t ErroApr: %.2f\n',integral,erroRel,erroApr);
end