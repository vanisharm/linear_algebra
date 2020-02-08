clc;
    clear;
        
        A=[0,0,0;0,0,0;0,0,0]
        
        A(1,1)=input("enter a11: ")
        A(1,2)=input("enter a12: ")
        A(1,3)=input("enter a13: ")
        A(2,1)=input("enter a21: ")
        A(2,2)=input("enter a22: ")
        A(2,3)=input("enter a23: ")
        A(3,1)=input("enter a31: ")
        A(3,2)=input("enter a32: ")
        A(3,3)=input("enter a33: ")

    n=length(A(1,:))
        Aug=[A,eye(n,n)]

//Forward elimination
        for j=1:n-1
            for i=j+1:n
                Aug(i,j:2*n)=Aug(i,j:2*n)-Aug(i,j)/Aug(j,j)*Aug(j,j:2*n)
            end
        end
        
//Backward elimination
        for j=n:-1:2
            Aug(1:j-1,:)=Aug(1:j-1,:)-Aug(1:j-1,j)/Aug(j,j)*Aug(j,:)
        end
        
//Diagonal Normalisation
        for j=1:n
            Aug(j,:)=Aug(j,:)/Aug(j,j)
        end


        B=Aug(:,n+1:2*n)
        disp(B,'The inverse of A is');
