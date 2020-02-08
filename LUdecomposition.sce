clc
    clear;
    close;

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
    
    
    U=A

        disp(A,'The given matrix is A=')
        
         m=det(U(1,1));
            n=det(U(2,1));
                a=n/m
        
        U(2,:)=U(2,:)-U(1,:)/(m/n)
        n=det(U(3,1));

        b=n/m
        U(3,:)=U(3,:)-U(1,:)/(m/n)
    
            m=det(U(2,2))
            n=det(U(3,2));
            c=n/m
            
            U(3,:)=U(3,:)-U(2,:)/(m/n)

            disp(U,'The upper triangular matrix is U =')

            L=[1,0,0;a,1,0;b,c,1]
            
            disp(L,'The lower triangular matrix is L =')
