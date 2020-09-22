/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef FOCUSEDFIRECOMMAND_H_
#define FOCUSEDFIRECOMMAND_H_

#include "CombatQueueCommand.h"

class FocusedFireCommand : public CombatQueueCommand {
public:

	FocusedFireCommand(const String& name, ZoneProcessServer* server)
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

#endif //FOCUSEDFIRECOMMAND_H_
