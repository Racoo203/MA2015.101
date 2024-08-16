option optcr = 0.00001;
set
i /0*19/;
Alias (i,j,k);

Parameter
p(i) /
0   107
1   105
2   81
3   112
4   72
5   115
6   66
7   67
8   70
9   114
10  60
11  111
12  87
13  107
14  98
15  95
16  65
17  104
18  79
19  74
/;

Parameter
b(i) /
0   1967
1   1841
2   1259
3   1347
4   1645
5   1538
6   1812
7   1325
8   1906
9   1782
10  1429
11  1769
12  1053
13  1131
14  1384
15  1461
16  1996
17  82
18  80
19  107
/;

Variable z;
Binary Variable x(i);
Equations
obj,r1;
obj.. z =E= sum(i, x(i)*p(i)*b(i));
r1.. sum(i, x(i)*p(i))=L= 700;

model claseT /all/;
solve claseT using MIP max z;