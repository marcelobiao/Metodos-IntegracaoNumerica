function [max] = maximoValor(fx,a,b)
    max =0;
    for(i=a:b)
        temp=abs(subs(fx, i));
        if (temp>max)
            max = temp;
        end
    end
end