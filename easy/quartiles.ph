"""
Objective
In this challenge, we practice calculating quartiles. Check out the Tutorial tab for learning materials and an instructional video!
Task
Given an array, , of  integers, calculate the respective first quartile (), second quartile (), and third quartile (). It is guaranteed that , , and  are integers.
Input Format
The first line contains an integer, , denoting the number of elements in the array.
The second line contains  space-separated integers describing the array's elements.
Constraints
, where  is the  element of the array.
Output Format
Print  lines of output in the following order:
The first line should be the value of .
The second line should be the value of .
The third line should be the value of .
Sample Input
93 7 8 5 12 14 21 13 18
Sample Output
61216
Explanation
. When we sort the elements in non-decreasing order, we get . It's easy to see that .
As there are an odd number of data points, we do not include the median (the central value in the ordered list) in either half:
Lower half (L): 3, 5, 7, 8
Upper half (U): 13, 14, 18, 21
Now, we find the quartiles:
 is the . So, .
 is the . So, .
 is the . So, .
Source : https://www.hackerrank.com/challenges/s10-quartiles
"""

#!/bin/python3
import math
import os
import random
import re
import sys

from statistics import median

def quartiles(arr):
    # Write your code here
    n = len(arr)
    a = int(median(arr[:n//2]))
    b = int(median(arr))
    c = int(median(arr[(n+1)//2:]))
    return a, b, c

if __name__ == '__main__':
    n = int(input().strip())

    arr = list(map(int, input().rstrip().split()))

    res = quartiles(arr)

    print('\n'.join(map(str, res)))
