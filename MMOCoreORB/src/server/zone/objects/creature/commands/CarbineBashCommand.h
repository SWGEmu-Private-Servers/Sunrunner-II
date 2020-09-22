/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef CARBINEBASHCOMMAND_H_
#define CARBINEBASHCOMMAND_H_

#include "CombatQueueCommand.h"

class CarbineBashCommand : public CombatQueueCommand {
public:

	CarbineBashCommand(const String& name, ZoneProcessServer* server)
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

#endif //CARBINEBASHCOMMAND_H_
