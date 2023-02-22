n = int(input())
names = []
grades = []

for i in range(n):
    name = input()
    grade = float(input())
    names.append(name)
    grades.append(grade)

# Sort both lists by grades first and then by names
names, grades = zip(*sorted(zip(names, grades), key=lambda x: (x[1], x[0])))

print(names[0])
print(names[1])
