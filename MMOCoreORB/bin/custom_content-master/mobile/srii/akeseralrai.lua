
-- Modified for DrDax's Pandorum Collection 2017-8
------------------------------------------------------------------------------
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
--]]
----------------------------------------------------------------------

akeseralrai = Creature:new {
	customName = "Akeser Alrai (Nym Collections Boss)",
	socialGroup = "hutt",
	faction = "hutt",
	level = 100,
	chanceHit = 0.64,
	damageMin = 80,
	damageMax = 135,
	baseXp = 62,
	baseHAM = 11300,
	baseHAMmax = 11800,
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
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED + INTERESTING + CONVERSABLE,
	diet = HERBIVORE,
	scale = .9,
	templates = {"object/mobile/tatooine_npc/tour_aryon.iff"},
	outfit = "akeseralrai_outfit",

	lootGroups = {},
	weapons = {},
	conversationTemplate = "akeseralrai_convo_template",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(akeseralrai, "akeseralrai")
