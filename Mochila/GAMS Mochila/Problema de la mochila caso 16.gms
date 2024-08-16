option optcr = 0.00001;
set
i /0*14/;
Alias (i,j,k);

Parameter
p(i) /
0   115
1   83
2   61
3   76
4   87
5   93
6   70
7   104
8   74
9   72
10  109
11  112
12  101
13  109
14  85
/;

Parameter
b(i) /
0   1394
1   1959
2   1941
3   1970
4   1807
5   1170
6   1619
7   1035
8   1596
9   1731
10  1628
11  1311
12  1742
13  1686
14  1227
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;