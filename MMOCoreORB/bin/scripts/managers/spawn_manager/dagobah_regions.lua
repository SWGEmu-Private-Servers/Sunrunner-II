-- {"regionName", xCenter, yCenter, shape and size, tier, {"spawnGroup1", ...}, maxSpawnLimit}
-- Shape and size is a table with the following format depending on the shape of the area:
--   - Circle: {1, radius}
--   - Rectangle: {2, width, height}
--   - Ring: {3, inner radius, outer radius}
-- Tier is a bit mask with the following possible values where each hexadecimal position is one possible configuration.
-- That means that it is not possible to have both a spawn area and a no spawn area in the same region, but
-- a spawn area that is also a no build zone is possible.

require("scripts.managers.spawn_manager.regions")

dagobah_regions = {
	{"world_spawner",0,0,{CIRCLE,-1},SPAWNAREA + WORLDSPAWNAREA,{"dagobah_world"},256},
	{"starship_graveyard",3000,3000,{CIRCLE,250},NOSPAWNAREA + NOBUILDZONEAREA},
	{"yoda_hut",0,0,{CIRCLE,50},NOSPAWNAREA + NOBUILDZONEAREA},
	{"area_1",3261,-241,{CIRCLE,250},NOSPAWNAREA + NOBUILDZONEAREA},
	{"area_2",5437,2016,{CIRCLE,250},NOSPAWNAREA + NOBUILDZONEAREA},
	{"area_3",-1319,3941,{CIRCLE,250},NOSPAWNAREA + NOBUILDZONEAREA},
	{"area_4",4494,5632,{CIRCLE,250},NOSPAWNAREA + NOBUILDZONEAREA},
	{"area_5",-1905,2560,{CIRCLE,250},NOSPAWNAREA + NOBUILDZONEAREA},
	{"camp_shuttle",-3015,553,{CIRCLE,200},NOSPAWNAREA + NOBUILDZONEAREA},


}
