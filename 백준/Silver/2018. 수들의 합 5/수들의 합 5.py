n = int(input())

sum = 1
cnt = 1
start_index = 1
end_index = 1

while end_index != n :
    if sum == n :
        cnt+= 1
        end_index += 1
        sum += end_index
    elif sum > n:
        sum -= start_index
        start_index += 1
    else:
        end_index += 1
        sum += end_index

print(cnt)