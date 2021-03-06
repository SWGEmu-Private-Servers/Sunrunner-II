--Automatically generated by SWGEmu Spawn Tool v0.12 loot editor.

rifle_ewok_crossbow = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/ranged/rifle/rifle_ewok_crossbow.iff",
	craftingValues = {
		{"mindamage",91,172,0},
		{"maxdamage",224,420,0},
		{"attackspeed",9.6,6.2,0},
		{"woundchance",9.4,25.6,0},
		{"hitpoints",750,1500,0},
		{"attackhealthcost",46,23,0},
		{"attackactioncost",46,23,0},
		{"attackmindcost",57,35,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 800,
	junkDealerTypeNeeded = JUNKARMS,
	junkMinValue = 200,
	junkMaxValue = 600

}

addLootItemTemplate("rifle_ewok_crossbow", rifle_ewok_crossbow)
