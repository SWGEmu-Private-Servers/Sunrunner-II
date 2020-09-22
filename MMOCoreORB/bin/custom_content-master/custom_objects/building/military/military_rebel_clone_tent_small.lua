object_building_military_military_rebel_clone_tent_small = object_building_military_shared_military_rebel_clone_tent_small:new {

	planetMapCategory = "cloningfacility",
    faction = "rebel",
	customName = "Rebel Cloning Facility",
	containerComponent = "GCWBaseContainerComponent",
	zoneComponent = "StructureZoneComponent",
	facilityType = CLONER_FACTION_REBEL,
	templateType = CLONINGBUILDING,
    alwaysPublic = 1,
    
	skillMods = {
		{"private_medical_rating", 100}
	},

	childObjects = {
		--{templateFile = "object/tangible/terminal/terminal_cloning.iff", x = -2, z = 0, y = 0, ox = 0, oy = 0.707106, oz = 0, ow = 0.707106, cellid = -1, containmentType = -1},
		{templateFile = "object/tangible/terminal/terminal_insurance.iff", x = 3, z = 0, y = 0, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1},        	
	},
	
	childCreatureObjects = {
		{ mobile = "rebel_recruiter", x = 0, z = 0, y = 4, cellid = -1, containmentType = -1, respawn = 60, heading = 3.14},
	},

	spawningPoints = {
		{ x = 0, z = 0, y = 4, ow = -0.70527, ox = 0, oz = 0, oy = 0.708939, cellid = 0 }
		}, -- { x, z, y, ow, ox, oy, oz, cellid }



}
ObjectTemplates:addTemplate(object_building_military_military_rebel_clone_tent_small, "object/building/military/military_rebel_clone_tent_small.iff")
