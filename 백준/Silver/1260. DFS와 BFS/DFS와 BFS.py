import sys
from collections import deque

# sys.setrecursionlimit(10**6)

input = sys.stdin.readline

# n=노드 개수 m=시작 노드, v=시작 노드 번호
n, m, v = map(int, input().split())

graph = [[] for _ in range(n+1)] # 노드 배열 선언
visited = [False] * (n+1)


for _ in range(m):
    a, b = map(int, input().split())
    graph[a].append(b)
    graph[b].append(a)

for i in range(n+1):
    graph[i].sort()

def DFS(v):
    print(v, end=' ')
    visited[v] = True
    for i in graph[v]:
        if visited[i] == False:
            # visited[i] = True
            DFS(i)
DFS(v)

def BFS(v):
    que = deque()
    que.append(v) # 방문 노드에 넣기
    visited[v] = True
    while que:
        now = que.popleft()
        print(now, end=' ')
        for i in graph[now]:
            if visited[i] == False:
                visited[i] = True
                que.append(i)
print()
visited = [False] * (n+1)
BFS(v)