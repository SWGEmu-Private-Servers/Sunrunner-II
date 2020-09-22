#ifndef ENCOURAGEPETSCOMMAND_H_
#define ENCOURAGEPETSCOMMAND_H_

#include "server/zone/objects/intangible/PetControlDevice.h"
#include "server/zone/managers/creature/PetManager.h"
#include "server/zone/objects/creature/ai/AiAgent.h"
#include "server/zone/objects/player/PlayerObject.h"

class EncouragePetsCommand : public QueueCommand {

public:



	EncouragePetsCommand(const String& name, ZoneProcessServer* server)

		: QueueCommand(name, server) {



	}



	int doQueueCommand(CreatureObject* player, const uint64& target, const UnicodeString& arguments) const {



		int cooldownMilli = 240000; // 4 min
		int durationSec =  2; // 2 sec

	 	int mindCost = player->calculateCostAdjustment(CreatureAttribute::FOCUS, 100 );

		unsigned int buffCRC = STRING_HASHCODE("encouragepets");



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

			player->sendSystemMessage("@pet/pet_menu:sys_fail_encourage"); // "You lack the mental focus to encourage your pets."

			return GENERALERROR;

		}



		// Loop over all active pets

		bool petEncouraged = false;

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

				if( pet->getCooldownTimerMap() == NULL || !pet->getCooldownTimerMap()->isPast("encourageCooldown") )
									continue;



				// Build 40% Health, Action, Mind buff

				ManagedReference<Buff*> buff = new Buff(pet, buffCRC, durationSec, BuffType::OTHER);






				Locker locker(buff);



				int healthBuff = pet->getBaseHAM(CreatureAttribute::HEALTH) * 0.4;

				int actionBuff = pet->getBaseHAM(CreatureAttribute::ACTION) * 0.4;

				int mindBuff = pet->getBaseHAM(CreatureAttribute::MIND) * 0.4;

				buff->setAttributeModifier(CreatureAttribute::HEALTH, healthBuff);

				buff->setAttributeModifier(CreatureAttribute::ACTION, actionBuff);

				buff->setAttributeModifier(CreatureAttribute::MIND, mindBuff);



				pet->addBuff(buff);
				pet->getCooldownTimerMap()->updateToCurrentAndAddMili("encourageCooldown", cooldownMilli);

				pet->showFlyText("combat_effects","pet_encourage", 0, 153, 0); // "! Encouraged !"

				petEncouraged = true;




			} // end if creature

		} // end active pets loop


		
		// At least one pet was encouraged




		if( petEncouraged ){

			player->inflictDamage(player, CreatureAttribute::MIND, mindCost, false);

			player->sendSystemMessage("@pet/pet_menu:sys_encourage"); // "You encourage your pets, reinvigorating their spirit."

		}



		return SUCCESS;

	}



};



#endif //ENCOURAGEPETSCOMMAND_H_
