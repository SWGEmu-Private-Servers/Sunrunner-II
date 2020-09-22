brontar = Creature:new {
	customName = "Brontar (a plundering leader)",
	socialGroup = "gasplant",
	faction = "",
	level = 400,
	chanceHit = 45,
	damageMin = 2470,
	damageMax = 3200,
	baseXp = 23820,
	baseHAM = 362950,
	baseHAMmax = 417750,
	armor = 3,
	resists = {180,175,170,175,200,175,200,165,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/ep3/ep3_clone_relics_bounty_mark_01.iff"
	},
	scale = 1.1,
	lootGroups = {		
		{
			groups = {
				{group = "g_gas_plant_junk", chance = 1000000},
				{group = "green_light_gem", chance = 2000000},
				{group = "g_cybernetics", chance = 1250000},
				{group = "clothing_attachments", chance = 2250000},
				{group = "armor_attachments", chance = 2000000},
				{group = "g_recon_backpack", chance = 1500000},
			},
			lootChance = 10000000
		},

		{

		groups = {

			{group = "g_exar_key", chance =  2000000},
			{group = "g_axkva_key", chance =  2000000},
			{group = "g_avatar_key", chance =  2000000},
			{group = "g_sherkar_key", chance =  2000000},
			{group = "g_ig_key", chance =  2000000}
			},
			lootChance = 10000000
		}


	},
	weapons = {"specforce_agent_weapons"},
	conversationTemplate = "",
	attacks = merge(fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(brontar, "brontar")