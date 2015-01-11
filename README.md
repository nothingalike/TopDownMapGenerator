# TopDownMapGenerator
This is a Game Maker Studio top down map generator. 

The map that will be generated by default is a 4 x 4 grid, I call this the level. A room is what makes up each one of the level tiles. A room is 20 x 15. 

There are 16 different paths a room can have
0: no path
1: straight line openings on left and right
2: T shape with openings on left, right, and bottom
3: upside down T with openings on left, right, and top
4: crose with openings on all sides
5: vertical line with openings on top and bottom
6: right angle with openings on right and bottom
7: right angle with openings on left and bottom
8: right angle with openings on right and top
9: right angle with openings on left and top
10: T turned 90 degrees with openings on top, bottom, and right
11: like 10 but flipped with openings on top, bottom, and left
12: one opening on right
13: one opening on top
14: one opening on left
15: one opening on bottom
NOTE: 12 - 15 are only used in corner tiles

Each level tile has its own rule for which type of path can be generated for the room which lives in that tile. This is so you dont have paths going off level.
