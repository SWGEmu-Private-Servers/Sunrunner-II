/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef UNARMEDMAELSTROMCOMMAND_H_
#define UNARMEDMAELSTROMCOMMAND_H_

class UnarmedMaelstromCommand : public CombatQueueCommand {
public:

	UnarmedMaelstromCommand(const String& name, ZoneProcessServer* server)
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

#endif //UNARMEDMAELSTROMCOMMAND_H_
