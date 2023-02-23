"""The provided code stub will read in a dictionary containing key/value pairs of name:[marks] for a list of students. Print the average of the marks array for the student name provided, showing 2 places after the decimal.
Example
The query_name is 'beta'. beta's average score is .
Input Format
The first line contains the integer , the number of students' records. The next  lines contain the names and marks obtained by a student, each value separated by a space. The final line contains query_name, the name of a student to query.
Constraints
Output Format
Print one line: The average of the marks obtained by the particular student correct to 2 decimal places.
Sample Input 0"""
total = {}
n = int(input())

for i in range(n):
    name, *data = input("Enter name and marks: ").split()
    mark  = list(map(int, data[1:]))
    k=sum(mark)/len(mark)
    total[name] = k
    

name_avrage=input("enter what you want ")
if name_avrage in total:
    print("answer is",total[name_avrage])
else:
    print("s00")
