option optcr = 0.00001;
set
i /0*14/;
Alias (i,j,k);

Parameter
p(i) /
0   114
1   82
2   77
3   86
4   84
5   81
6   76
7   64
8   78
9   74
10  120
11  117
12  60
13  93
14  101
/;

Parameter
b(i) /
0   1343
1   1016
2   1954
3   1580
4   1836
5   1371
6   1038
7   1844
8   1857
9   1645
10  1665
11  1540
12  1146
13  1160
14  1879
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;