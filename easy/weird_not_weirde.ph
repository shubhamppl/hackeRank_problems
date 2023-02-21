"""Given an integer, , perform the following conditional actions:

If  is odd, print Weird
If  is even and in the inclusive range of  to , print Not Weird
If  is even and in the inclusive range of  to , print Weird
If  is even and greater than , print Not Weird
Complete the stub code provided in your editor to print whether or not  is weird.

Input Format

A single line containing a positive integer, .

Constraints

Output Format

Print Weird if the number is weird; otherwise, print Not Weird.

Sample Input 0"""

n=int(input())
if n==2 or n==4 :
    print("Not Weird")
elif n//2 == 1:
    print("Weird")
elif n//2 ==0 and range(6,20):
    print("Weird")
elif n >= 21 and n%2==0:
    print("Not Weird")
elif n//2==1 and range(20,100):
    print("Weird")
else:
    print("Weird")
