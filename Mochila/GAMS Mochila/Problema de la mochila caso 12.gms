option optcr = 0.00001;
set
i /0*12/;
Alias (i,j,k);

Parameter
p(i) /
0   92
1   99
2   108
3   66
4   62
5   87
6   68
7   115
8   107
9   71
10  118
11  104
12  64
/;

Parameter
b(i) /
0   1576
1   1838
2   1651
3   1490
4   1415
5   1570
6   1579
7   1054
8   1590
9   1641
10  1134
11  1206
12  1986
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;