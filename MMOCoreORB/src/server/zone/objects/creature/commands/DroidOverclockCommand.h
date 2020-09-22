
#ifndef DROIDOVERCLOCKCOMMAND_H_
#define DROIDOVERCLOCKCOMMAND_H_

#include "server/zone/objects/intangible/PetControlDevice.h"
#include "server/zone/managers/creature/PetManager.h"
#include "server/zone/objects/creature/ai/AiAgent.h"
#include "server/zone/objects/player/PlayerObject.h"

class DroidOverclockCommand : public QueueCommand {
public:

	DroidOverclockCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* player, const uint64& target, const UnicodeString& arguments) const {

		int cooldownMilli = 300000; // 5 min
		int durationSec =  300; // 5 min
		int mindCost = player->calculateCostAdjustment(CreatureAttribute::FOCUS, 100 );
		unsigned int buffCRC = STRING_HASHCODE("droidoverclock");

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
			player->sendSystemMessage("@pet/pet_menu:sys_fail_droidoverclock"); // "You do not have enough mental focus to overclock."
			return GENERALERROR;
		}

		// Loop over all active pets
		bool petOverclocked = false;
		for (int i = 0; i < ghost->getActivePetsSize(); ++i) {

			ManagedReference<AiAgent*> pet = ghost->getActivePet(i);
			if(pet == nullptr)
				continue;

			ManagedReference<PetControlDevice*> controlDevice = pet->getControlDevice().get().castTo<PetControlDevice*>();
			if( controlDevice == nullptr )
				continue;

			// Droids only
			if( controlDevice->getPetType() == PetManager::DROIDPET ) {

				Locker plocker(pet, player);

				// Check states
				if( pet->isIncapacitated() || pet->isDead() )
					continue;

				// Check range
				if( !checkDistance(player, pet, 50.0f) )
					continue;

				// Check if pet already has buff
				if ( pet->hasBuff(buffCRC) ){
					pet->showFlyText("combat_effects","pet_overclock_no", 0, 153, 0); // "! No Longer Overclocked !"
					continue;
				}

				// Check cooldown
				if( pet->getCooldownTimerMap() == NULL || !pet->getCooldownTimerMap()->isPast("droidOverclockCooldown") )
					continue;

				// Build 20% Health, Action, Mind buff
				ManagedReference<Buff*> buff = new Buff(pet, buffCRC, durationSec, BuffType::OTHER);

				Locker locker(buff);

				int healthBuff = pet->getBaseHAM(CreatureAttribute::HEALTH) * 0.2;
				int actionBuff = pet->getBaseHAM(CreatureAttribute::ACTION) * 0.2;
				int mindBuff = pet->getBaseHAM(CreatureAttribute::MIND) * 0.2;
				buff->setAttributeModifier(CreatureAttribute::HEALTH, healthBuff);
				buff->setAttributeModifier(CreatureAttribute::ACTION, actionBuff);
				buff->setAttributeModifier(CreatureAttribute::MIND, mindBuff);

				pet->addBuff(buff);
				pet->getCooldownTimerMap()->updateToCurrentAndAddMili("droidOverclockCooldown", cooldownMilli);
				pet->showFlyText("combat_effects","pet_overclock", 0, 153, 0); // "! Overclock !"
				petOverclocked = true;

			} // end if creature
		} // end active pets loop

		// At least one pet was overclocked
		if( petOverclocked ){
			player->inflictDamage(player, CreatureAttribute::MIND, mindCost, false);
			player->sendSystemMessage("@pet/pet_menu:sys_overclock"); // "You overclock your droid's hardware"
		}

		return SUCCESS;
	}

};


#endif //DROIDOVERCLOCKCOMMAND_H_
