"""Given the participants' score sheet for your University Sports Day, you are required to find the runner-up score. You are given  scores. 
Store them in a list and find the score of the runner-up.
Input Format
The first line contains . The second line contains an array   of  integers each separated by a space.
Sample Input 0
5
2 3 6 6 5
Sample Output 0
5
"""


g=input()
n=list(input().split())
list_1=[]
for i in n:
    if i not in list_1:
        list_1.append(i)
        new_list=list_1
        k=list(map(int,new_list))
        k.sort()
print(k[-2])

