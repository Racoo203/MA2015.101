option optcr = 0.00001;
set
i /0*9/;
Alias (i,j,k);

Parameter
p(i) /
0   88
1   104
2   65
3   103
4   68
5   75
6   86
7   109
8   107
9   108
/;

Parameter
b(i) /
0   1490
1   1424
2   1753
3   1347
4   1337
5   1772
6   1568
7   1083
8   1261
9   1029
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;