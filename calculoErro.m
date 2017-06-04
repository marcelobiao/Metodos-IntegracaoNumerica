function [erroRel,erroApr] = calculoErro(fx,a,b,integral)
    integralfx=int(fx,a,b);
    erroRel=abs((integralfx-integral)*100/integralfx);
    erroApr=abs(integralfx-integral);
end