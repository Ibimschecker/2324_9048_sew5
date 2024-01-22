import argparse
from collections import deque
from time import sleep

parser = argparse.ArgumentParser(
	description='calculate number of ways through a labyrinth'
)

parser.add_argument('filename', help='file containing the labyrinth to solve')
parser.add_argument('-x', '--XSTART', help='XSTART')
parser.add_argument('-y', '--YSTART', help='YSTART')
parser.add_argument('-p', '--print', help='print output of every solution')
parser.add_argument('-t', '--time', help='print total calculation time (in milliseconds)')
parser.add_argument('-d', '--delay', help='ELAY delay after printing a solution (in milliseconds)', default=0)

args = parser.parse_args()

grid = [line.strip() for line in open(args.filename).readlines()]

n = len(grid)
m = len(grid[0])

now = [['' for _ in range(m)] for _ in range(n)]
next = [['' for _ in range(m)] for _ in range(n)]

target = ()

for r in range(n):
    for c in range(m):
        if grid[r][c] == 'A':
            target = (r, c)

def print_grid(vis, r = - 1, c = -1):
    for i in range(n):
        for j in range(m):
            if i == r and j == c:
                print('O', end='')
            elif (i, j) in vis:
                print('·', end='')
            else:
                print(grid[i][j], end='')
        print()
    print()

def bfs(xstart, ystart):
    q = deque()
    q.append((xstart, ystart))
    vis = set()
    while q:
        r, c = q.popleft()

        if r == target[0] and c == target[1]:
            print_grid(vis, r, c)
            return True

        if (r, c) in vis:
            continue
        
        print_grid(vis, r, c)

        sleep(int(args.delay))

        vis.add((r, c))

        for dr, dc in [(-1, 0), (0, 1), (1, 0), (0, -1)]:
            rr = r + dr
            cc = c + dc
            if n > rr >= 0 <= cc < m and grid[rr][cc] != '#':
                q.append((rr, cc))

    return False

def dfs(r, c, vis = set()):
    if grid[r][c]=='#':
        return 0
    if r == target[0] and c == target[1]:
        if args.print:
            print_grid(vis)
        return 1
    if (r, c) in vis:
        return 0

    # das feld wird betreten und zu vis hinzugefuegt
    vis.add((r, c))
    # alle pfade mit dieser node werden getesetet
    count = dfs(r+1, c, vis) + dfs(r-1, c, vis) + dfs(r, c+1, vis) + dfs(r, c-1, vis)
    # danach verlaesst man das feld und das feld wird wieder aus vis entfernt
    vis.remove((r, c))
    return count

start = int(args.XSTART), int(args.YSTART)

#print(bfs(start[0], start[1]))
print(dfs(start[0], start[1]))