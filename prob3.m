clc, clear all
n=600851475143;
p=[];
if (mod(n,2)==0)
    n=n/2;
    p=2;
end
i=3;
while n>1
    p_t=[];
    j=i;
    while (length(p_t)<=1)&&(j>1)
        if (mod(i,j)==0)&&(~(j==1))
            p_t=[p_t j];
        end
        j=j-2;
    end
    if (length(p_t)==1)&&(mod(n,p_t)==0)
        n=n/p_t(1);
    end
    i=i+2;
end