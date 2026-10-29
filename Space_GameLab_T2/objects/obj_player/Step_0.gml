if(keyboard_check(vk_up))
{
    motion_add(image_angle, 0.1)
}

if(keyboard_check(vk_down))
{
    motion_add(image_angle, 0.1)
}

if(keyboard_check(vk_left))
{
    image_angle +=1;
    
}

if(keyboard_check(vk_right))
{
    image_angle -=1;
    
}

move_wrap(true, true, 1);

if(keyboard_check(vk_control))
{
    var bulletOffset = 16;
    
    var spawnPointX = x + lengthdir_x(bulletOffset, image_angle);
    var spawPointY = y + lengthdir_y(bulletOffset, image_angle);
    
    instance_create_layer(spawnPointX, spawPointY, "instances", obj_bullet);
}