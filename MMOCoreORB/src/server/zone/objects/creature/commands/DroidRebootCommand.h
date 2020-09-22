#ifndef DROIDREBOOTCOMMAND_H_
#define DROIDREBOOTCOMMAND_H_

#include "server/zone/objects/intangible/PetControlDevice.h"
#include "server/zone/managers/creature/PetManager.h"
#include "server/zone/objects/creature/ai/AiAgent.h"
#include "server/zone/objects/player/PlayerObject.h"

class DroidRebootCommand : public QueueCommand {
public:

	DroidRebootCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* player, const uint64& target, const UnicodeString& arguments) const {

		int cooldownMilli = 300000; // 5 min
		int durationSec =  5; // 5 sec
		int mindCost = player->calculateCostAdjustment(CreatureAttribute::FOCUS, 100 );
		unsigned int buffCRC = STRING_HASHCODE("droidreboot");

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
			player->sendSystemMessage("@pet/pet_menu:sys_fail_droidreboot"); // "You do not have enough mental focus to reboot your droid."
			return GENERALERROR;
		}

		// Loop over all active pets
		bool petRebooted = false;
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
					pet->showFlyText("combat_effects","pet_reboot_no", 0, 153, 0); // "! Reboot Complete !"
					continue;
				}

				// Check cooldown
				if( pet->getCooldownTimerMap() == nullptr || !pet->getCooldownTimerMap()->isPast("droidRebootCooldown") )
					continue;

				// Build 60% Health, Action, Mind buff
				ManagedReference<Buff*> buff = new Buff(pet, buffCRC, durationSec, BuffType::OTHER);

				Locker locker(buff);

				int healthBuff = pet->getBaseHAM(CreatureAttribute::HEALTH) * 0.4;
				int actionBuff = pet->getBaseHAM(CreatureAttribute::ACTION) * 0.4;
				int mindBuff = pet->getBaseHAM(CreatureAttribute::MIND) * 0.4;
				buff->setAttributeModifier(CreatureAttribute::HEALTH, healthBuff);
				buff->setAttributeModifier(CreatureAttribute::ACTION, actionBuff);
				buff->setAttributeModifier(CreatureAttribute::MIND, mindBuff);

				pet->addBuff(buff);
				pet->getCooldownTimerMap()->updateToCurrentAndAddMili("droidRebootCooldown", cooldownMilli);
				pet->showFlyText("combat_effects","pet_reboot", 0, 153, 0); // "! Initializing Reboot !"
				petRebooted = true;

			} // end if creature
		} // end active pets loop

		// At least one pet was rebooted
		if( petRebooted ){
			player->inflictDamage(player, CreatureAttribute::MIND, mindCost, false);
			player->sendSystemMessage("@pet/pet_menu:sys_reboot"); // "You reboot your droid's systems"
		}

		return SUCCESS;
	}

};



#endif //DROIDREBOOTCOMMAND_H_
