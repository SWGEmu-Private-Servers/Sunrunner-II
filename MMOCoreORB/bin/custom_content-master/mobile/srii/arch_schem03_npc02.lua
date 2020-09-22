
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

arch_schem03_npc02 = Creature:new {
	customName = "Potential House Buyer",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 10,
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
		templates = {
		"object/mobile/dressed_smuggler_trainer_01.iff",
		"object/mobile/dressed_smuggler_trainer_02.iff",
		"object/mobile/dressed_smuggler_trainer_03.iff"
	},
	conversationTemplate = "arch_schem03_npc02_convo_template",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(arch_schem03_npc02, "arch_schem03_npc02")

