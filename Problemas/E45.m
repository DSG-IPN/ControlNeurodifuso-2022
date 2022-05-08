close all
clear all
clc
W0=rand(2,1);
b0=rand(1);
t=[1 0 1 0];
p1=[-1;1];
p2=[-1;-1];
p3=[1;-1];
p4=[1;1];
p=[p1 p2 p3 p4];
Iteraciones = [W0;b0];
n=1;
while n<10
    for i=1:4
        [W,b] = funcion(W0,b0,p(1:2,i),t(1,i))
        W0=W;
        b0=b;
        Iteraciones = [Iteraciones [W0;b0]]
    end
    n=n+1;
end


function [W,b] = funcion(W0,b0,p,t)
a = hardlim(W0' * p + b0);
e = t - a;
W = W0  + a * e * p;
b = b0 + a * e;
end
