option optcr = 0.00001;
set
i /0*14/;
Alias (i,j,k);

Parameter
p(i) /
0   60
1   74
2   81
3   91
4   96
5   111
6   72
7   65
8   91
9   97
10  82
11  94
12  91
13  84
14  97
/;

Parameter
b(i) /
0   1046
1   1649
2   1989
3   1803
4   1590
5   1790
6   1671
7   1626
8   1317
9   1498
10  1916
11  1158
12  1445
13  1008
14  1089
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;