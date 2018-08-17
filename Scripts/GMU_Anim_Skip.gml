///@arg anim/inst/obj
var inst=argument[0];

var result=false;

if(instance_exists(inst)){
	if(inst.object_index==_gmu_anim){
		if(instance_exists(inst._inst)){
			variable_instance_set(inst._inst,inst._var_name,inst._start+inst._change);
			instance_destroy(inst);
			result=true;
		}
	}else{
		var proc=0;
		var inst_find=noone;
		
		repeat(instance_number(_gmu_anim)){
			inst_find=instance_find(_gmu_anim,proc);
			if(instance_exists(inst_find)){
				if(instance_exists(inst_find._inst)){
					if(inst_find._inst==inst||inst_find._inst.object_index=inst){
						result=true;
						variable_instance_set(inst_find._inst,inst_find._var_name,inst_find._start+inst_find._change);
						instance_destroy(inst_find);
						proc-=1;
					}
				}
			}
			proc+=1;
		}
	}
}

return result;
