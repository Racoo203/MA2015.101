*Cambia el número de i dependiendo de la cantidad de nodos que tengas en el problema
Set
i /1*100/; 
alias (i,j);
*Cambia el nombre del csv que estes usando
Table c(i,j)
$onDelim
$include dist_matrix3.csv
$offdelim;

variable z;
positive Variable u(i);
binary variable x(i,j);

Equations
Obj, r1, r2, r3;

Obj.. z=E=sum((i,j),c(i,j)*x(i,j));
r1(j).. sum(i,x(i,j))=E=1;
r2(i).. sum(j,x(i,j))=E=1;
r3(i,j)$(ord(i)>1 and ord(j)>1 and ord(i)<>ord(j)).. u(i)-u(j)+card(i)*x(i,j)=l=card(i)-1

model transpor_1 /all/;
solve transpor_1 using MIP minimizing z;