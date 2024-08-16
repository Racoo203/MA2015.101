option optcr = 0.00001;
set
i /0*12/;
Alias (i,j,k);

Parameter
p(i) /
0   79
1   111
2   109
3   61
4   119
5   101
6   119
7   84
8   78
9   72
10  77
11  69
12  67
/;

Parameter
b(i) /
0   1704
1   1948
2   1488
3   1600
4   1249
5   1943
6   1832
7   1345
8   1000
9   1053
10  1901
11  1304
12  1292
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;