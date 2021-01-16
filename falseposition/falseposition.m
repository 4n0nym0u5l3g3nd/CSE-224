function[x2]= falseposition(x0,x1,fx0,fx1)
x2=((x0*fx1)-(x1*fx0))/(fx1-fx0);
end