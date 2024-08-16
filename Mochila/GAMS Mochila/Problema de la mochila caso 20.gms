option optcr = 0.00001;
set
i /0*16/;
Alias (i,j,k);

Parameter
p(i) /
0   106
1   64
2   93
3   70
4   103
5   68
6   107
7   89
8   64
9   118
10  99
11  112
12  71
13  92
14  74
15  117
16  85
/;

Parameter
b(i) /
0   1129
1   1391
2   1373
3   1682
4   1464
5   1948
6   1280
7   1126
8   1274
9   1902
10  1087
11  1547
12  1757
13  1565
14  1005
15  1048
16  1126
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;