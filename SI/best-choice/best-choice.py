import copy

class Game:
    def __init__(self, start):
        self.board = start

    def findZero(self, board):
        for i in range(0, len(board)):
            for j in range(0, len(board[i])):
                if board[i][j] == 0:
                    return [i, j]
        return None

    def getBoards(self, board):
        boardMoves = []
        i, j = self.findZero(board)
        directions = [(-1, 0), (1, 0), (0, -1), (0, 1)] # Considera apenas não-diagonais
        for dr, dc in directions:
            r, c = i + dr, j + dc # posicao real
            if 0 <= r < len(board) and 0 <= c < len(board[0]): # Verifica se a posição é válida
                boardAux = copy.deepcopy(board)
                boardAux[i][j], boardAux[r][c] = boardAux[r][c], boardAux[i][j]
                boardMoves.append(boardAux)
        return boardMoves

    def heuristic(self, board, goal):
        h = 0
        for i in range(0, len(board)):
            for j in range(0, len(board[i])):
                if board[i][j] == goal[i][j]:
                    h += 1
        return h

# Nesse hill climbing ocorre local maxima pois o vizinho pode não ser o melhor e também o algoritmo podia ficar preso em um loop infinito, pois ele não verifica se o vizinho já foi visitado
def hill_climbing(graph, goal):
    board = game.board # Inicializacao
    iteractions = 0
    while True:
        currentBoard = copy.deepcopy(board)
        iteractions += 1
        if currentBoard == goal:
            return currentBoard, iteractions, "Goal state"
        neighbours = graph.getBoards(currentBoard) # Gera filhos de currentBoard
        best_neighbour = max(neighbours, key=lambda neighbour: graph.heuristic(neighbour, goal))
        if graph.heuristic(best_neighbour, goal) <= graph.heuristic(currentBoard, goal):
            return currentBoard, iteractions, "Local Maxima, not a goal state"
        board = best_neighbour

def best_choice(graph, goal):
    board = game.board # Inicializacao
    ngbH = [(board, 0)]
    visited = []
    while len(ngbH) != 0:
        if board not in visited:
            visited.append(board)
            currentBoard = copy.deepcopy(board)
            if currentBoard == goal:
                return currentBoard, len(ngbH)
            neighbours = graph.getBoards(currentBoard) # Gera filhos de X
            for neighbour in neighbours:
                ngbH.append((neighbour, graph.heuristic(neighbour, goal)))
            ngbH.sort(key=lambda a: a[1]) # Avaliando as heuristicas
            (board, _) = ngbH.pop() # melhor heuristica
        else:
            (board, _) = ngbH.pop()
    return [], len(ngbH)

# inverso
# game = Game([[1, 2, 3],
#         [8, 0, 4],
#         [7, 6, 5]])
# goal = [[2, 8, 3],
#         [1, 6, 4],
#         [7, 0, 5]]

# real game
game = Game([[2, 8, 3],
        [1, 6, 4],
        [7, 0, 5]])
goal = [[1, 2, 3],
        [8, 0, 4],
        [7, 6, 5]]

print("Hill Climbing: ", hill_climbing(game, goal))
print("Best Choice: ", best_choice(game, goal))