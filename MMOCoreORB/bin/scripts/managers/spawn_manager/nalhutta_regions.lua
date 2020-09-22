-- {"regionName",xCenter,yCenter,shape and size,tier,{"spawnGroup1",...},maxSpawnLimit}
-- Shape and size is a table with the following format depending on the shape of the area:
--   - Circle: {CIRCLE,radius}
--   - Rectangle: {2,width,height}
--   - Ring: {3,inner radius,outer radius}
-- Tier is a bit mask with the following possible values where each hexadecimal position is one possible configuration.
-- That means that it is not possible to have both a spawn area and a no spawn area in the same region,but
-- a spawn area that is also a no build zone is possible.

require("scripts.managers.spawn_manager.regions")

nalhutta_regions = {
	{"huttcity",-3518,-1949,{CIRCLE,750},NOSPAWNAREA + NOBUILDZONEAREA},
	{"world_spawner",0,0,{CIRCLE,-1},SPAWNAREA + WORLDSPAWNAREA,{"nalhutta_world"},2048},
	{"bunker",2000,-3000,{CIRCLE,100},NOSPAWNAREA + NOBUILDZONEAREA},
	{"prison",-4000,0,{CIRCLE,250},NOSPAWNAREA + NOBUILDZONEAREA},
	{"bog_raiders",-1760,1360,{CIRCLE,250},NOSPAWNAREA + NOBUILDZONEAREA},
	{"arena",-2752,-2286,{CIRCLE,250},NOSPAWNAREA + NOBUILDZONEAREA},
	{"gamorrean_village",-1145,-2947,{CIRCLE,250},NOSPAWNAREA + NOBUILDZONEAREA},
	{"chemical_leak",-3640,-7020,{CIRCLE,200},NOSPAWNAREA + NOBUILDZONEAREA},
	{"menagerie",5600,900,{CIRCLE,900},NOSPAWNAREA + NOBUILDZONEAREA},
	{"palace_1",3034,-5832,{CIRCLE,400},NOSPAWNAREA + NOBUILDZONEAREA},
	{"palace_2",3981,3659,{CIRCLE,250},NOSPAWNAREA + NOBUILDZONEAREA},
	{"huttsmuggleroutpost",2365,3968,{CIRCLE,350},NOSPAWNAREA + NOBUILDZONEAREA},
	{"carax_nest",-3800,4555,{CIRCLE,350},NOSPAWNAREA + NOBUILDZONEAREA},
	{"younggun_bunker",2008,-2991,{CIRCLE,100},NOSPAWNAREA + NOBUILDZONEAREA},
	{"nym_coordinator_landing",-795,1230,{CIRCLE,150},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_1",6208,7283,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_2",5004,6682,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_3",3889,6623,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_4",2699,6145,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_5",1762,6997,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_6",392,7157,{CIRCLE,75},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_7",886,5899,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_8",84,5936,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_9",-1262,6461,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_10",-2321,6285,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_11",-3732,6032,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_12",-4413,7374,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_13",-5207,6384,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_14",-6613,6773,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_15",-6744,5442,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_16",-6334,4305,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_17",-7140,66,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_18",-5231,3484,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_19",-4933,5174,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_20",-2264,5070,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_21",-643,5035,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_22",966,4791,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_23",2811,5525,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_24",4213,5099,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_25",5863,5634,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_26",6834,4720,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_27",6026,3806,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_28",5102,4517,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_29",3291,4469,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_30",1182,3425,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_31",-63,4042,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_32",-1171,4033,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_33",-3382,3525,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_34",-4296,2786,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_35",-5520,2445,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_36",-6828,41,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_37",-7346,1189,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_38",-6717,355,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_39",-5648,1448,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_40",-4961,586,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_41",-3771,1776,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_42",-2280,2486,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_43",-931,2905,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_44",458,2618,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_45",1866,2543,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_46",3428,2366,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_47",4910,2836,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_48",6338,67,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_49",7263,1254,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_50",4762,41,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_51",3692,1164,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_52",2196,1013,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_53",1075,1503,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_54",-170,1604,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_55",-2282,165,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_56",-850,-31,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_57",660,368,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_58",1981,24,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_59",3689,88,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_60",4959,-443,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_61",6593,-493,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_62",6430,-1963,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_63",5224,-1813,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_64",4141,-1518,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_65",2535,-1020,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_66",1312,-980,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_67",-109,-769,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_68",-1367,-1041,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_69",-3001,-691,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_70",-4276,-1020,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_71",-5734,-702,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_72",-7288,-1244,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_73",-6508,-2433,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_74",-4946,-2840,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_75",-3658,-3398,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_76",-2213,-3641,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_77",-1004,-4257,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_78",395,-3420,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_79",469,-2092,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_80",1853,-2298,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_81",3170,-2588,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_82",4660,-2699,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_83",6131,-3229,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_84",7046,-4228,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_85",5756,-4439,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_86",4390,-4321,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_87",2863,-3912,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_88",1484,-4064,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_89",774,-4704,{CIRCLE,200},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_90",-394,-5397,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_91",-1739,-5357,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_92",-2854,-4553,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_93",-4288,-4462,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_94",-5295,-4035,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_95",-6506,-3374,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_96",-7188,-4644,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_97",-5907,-5282,{CIRCLE,100},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_98",-4422,-5628,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_99",-2900,-5783,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_100",-1754,-6523,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_101",-166,-6660,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_102",1276,-6373,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_103",2018,-5142,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_104",3539,-4812,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_105",4642,-5457,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_106",6057,-5711,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_107",7020,-6710,{CIRCLE,100},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_108",5633,-7089,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_109",4050,-6802,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_110",2729,-7520,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_111",-5049,-6696,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"xnh_112",-6436,-6563,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},

}