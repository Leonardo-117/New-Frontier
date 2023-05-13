/// @description Insert description here
// You can write your code in this editor
if (level_boss_atual != "estado4") {
    if (vida_boss_atual > 0) {
	vida_boss_atual --;
	} else {
	instance_destroy();
	}
	instance_destroy(other);
}
