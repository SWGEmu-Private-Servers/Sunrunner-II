-- Modified for DrDax's Pandorum Collection 2017-8
-- Credit to MTG & Team -- http://www.modthegalaxy.com
---------------------------------------------------------------
-- Pandorum Outfits Designer : DrDax --
----------------------------------------------------------
younggun_pq01_npcmain_outfit = {
	{	
	-- jacket
		{objectTemplate = "object/tangible/wearables/jacket/jacket_s35.iff", customizationVariables = {{"/private/index_color_1", 94},{"/private/index_color_2", 216}} },
	
	-- shirt
		{objectTemplate = "object/tangible/wearables/shirt/shirt_s32.iff", customizationVariables = {{"/private/index_color_1", 22},{"/private/index_color_2", 22}} },		
	
	--pants
	{objectTemplate = "object/tangible/wearables/pants/pants_s21.iff", customizationVariables = {{"/private/index_color_2", 94}, {"/private/index_color_1", 75}} },

	--belt
	
	-- Bandolier
	--{objectTemplate = "object/tangible/wearables/bandolier/bandolier_s09.iff", customizationVariables = {{"/private/index_color_2", 43}, {"/private/index_color_1", 43}}  },
	
	-- boots
	{objectTemplate = "object/tangible/wearables/boots/boots_s22.iff", customizationVariables = {{"/private/index_color_1", 51}} },
	
	-- cyborg
	--{objectTemplate = "object/tangible/wearables/cyborg/hand_l_s01.iff", customizationVariables = {} },
	--{objectTemplate = "object/tangible/wearables/cyborg/hand_r_s01.iff", customizationVariables = {} },
	
	-- hair
	{objectTemplate = "object/tangible/hair/human/hair_human_male_s02.iff", customizationVariables = {{"/private/index_color_1", 12}} },	
	
		
	-- googles - does not work
	--{objectTemplate = "object/tangible/wearables/goggles/goggles_s05.iff", customizationVariables = {{"/private/index_color_1", 7}} },

	--eyes
	
	-- weapon		
	{objectTemplate = "object/weapon/ranged/rifle/ep3/rifle_trando_hunter.iff", customizationVariables = {} },
	}
	}
addOutfitGroup("younggun_pq01_npcmain_outfit", younggun_pq01_npcmain_outfit)
