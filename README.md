<h1>TopDownMapGenerator</h1>
<p>
First things first. If you're like me you want to see the end result so you know you're not wasting your time.<br/>
<a href="https://www.youtube.com/watch?v=FvefFFmK9is">Example Video Here</a>
</p>
This is a Game Maker Studio top down map generator. 

The map that will be generated by default is a 4 x 4 grid, I call this the level. A room is what makes up each one of the level tiles. A room is 20 x 15. 

There are 16 different paths a room can have
<ol>
<li>no path</li>
<li>straight line openings on left and right</li>
<li>T shape with openings on left, right, and bottom</li>
<li>upside down T with openings on left, right, and top</li>
<li>crose with openings on all sides</li>
<li>vertical line with openings on top and bottom</li>
<li>right angle with openings on right and bottom</li>
<li>right angle with openings on left and bottom</li>
<li>right angle with openings on right and top</li>
<li>right angle with openings on left and top</li>
<li>T turned 90 degrees with openings on top, bottom, and right</li>
<li>like 10 but flipped with openings on top, bottom, and left</li>
<li>one opening on right</li>
<li>one opening on top</li>
<li>one opening on left</li>
<li>one opening on bottom</li>
</ol>
NOTE: in code these paths are 0 indexed so subtract one from each of these to recogize it in code

<p>Each level tile has its own rule for which type of path can be generated for the room which lives in that tile. This is so you dont have paths going off level.</p>
