/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef CREATUREAREABURNCOMMAND_H_
#define CREATUREAREABURNCOMMAND_H_

#include "CombatQueueCommand.h"

class CreatureAreaBurnCommand : public CombatQueueCommand {
public:

	CreatureAreaBurnCommand(const String& name, ZoneProcessServer* server) : CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (!creature->isAiAgent())
			return GENERALERROR;

		return doCombatAction(creature, target, arguments);
	}

};

#endif //CREATUREAREABURNCOMMAND_H_
