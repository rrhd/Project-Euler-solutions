clc, clear all
f0=1;f1=2;
sum=2;
f2=0;
while (f2<4*10^6)
f2=f0+f1;
f0=f1;
f1=f2;
if mod(f2,2)==0
    sum=sum+f2;
end
end
