import math

def alphabeta(depth, node_index, is_max, values, alpha, beta, max_depth):

    if depth == max_depth:
        return values[node_index]

    if is_max:
        best = -math.inf
        for i in range(2):
            val = alphabeta(depth+1, node_index*2+i, False, values, alpha, beta, max_depth)
            best = max(best, val)
            alpha = max(alpha, best)

            if beta <= alpha:
                break   # Beta cut-off
        return best

    else:
        best = math.inf
        for i in range(2):
            val = alphabeta(depth+1, node_index*2+i, True, values, alpha, beta, max_depth)
            best = min(best, val)
            beta = min(beta, best)

            if beta <= alpha:
                break   # Alpha cut-off
        return best


# User Input
n = int(input("Enter number of leaf nodes (power of 2): "))
values = list(map(int, input("Enter leaf node values: ").split()))

max_depth = int(math.log2(n))

result = alphabeta(0, 0, True, values, -math.inf, math.inf, max_depth)

print("\nOptimal value using Alpha-Beta:", result)
