-- Modified for DrDax's Pandorum Collection 2017-8
--[[
--This program is free software; you can redistribute 
--it and/or modify it under the terms of the GNU Lesser 
--General Public License as published by the Free Software
--Foundation; either version 2 of the License, 
--or (at your option) any later version.

--This program is distributed in the hope that it will be useful, 
--but WITHOUT ANY WARRANTY; without even the implied warranty of 
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
--See the GNU Lesser General Public License for
--more details.

--You should have received a copy of the GNU Lesser General 
--Public License along with this program; if not, write to
--the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

-- Used in:
-- conv handler : tmgr_convo_handler
-- screenplay: 
--]]
----------------------------------------------------------------------
tmgr_npc01 = Creature:new {
	customName = "Theater Manager",
	--objectName = "",
	--randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 4,
	chanceHit = 0.24,
	damageMin = 40,
	damageMax = 45,
	baseXp = 62,
	baseHAM = 113,
	baseHAMmax = 138,
	armor = 0,
	resists = {15,15,15,15,15,15,15,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED + INTERESTING + CONVERSABLE,
	diet = HERBIVORE,
	templates = {"object/mobile/dressed_herald_noble_twk_female_01.iff"},
	--templates = {"object/mobile/dressed_corsair_captain_hum_f.iff"},  -- consider outfits for this mobile
				
	lootGroups = {},
	weapons = {},
	conversationTemplate = "tmgr_npc01_convo_template",  ---- conv handler : 
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(tmgr_npc01, "tmgr_npc01")
