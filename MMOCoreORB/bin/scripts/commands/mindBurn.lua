MindBurn = {
	name = "mindburn",
	combatSpam = "attack",
	animation = "creature_attack_special_1", 
animType = GENERATE_INTENSITY,
dotEffects = {
DotEffect( 
ONFIRE, 
{ "resistance_fire", "fire_resist" },
MIND,
true,
0,
100,
150, 
360,
30,
20
)
}

}

AddCommand(MindBurn)
