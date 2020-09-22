
object_building_general_ord_hotel = object_building_general_shared_ord_hotel:new {
	gameObjectType = 523,
	skillMods = {
		{"private_buff_mind", 115},
		{"private_med_battle_fatigue", 5},
		{"private_safe_logout", 1}
	},
	planetMapCategory = "hotel"
}

ObjectTemplates:addTemplate(object_building_general_ord_hotel, "object/building/general/ord_hotel.iff")
