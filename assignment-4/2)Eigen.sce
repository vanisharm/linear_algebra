clc;clear;close;
n=3
disp("Enter elements for matrix A")
for i=1:n
    for j=1:n
        A(i,j)=input("Enter element ")
    end
end

lam=poly(0,'lam')
lam=lam
charMat=A-lam*eye(3,3)
disp(charMat,'The charateristic Matrix is')
charPoly=poly(A,'lam')
disp(charPoly,'The charateristic Polynomial is')
lam=spec(A)
disp(lam,'The eigen values of A are')
function[x,lam]=eigenvectors(A)
[n,m]=size(A);
lam=spec(A)';
x=[];
for k=1:3
    B=A-lam(k)*eye(3,3);
    C=B(1:n-1,1:n-1);
    b=-B(1:n-1,n);
    y=C\b;
    y=[y;1];
    y=y/norm(y);
    x=[x y];
end
endfunction

//get f('eigenvectors')
[x,lam]=eigenvectors(A)
disp(x,'The eigen vectors of A are');
