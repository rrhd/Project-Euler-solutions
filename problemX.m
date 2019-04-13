function G_sum=main
i=length(setdiff(primes(10010000),primes(10000000)));
keyboard
end


function n=g_rec(x,a)
if x < a
n=1;
elseif x >= a
    n = g_rec(x-1,a)+g_rec(x-a,a);
end
end


function r=G_fun(n)
g_rec(n,sqrt(n));
end