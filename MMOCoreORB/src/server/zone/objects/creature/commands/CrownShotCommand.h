/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef CROWNSHOTCOMMAND_H_
#define CROWNSHOTCOMMAND_H_

#include "CombatQueueCommand.h"

class CrownShotCommand : public CombatQueueCommand {
public:

	CrownShotCommand(const String& name, ZoneProcessServer* server)
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

#endif //CROWNSHOTCOMMAND_H_
