option optcr = 0.00001;
set
i /0*19/;
Alias (i,j,k);

Parameter
p(i) /
0   73
1   87
2   104
3   71
4   120
5   61
6   101
7   103
8   61
9   120
10  118
11  99
12  68
13  110
14  114
15  64
16  77
17  106
18  69
19  82
/;

Parameter
b(i) /
0   1140
1   1218
2   1757
3   1691
4   1556
5   1937
6   1553
7   1068
8   1610
9   1767
10  1005
11  1750
12  1838
13  1597
14  1754
15  1341
16  1616
17  89
18  98
19  60
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;