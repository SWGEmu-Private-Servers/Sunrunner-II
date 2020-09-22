/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef UNARMEDBLEEDCOMMAND_H_
#define UNARMEDBLEEDCOMMAND_H_

#include "CombatQueueCommand.h"

class UnarmedBleedCommand : public CombatQueueCommand {
public:

	UnarmedBleedCommand(const String& name, ZoneProcessServer* server)
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

#endif //UNARMEDBLEEDCOMMAND_H_
