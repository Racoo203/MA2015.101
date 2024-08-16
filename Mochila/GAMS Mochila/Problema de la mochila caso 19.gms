option optcr = 0.00001;
set
i /0*16/;
Alias (i,j,k);

Parameter
p(i) /
0   86
1   90
2   89
3   81
4   108
5   64
6   73
7   100
8   90
9   75
10  79
11  86
12  63
13  74
14  105
15  90
16  102
/;

Parameter
b(i) /
0   1683
1   1126
2   1577
3   1900
4   1928
5   1979
6   1322
7   1634
8   1854
9   1809
10  1517
11  1087
12  1965
13  1393
14  1264
15  1439
16  1956
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;