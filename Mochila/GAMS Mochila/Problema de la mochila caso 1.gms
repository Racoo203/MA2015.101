option optcr = 0.00001;
set
i /0*9/;
Alias (i,j,k);

Parameter
p(i) /
0   106
1   76
2   62
3   118
4   117
5   109
6   114
7   87
8   89
9   104
/;

Parameter
b(i) /
0   1649
1   1371
2   1558
3   1685
4   1611
5   1464
6   1152
7   1672
8   1510
9   1083
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;