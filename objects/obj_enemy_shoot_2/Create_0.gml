// Inherit the parent event
event_inherited();
//Define new velocity
speed = 6;
//find the player direction
if instance_exists(obj_actor_spaceship) = true{
direction = point_direction(x, y, obj_actor_spaceship.x, obj_actor_spaceship.y);
}
// Normalizando o angulo de criação da imagem
image_angle = direction + 90;
