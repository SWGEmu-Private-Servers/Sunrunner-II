gorax_titan = Creature:new {
	customName = "the Bane of the Forests (a gorax titan)",
	socialGroup = "gorax",
	faction = "",
	level = 450,
	chanceHit = 95.5,
	damageMin = 8950,
	damageMax = 9875,
	baseXp = 37879,
	baseHAM = 1440000,
	baseHAMmax = 1620000,
	armor = 3,
	resists = {200,195,200,195,195,195,195,195,-1},
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
	diet = CARNIVORE,
	scale = 3.5,

	templates = {"object/mobile/gorax.iff"},
	lootGroups = {
		{
	        groups = {
			{group = "gorax_common", chance = 10000000}
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
			{group = "gorax_common", chance = 10000000}
			},
			lootChance = 10000000
			},
			
		{
	        groups = {
			{group = "gorax_common", chance = 10000000}
			},
			lootChance = 10000000
			},


		{
	        groups = {
			{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 10000000
			},		

		{
	        groups = {
			{group = "armor_attachments", chance = 10000000}
			},
			lootChance = 10000000
			},	


		{
	        groups = {
			{group = "gorax_common", chance = 10000000}
			},
			lootChance = 3000000
			},

		{
	        groups = {
			{group = "gorax_common", chance = 10000000}
			},
			lootChance = 4000000
			},			
			
		{
	        groups = {
			{group = "armor_attachments", chance = 5000000},
			{group = "clothing_attachments", chance = 5000000}
			},
			lootchance = 10000000
			}
	},

	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"wbossareaattack","stateAccuracyBonus=100"},
		{"wbossareaknockdown","stateAccuracyBonus=100"},
		{"wbossareacombo","stateAccuracyBonus=100"},
		{"creatureareableeding","stateAccuracyBonus=50"},		
		{"posturedownattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(gorax_titan, "gorax_titan")