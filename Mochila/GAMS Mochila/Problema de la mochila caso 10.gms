option optcr = 0.00001;
set
i /0*12/;
Alias (i,j,k);

Parameter
p(i) /
0   71
1   80
2   62
3   119
4   99
5   71
6   65
7   64
8   87
9   93
10  117
11  66
12  102
/;

Parameter
b(i) /
0   1704
1   1070
2   1895
3   1724
4   1966
5   1272
6   1791
7   1113
8   1553
9   1915
10  1316
11  1308
12  1078
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;