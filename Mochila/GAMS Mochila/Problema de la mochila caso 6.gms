option optcr = 0.00001;
set
i /0*9/;
Alias (i,j,k);

Parameter
p(i) /
0   108
1   100
2   105
3   99
4   68
5   77
6   70
7   70
8   105
9   81
/;

Parameter
b(i) /
0   1919
1   1416
2   1148
3   1408
4   1590
5   1199
6   1149
7   1929
8   1731
9   1125
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;