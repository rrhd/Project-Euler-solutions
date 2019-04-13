clc, clear all
fac1=0;
fac2=0;
i=9;
while (fac1==0)&&(fac2==0)&&(i>=1)
    k=9;
    while (k>=0)
        j=9;
        while (j>=0)
            l=999;
            p=i+k*10+100*j+j*1000+10000*k+i*100000;
            while (l>=100)&&(fac1==0)&&(fac2==0)
                if (mod(p,l)==0)&&(100<=p/l)&&(p/l<=999)
                    fac1=l;
                    fac2=p/l;
                end
                l=l-1;
            end
            j=j-1;
        end
        k=k-1;
    end
    i=i-1;
end
display([fac1,fac2])

