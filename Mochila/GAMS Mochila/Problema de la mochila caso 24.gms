option optcr = 0.00001;
set
i /0*19/;
Alias (i,j,k);

Parameter
p(i) /
0   65
1   75
2   64
3   93
4   66
5   112
6   90
7   75
8   75
9   73
10  79
11  94
12  116
13  84
14  74
15  70
16  80
17  63
18  89
19  80
/;

Parameter
b(i) /
0   1803
1   1230
2   1867
3   1606
4   1329
5   1752
6   1212
7   1380
8   1863
9   1623
10  1323
11  1914
12  1000
13  1033
14  1837
15  1088
16  1019
17  74
18  118
19  117
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;