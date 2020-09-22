/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef MERCILESSSLASHCOMMAND_H_
#define MERCILESSSLASHCOMMAND_H_

#include "CombatQueueCommand.h"

class MercilessSlashCommand : public CombatQueueCommand {
public:

	MercilessSlashCommand(const String& name, ZoneProcessServer* server)
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


#endif //MERCILESSSLASHCOMMAND_H_
