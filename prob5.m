clc, clear all
m=1:20;
x=[1 primes(m(end))];
i=1;
n=prod(x);
while any(mod(n,m))
    j=find(mod(n,m));
    j=factor(j(1));
    j=j(1);
    n=n*j;
end
display(n)