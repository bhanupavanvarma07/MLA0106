from collections import deque

def water_jug(cap1,cap2,target):
    visited=set()
    queue=deque([((0,0),[])])

    while queue:
        (x,y),path=queue.popleft()

        if (x,y) in visited:
            continue

        visited.add((x,y))
        path=path+[(x,y)]

        if x==target or y==target:
            return path

        next_states=[
            (cap1,y),
            (x,cap2),
            (0,y),
            (x,0)
        ]

        pour=min(x,cap2-y)
        next_states.append((x-pour,y+pour))

        pour=min(y,cap1-x)
        next_states.append((x+pour,y-pour))

        for state in next_states:
            queue.append((state,path))

cap1=int(input("Enter Jug1 capacity: "))
cap2=int(input("Enter Jug2 capacity: "))
target=int(input("Enter target: "))

solution=water_jug(cap1,cap2,target)

for step in solution:
    print(step)
