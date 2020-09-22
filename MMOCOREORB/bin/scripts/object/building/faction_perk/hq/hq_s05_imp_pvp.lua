--Copyright (C) 2010 <SWGEmu>


--This File is part of Core3.

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

--Linking Engine3 statically or dynamically with other modules 
--is making a combined work based on Engine3. 
--Thus, the terms and conditions of the GNU Lesser General Public License 
--cover the whole combination.

--In addition, as a special exception, the copyright holders of Engine3 
--give you permission to combine Engine3 program with free software 
--programs or libraries that are released under the GNU LGPL and with 
--code included in the standard release of Core3 under the GNU LGPL 
--license (or modified versions of such code, with unchanged license). 
--You may copy and distribute such a system following the terms of the 
--GNU LGPL for Engine3 and the licenses of the other code concerned, 
--provided that you include the source code of that other code when 
--and as the GNU LGPL requires distribution of source code.

--Note that people who make modified versions of Engine3 are not obligated 
--to grant this special exception for their modified versions; 
--it is their choice whether to do so. The GNU Lesser General Public License 
--gives permission to release a modified version without this exception; 
--this exception also makes it possible to release a modified version 


object_building_faction_perk_hq_hq_s05_imp_pvp = object_building_faction_perk_hq_shared_hq_s05_imp_pvp:new {
	lotSize = 0,
	containerComponent = "GCWBaseContainerComponent",
	zoneComponent = "StructureZoneComponent",
	maintenanceCost = 0,
	baseMaintenanceRate = 0,
	faction = "imperial",
	pvpFaction = "imperial",
	pvpStatusBitmask = OVERT,
	dataObjectComponent = "DestructibleBuildingDataComponent",
	allowedZones = {"dantooine", "naboo", "rori", "tatooine", "corellia", "lok", "talus", "kuat"},
	constructionMarker = "object/building/player/construction/construction_player_house_generic_medium_style_01.iff",
	length = 10,
	width = 10,
	planetMapCategory = "imperial_hq",
	alwaysPublic = 1,
	factionBaseType = 1,

	skillMods = {
		{"private_buff_mind", 100},
		{"private_faction_buff_mind", 10},
		{"private_med_battle_fatigue", 5},
		{"private_faction_mind_heal", 10},
		{"private_medical_rating", 100},
		{"private_faction_medical_rating", 10},
	},

	childObjects = {
		{ templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x = 24.5, z = 0, y = 47.1, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1 },
	{ templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x = -23.5, z = 0, y = 47.1, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1 },

		{ templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x = 20.5, z = 0, y = 50.1, ox = 0, oy = 0.707, oz = 0, ow = 0.707, cellid = -1, containmentType = -1 },
		{ templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x = -19.5, z = 0, y = 50.1, ox = 0, oy = 0.707, oz = 0, ow = 0.707, cellid = -1, containmentType = -1 },

		{ templateFile = "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", x = 12.5, z = 0, y = 54.1, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1 },
		{ templateFile = "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", x = -11.5, z = 0, y = 54.1, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1 },

		{ templateFile = "object/static/structure/military/military_wall_med_imperial_32_style_01.iff", x = 0, z = 0, y = 62.1, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1 },

		{ templateFile = "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", x = 34.5, z = 0, y = 41.1, ox = 0, oy = 0.383, oz = 0, ow = 0.924, cellid = -1, containmentType = -1 },
		{ templateFile = "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", x = -33.5, z = 0, y = 41.1, ox = 0, oy = 0.924, oz = 0, ow = 0.383, cellid = -1, containmentType = -1 },

		{ templateFile = "object/static/structure/military/military_wall_med_imperial_32_style_01.iff", x = 40.5, z = 0, y = 19.5, ox = 0, oy = 0.707, oz = 0, ow = 0.707, cellid = -1, containmentType = -1 },
		{ templateFile = "object/static/structure/military/military_wall_med_imperial_32_style_01.iff", x = -39.5, z = 0, y = 19.5, ox = 0, oy = 0.707, oz = 0, ow = 0.707, cellid = -1, containmentType = -1 },

		{ templateFile = "object/static/structure/military/military_wall_med_imperial_32_style_01.iff", x = 40.5, z = 0, y = -26.3, ox = 0, oy = 0.707, oz = 0, ow = 0.707, cellid = -1, containmentType = -1 },
		{ templateFile = "object/static/structure/military/military_wall_med_imperial_32_style_01.iff", x = -39.5, z = 0, y = -26.3, ox = 0, oy = 0.707, oz = 0, ow = 0.707, cellid = -1, containmentType = -1 },

		{ templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x = 36.5, z = 0, y = 3.6, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1 },
		{ templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x = -35, z = 0, y = 3.6, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1 },

		{ templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x = 36.5, z = 0, y = -10.4, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1 },
		{ templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x = -35.5, z = 0, y = -10.4, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1 },

		{ templateFile = "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", x = 32.5, z = 0, y = -3.4, ox = 0, oy = 0.707, oz = 0, ow = 0.707, cellid = -1, containmentType = -1 },
		{ templateFile = "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", x = -31.5, z = 0, y = -3.4, ox = 0, oy = 0.707, oz = 0, ow = 0.707, cellid = -1, containmentType = -1 },

		{ templateFile = "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", x = 33.5, z = 0, y = -42.4, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1 },
		{ templateFile = "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", x = -32.5, z = 0, y = -42.4, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1 },

		{ templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x = 26.5, z = 0, y = -46.4, ox = 0, oy = 0.707, oz = 0, ow = 0.707, cellid = -1, containmentType = -1 },
		{ templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x = -25.5, z = 0, y = -46.4, ox = 0, oy = 0.707, oz = 0, ow = 0.707, cellid = -1, containmentType = -1 },
		
		{ templateFile = "object/static/structure/military/military_wall_med_imperial_32_style_01.iff", x = 1, z = 0, y = -50.4, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1 },

		{ templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x = 21, z = 0, y = -50.4, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1 },
		{ templateFile = "object/static/structure/military/military_wall_med_imperial_style_01.iff", x = -19, z = 0, y = -50.4, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1 },

		{ templateFile = "object/static/structure/military/military_column_strong_imperial_style_01.iff", x = 24.5, z = 0, y = -50.4, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1 },
		{ templateFile = "object/static/structure/military/military_column_strong_imperial_style_01.iff", x = -23.5, z = 0, y = -50.4, ox = 0, oy = 0, oz = 0, ow = 0, cellid = -1, containmentType = -1 },
		

		--{ templateFile = "object/installation/faction_perk/minefield/field_1x1.iff", x = 0, z = 0, y = 38, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1 },

		--{ templateFile = "object/installation/faction_perk/turret/tower_lg.iff", x = 14, z = 0, y = 21, ox = 0, oy = -0, oz = 0, ow = 1, cellid = -1, containmentType = -1 },
		--{ templateFile = "object/installation/faction_perk/turret/tower_lg.iff", x = -14, z = 0, y = 21, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1 },
		--{ templateFile = "object/installation/faction_perk/turret/tower_lg.iff", x = -18, z = 0, y = -5, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1 },
		--{ templateFile = "object/installation/faction_perk/turret/tower_lg.iff", x = 18, z = 0, y = -5, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1 },
		--{ templateFile = "object/installation/faction_perk/turret/tower_lg.iff", x = 0, z = 0, y = -13, ox = 0, oy = 0, oz = 0, ow = 1, cellid = -1, containmentType = -1 },

		{ templateFile = "object/tangible/terminal/terminal_hq_imperial.iff", x = 7.5, z = 1, y = -5.4, ox = 0, oy = -0.707, oz = 0, ow = 0.707, cellid = 2, containmentType = -1 },

		--{ templateFile = "object/tangible/terminal/terminal_hq_turret_control.iff", x = 4.75, z = 0, y = 1, ox = 0, oy = -0.707, oz = 0, ow = 0.707, cellid = 2, containmentType = -1 },
		--{ templateFile = "object/tangible/terminal/terminal_hq_turret_control.iff", x = 4.75, z = 0, y = 0, ox = 0, oy = -0.707, oz = 0, ow = 0.707, cellid = 2, containmentType = -1 },
		--{ templateFile = "object/tangible/terminal/terminal_hq_turret_control.iff", x = 4.75, z = 0, y = -1, ox = 0, oy = -0.707, oz = 0, ow = 0.707, cellid = 2, containmentType = -1 },
		--{ templateFile = "object/tangible/terminal/terminal_hq_turret_control.iff", x = 4.75, z = 0, y = -2, ox = 0, oy = -0.707, oz = 0, ow = 0.707, cellid = 2, containmentType = -1 },
		--{ templateFile = "object/tangible/terminal/terminal_hq_turret_control.iff", x = 4.75, z = 0, y = -3, ox = 0, oy = -0.707, oz = 0, ow = 0.707, cellid = 2, containmentType = -1 },

		--{ templateFile = "object/tangible/terminal/terminal_mission.iff", x = 11.99, z = -13.76, y = 1.9, ox = 0, oy = 0.707, oz = 0, ow = 0.707, cellid = 9, containmentType = -1 },
		--{ templateFile = "object/tangible/terminal/terminal_mission_imperial.iff", x = 10.04, z = -11.5, y = -20.99, ox = 0, oy = 0.707, oz = 0, ow = 0.707, cellid = 10, containmentType = -1 },

		--{ templateFile = "object/tangible/terminal/terminal_bank.iff", x = 1.08, z = -6.75, y = -6.44, ox = 0, oy = 0.707, oz = 0, ow = 0.707, cellid = 5, containmentType = -1 },
		--{ templateFile = "object/tangible/terminal/terminal_bank.iff", x = 7.98, z = -6.75, y = -6.42, ox = 0, oy = 0.707, oz = 0, ow = -0.707, cellid = 5, containmentType = -1 },

		--{ templateFile = "object/tangible/terminal/terminal_insurance.iff", x = -7.47, z = -13.76, y = 11.99, ox = 0, oy = 0.707, oz = 0, ow = 0.707, cellid = 8, containmentType = -1 },
	},

	childCreatureObjects = {

		--{ mobile = "heavy_shock_trooper", x = 6, z = 0, y = 42, cellid = -1, respawn = 600, containmentType = -1, heading = 0},
		--{ mobile = "heavy_shock_trooper_demolitionist", x = -6, z = 0, y = 42, cellid = -1, respawn = 600, containmentType = -1, heading = 0},
		--{ mobile = "phase_iii_dark_trooper", x = 0, z = 0, y = 40, cellid = -1, respawn = 600, containmentType = -1, heading = 0},
		--{ mobile = "daunting_imperial_enforcer", x = -6, z = 0, y = -42, cellid = -1, respawn = 600, containmentType = -1, heading = 0},
		--{ mobile = "shock_trooper_bomber", x = 6, z = 0, y = -42, cellid = -1, respawn = 600, containmentType = -1, heading = 0},
		--{ mobile = "hardened_imperial_executioner", x = 0, z = 0, y = -40, cellid = -1, respawn = 600, containmentType = -1, heading = 0},

		{ mobile = "heavy_shock_trooper", x = 5.5, z = 1, y = 14.5, cellid = 1, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "heavy_shock_trooper", x = -5.5, z = 1, y = 14.5, cellid = 1, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "imperial_recruiter", x = 0, z = 1, y = 7.5, cellid = 2, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "heavy_shock_trooper", x = 11.2, z = 1, y = 5.6, cellid = 2, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "heavy_shock_trooper", x = -11.2, z = 1, y = 5.6, cellid = 2, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "heavy_shock_trooper", x = 2.1, z = 2, y = 5.3, cellid = 2, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "heavy_shock_trooper", x = -2.1, z = 2, y = 5.3, cellid = 2, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "heavy_shock_trooper", x = 4.5, z = 1, y = -22.1, cellid = 7, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "heavy_shock_trooper", x = -4.5, z = 1, y = -22.1, cellid = 7, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "heavy_shock_trooper", x = 12.5, z = 1, y = -21.9, cellid = 6, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "heavy_shock_trooper", x = 19.8, z = 1, y = -6.6, cellid = 5, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "heavy_shock_trooper", x = 14.8, z = 1, y = -2.3, cellid = 5, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "heavy_shock_trooper", x = -17.9, z = 1, y = -6.2, cellid = 9, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "heavy_shock_trooper", x = 3.8, z = 7, y = -13.3, cellid = 10, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "heavy_shock_trooper", x = -1.6, z = 7, y = 6.6, cellid = 11, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "heavy_shock_trooper", x = -7.6, z = 7, y = 6.7, cellid = 11, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "heavy_shock_trooper", x = -14.6, z = 1, y = 14.6, cellid = 4, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "heavy_shock_trooper", x = 16.5, z = 1, y = 12.7, cellid = 3, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "heavy_shock_trooper", x = 21.1, z = 1, y = 12.6, cellid = 3, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "heavy_shock_trooper_demolitionist", x = -3.6, z = 7, y = -17.5, cellid = 10, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "heavy_shock_trooper_demolitionist", x = 0, z = 1, y = -14.9, cellid = 2, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "shock_trooper_bomber", x = -19.9, z = 1, y = 5.7, cellid = 2, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "shock_trooper_bomber", x = 19.9, z = 1, y = 5.7, cellid = 2, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "daunting_imperial_enforcer", x = -11.2, z = 7, y = 6.6, cellid = 11, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "daunting_imperial_enforcer", x = 10.4, z = 7, y = 7, cellid = 12, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "daunting_imperial_enforcer", x = -20.2, z = 1, y = -4.5, cellid = 9, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "daunting_imperial_enforcer", x = -14.5, z = 1, y = -21.9, cellid = 8, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "hardened_imperial_executioner", x = 10.9, z = 1, y = -5.9, cellid = 5, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "hardened_imperial_executioner", x = 14.5, z = 1, y = -22, cellid = 6, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "hardened_imperial_executioner", x = 4.9, z = 7, y = 8, cellid = 12, respawn = 600, containmentType = -1, heading = 0 },

		{ mobile = "hardened_imperial_executioner", x = 13.9, z = 7, y = 7.4, cellid = 12, respawn = 600, containmentType = -1, heading = 0 },
		
		{ mobile = "phase_iii_dark_trooper", x = 2.9, z = 7, y = 0, cellid = 10, respawn = 600, containmentType = -1, heading = 0 },



	

	},
}

ObjectTemplates:addTemplate(object_building_faction_perk_hq_hq_s05_imp_pvp, "object/building/faction_perk/hq/hq_s05_imp_pvp.iff")
