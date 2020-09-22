-- {"regionName", xCenter, yCenter, shape and size, tier, {"spawnGroup1", ...}, maxSpawnLimit}
-- Shape and size is a table with the following format depending on the shape of the area:
--   - Circle: {CIRCLE, radius}
--   - Rectangle: {2, width, height}
--   - Ring: {3, inner radius, outer radius}
-- Tier is a bit mask with the following possible values where each hexadecimal position is one possible configuration.
-- That means that it is not possible to have both a spawn area and a no spawn area in the same region, but
-- a spawn area that is also a no build zone is possible.

require("scripts.managers.spawn_manager.regions")

mandalore_regions = {
	{"world_spawner",0,0,{CIRCLE,-1},SPAWNAREA + WORLDSPAWNAREA + NOBUILDZONEAREA,{"mandalore_world"},2048},

	{"mand_imp_prison",-3670,-1113,{CIRCLE,500},NOSPAWNAREA + NOBUILDZONEAREA},



}
