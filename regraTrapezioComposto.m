function [integral,erroRel,erroApr] = regraTrapezioComposto(fx,a,b,integralfx,n);
    %Preparacao
    h=abs((b-a)/n);
    integral=0;
    erroRel=0;
    erroApr=0;
    
    %Metodo
    for(i=0:n-1)
        integral=integral+(subs(fx,i)+subs(fx,i+1))*h/2;
    end
    
    %Calculo Erro
    erroRel=abs((integralfx-integral)*100/integralfx);
    erroApr=abs(integralfx-integral);
    
end