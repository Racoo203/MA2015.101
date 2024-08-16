option optcr= 0.00001;

Set
i /1*7/;
alias (i,j);
variable z;
positive Variable u(i);
binary variable x(i,j);

Table c(i,j)
   1    2   3   4   5   6   7
1  999  12  10  999 999 999 12
2  12   999 8   12  999 999 999
3  10   8   999 11  3   999 9
4  999  12  11  999 11  10  999
5  999  999 3   11  999 6   7
6  999  999 999 10  6   999 9
7  12   999 9   99  7   9   999;


Equations
Obj, r1, r2, r3;

Obj.. z=E=sum((i,j),c(i,j)*x(i,j));
r1(j).. sum(i,x(i,j))=E=1;
r2(i).. sum(j,x(i,j))=E=1;
r3(i,j)$(ord(i)>1 and ord(j)>1 and ord(i)<>ord(j)).. u(i)-u(j)+card(i)*x(i,j)=l=card(i)-1

model transpor_1 /all/;
solve transpor_1 using MIP minimizing z;