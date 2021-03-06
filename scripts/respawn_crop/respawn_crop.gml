///@description respawn_crop
///@arg grid_x
///@arg grid_y
///@arg crop_type
///@arg days_old

var xx = argument0 * cellSize;
var yy = argument1 * cellSize;

//Create the instance
var inst = instance_create_layer(xx + (cellSize /2), yy + (cellSize /2), "Instances", obj_crop);
ds_crops_instances[# argument0, argument1] = inst;

//Give the crop it's characteristics
with(inst) {
	cropType = argument2;
	daysOld = argument3;
	growthStageDuration = crops.ds_crops_types[# 0, cropType];
}

return inst;