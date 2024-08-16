option optcr = 0.00001;
set
i /0*9/;
Alias (i,j,k);

Parameter
p(i) /
0   89
1   76
2   90
3   86
4   99
5   93
6   61
7   80
8   120
9   74
/;

Parameter
b(i) /
0   1636
1   1149
2   1744
3   1211
4   1919
5   1805
6   1135
7   1476
8   1502
9   1971
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;