/*
this script will generate the walls and contents of the dungeon.
each floor will check around itself for empty places, and then place walls objects there
then each floor object will have a chance of spawning an enemy or a treasure chest

argument0 = floor objects
argument1 = grid size
argument2 = wall object
*/

with (argument0) { //with all floor objects
    for (i=-(argument1);i<=argument1;i+=argument1) { //selecting all the blocks around them
        for (j=-(argument1);j<=argument1;j+=argument1) {
            if place_empty(x+i,y+j) { //if there's not a floor object within the space
                instance_create(x+i,y+j,argument0); //create a wall
            }
        }
    }
}


