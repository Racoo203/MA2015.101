option optcr = 0.00001;
set
i /0*16/;
Alias (i,j,k);

Parameter
p(i) /
0   75
1   120
2   72
3   70
4   95
5   101
6   72
7   104
8   103
9   67
10  74
11  95
12  102
13  94
14  67
15  66
16  64
/;

Parameter
b(i) /
0   1670
1   1633
2   1714
3   1820
4   1170
5   1487
6   1069
7   1848
8   1164
9   1460
10  1638
11  1573
12  1561
13  1236
14  1957
15  1345
16  1251
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;