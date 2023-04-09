import statistics;
n = int(input())
x = list(map(int, input().split()))
f = list(map(int, input().split()))
l = [];
for i in range(n):
    l += [x[i]] * f[i];

m = statistics.median(l)
L = (j for j in l if j < m)
U = (j for j in l if j > m)
print(round(statistics.median(U) - statistics.median(L), 1))
