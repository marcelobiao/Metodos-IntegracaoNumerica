function [integral,erroRel,erroApr] = regraTrapezio(fx,a,b);
    [integral,erroRel,erroApr] = regraTrapezioComposto(fx,a,b,1);    
end