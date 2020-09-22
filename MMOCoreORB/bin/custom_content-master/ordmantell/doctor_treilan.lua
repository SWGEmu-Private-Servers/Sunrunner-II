doctor_treilan = Creature:new {
	customName = "Doctor Treilan",
	socialGroup = "cybernetic",
	faction = "",
	level = 280,
	chanceHit = 21.5,
	damageMin = 1450,
	damageMax = 1950,
	baseXp = 22411,
	baseHAM = 225000,
	baseHAMmax = 275000,
	armor = 3,
	resists = {175,175,160,170,170,200,160,165,-1},
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
		"object/mobile/dressed_dark_jedi_master_male_zab_02.iff"
		},
	lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "g_doctor_rings", chance = 2000000},
				{group = "g_cybernetics", chance = 600000},
				{group = "green_light_gem", chance = 2900000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"st_bombardier_weapons"},
	conversationTemplate = "",
	attacks = merge(commandomaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(doctor_treilan, "doctor_treilan")