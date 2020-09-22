/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef HASTYGETAWAYCOMMAND_H_
#define HASTYGETAWAYCOMMAND_H_

#include "CombatQueueCommand.h"

class HastyGetawayCommand : public CombatQueueCommand {
public:

	HastyGetawayCommand(const String& name, ZoneProcessServer* server)
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


#endif //HASTYGETAWAYCOMMAND_H_
