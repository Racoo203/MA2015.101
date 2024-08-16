option optcr = 0.00001;
set
i /0*9/;
Alias (i,j,k);

Parameter
p(i) /
0   113
1   66
2   69
3   100
4   90
5   106
6   76
7   70
8   74
9   102
/;

Parameter
b(i) /
0   1542
1   1209
2   1784
3   1517
4   1176
5   1778
6   1813
7   1617
8   1798
9   1578
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;