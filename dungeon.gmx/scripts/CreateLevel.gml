///CreateLevel
//so the reason for randomize() is because the game wont reset its index or w/e to actually produce random numbers/choices
randomize();
ds_grid_clear(lvl_grid_values, -1);
ds_grid_clear(lvl_grid_types, -1);
runCreateLevel = false;
for(a=0;a<lvl_x;a++) {
    for(b=0;b<lvl_y;b++) {
        if(a == 0 && b == 0) {//top left corner
            current_type = choose(0, 6, 6, 12, 15);
        }else if(a == 0 && b > 0 && b < lvl_y - 1) { //left side but not top or bottom
            rm_type_above = ds_grid_get(lvl_grid_types, a, b-1);
            switch(rm_type_above) {
                case 0:
                case 8:
                case 12:
                    current_type = choose(0, 6, 6);
                    break;
                case 15:
                    current_type = choose(5, 5, 8, 10, 10);
                    break;
                default:
                    current_type = choose(5, 5, 8, 10, 10);
                    break;
            }
        }else if(a == 0 && b == lvl_y - 1) { //bottom left corner
            rm_type_above = ds_grid_get(lvl_grid_types, a, b-1);
            switch(rm_type_above) {
                case 0:
                case 8:
                    current_type = choose(0, 12);
                    break;
                default:
                    current_type = 8;
                    break;
            }
        }else if(a > 0 && a < lvl_x - 1 && b == 0) { //top middle rooms
            rm_type_left = ds_grid_get(lvl_grid_types, a-1, b);
            switch(rm_type_left) {
                case 0:
                case 7:
                case 15:
                    current_type = choose(0, 6, 6);
                    break;
                default:
                    current_type = choose(1, 2, 2, 7);
                    break;
            }
        }else if(a > 0 && a < lvl_x - 1 && b > 0 && b < lvl_y - 1) { //middle rooms with rooms on all sides of them
            rm_type_left = ds_grid_get(lvl_grid_types, a-1, b);
            rm_type_above = ds_grid_get(lvl_grid_types, a, b-1);
            switch(rm_type_above) {
                case 0:
                case 3:
                case 1:
                case 8:
                case 9: //no path from above
                    if(rm_type_left == 1 || rm_type_left == 2 || rm_type_left == 3 || rm_type_left == 4 || rm_type_left == 6 || rm_type_left == 8 || rm_type_left == 10){ //a path from the left
                        current_type = choose(1, 2, 2, 7);
                    }else {//no path from the left
                        current_type = choose(0, 6, 6);
                    }
                    break;
                default: //a path from above
                    if(rm_type_left == 1 || rm_type_left == 2 || rm_type_left == 3 || rm_type_left == 4 || rm_type_left == 6 || rm_type_left == 8 || rm_type_left == 10){//a path from the left
                        current_type = choose(3,4,11);
                    }else {//no path from the left
                        current_type = 10;
                    }
                    break;
            }
        }else if(a > 0 && a < lvl_x - 1 && b == lvl_y - 1) { //bottom rooms but not corners
            rm_type_left = ds_grid_get(lvl_grid_types, a-1, b);
            rm_type_above = ds_grid_get(lvl_grid_types, a, b-1);
            switch(rm_type_above) {
                case 0:
                case 1:
                case 3:
                case 8:
                case 9: //no path from above
                    if(rm_type_left == 1 || rm_type_left == 3 || rm_type_left == 8 || rm_type_left == 12){ //a path from the left
                        current_type = 1;
                    }else {//no path from the left
                        current_type = 0;
                    }
                    break;
                default: //a path from above
                    if(rm_type_left == 1 || rm_type_left == 3 || rm_type_left == 8 || rm_type_left == 12){//a path from the left
                        current_type = 3;
                    }else {//no path from the left
                        current_type = 8;
                    }
                    break;
            }
        }else if(a == lvl_x - 1 && b == 0) { //top right corner
            rm_type_left = ds_grid_get(lvl_grid_types, a-1, b);
            switch(rm_type_left) {
                case 0:
                case 7:
                    current_type = choose(0, 15);
                    break;
                default:
                    current_type = choose(7, 7, 7, 14);
                    break;
            }
        }else if(a == lvl_x - 1 && b > 0 && b < lvl_y - 1) { //middle right side
            rm_type_left = ds_grid_get(lvl_grid_types, a-1, b);
            rm_type_above = ds_grid_get(lvl_grid_types, a, b-1);
            switch(rm_type_above) {
                case 0:
                case 9:
                case 14: //no path from above
                    if(rm_type_left == 1 || rm_type_left == 2 || rm_type_left == 6 || rm_type_left == 8 || rm_type_left == 3 || rm_type_left == 4 || rm_type_left == 10){ //a path from the left
                        current_type = 7;
                    }else {//no path from the left
                        current_type = 0;
                    }
                    break;
                default: //a path from above
                    if(rm_type_left == 1 || rm_type_left == 2 || rm_type_left == 6 || rm_type_left == 8 || rm_type_left == 3 || rm_type_left == 4 || rm_type_left == 10){//a path from the left
                        current_type = 11;
                    }else {//no path from the left
                        current_type = 5;
                    }
                    break;
            }
        }else if(a == lvl_x - 1 && b == lvl_y - 1) { //bottom right corner
            rm_type_left = ds_grid_get(lvl_grid_types, a-1, b);
            rm_type_above = ds_grid_get(lvl_grid_types, a, b-1);
            switch(rm_type_above) {
                case 0:
                case 9:
                    if(rm_type_left == 1 || rm_type_left == 3 || rm_type_left == 8){
                        current_type = 14;
                    }else {
                        current_type = 0;
                    }
                    break;
                default:
                    if(rm_type_left == 1 || rm_type_left == 3 || rm_type_left == 8){
                        current_type = 9;
                    }else {
                        current_type = 13;
                    }
                    break;
            }
        }
        
        //If current type has been set to zero we want to keep track of that
        if(current_type == 0) {
            zerocount += 1;
            
            //if zero count is equal to or greater than the allowed amount 
            //then we need to restart because level will most likely be horrible
            if(zerocount >= zerosAllowed) {
                runCreateLevel = true;
                show_debug_message("RESTARTING!");
                exit;
            }
        }
        
        //make special case for 0? maybe dont make room?
        CreateRoom(current_type);
        ds_grid_set(lvl_grid_values, a, b, current_room);
        ds_grid_set(lvl_grid_types, a, b, current_type);
        show_debug_message(string(a) + ", " + string(b) + " = " + string(current_type));
    }
}
