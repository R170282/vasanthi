clc;
close all;
clear all;
%enter data in array format due to multiple values
%enter the input sequence
x=input('Enter the sequence\n');
% enter the N point Dft N value
N=input('Enter N point IDFT\n');
% by given formula n need to vary 0 to n-1 and k also o to n-1
N=length(x); 
%making N sequence zero padding will be done
m=zeros(1,N);
% implementing idft equation
for n=0:N-1
    for k=0:N-1
        m(n+1)=m(n+1)+((1/N)*(x(k+1)*exp(((j)*2*pi*n*k)/N)));
    end
   
end
disp('iDft sequence')
disp(m);

%to execute idft is ifft one the algorithm is efficient provide output 
%very fastly and accurately


M=ifft(x);
disp("using inbuilt function");
disp(M);


