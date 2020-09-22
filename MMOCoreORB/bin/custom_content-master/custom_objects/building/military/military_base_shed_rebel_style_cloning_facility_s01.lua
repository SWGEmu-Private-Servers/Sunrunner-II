object_building_military_military_base_shed_rebel_style_cloning_facility_s01 = object_building_military_shared_military_base_shed_rebel_style_cloning_facility_s01:new {
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
		{templateFile = "object/tangible/terminal/terminal_insurance.iff", x = -5.08604, z = 0.125266, y = -3.48717, ox = 0, oy = 0.722557, oz = 0, ow = 0.691312, cellid = 6, containmentType = -1},
		{templateFile = "object/tangible/terminal/terminal_cloning.iff", x = 0.0387871, z = 0.125265, y = -6, ox = 0, oy = -0.0595427, oz = 0, ow = 0.998226, cellid = 3, containmentType = -1}
	},

	spawningPoints = {
		{ x = 3.2408, z = 0.125266, y = -3.59732, ow = -0.706572, ox = 0, oz = 0, oy = 0.707641, cellid = 5 }
	}, -- { x, z, y, ow, ox, oy, oz, cellid }
}
ObjectTemplates:addTemplate(object_building_military_military_base_shed_rebel_style_cloning_facility_s01, "object/building/military/military_base_shed_rebel_style_cloning_facility_s01.iff")
