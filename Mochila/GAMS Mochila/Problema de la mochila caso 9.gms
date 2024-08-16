option optcr = 0.00001;
set
i /0*12/;
Alias (i,j,k);

Parameter
p(i) /
0   76
1   69
2   86
3   79
4   91
5   96
6   110
7   82
8   107
9   61
10  79
11  78
12  70
/;

Parameter
b(i) /
0   1604
1   1469
2   1541
3   1139
4   1310
5   1100
6   1739
7   1820
8   1408
9   1664
10  1021
11  1234
12  1843
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;