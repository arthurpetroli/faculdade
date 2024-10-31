import copy

class Game:
    def __init__(self):
        self.board = [[2, 8, 3],
                      [1, 6, 4],
                      [7, 0, 5]]

    def findZero(self, board):
        for i in range(0, len(board)):
            for j in range(0, len(board)):
                if board[i][j] == 0:
                    return [i, j]
        return None

    def getNeighbours(self, board):
        boardMoves = []
        i, j = self.findZero(board)
        directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]
    
        for dr, dc in directions:
            r = i + dr
            c = j + dc
            if 0 <= r < len(board) and 0 <= c < len(board[0]):
                boardAux = copy.deepcopy(board)
                boardAux[i][j], boardAux[r][c] = boardAux[r][c], boardAux[i][j]
                boardMoves.append(boardAux)
    
        return boardMoves


    def __str__(self):
        for i in range(0, len(self.board)):
            for j in range(0, len(self.board)):
                print(self.board[i][j])

def bfs(graph, start, goal):
    board = copy.deepcopy(game.board)
    queue = [(board)]
    visited = []
    while queue:
        (currentBoard) = queue.pop()
        neighbours = graph.getNeighbours(currentBoard)
        for neighbour in neighbours:
            if neighbour == goal:
                return neighbour
            if neighbour not in visited:
                visited.append(neighbour)
                queue.insert(0, (neighbour))
    return []

def dfs(graph, start, goal):
    board = copy.deepcopy(game.board)
    stack = [(board)]
    visited = []
    while stack:
        (currentBoard) = stack.pop()
        if currentBoard not in visited:
            visited.append(currentBoard)
            neighbours = graph.getNeighbours(currentBoard)
            for neighbour in neighbours:
                if neighbour == goal:
                    return neighbour
                stack.append((neighbour))
    return []

game = Game()
goal = [[1, 2, 3],
        [8, 0, 4],
        [7, 6, 5]]

print(bfs(game, [2, 1], goal))
print(dfs(game, [2, 1], goal))