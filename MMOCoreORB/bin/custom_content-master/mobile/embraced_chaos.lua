embraced_chaos = Creature:new {
	customName = "the Embraced Chaos of Exar Kun",
	socialGroup = "exar",
	faction = "",
	level = 200,
	chanceHit = 30.5,
	damageMin = 1025,
	damageMax = 1475,
	baseXp = 22411,
	baseHAM = 100000,
	baseHAMmax = 125000,
	armor = 2,
	resists = {175,200,200,200,175,200,200,175,-1},
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
		"object/mobile/exar_kun_tomb_guardian_03.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 3000000},
				{group = "clothing_attachments", chance = 3500000},
				{group = "melee_weapons", chance = 3000000},
				{group = "g_heroic_exar_kun_painting", chance = 500000},
			}
		}
	},
	weapons = {"gamorrean_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster,swordsmanmaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(embraced_chaos, "embraced_chaos")