/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef COMMANDOSGAMBITCOMMAND_H_
#define COMMANDOSGAMBITCOMMAND_H_

#include "CombatQueueCommand.h"

class CommandosGambitCommand : public CombatQueueCommand {
public:

	CommandosGambitCommand(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;
		
		CreatureObject* player = cast<CreatureObject*>(creature);

		if (!player->checkCooldownRecovery("commandosgambit")) {

			const Time* cdTime = player->getCooldownTime("commandosgambit");

			// Returns -time. Multiple by -1 to return positive.
			int timeLeft = floor((float)cdTime->miliDifference() / 1000) * -1;

			StringIdChatParameter stringId;
			stringId.setStringId("@innate:cg_wait"); // You must wait %DI seconds to use Commando's Gambit again.

			stringId.setDI(timeLeft);
			player->sendSystemMessage(stringId);
			return GENERALERROR;
		}


		creature->addCooldown("commandosgambit", 25 * 1000);

		return doCombatAction(creature, target);
	}

};

#endif //COMMANDOSGAMBITCOMMAND_H_
