#ifndef DROIDPHASEROVERCLOCKCOMMAND_H_
#define DROIDPHASEROVERCLOCKCOMMAND_H_

#include "server/zone/objects/intangible/PetControlDevice.h"
#include "server/zone/managers/creature/PetManager.h"
#include "server/zone/objects/creature/ai/AiAgent.h"
#include "server/zone/objects/player/PlayerObject.h"

class DroidPhaserOverclockCommand : public QueueCommand {
public:

	DroidPhaserOverclockCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* player, const uint64& target, const UnicodeString& arguments) const {

		int cooldownMilli = 180000; // 3 min
		int durationSec =  90; // 1.5 min
	 	int mindCost = player->calculateCostAdjustment(CreatureAttribute::FOCUS, 100 );
		unsigned int buffCRC = STRING_HASHCODE("droidphaseroverclock");

		if (!checkStateMask(player))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(player))
			return INVALIDLOCOMOTION;

		if (player->isDead() || player->isIncapacitated())
			return INVALIDSTATE;

		ManagedReference<PlayerObject*> ghost = player->getPlayerObject();
		if( ghost == nullptr )
			return GENERALERROR;

		// Check player mind
		if (player->getHAM(CreatureAttribute::MIND) <= mindCost) {
			player->sendSystemMessage("@pet/pet_menu:sys_fail_phaseroverclock"); // "You lack the mental focus to overclock your droid's phasers."
			return GENERALERROR;
		}

		// Loop over all active pets
		bool petDroidPhaserOverclock = false;
		for (int i = 0; i < ghost->getActivePetsSize(); ++i) {

			ManagedReference<AiAgent*> pet = ghost->getActivePet(i);
			if(pet == nullptr)
				continue;

			ManagedReference<PetControlDevice*> controlDevice = pet->getControlDevice().get().castTo<PetControlDevice*>();
			if( controlDevice == nullptr )
				continue;

			// Creatures only
			if( controlDevice->getPetType() == PetManager::DROIDPET ) {

				Locker plocker(pet, player);

				// Check states
				if( pet->isIncapacitated() || pet->isDead() )
					continue;

				// Check range
				if( !player->isInRange( pet, 50.0 ) )
					continue;

				// Check if pet already has buff
				if ( pet->hasBuff(buffCRC) )
					continue;

				// Check cooldown
				if( pet->getCooldownTimerMap() == nullptr || !pet->getCooldownTimerMap()->isPast("droidphaseroverclockCooldown") )
					continue;

				// Determine damage bonus (7% of average damage)
				int damageBonus = (int) ((((float)pet->getDamageMin() + (float)pet->getDamageMax())/2) * 0.7);

				// Determine damage susceptibility (half of damage bonus)
				int damageSusceptibility = damageBonus / 2;

				// Build buff
				ManagedReference<Buff*> buff = new Buff(pet, buffCRC, durationSec, BuffType::OTHER);

				Locker locker(buff);

				buff->setStartFlyText("combat_effects", "phaser_overclocked", 0, 0xFF, 0);
				buff->setEndFlyText("combat_effects", "no_phaser_overclocked", 0xFF, 0, 0);
				buff->setSkillModifier("private_damage_bonus", damageBonus);
				buff->setSkillModifier("private_damage_susceptibility", damageSusceptibility);

				pet->addBuff(buff);
				pet->getCooldownTimerMap()->updateToCurrentAndAddMili("droidphaseroverclockCooldown", cooldownMilli);
				petDroidPhaserOverclock = true;

			} // end if creature
		} // end active pets loop

		// At least one pet was was overclocked
		if( petDroidPhaserOverclock ){
			player->inflictDamage(player, CreatureAttribute::MIND, mindCost, false);
			player->sendSystemMessage("@pet/pet_menu:sys_phaseroverclock"); // "You overclock your droid's phasers."
		}

		return SUCCESS;
	}

};


#endif //DROIDPHASEROVERCLOCKCOMMAND_H_
