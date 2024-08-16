option optcr = 0.00001;
set
i /0*19/;
Alias (i,j,k);

Parameter
p(i) /
0   83
1   88
2   87
3   70
4   98
5   92
6   104
7   85
8   78
9   116
10  113
11  102
12  89
13  118
14  97
15  65
16  94
17  87
18  101
19  70
/;

Parameter
b(i) /
0   1092
1   1954
2   1290
3   1134
4   1314
5   1956
6   1387
7   1083
8   1446
9   1863
10  1454
11  1804
12  1548
13  1237
14  1262
15  1208
16  1963
17  61
18  72
19  115
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;