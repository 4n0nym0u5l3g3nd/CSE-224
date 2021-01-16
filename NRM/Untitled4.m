clc;

xl=input('Enter Value: ');
    error=0.0001;
    while(1)
        ar=NRM(xl,fun(xl),fund(xl));
        fprintf('%f\t\t\t%f\t\t\t%f\t\t\t%f\n',xl,ar,fun(xl),fund(xl));
        if(abs(fun(ar))<error)
            break;
        else
            xl=ar;
        end
    end
    fprintf('our approximate root is: %.4f\n',ar);