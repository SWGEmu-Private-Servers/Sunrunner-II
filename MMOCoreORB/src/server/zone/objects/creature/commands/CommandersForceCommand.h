/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef COMMANDERSFORCECOMMAND_H_
#define COMMANDERSFORCECOMMAND_H_

#include "CombatQueueCommand.h"

class CommandersForceCommand : public CombatQueueCommand {
public:

	CommandersForceCommand(const String& name, ZoneProcessServer* server)
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

#endif //COMMANDERSFORCECOMMAND_H_
