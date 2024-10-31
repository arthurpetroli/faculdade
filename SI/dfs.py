def dfs(start, goal):
    def find_zero(matrix):
        for i in range(len(matrix)):
            for j in range(len(matrix[i])): 
                if matrix[i][j] == 0:
                    return i, j
    
    def move_zero(matrix, zero_pos, direction):
        import copy
        new_matrix = copy.deepcopy(matrix)
        x, y = zero_pos
        if direction == 'up' and x > 0:
            new_matrix[x][y], new_matrix[x-1][y] = new_matrix[x-1][y], new_matrix[x][y]
        elif direction == 'down' and x < len(matrix) - 1:
            new_matrix[x][y], new_matrix[x+1][y] = new_matrix[x+1][y], new_matrix[x][y]
        elif direction == 'left' and y > 0:
            new_matrix[x][y], new_matrix[x][y-1] = new_matrix[x][y-1], new_matrix[x][y]
        elif direction == 'right' and y < len(matrix[0]) - 1:
            new_matrix[x][y], new_matrix[x][y+1] = new_matrix[x][y+1], new_matrix[x][y]
        return new_matrix
    
    visited = set()
    stack = [(start, [])]
    directions = ['up', 'down', 'left', 'right']
    
    while stack:
        current_state, path = stack.pop()
        if current_state == goal:
            for move in path:
                for row in move:
                    print(row)
                print()  # Newline for readability
            return path
        
        visited.add(tuple(map(tuple, current_state)))
        zero_pos = find_zero(current_state)
        
        for direction in directions:
            new_state = move_zero(current_state, zero_pos, direction)
            if tuple(map(tuple, new_state)) not in visited:
                stack.append((new_state, path + [new_state]))
    
    return None

start = [[2, 8, 3], [1, 6, 4], [7, 0, 5]]
goal = [[1, 2, 3], [8, 0, 4], [7, 6, 5]]

dfs_solution = dfs(start, goal)
print("Resultado final do DFS:")
if dfs_solution:
    for move in dfs_solution:
        for row in move:
            print(row)
        print()  # Newline for readability
else:
    print("Nenhuma solução encontrada.")
