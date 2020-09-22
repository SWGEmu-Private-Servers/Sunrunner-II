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
--]]

younggun_02_npc02_convo_template = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "younggun_02_npc02_ConvoHandler",
	screens = {}
}

start = ConvoScreen:new {
	id = "start",
	leftDialog = "",
	customDialogText = "Are you here to break me out?",
	stopConversation = "false",
	options = {
		{"I am here to getsomeone out for the Hutts and that's you.", "what"},
		{"What are you doing in here", "what"}
	}
}
younggun_02_npc02_convo_template:addScreen(start);

what = ConvoScreen:new {
	id = "what",
	leftDialog = "",
	customDialogText = "I can't say I did anything to deserve this...those Death Sticks were planted on my ship.",
	stopConversation = "false",
	options = {
		{"Likey story, let's getout of here", "gotoextract"},
		{"Follow me.", "gotoextract"}
	}
}
younggun_02_npc02_convo_template:addScreen(what);
----------------------------------------------------------------------------
gotoextract = ConvoScreen:new {
	id = "gotoextract",
	leftDialog = "",
	customDialogText = "Let's make this quick, the Imperials will be back in force soon.",
	stopConversation = "true",
	options = {
		}
}
younggun_02_npc02_convo_template:addScreen(gotoextract);

--------------------------------------------------------------------

getgoing = ConvoScreen:new {
	id = "getgoing",
	leftDialog = "",
	customDialogText = "Get lost buddy.",
	stopConversation = "true",
	options = {
		}
}
younggun_02_npc02_convo_template:addScreen(getgoing);
-----------------------------------------

addConversationTemplate("younggun_02_npc02_convo_template", younggun_02_npc02_convo_template);
