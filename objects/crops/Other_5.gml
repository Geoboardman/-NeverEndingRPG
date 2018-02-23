if(room == room1)
{
	var inst_num = instance_number(obj_crop);
	if(inst_num == 0)
	{
		//no data
		ds_grid_clear(ds_crops_data, -1);
	}
	else
	{
		//there are crops save data
		ds_grid_resize(ds_crops_data, ds_grid_width(ds_crops_data), inst_num);
		
		//loop through instance grid
		var gw = ds_grid_width(ds_crops_instances);
		var gh = ds_grid_height(ds_crops_instances);
		var slot = 0;
		
		var xx = 0; repeat(gw){
			var yy = 0; repeat(gh){
				var inst = ds_crops_instances[# xx,yy];
				
				//if ther is an instance in the cell, save its data
				if(inst != 0){
					ds_crops_data[# 0, slot] = xx;
					ds_crops_data[# 1, slot] = yy;
					ds_crops_data[# 2, slot] = inst.cropType;
					ds_crops_data[# 4, slot] = inst.daysOld;
					slot += 1;
				}
				yy++;
			}
			xx++;
		}
	}
	
	ds_grid_destroy(ds_crops_instances);
}