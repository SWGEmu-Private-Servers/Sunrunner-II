object_building_kashyyyk_kash_cloner = object_building_kashyyyk_shared_kash_cloner:new {

	planetMapCategory = "cloningfacility",
	customName = "Graveyard",
	facilityType = CLONER_STANDARD,
	templateType = CLONINGBUILDING,
    
	skillMods = {
		{"private_medical_rating", 100}
	},

	childObjects = {
	--	{templateFile = "object/tangible/terminal/terminal_cloning.iff", x = -2, z = 0, y = 0, ox = 0, oy = 0.707106, oz = 0, ow = 0.707106, cellid = -1, containmentType = -1},
	--	{templateFile = "object/tangible/terminal/terminal_insurance.iff", x = 3, z = 0, y = 0, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},        	
	},
	
	childCreatureObjects = {
	--	{ mobile = "rebel_recruiter", x = 0, z = 0, y = 4, cellid = 0, containmentType = -1, respawn = 60, heading = 3.14},
	},

	spawningPoints = {
		{ x = 0, z = 0, y = 4, ow = -0.70527, ox = 0, oz = 0, oy = 0.708939, cellid = 0 }
		}, -- { x, z, y, ow, ox, oy, oz, cellid }



}
ObjectTemplates:addTemplate(object_building_kashyyyk_kash_cloner, "object/building/kashyyyk/kash_cloner.iff")
