import sys
input = sys.stdin.readline

d_cnt, q_cnt = map(int, input().split())

mylist = list(map(int, input().split()))

temp = 0 # 구간 합을 담을 임의 변수
list_sum = [0]
# 배열 합
for i in mylist:
    temp += i
    # 구간 합 배열
    list_sum.append(temp)

for i in range(q_cnt):
    s, e = map(int, input().split())
    print(list_sum[e] - list_sum[s-1])