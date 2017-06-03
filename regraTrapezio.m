function [integral,erroRel,erroApr] = regraTrapezio(fx,a,b,integralfx);
    %Preparacao    
    fa=subs(fx,a);
    fb=subs(fx,b);
    h=abs(b-a);
    integral=0;
    erroRel=0;
    erroApr=0;
    
    %Metodo
    integral=(fa+fb)*h/2;

    %Calculo Erro
    erroRel=abs((integralfx-integral)*100/integralfx);
    erroApr=abs(integralfx-integral);
    
end