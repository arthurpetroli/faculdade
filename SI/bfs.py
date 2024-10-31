
class Node:
    node = None
    neighbours = []
    
    def __init__(self, node, neighbours):
        self.node = node
        self.neighbours = neighbours

class Graph:
    def __init__(self, graph: {}):
        self.graph = graph
        
    def addNode(self, node, neighbours):
        self.graph[node] = neighbours
    
    def showGraph(self):
        for vertice, arestas in self.graph.items():
            print(f"{vertice} -> {arestas}")
            
    def getNeighbours(self, node):
        return self.graph.get(node)


def solve(grafo, start, goal):
    
    def find_zero(self): 
        for i in range(len(self.matriz)): 
            for j in range(len(self.matriz[i])): 
                if self.matriz[i][j] == 0: 
                    return i, j
    
    stack = []
    visited = []
    visited.append(start)
    def backtracking(grafo, state, start, goal):
        if state is goal:
            return state
        for neighbour in grafo.getNeighbours(state):
            if neighbour not in visited:
                visited.append(neighbour)
                result = backtracking(grafo, neighbour, start, goal) 
                if result is not None:
                    stack.append(neighbour)
                    return result
grafo = Graph({})

start = [[2,8,3],
        [1,6,4],
        [7,0,5]]

goal = [[1,2,3],
        [8,0,4],
        [7,6,5]]

grafo.addNode("A", ["E", "B", "D", "C"])
grafo.addNode("B", ["E", "D", "A", "C"])
grafo.addNode("E", ["B", "C", "D", "A"])
grafo.addNode("D", ["E", "B", "A", "C"])
grafo.addNode("C", ["E", "B", "D", "A"])
grafo.showGraph()
print(solve(grafo, start, goal))
