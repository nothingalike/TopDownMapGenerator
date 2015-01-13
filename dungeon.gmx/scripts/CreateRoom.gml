///CreateRoom
//note: doors for top and bottom of room are x = 9, 10
//      doors for left and right of room are y = 7 or 6,7,8 (not sure what looks good)
//
// Each case will describe what pattern it is by its exits
//
// There are 3 values to set in the grid 0, 1, or 2
// 0: wall
// 1: floor
// 2: path or normally a door. 

//argument0 comes from CreateLevel and this will tell us which pattern the room needs to be
roomtype = argument0;

//Current room will be the value of the level grid that holds the room information, see CreateLevel
current_room = ds_grid_create(20, 15);
//Clear the grid
ds_grid_clear(current_room, -1);

switch(roomtype) {
    case 0: //No exits
        for(i=0;i<rm_x;i++) {
            for(j=0;j<rm_y;j++) {
                //Now depending on your game you may want this tile to have a different pattern
                //In spelunky this type of tile is still playable due to the destructive environments
                ds_grid_set(current_room, i, j, 0);
            }
        }
        break;
    case 1: //Exits: Left and Right
        for(i=0;i<rm_x;i++) {
            for(j=0;j<rm_y;j++) {
                if(j == 6 || j == 7 || j == 8) {
                    ds_grid_set(current_room, i, j, 2);
                }else {
                    if(i == 0 || i == rm_x - 1 || j == 0 || j == rm_y - 1) {
                        ds_grid_set(current_room, i, j, 0);
                    }else {
                        ds_grid_set(current_room, i, j, 1);
                    }
                }
            }
        }
        break;
    case 2: //Exits: Left, Right and Bottom
        for(i=0;i<rm_x;i++) {
            for(j=0;j<rm_y;j++) {
                if(j < 6){
                    if(i == 0 || i == rm_x - 1) {
                        ds_grid_set(current_room, i, j, 0);
                    }else if(j == 0) {
                        ds_grid_set(current_room, i, j, 0);
                    }else {
                        ds_grid_set(current_room, i, j, 1);
                    }   
                }else {
                    if(j == 6 || j == 7 || j == 8) {
                        ds_grid_set(current_room, i, j, 2);
                    }else {
                        if(i == 0 || i == rm_x - 1) {
                            ds_grid_set(current_room, i, j, 0);
                        }else if(i == 9 || i == 10) {
                            ds_grid_set(current_room, i, j, 2);
                        }else {
                            if(j == rm_y - 1) {
                                ds_grid_set(current_room, i, j, 0);
                            }else {
                                ds_grid_set(current_room, i, j, 1);
                            }
                        }
                    }
                }
            }
        }
        break;
    case 3: //Exits: Left, Right, and Top
        for(i=0;i<rm_x;i++) {
            for(j=0;j<rm_y;j++) {
                if(j > 8){
                    if(i == 0 || i == rm_x - 1) {
                        ds_grid_set(current_room, i, j, 0);
                    }else if(j == rm_y - 1) {
                        ds_grid_set(current_room, i, j, 0);
                    }else {
                        ds_grid_set(current_room, i, j, 1);
                    }   
                }else {
                    if(j == 6 || j == 7 || j == 8) {
                        ds_grid_set(current_room, i, j, 2);
                    }else {
                        if(i == 0 || i == rm_x - 1) {
                            ds_grid_set(current_room, i, j, 0);
                        }else if(i == 9 || i == 10) {
                            ds_grid_set(current_room, i, j, 2);
                        }else {
                            if(j == 0) {
                                ds_grid_set(current_room, i, j, 0);
                            }else {
                                ds_grid_set(current_room, i, j, 1);
                            }
                        }
                    }
                }
            }
        }
        break;
    case 4://Exits: Left, Right, Top, and Bottom
        for(i=0;i<rm_x;i++) {
            for(j=0;j<rm_y;j++) {
                if(j == 6 || j == 7 || j == 8 || i == 9 || i == 10) {
                    ds_grid_set(current_room, i, j, 2);
                }else {
                    if(i == 0 || i == rm_x - 1 || j == 0 || j == rm_y - 1) {
                        ds_grid_set(current_room, i, j, 0);
                    }else {
                        ds_grid_set(current_room, i, j, 1);
                    }
                }
                
            }
        }
        break;
    case 5://Exits: Top and Bottom
        for(i=0;i<rm_x;i++) {
            for(j=0;j<rm_y;j++) {
                if(i == 9 || i == 10) {
                    ds_grid_set(current_room, i, j, 2);
                }else {
                    if(i == 0 || i == rm_x - 1 || j == 0 || j == rm_y - 1) {
                        ds_grid_set(current_room, i, j, 0);
                    }else {
                        ds_grid_set(current_room, i, j, 1);
                    }
                }
            }
        }
        break;
    case 6://Exits: Right and Bottom
        for(i=0;i<rm_x;i++) {
            for(j=0;j<rm_y;j++) {                
                if(i < 9) {
                    if(i == 0 || j == 0 || j == rm_y - 1) {
                        ds_grid_set(current_room, i, j, 0);
                    }else {
                        ds_grid_set(current_room, i, j, 1);
                    }
                }else if(j < 6) {
                    if(j == 0 || i == rm_x - 1) {
                        ds_grid_set(current_room, i, j, 0);
                    }else {
                        ds_grid_set(current_room, i, j, 1);
                    }
                }else {
                    if(i == 9 || i == 10 || j == 6 || j == 7 || j == 8) {
                        ds_grid_set(current_room, i, j, 2);
                    }else {
                        if(i == rm_x - 1 || j == rm_y - 1) {
                            ds_grid_set(current_room, i, j, 0);
                        }else {
                            ds_grid_set(current_room, i, j, 1);
                        }
                    }
                }
            }
        }
        break;
    case 7://Exits: Left and Bottom
        for(i=0;i<rm_x;i++) {
            for(j=0;j<rm_y;j++) {                
                if(i > 10) {
                    if(i == rm_x - 1 || j == 0 || j == rm_y - 1) {
                        ds_grid_set(current_room, i, j, 0);
                    }else {
                        ds_grid_set(current_room, i, j, 1);
                    }
                }else if(j < 6) {
                    if(j == 0 || i == 0) {
                        ds_grid_set(current_room, i, j, 0);
                    }else {
                        ds_grid_set(current_room, i, j, 1);
                    }
                }else {
                    if(i == 9 || i == 10 || j == 6 || j == 7 || j == 8) {
                        ds_grid_set(current_room, i, j, 2);
                    }else {
                        if(i == 0 || j == rm_y - 1) {
                            ds_grid_set(current_room, i, j, 0);
                        }else {
                            ds_grid_set(current_room, i, j, 1);
                        }
                    }
                }
            }
        }
        break;
    case 8://Exits: Top and Right
        for(i=0;i<rm_x;i++) {
            for(j=0;j<rm_y;j++) {                
                if(i < 9) {
                    if(i == 0 || j == 0 || j == rm_y - 1) {
                        ds_grid_set(current_room, i, j, 0);
                    }else {
                        ds_grid_set(current_room, i, j, 1);
                    }
                }else if(j > 8) {
                    if(j == rm_y - 1 || i == rm_x - 1) {
                        ds_grid_set(current_room, i, j, 0);
                    }else {
                        ds_grid_set(current_room, i, j, 1);
                    }
                }else {
                    if(i == 9 || i == 10 || j == 6 || j == 7 || j == 8) {
                        ds_grid_set(current_room, i, j, 2);
                    }else {
                        if(i == rm_x - 1 || j == 0) {
                            ds_grid_set(current_room, i, j, 0);
                        }else {
                            ds_grid_set(current_room, i, j, 1);
                        }
                    }
                }
            }
        }
        break;
    case 9://Exits: Top and Left
        for(i=0;i<rm_x;i++) {
            for(j=0;j<rm_y;j++) {                
                if(i > 10) {
                    if(i == rm_x - 1 || j == 0 || j == rm_y - 1) {
                        ds_grid_set(current_room, i, j, 0);
                    }else {
                        ds_grid_set(current_room, i, j, 1);
                    }
                }else if(j > 8) {
                    if(j == rm_y - 1 || i == 0) {
                        ds_grid_set(current_room, i, j, 0);
                    }else {
                        ds_grid_set(current_room, i, j, 1);
                    }
                }else {
                    if(i == 9 || i == 10 || j == 6 || j == 7 || j == 8) {
                        ds_grid_set(current_room, i, j, 2);
                    }else {
                        if(i == 0 || j == 0) {
                            ds_grid_set(current_room, i, j, 0);
                        }else {
                            ds_grid_set(current_room, i, j, 1);
                        }
                    }
                }
            }
        }
        break;
    case 10: //Exits: Top, Bottom, and Right
        for(i=0;i<rm_x;i++) {
            for(j=0;j<rm_y;j++) {                
                if(i < 9) {
                    if(i == 0 || j == 0 || j == rm_y - 1) {
                        ds_grid_set(current_room, i, j, 0);
                    }else {
                        ds_grid_set(current_room, i, j, 1);
                    }
                }else if(i == 9 || i == 10 || j == 6 || j == 7 || j == 8) {
                    ds_grid_set(current_room, i, j, 2);
                }else {
                    if(i == rm_x - 1 || j == rm_y - 1 || j == 0) {
                        ds_grid_set(current_room, i, j, 0);
                    }else {
                        ds_grid_set(current_room, i, j, 1);
                    }
                }
            }
        }
        break;
    case 11: //Exits: Top, Bottom, and Left
        for(i=0;i<rm_x;i++) {
            for(j=0;j<rm_y;j++) {                
                if(i > 10) {
                    if(i == rm_x - 1 || j == 0 || j == rm_y - 1) {
                        ds_grid_set(current_room, i, j, 0);
                    }else {
                        ds_grid_set(current_room, i, j, 1);
                    }
                }else if(i == 9 || i == 10 || j == 6 || j == 7 || j == 8) {
                    ds_grid_set(current_room, i, j, 2);
                }else {
                    if(i == 0 || j == rm_y - 1 || j == 0) {
                        ds_grid_set(current_room, i, j, 0);
                    }else {
                        ds_grid_set(current_room, i, j, 1);
                    }
                }
            }
        }
        break;
    case 12: //Exits: Right 
        for(i=0;i<rm_x;i++) {
            for(j=0;j<rm_y;j++) {                
                if(i < 9) {
                    if(i == 0 || j == 0 || j == rm_y - 1) {
                        ds_grid_set(current_room, i, j, 0);
                    }else {
                        ds_grid_set(current_room, i, j, 1);
                    }
                }else {
                    if(j == 6 || j == 7 || j == 8) {
                        ds_grid_set(current_room, i, j, 2);
                    }else {
                        if(i == rm_x - 1 || j == rm_y - 1 || j == 0) {
                            ds_grid_set(current_room, i, j, 0);
                        }else {
                            ds_grid_set(current_room, i, j, 1);
                        }
                    }
                }
            }
        }
        break;
    case 13: //Exits: Top
        for(i=0;i<rm_x;i++) {
            for(j=0;j<rm_y;j++) {                
                if(j > 8) {
                    if(i == 0 || i == rm_x - 1 || j == rm_y - 1) {
                        ds_grid_set(current_room, i, j, 0);
                    }else {
                        ds_grid_set(current_room, i, j, 1);
                    }
                }else {
                    if(i == 9 || i == 10) {
                        ds_grid_set(current_room, i, j, 2);
                    }else {
                        if(i == rm_x - 1 || i == 0 || j == 0) {
                            ds_grid_set(current_room, i, j, 0);
                        }else {
                            ds_grid_set(current_room, i, j, 1);
                        }
                    }
                }
            }
        }
        break;
    case 14: //Exits: Left
        for(i=0;i<rm_x;i++) {
            for(j=0;j<rm_y;j++) {                
                if(i > 10) {
                    if(i == rm_x - 1 || j == 0 || j == rm_y - 1) {
                        ds_grid_set(current_room, i, j, 0);
                    }else {
                        ds_grid_set(current_room, i, j, 1);
                    }
                }else {
                    if(j == 6 || j == 7 || j == 8) {
                        ds_grid_set(current_room, i, j, 2);
                    }else {
                        if(i == 0 || j == 0 || j == rm_y - 1) {
                            ds_grid_set(current_room, i, j, 0);
                        }else {
                            ds_grid_set(current_room, i, j, 1);
                        }
                    }
                }
            }
        }
        break;
    case 15: //Exits: Bottom
        for(i=0;i<rm_x;i++) {
            for(j=0;j<rm_y;j++) {                
                if(j < 6) {
                    if(i == 0 || i == rm_x - 1 || j == 0) {
                        ds_grid_set(current_room, i, j, 0);
                    }else {
                        ds_grid_set(current_room, i, j, 1);
                    }
                }else {
                    if(i == 9 || i == 10) {
                        ds_grid_set(current_room, i, j, 2);
                    }else {
                        if(i == rm_x - 1 || i == 0 || j == 0) {
                            ds_grid_set(current_room, i, j, 0);
                        }else {
                            ds_grid_set(current_room, i, j, 1);
                        }
                    }
                }
            }
        }
        break;
}
