clc, clear all
j=1;
iter=10^6:-1:2;
length_chain=zeros(length(iter),2);
for n=10^6:-1:2
    chain_length=1;
    N=n;
    while ~(N==1)
        if mod(N,2)==0
            N=N/2;
            chain_length=chain_length+1;
        else
            N=3*N+1;
            chain_length=chain_length+1;
        end
    end
    length_chain(j,:)=[n chain_length];
    j=j+1;
end
display(length_chain(length_chain(:,2)==525,1))