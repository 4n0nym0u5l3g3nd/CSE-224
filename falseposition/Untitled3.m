clc;
xl=input('Enter first value: ');
xu=input('Enter second value: ');
if(fun(xl)*fun(xu)>0)
    fprint('Incorrect input');
else
    error=0.0001;
    while(1)
        ar=falseposition(xl,xu,fun(xl),fun(xu));
        fprintf('%f\t\t\t%f\t\t\t%f\t\t\t%f\n',xl,xu,ar,fun(ar));
        if(abs(fun(ar))<error)
            break;
        elseif(fun(ar)<0)
            xl=ar;
        else
            xu=ar;
        end
    end
     fprintf('our approximate root is: %.4f\n',ar);
end
        