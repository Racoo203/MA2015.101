option optcr = 0.00001;
set
i /0*16/;
Alias (i,j,k);

Parameter
p(i) /
0   103
1   89
2   99
3   90
4   109
5   78
6   63
7   99
8   84
9   94
10  70
11  109
12  74
13  97
14  78
15  100
16  116
/;

Parameter
b(i) /
0   1643
1   1946
2   1130
3   1449
4   1635
5   1908
6   1127
7   1270
8   1708
9   1105
10  1107
11  1719
12  1189
13  1953
14  1473
15  1553
16  1542
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;