/// @description Insert description here
// You can write your code in this editor

if (vida_minion>0) {
    vida_minion --;
} else{
	instance_destroy();
}
instance_destroy(other);
