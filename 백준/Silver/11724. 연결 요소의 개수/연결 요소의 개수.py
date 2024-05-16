import sys

sys.setrecursionlimit(10**6)

input = sys.stdin.readline

n, m = map(int, input().split())

graph = [[] for _ in range(n+1)] # 노드 배열 선언

for _ in range(m):
    a, b = map(int, input().split())
    graph[a].append(b)
    graph[b].append(a)

visited = [False] * (n+1) # 방문기록

cnt = 0 # 연결 노드 개수 확인
def DFS(x):
    visited[x] = True
    for i in graph[x]:
        if visited[i] == False:
            visited[i] = True
            # print(visited[i])
            DFS(i)

for i in range(1, n+1):
    # print(i)
    if visited[i] == False:
        # print(visited[i])
        cnt+=1
        DFS(i)

print(cnt)