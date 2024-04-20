
n = int(input())
numbers = [int(input()) for i in range(n)]


# n = 5
# numbers = [5,2,3,4,1]
# tmp = 0
for i in range(n-1):
    for j in range(n-1-i):
        if numbers[j] > numbers[j+1]:
            tmp = numbers[j]
            numbers[j] = numbers[j+1]
            numbers[j+1] = tmp

for i in range(n):
    print(numbers[i])