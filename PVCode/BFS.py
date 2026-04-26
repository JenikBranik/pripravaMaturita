graph = {
    'A': ['B','C','D'],
    'B': ['A','E'],
    'C': ['A','F'],
    'D': ['A','G'],
    'E': ['B'],
    'F': ['C'],
    'G': ['D']
}

def bfs(graph, start):
    visited = set()
    queue = [(start, 0)]

    while queue:
        node, depth = queue.pop(0)
        if node not in visited:
            print(f"{node} : {depth}")
            visited.add(node)
            for neighbor in graph[node]:
                queue.append((neighbor, depth+1))

bfs(graph, 'A')
