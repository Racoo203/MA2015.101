option optcr = 0.00001;
set
i /0*19/;
Alias (i,j,k);

Parameter
p(i) /
0   86
1   119
2   113
3   93
4   103
5   82
6   91
7   120
8   90
9   87
10  117
11  70
12  105
13  75
14  86
15  114
16  75
17  113
18  106
19  61
/;

Parameter
b(i) /
0   1291
1   1782
2   1708
3   1989
4   1756
5   1515
6   1324
7   1136
8   1694
9   1825
10  1495
11  1287
12  1394
13  1527
14  1212
15  1604
16  1121
17  77
18  80
19  78
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;