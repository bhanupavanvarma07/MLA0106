import math

# Minimax function
def minimax(depth, node_index, is_max, values, max_depth):
    
    # If last level reached, return value
    if depth == max_depth:
        return values[node_index]

    if is_max:
        return max(
            minimax(depth + 1, node_index * 2, False, values, max_depth),
            minimax(depth + 1, node_index * 2 + 1, False, values, max_depth)
        )
    else:
        return min(
            minimax(depth + 1, node_index * 2, True, values, max_depth),
            minimax(depth + 1, node_index * 2 + 1, True, values, max_depth)
        )


# User Input
n = int(input("Enter number of leaf nodes (power of 2): "))
values = list(map(int, input("Enter leaf node values: ").split()))

# Calculate tree depth
max_depth = int(math.log2(n))

# Call minimax
result = minimax(0, 0, True, values, max_depth)

print("\nOptimal value:", result)
