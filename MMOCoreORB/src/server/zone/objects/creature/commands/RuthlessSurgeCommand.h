/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef RUTHLESSSURGECOMMAND_H_
#define RUTHLESSSURGECOMMAND_H_

#include "CombatQueueCommand.h"

class RuthlessSurgeCommand : public CombatQueueCommand {
public:

	RuthlessSurgeCommand(const String& name, ZoneProcessServer* server)
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

#endif //RUTHLESSSURGECOMMAND_H_
