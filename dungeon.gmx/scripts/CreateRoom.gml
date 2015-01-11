///CreateRoom
//note: doors for top and bottom of room are x = 9, 10
//      doors for left and right of room are y = 7 or 6,7,8 (not sure what looks good)
roomtype = argument0;

current_room = ds_grid_create(20, 15);
ds_grid_clear(current_room, -1);

switch(roomtype) {
    case 0:
        for(i=0;i<rm_x;i++) {
            for(j=0;j<rm_y;j++) {
                ds_grid_set(current_room, i, j, 0);
                //if(i == 0 || j == 0 || i == rm_x - 1 || j == rm_y - 1) {
                //    ds_grid_set(current_room, i, j, 0);
                //}else {
                //    ds_grid_set(current_room, i, j, 1);
                //}
            }
        }
        break;
    case 1:
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
    case 2:
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
    case 3:
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
    case 4:
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
    case 5:
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
    case 6:
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
    case 7:
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
    case 8:
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
    case 9:
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
    case 10:
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
    case 11:
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
    case 12:
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
    case 13:
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
    case 14:
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
    case 15:
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
