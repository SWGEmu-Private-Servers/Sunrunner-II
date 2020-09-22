/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef DISABLINGSHOTCOMMAND_H_
#define DISABLINGSHOTCOMMAND_H_

#include "CombatQueueCommand.h"

class DisablingShotCommand : public CombatQueueCommand {
public:

	DisablingShotCommand(const String& name, ZoneProcessServer* server)
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

#endif //DISABLINGSHOTCOMMAND_H_
