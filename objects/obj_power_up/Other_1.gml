if (x <= 0 or x>=room_width)
{

    x = clamp(x, 0, room_width);
    direction = -direction + 180;
}

if (y <= 0 or y >= room_height)
{
    y = clamp(y, 0, room_height);
    direction = -direction;
}