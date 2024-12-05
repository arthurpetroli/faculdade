
class Node:
    node = None
    neighbours = []
    
    def __init__(self, node, neighbours):
        self.node = node
        self.neighbours = neighbours

class Graph:
    def __init__(self, graph):
        self.graph = graph
        
    def addNode(self, node, neighbours):
        self.graph[node] = neighbours
    
    def showGraph(self):
        for vertice, arestas in self.graph.items():
            print(f"{vertice} -> {arestas}")
            
    def getNeighbours(self, node):
        return self.graph.get(node)


def solve(grafo, start, goal):
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
        return stack
    backtracking(grafo, start, start, goal)
    stack.append(start)

    return stack



grafo = Graph({})
# start = 2
# goal = 6
# grafo.addNode(2, [3, 4])
# grafo.addNode(3, [5, 8])
# grafo.addNode(4, [6, 3])
# grafo.addNode(5, [2, 6])
# grafo.addNode(6, [])
# print(solve(grafo, start, 0))
# start = "A"
# goal = "I"
# grafo.addNode("A", ["B", "C", "D"])
# grafo.addNode("B", ["E", "F"])
# grafo.addNode("E", ["H", "I"])
# grafo.addN['A',ode("H", [])
# grafo.addNode("I", [])
# grafo.showGraph()
start = "A"
goal = "C"
grafo.addNode("A", ["E", "B", "D", "C"])
grafo.addNode("B", ["E", "D", "A", "C"])
grafo.addNode("E", ["B", "C", "D", "A"])
grafo.addNode("D", ["E", "B", "A", "C"])
grafo.addNode("C", ["E", "B", "D", "A"])
grafo.showGraph()
print(solve(grafo, start, ""))
