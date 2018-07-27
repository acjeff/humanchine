/// @description
ds_crops_types = 0;

enum crop {
	tomatoe,
	potatoe,
	carrot,
	artichoke,
	chilli,
	gourd,
	corn
}

create_crop_type(4, 40); //tomatoe
create_crop_type(3, 35); //potatoe
create_crop_type(2, 25); //carrot
create_crop_type(4, 45); //artichoke
create_crop_type(3, 30); //chilli
create_crop_type(2, 20); //gourd
create_crop_type(5, 50); //corn

planting = false;
selectCrop = 0;

mx = 0;
my = 0;

cellSize = 32;