/*
 * PetEmoteCommand.h
 *
 *  Created on: Jan 28, 2014
 *      Author: Klivian
 */

#ifndef PETEMOTECOMMAND_H_
#define PETEMOTECOMMAND_H_

#include "server/zone/objects/creature/commands/QueueCommand.h"
#include "server/zone/objects/creature/ai/AiAgent.h"
#include "templates/params/creature/CreatureEmote.h"
#include "server/zone/managers/creature/CreatureManager.h"

class PetEmoteCommand : public QueueCommand {
public:
	PetEmoteCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {
	}


	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		// Parse arguments (client arguments from SocialInternalCommand /socialInternal)
		StringTokenizer tokenizer(arguments.toString());
		uint64 targetid;
		uint32 emoteid;
		try {
			targetid = tokenizer.getLongToken();
			emoteid = tokenizer.getIntToken();
		} catch (const Exception& e) {
			return GENERALERROR;
		}

		if (!creature->isAiAgent())
			return GENERALERROR;

		ManagedReference<AiAgent*> pet = cast<AiAgent*>(creature);
		if (pet == nullptr)
			return GENERALERROR;

		ManagedReference<PetControlDevice*> controlDevice = creature->getControlDevice().get().castTo<PetControlDevice*>();
		if (controlDevice == nullptr)
			return GENERALERROR;

		// Creature specific command
		if (controlDevice->getPetType() != PetManager::CREATUREPET)
			return GENERALERROR;

		if (pet->hasRidingCreature())
			return GENERALERROR;

		if (emoteid == CreatureEmote::REASSURE || emoteid == CreatureEmote::NUZZLE || emoteid == CreatureEmote::HUG) {
			return praise(pet);
		} else if (emoteid == CreatureEmote::PET) {
			return lay(pet);
		} else if (emoteid == CreatureEmote::GULP) {
			return drink(pet);
		} else if (emoteid == CreatureEmote::PREEN) {
			return preen(pet);
		} else if (emoteid == CreatureEmote::STRETCH) {
			return stretch(pet);
		} else if (emoteid == CreatureEmote::SMELL) {
			return sniff(pet);
		} else if (emoteid == CreatureEmote::SCRATCH) {
			return scratch(pet);
		} else if (emoteid == CreatureEmote::YAWN) {
			return sleep(pet);
		} else if (emoteid == CreatureEmote::FLEX || emoteid == CreatureEmote::POUND) {
			return threaten(pet);
		} else if (emoteid == CreatureEmote::BONK || emoteid == CreatureEmote::WHAP ||
				 emoteid == CreatureEmote::SCOLD || emoteid == CreatureEmote::BAD ||
				 emoteid == CreatureEmote::SLAP) {
			return shame(pet);
		} else if (emoteid == CreatureEmote::POINTAT || emoteid == CreatureEmote::TAP) {
			return alert(pet);
		} else if (emoteid == CreatureEmote::SUMMON || emoteid == CreatureEmote::BECKON) {
			return summon(pet, controlDevice);
		}

		return SUCCESS;
	}

	int praise(AiAgent* pet) const {
		pet->doAnimation("happy");
		pet->setPosture(CreaturePosture::UPRIGHT);
		return SUCCESS;
	}

	int lay(AiAgent* pet) const {
		pet->setPosture(CreaturePosture::LYINGDOWN);
		return SUCCESS;
	}

	int shame(AiAgent* pet) const {
		pet->doAnimation("ashamed");
		return SUCCESS;
	}

	int drink(AiAgent* pet) const {
		pet->doAnimation("drink");
		return SUCCESS;
	}

	int preen(AiAgent* pet) const {
		pet->doAnimation("preen");
		return SUCCESS;
	}

	int stretch(AiAgent* pet) const {
		pet->doAnimation("stretch");
		return SUCCESS;
	}

	int sniff(AiAgent* pet) const {
		pet->doAnimation("sniff");
		return SUCCESS;
	}

	int scratch(AiAgent* pet) const {
		pet->doAnimation("scratch");
		return SUCCESS;
	}

	int sleep(AiAgent* pet) const {
		pet->doAnimation("sleep");
		pet->setPosture(CreaturePosture::LYINGDOWN);
		return SUCCESS;
	}

	int threaten(AiAgent* pet) const {
		pet->doAnimation("threaten");
		return SUCCESS;
	}

	int alert(AiAgent* pet) const {
		pet->doAnimation("alert");
		return SUCCESS;
	}

	int summon(AiAgent* pet, PetControlDevice* controlDevice) const {
		// Follow owner if command is trained
		if (controlDevice->hasTrainedCommand( PetManager::FOLLOW)) {
			// Always a chance the pet will just be stubborn
			if (System::random(100) <= 90) {
				// attempt peace if the pet is in combat
				if (pet->isInCombat())
					CombatManager::instance()->attemptPeace(pet);

				pet->setFollowObject(pet->getLinkedCreature().get());
				pet->storeFollowObject();

				Locker clocker(controlDevice, pet);

				if (pet->getPosture() == CreaturePosture::LYINGDOWN || pet->getPosture() == CreaturePosture::SITTING) {
					pet->setPosture(CreaturePosture::UPRIGHT);
				}

				controlDevice->setLastCommand(PetManager::FOLLOW);

				pet->activateInterrupt(pet->getLinkedCreature().get(), ObserverEventType::STARTCOMBAT);
			} else {
				pet->doAnimation("confused");
				pet->showFlyText("npc_reaction/flytext","confused", 204, 0, 0);  // "?!!?!?!"
			}
		} else {
			pet->doAnimation("confused");
			pet->showFlyText("npc_reaction/flytext","confused", 204, 0, 0);  // "?!!?!?!"
		}

		return SUCCESS;
	}
};

#endif /* PETEMOTECOMMAND_H_ */
