
object_building_general_ord_cantina = object_building_general_shared_ord_cantina:new {
	skillMods = {
		{"private_med_wound_mind", 20},
		{"private_buff_mind", 115},
		{"private_med_battle_fatigue", 5}
	},
	planetMapCategory = "cantina"
}

ObjectTemplates:addTemplate(object_building_general_ord_cantina, "object/building/general/ord_cantina.iff")
