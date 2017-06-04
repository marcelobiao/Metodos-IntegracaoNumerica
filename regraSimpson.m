function [integral,erroRel,erroApr] = regraSimpson(fx,a,b)
    [integral,erroRel,erroApr] = regraSimpsonComposta(fx,a,b,1);
end