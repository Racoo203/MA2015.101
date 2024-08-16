option optcr = 0.00001;
set
i /0*19/;
Alias (i,j,k);

Parameter
p(i) /
0   106
1   74
2   80
3   88
4   99
5   63
6   105
7   64
8   63
9   97
10  71
11  98
12  107
13  78
14  111
15  107
16  101
17  116
18  67
19  83
/;

Parameter
b(i) /
0   1524
1   1070
2   1705
3   1706
4   1358
5   1075
6   1783
7   1106
8   1146
9   1742
10  1031
11  1962
12  1251
13  1612
14  1526
15  1313
16  1940
17  110
18  77
19  73
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;