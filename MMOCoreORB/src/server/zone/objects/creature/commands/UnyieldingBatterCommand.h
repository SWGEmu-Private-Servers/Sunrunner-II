/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef UNYIELDINGBATTERCOMMAND_H_
#define UNYIELDINGBATTERCOMMAND_H_

#include "CombatQueueCommand.h"

class UnyieldingBatterCommand : public CombatQueueCommand {
public:

	UnyieldingBatterCommand(const String& name, ZoneProcessServer* server)
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


#endif //UNYIELDINGBATTERCOMMAND_H_
