option optcr = 0.00001;
set
i /0*12/;
Alias (i,j,k);

Parameter
p(i) /
0   102
1   93
2   60
3   94
4   69
5   108
6   119
7   120
8   91
9   85
10  106
11  96
12  72
/;

Parameter
b(i) /
0   1557
1   1325
2   1618
3   1191
4   1518
5   1650
6   1917
7   1341
8   1904
9   1153
10  1691
11  1660
12  1016
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;