
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
-- conv handler :
-- screenplay: 

----------------------------------------------------------------------
--]]

younggun_01_npc01 = Creature:new {
	customName = "Nym's Local Coordinator",
	socialGroup = "nym",
	faction = "nym",
	level = 100,
	chanceHit = 0.26,
	damageMin = 55,
	damageMax = 65,
	baseXp = 187,
	baseHAM = 270,
	baseHAMmax = 330,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED + INTERESTING + CONVERSABLE,
	diet = HERBIVORE,
	templates = {"object/mobile/dressed_nym_guard_elite_rod_m.iff",
		"object/mobile/dressed_nym_guard_elite_nikto_m.iff",
		"object/mobile/dressed_nym_guard_elite_hum_m.iff"},
	conversationTemplate = "younggun_01_npc01_convo_template",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(younggun_01_npc01, "younggun_01_npc01")

