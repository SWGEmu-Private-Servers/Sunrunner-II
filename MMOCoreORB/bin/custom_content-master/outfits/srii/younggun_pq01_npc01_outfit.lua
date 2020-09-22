-- Modified for DrDax's Pandorum Collection 2017-8
-- Credit to MTG & Team -- http://www.modthegalaxy.com
---------------------------------------------------------------
-- Pandorum Outfits Designer : DrDax --
----------------------------------------------------------
younggun_pq01_npc01_outfit = {
	{	
	-- jacket
		{objectTemplate = "object/tangible/wearables/jacket/jacket_s10.iff", customizationVariables = {{"/private/index_color_1", 192}} },
	
	-- shirt
		{objectTemplate = "object/tangible/wearables/shirt/shirt_s32.iff", customizationVariables = {{"/private/index_color_1", 6},{"/private/index_color_2", 244}} },		
	
	--pants
	{objectTemplate = "object/tangible/wearables/pants/pants_s08.iff", customizationVariables = {{"/private/index_color_2", 6}, {"/private/index_color_1", 176}} },

	-- boots
	{objectTemplate = "object/tangible/wearables/boots/boots_s12.iff", customizationVariables = {{"/private/index_color_1", 144}} },

	-- cyborg
	--{objectTemplate = "object/tangible/wearables/cyborg/hand_l_s01.iff", customizationVariables = {} },
	--{objectTemplate = "object/tangible/wearables/cyborg/hand_r_s01.iff", customizationVariables = {} },
	
	-- hair
	{objectTemplate = "object/tangible/hair/human/hair_human_male_s02.iff", customizationVariables = {{"/private/index_color_1", 197}} },	
	
		
	-- googles - does not work
	--{objectTemplate = "object/tangible/wearables/goggles/goggles_s05.iff", customizationVariables = {{"/private/index_color_1", 7}} },

	--eyes
	
	-- weapon		
	--{objectTemplate = "object/weapon/ranged/carbine/carbine_dh17_snubnose.iff", customizationVariables = {} },
	}
	}
addOutfitGroup("younggun_pq01_npc01_outfit", younggun_pq01_npc01_outfit)
