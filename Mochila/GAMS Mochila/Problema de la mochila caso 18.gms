option optcr = 0.00001;
set
i /0*14/;
Alias (i,j,k);

Parameter
p(i) /
0   69
1   74
2   115
3   80
4   113
5   86
6   85
7   90
8   101
9   101
10  113
11  79
12  119
13  85
14  66
/;

Parameter
b(i) /
0   1484
1   1892
2   1502
3   1095
4   1260
5   1493
6   1646
7   1313
8   1421
9   1008
10  1407
11  1204
12  1418
13  1130
14  1996
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;