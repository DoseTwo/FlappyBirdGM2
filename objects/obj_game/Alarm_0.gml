// create pipes
if (did_start) 
{
   var yy;
   yy = random(max_height - padding * 2 - pipe_gap)

   instance_create_depth(room_width, yy, 1, obj_pipeDown);
   instance_create_depth(room_width, yy + pipe_gap, 1, obj_pipeUp);
}

alarm[0] = room_speed * 2

