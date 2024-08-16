option optcr = 0.00001;
set
i /0*9/;
Alias (i,j,k);

Parameter
p(i) /
0   105
1   93
2   114
3   106
4   84
5   67
6   118
7   104
8   120
9   117
/;

Parameter
b(i) /
0   1705
1   1118
2   1448
3   1808
4   1838
5   1061
6   1644
7   1221
8   1872
9   1260
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;