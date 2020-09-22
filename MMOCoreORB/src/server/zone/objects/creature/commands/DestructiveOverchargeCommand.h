/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef DESTRUCTIVEOVERCHARGECOMMAND_H_
#define DESTRUCTIVEOVERCHARGECOMMAND_H_

#include "CombatQueueCommand.h"

class DestructiveOverchargeCommand : public CombatQueueCommand {
public:

	DestructiveOverchargeCommand(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		return doCombatAction(creature, target);
	}

};

#endif //DESTRUCTIVEOVERCHARGECOMMAND_H_
