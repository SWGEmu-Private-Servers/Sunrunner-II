WbossAreaMindBashCommand = {
    name = "wbossareamindbash",
damageMultiplier = 3.25,

speedMultiplier = 1,

    combatSpam = "attack",
    animation = "creature_attack_special_1", 
animType = GENERATE_INTENSITY,
dotEffects = {
  DotEffect( 
    BLEEDING, 
    { "resistance_bleeding", "bleed_resist" },
    MIND,
    true,
    0,
    100,
    100, 
    120
  )
},

areaRange = 55,
areaAction = true,
poolsToDamage = MIND_ATTRIBUTE
}

AddCommand(WbossAreaMindBashCommand)