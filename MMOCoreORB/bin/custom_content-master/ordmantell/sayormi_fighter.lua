sayormi_fighter = Creature:new {
	objectName = "@mob/creature_names:sayormi_fighter",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "sayormi",
	faction = "sayormi",
	level = 73,
	chanceHit = 1.5,
	damageMin = 560,
	damageMax = 780,
	baseXp = 7023,
	baseHAM = 15700,
	baseHAMmax = 19200,
	armor = 1,
	resists = {155,150,140,35,145,150,165,145,-1},
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
		"object/mobile/dressed_sayromi_monk_01.iff",
		"object/mobile/dressed_sayromi_monk_02.iff",
		"object/mobile/dressed_sayromi_monk_03.iff"
		},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 5000000},
				{group = "g_sayormi_junk", chance = 3000000},
				{group = "armor_attachments", chance = 500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "color_crystals", chance = 500000},
				{group = "g_fan_metal", chance = 500000}
			}
		}
	},
	weapons = {"melee_weapons"},
	conversationTemplate = "",
	attacks = merge(tkamaster,pikemanmaster,fencermaster,brawlermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(sayormi_fighter, "sayormi_fighter")
