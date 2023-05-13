/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
//Setando cor novar do tiro
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprt_shoot_hit_glow_effet,image_index,x,y,image_xscale*.8,image_yscale*.8,image_angle,#FF0000,0.5);
//resetando o blendmode
gpu_set_blendmode(bm_normal);