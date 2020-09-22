-- {"regionName", xCenter, yCenter, shape and size, tier, {"spawnGroup1", ...}, maxSpawnLimit}
-- Shape and size is a table with the following format depending on the shape of the area:
--   - Circle: {CIRCLE, radius}
--   - Rectangle: {2, width, height}
--   - Ring: {3, inner radius, outer radius}
-- Tier is a bit mask with the following possible values where each hexadecimal position is one possible configuration.
-- That means that it is not possible to have both a spawn area and a no spawn area in the same region, but
-- a spawn area that is also a no build zone is possible.

require("scripts.managers.spawn_manager.regions")

taanab_regions = {
	{"pandath",2000,5400,{CIRCLE,300},NOSPAWNAREA + NOBUILDZONEAREA},
	{"starhunterstation",3763,-5425,{CIRCLE,300},NOSPAWNAREA + NOBUILDZONEAREA},
	{"world_spawner",0,0,{CIRCLE,-1},SPAWNAREA + WORLDSPAWNAREA,{"taanab_world"},2048},
	{"taanabhexfarms",-3000,-105,{CIRCLE,300},NOSPAWNAREA + NOBUILDZONEAREA},
	{"taanabgreatherd",5537,-4958,{CIRCLE,300},NOWORLDSPAWNAREA + NOBUILDZONEAREA + SPAWNAREA,{"taanab_nerfherd"},1024},
	{"downedship",3293,-1324,{CIRCLE,150},NOBUILDZONEAREA},
	{"taanabcanyonlands",-2590,3705,{CIRCLE,50},NOBUILDZONEAREA},
	{"taanabmine",-2609,-1305,{CIRCLE,200},NOSPAWNAREA + NOBUILDZONEAREA},
	{"taanabcave",-850,7200,{CIRCLE,150},NOSPAWNAREA + NOBUILDZONEAREA},
	{"taanabnorulacvfarmer",-3508,-4236,{CIRCLE,350},NOSPAWNAREA + NOBUILDZONEAREA},
	{"x_1",2132,6674,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_2",103,7010,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_3",-1413,6150,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_4",-2614,5996,{CIRCLE,100},NOBUILDZONEAREA},
	{"x_5",-4732,5719,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_6",-6000,4675,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_7",-6576,2785,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_8",-5011,2897,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_9",-4102,4334,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_10",-814,3765,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_11",1379,2979,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_12",-1481,1375,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_13",-4661,482,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_14",-5990,-1106,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_15",-4153,-2180,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_16",-5791,-3031,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_17",-5424,-4454,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_18",-2380,-2749,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_19",-1502,-4677,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_20",-353,-2666,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_21",-539,-906,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_22",1723,-894,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_23",734,310,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_24",3073,322,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_25",3310,2246,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_26",4868,1272,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_27",5150,-540,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_28",5440,-2523,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_29",3476,-3520,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_30",1114,-3378,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_31",2017,-4831,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_32",-3373,-5701,{CIRCLE,50},NOBUILDZONEAREA},
	{"x_33",-5872,-6201,{CIRCLE,50},NOBUILDZONEAREA},	
	
}
