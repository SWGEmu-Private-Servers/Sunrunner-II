-- {"regionName", xCenter, yCenter, shape and size, tier, {"spawnGroup1", ...}, maxSpawnLimit}
-- Shape and size is a table with the following format depending on the shape of the area:
--   - Circle: {CIRCLE, radius}
--   - Rectangle: {RECTANGLE, x2, y2}
--   - Ring: {3, inner radius, outer radius}
-- Tier is a bit mask with the following possible values where each hexadecimal position is one possible configuration.
-- That means that it is not possible to have both a spawn area and a no spawn area in the same region, but
-- a spawn area that is also a no build zone is possible.

require("scripts.managers.spawn_manager.regions")

kashyyyk_regions = {
	
	{"world_spawner",0,0,{CIRCLE,-1},SPAWNAREA + WORLDSPAWNAREA,{"kashyyyk_world"},2048},
	{"village1",-2000,0,{CIRCLE,300},NOSPAWNAREA + NOBUILDZONEAREA},

	{"kachirho",-1050,-1300,{RECTANGLE,1050,1050},NOSPAWNAREA + NOBUILDZONEAREA},
	{"hunting",-1432,-4900,{RECTANGLE,1432,-2020},NOSPAWNAREA + NOBUILDZONEAREA},
	{"dead_forest",-2010,990,{RECTANGLE,-990,2010},NOSPAWNAREA + NOBUILDZONEAREA},
	{"bocctyy",2042,-264,{RECTANGLE,2574,264},NOSPAWNAREA + NOBUILDZONEAREA},
	{"hracca",-1675,2934,{RECTANGLE,-620,3975},NOSPAWNAREA + NOBUILDZONEAREA},
	{"slaver",-3860,2800,{RECTANGLE,-2800,3860},NOSPAWNAREA + NOBUILDZONEAREA},
	{"arena",-2370,1040,{RECTANGLE,-2096,1320},NOSPAWNAREA + NOBUILDZONEAREA},
	{"rryatt",434,1422,{RECTANGLE,3954,4640},NOSPAWNAREA + NOBUILDZONEAREA},

	--{"kachirho",0,0,{CIRCLE,2000},NOSPAWNAREA + NOBUILDZONEAREA},
	--{"hunting",0,-3000,{CIRCLE,2800},NOSPAWNAREA + NOBUILDZONEAREA},
	--{"dead_forest",-1500,1500,{CIRCLE,1200},NOSPAWNAREA + NOBUILDZONEAREA},
	--{"bocctyy",2300,0,{CIRCLE,600},NOSPAWNAREA + NOBUILDZONEAREA},
	--{"hracca",-1100,3500,{CIRCLE,1000},NOSPAWNAREA + NOBUILDZONEAREA},
	--{"slaver",-3300,3300,{CIRCLE,1000},NOSPAWNAREA + NOBUILDZONEAREA},
	--{"arena",-2210,1103,{CIRCLE,250},NOSPAWNAREA + NOBUILDZONEAREA},
	--{"rryatt",2194,3630,{CIRCLE,3600},NOSPAWNAREA + NOBUILDZONEAREA},
	
}
