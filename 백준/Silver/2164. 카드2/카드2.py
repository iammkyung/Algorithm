from collections import deque

n = int(input())

que = deque()
for i in range(n):
    que.append(i+1)
# print(que)

# tmp = deque()
# for i in range(n):
while len(que) > 1:
    que.popleft() # 버리고
    que.append(que.popleft())
print(que[0])