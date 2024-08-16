option optcr = 0.00001;
set
i /0*9/;
Alias (i,j,k);

Parameter
p(i) /
0   100
1   155
2   50
3   112
4   70
5   80
6   60
7   118
8   110
9   55
/;

Parameter
b(i) /
0   1741
1   1622
2   1016
3   1264
4   1305
5   1389
6   1797
7   1330
8   1559
9   1578
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

 
model claseT /all/;
solve claseT using MIP max z;