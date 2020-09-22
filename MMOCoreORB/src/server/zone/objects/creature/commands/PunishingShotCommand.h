/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef PUNISHINGSHOTCOMMAND_H_
#define PUNISHINGSHOTCOMMAND_H_

#include "CombatQueueCommand.h"

class PunishingShotCommand : public CombatQueueCommand {
public:

	PunishingShotCommand(const String& name, ZoneProcessServer* server)
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

#endif //PUNISHINGSHOTCOMMAND_H_
