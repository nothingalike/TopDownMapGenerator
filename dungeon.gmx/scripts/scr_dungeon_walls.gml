/*
this script will generate the walls and contents of the dungeon.
each floor will check around itself for empty places, and then place walls objects there
then each floor object will have a chance of spawning an enemy or a treasure chest

argument0 = floor objects
argument1 = grid size
argument2 = wall object
*/


with (argument0) { //with all floor objects
    for (i= -(argument1);i<=argument1;i+=argument1) { //selecting all the blocks around them
        for (j= -(argument1);j<=argument1;j+=argument1) {
            if place_empty(x+i,y+j) { //if there's not a floor object within the space
                //create a wall
                instance_create(x+i,y+j,argument2);
                //object_id.sprite_index = spr_Wall;
                /*if(i == -argument1 && j == -argument1) {
                    if place_empty(x + i + argument1,y+j) {
                        object_id.sprite_index = spr_Wall_TopLeft;
                    }else {
                        object_id.sprite_index = spr_Wall_Left;
                    }
                }
                if(i == -argument1 && j == 0) {
                    object_id.sprite_index = spr_Wall_Left;
                }
                if(i == -argument1 && j == argument1) {
                    object_id.sprite_index = spr_Wall_BottomLeft;
                }
                if(i == 0 && j == -argument1) {
                    object_id.sprite_index = spr_Wall_Top;
                }
                if(i == 0 && j == argument1) {
                    object_id.sprite_index = spr_Wall_Bottom;
                }
                if(i == argument1 && j == -argument1) {
                    object_id.sprite_index = spr_Wall_TopRight;
                }
                if(i == argument1 && j == 0) {
                    object_id.sprite_index = spr_Wall_Right;
                }
                if(i == argument1 && j == argument1) {
                    object_id.sprite_index = spr_Wall_BottomRight;
                }*/
            }
        }
    }
}

instance_create(room_width/2,room_height/2,obj_player); //spawn the player in the middle of the room
