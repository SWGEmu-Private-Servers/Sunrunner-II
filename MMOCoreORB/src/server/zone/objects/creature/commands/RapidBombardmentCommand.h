#ifndef RAPIDBOMBARDMENTCOMMAND_H_
#define RAPIDBOMBARDMENTCOMMAND_H_

#include "CombatQueueCommand.h"

class RapidBombardmentCommand : public CombatQueueCommand {
public:

	RapidBombardmentCommand(const String& name, ZoneProcessServer* server)
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

#endif //RAPIDBOMBARDMENTCOMMAND_H_
