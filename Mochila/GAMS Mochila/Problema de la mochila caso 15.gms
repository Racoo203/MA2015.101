option optcr = 0.00001;
set
i /0*14/;
Alias (i,j,k);

Parameter
p(i) /
0   86
1   60
2   101
3   104
4   109
5   66
6   112
7   113
8   107
9   99
10  98
11  60
12  94
13  97
14  101
/;

Parameter
b(i) /
0   1439
1   1005
2   1388
3   1637
4   1432
5   1374
6   1000
7   1235
8   1098
9   1818
10  1731
11  1542
12  1254
13  1658
14  1786
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;