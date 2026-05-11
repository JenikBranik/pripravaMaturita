graph = {
    'A': ['B','C','D'],
    'B':['A','E'],
    'C':['A','F'],
    'D':['A','G'],
    'E':['B'],
    'F':['C'],
    'G':['D']
}

check = set()
def dfs(v):
    check.add(v)
    print(v)

    for neighbour in graph[v]:
        if neighbour not in check:
            dfs(neighbour)

dfs('A')