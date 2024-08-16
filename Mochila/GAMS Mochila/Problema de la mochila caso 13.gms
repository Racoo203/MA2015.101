option optcr = 0.00001;
set
i /0*14/;
Alias (i,j,k);

Parameter
p(i) /
0   116
1   80
2   101
3   92
4   82
5   83
6   63
7   102
8   117
9   77
10  113
11  100
12  61
13  66
14  84
/;

Parameter
b(i) /
0   1732
1   1997
2   1422
3   1778
4   1417
5   1687
6   1789
7   1347
8   1158
9   1557
10  1496
11  1429
12  1964
13  1498
14  1816
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;