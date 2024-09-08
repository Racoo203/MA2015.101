option optcr=0.0001;
set i /1*5/;
alias (i,j,k);
variable z;
binary variable x(i,j);
*xij = i-año de inicio j-año de fin
table
c(i,j)
   1         2         3        4         5
1  99999999  4000      5400     9800      99999999
2  99999999  99999999  4300     6200      8700
3  99999999  99999999  9999999  4800      7100
4  99999999  99999999  9999999  99999999  4900;
parameter 
*posibles soluciones
b(i)/
1 1
2 0
3 0
4 0
5 -1/
equations obj, r1;
obj.. z=E=sum((i,j),c(i,j)*x(i,j));
r1(i).. sum(j,x(i,j))-sum(k,x(k,i))=E=b(i);
*obj es la sumatoria de ij de cij*xij
*r1 es todos los valores que pertenecen a j de la sumatoria xij - todos los valores que pertenecen a k de la sumatoria xki = bi

model modelo_matematico /all/;
solve modelo_matematico using MIP min z