"""There are N children standing in a line. Each child is assigned a rating value. You are giving candies to these children subjected to the following requirements:
Each child must have at least one candy. Children with a higher rating get more candies than their neighbors. What is the minimum candies you must give?"""
n = int(input("Enter the number of children: "))
arr = list(map(int, input("Enter the ratings of children: ").split()))
def min_candies(arr):
    n = len(arr)
    candies = [1] * n
    for i in range(1, n):
        if arr[i] > arr[i-1]:
            candies[i] = candies[i-1] + 1
    for i in range(n-2, -1, -1):
        if arr[i] > arr[i+1]:
            candies[i] = max(candies[i], candies[i+1] + 1)
    return sum(candies)
print("Minimum number of candies required:", min_candies(arr))
