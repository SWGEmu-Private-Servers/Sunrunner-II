object_building_military_military_base_shed_imperial_style_cloning_facility_s01 = object_building_military_shared_military_base_shed_imperial_style_cloning_facility_s01:new {
	planetMapCategory = "cloningfacility",
    faction = "imperial",
	customName = "Imperial Cloning Facility",
	containerComponent = "GCWBaseContainerComponent",
	zoneComponent = "StructureZoneComponent",
	facilityType = CLONER_FACTION_IMPERIAL,
	templateType = CLONINGBUILDING,
    alwaysPublic = 1,
    
	skillMods = {
		{"private_medical_rating", 100}
	},

    childObjects = {
		{templateFile = "object/tangible/terminal/terminal_cloning.iff", x = -5.5, z = -0.05, y = -3, ox = 0, oy = 0.707106, oz = 0, ow = 0.707106, cellid = 6, containmentType = -1},
		{templateFile = "object/tangible/terminal/terminal_insurance.iff", x = 0, z = -0.05, y = -5.5, ox = 0, oy = 0, oz = 0, ow = 1, cellid = 3, containmentType = -1}
	},

	spawningPoints = {
		{ x = 3.82471, z = 0.125266, y = -3.7097, ow = -0.70527, ox = 0, oz = 0, oy = 0.708939, cellid = 5 }
		}, -- { x, z, y, ow, ox, oy, oz, cellid }
}
ObjectTemplates:addTemplate(object_building_military_military_base_shed_imperial_style_cloning_facility_s01, "object/building/military/military_base_shed_imperial_style_cloning_facility_s01.iff")
