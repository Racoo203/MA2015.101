option optcr = 0.00001;
set
i /0*12/;
Alias (i,j,k);

Parameter
p(i) /
0   83
1   73
2   120
3   76
4   107
5   98
6   102
7   66
8   94
9   65
10  87
11  69
12  66
/;

Parameter
b(i) /
0   1016
1   1897
2   1942
3   1179
4   1123
5   1323
6   1309
7   1306
8   1156
9   1014
10  1767
11  1165
12  1177
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;