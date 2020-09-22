#ifndef OUTRAGEPETSCOMMAND_H_
#define OUTRAGEPETSCOMMAND_H_

#include "server/zone/objects/intangible/PetControlDevice.h"
#include "server/zone/managers/creature/PetManager.h"
#include "server/zone/objects/creature/ai/AiAgent.h"
#include "server/zone/objects/player/PlayerObject.h"

class OutragePetsCommand : public QueueCommand {

public:

	OutragePetsCommand(const String& name, ZoneProcessServer* server)

		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* player, const uint64& target, const UnicodeString& arguments) const {

		int cooldownMilli = 270000; // 4 min 30 sec
		int durationSec =  30; // 30 sec

	 	int mindCost = player->calculateCostAdjustment(CreatureAttribute::FOCUS, 100 );

		unsigned int buffCRC = STRING_HASHCODE("outragepets");


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

			player->sendSystemMessage("@pet/pet_menu:sys_fail_outrage"); // "You lack the mental focus to send your pets into an outrage."

			return GENERALERROR;
		}

		// Loop over all active pets

		bool petOutraged = false;

		for (int i = 0; i < ghost->getActivePetsSize(); ++i) {

			ManagedReference<AiAgent*> pet = ghost->getActivePet(i);

			if(pet == nullptr)
				continue;

			ManagedReference<PetControlDevice*> controlDevice = pet->getControlDevice().get().castTo<PetControlDevice*>();

			if( controlDevice == nullptr )

				continue;

			// Creatures only

			if( controlDevice->getPetType() == PetManager::CREATUREPET ) {

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

				if( pet->getCooldownTimerMap() == NULL || !pet->getCooldownTimerMap()->isPast("outrageCooldown") )
									continue;

				// Determine damage bonus (105% of average damage)

				int damageBonus = (int) ((((float)pet->getDamageMin() + (float)pet->getDamageMax())/2) * 1.05);

				// Determine damage susceptibility (half of damage bonus)

				int damageSusceptibility = damageBonus / 3;

				// Build buff

				ManagedReference<Buff*> buff = new Buff(pet, buffCRC, durationSec, BuffType::OTHER);

				Locker locker(buff);


				buff->setStartFlyText("combat_effects", "outraged", 0, 0xFF, 0);

				buff->setEndFlyText("combat_effects", "no_outraged", 0xFF, 0, 0);

				buff->setSkillModifier("private_damage_bonus", damageBonus);

				buff->setSkillModifier("private_damage_susceptibility",damageSusceptibility);


				pet->addBuff(buff);
				pet->getCooldownTimerMap()->updateToCurrentAndAddMili("outrageCooldown", cooldownMilli);

				petOutraged = true;


			} // end if creature

		} // end active pets loop


	// At least one pet was was outraged

		if( petOutraged ){

			player->inflictDamage(player, CreatureAttribute::MIND, mindCost, false);

			player->sendSystemMessage("@pet/pet_menu:sys_outrage"); // "You send your pets into an outrage."

		}

		return SUCCESS;

	}

};


#endif //OUTRAGEPETSCOMMAND_H_
