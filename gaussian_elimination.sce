clc

funcprot(0)  

format('c',10)

A = input("Enter the coefficient matrix[NxN]:")

b = input("Enter the constant matrix[Nx1]:")



function [x] = gaussianelimination(A,b)

    [n,n1] = size(A);

    [m1,p] = size(b);

    if n~= n1 then

        error('for gaussian_elimination Matrix A must be square')

        abort;

    elseif n~= m1

        error('Incompatible Dimensions of A and b');
        abort;
        end

    
//forward substitution
    c = [A b];

    n = length(b)
      for j=1:n-1

        for i=j+1:n

           c(i,j:n+1) = c(i,j:n+1)-c(i,j)/c(j,j)*c(j,j:n+1)

    end
     end
//backward substitution
    x = zeros(n,1)

    x(n) = c(n,n+1)/c(n,n);

    for i=n-1:-1:1

        x(i) = (c(i,n+1)-c(i,i+1:n)*x(i+1:n))/c(i,i);

    end

    disp('The values of x , y, z are --> ')
endfunction
