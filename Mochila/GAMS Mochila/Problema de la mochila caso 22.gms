option optcr = 0.00001;
set
i /0*16/;
Alias (i,j,k);

Parameter
p(i) /
0   116
1   80
2   90
3   72
4   111
5   67
6   94
7   62
8   84
9   74
10  88
11  73
12  108
13  104
14  110
15  116
16  86
/;

Parameter
b(i) /
0   1250
1   1312
2   1136
3   1983
4   1658
5   1318
6   1669
7   1795
8   1769
9   1032
10  1300
11  1285
12  1586
13  1488
14  1442
15  1322
16  1274
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;