function [erroRel,erroApr] = calculoErro(fx,a,b,integral)
    syms x;
    integralfx=int(fx,x,a,b);
    erroRel=abs((integralfx-integral)*100/integralfx);
    erroApr=abs(integralfx-integral);
end