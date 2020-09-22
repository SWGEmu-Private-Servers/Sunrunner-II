sayormi_warrior = Creature:new {
	customName = "a Sayormi Warrior",
	socialGroup = "sayormi",
	faction = "sayormi",
	level = 65,
	chanceHit = 1,
	damageMin = 465,
	damageMax = 650,
	baseXp = 6288,
	baseHAM = 12500,
	baseHAMmax = 15000,
	armor = 1,
	resists = {35,60,20,-1,30,160,160,140,-1},
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
	creatureBitmask = PACK + HERD + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_sayormi_warrior_01.iff",
		"object/mobile/dressed_sayormi_warrior_02.iff",
		"object/mobile/dressed_sayormi_warrior_03.iff",
		"object/mobile/dressed_sayormi_warrior_04.iff",
		"object/mobile/dressed_sayormi_warrior_05.iff",
		"object/mobile/dressed_sayormi_warrior_06.iff"
		},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 5000000},
				{group = "g_sayormi_junk", chance = 3000000},
				{group = "armor_attachments", chance = 500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "color_crystals", chance = 1000000}
			}
		}
	},
	weapons = {"melee_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(sayormi_warrior, "sayormi_warrior")
