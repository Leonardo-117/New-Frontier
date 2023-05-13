/// @description Insert description here
// You can write your code in this editor
//Creating enemys

if !instance_exists(obj_enemy_1){
	var creating_enemys_lvl = level*irandom_range(3,10);
	repeat(creating_enemys_lvl){
	creating_enemys()
	}
}
//Reseting alarms
alarm[0] = room_speed*5;