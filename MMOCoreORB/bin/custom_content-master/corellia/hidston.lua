hidston = Creature:new {
	customName = "the Meatlump King",
	socialGroup = "meatlump",
	faction = "meatlump",
	level = 400,
	chanceHit = 95.5,
	damageMin = 2875,
	damageMax = 3550,
	baseXp = 37879,
	baseHAM = 1370000,
	baseHAMmax = 1550000,
	armor = 3,
	resists = {195,195,195,195,195,195,195,200,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.2,

	templates = {"object/mobile/meatlump_king.iff"},
	lootGroups = {
	{
	        groups = {
			{group = "wearables_scarce", chance = 10000000}
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
			},
	{
	        groups = {
			{group = "armor_attachments", chance = 7000000},
			{group = "clothing_attachments", chance = 3000000}
			},
			lootchance = 10000000
			}
	},

	weapons = {"melee_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,fencermaster,tkamaster,pikemanmaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(hidston, "hidston")
