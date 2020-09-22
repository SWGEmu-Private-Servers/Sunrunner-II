/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef DECLAREOVERTCOMMAND_H_
#define DECLAREOVERTCOMMAND_H_

class DeclareOvertCommand : public QueueCommand {
public:

	DeclareOvertCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		int curStatus = creature->getFactionStatus();


		if (creature->getFaction() != Factions::FACTIONREBEL && creature->getFaction() != Factions::FACTIONIMPERIAL) {
			creature->sendSystemMessage("You are not a member of a GCW faction.");
			return GENERALERROR;
		}

		if (curStatus == FactionStatus::ONLEAVE)
			creature->setFactionStatus(FactionStatus::OVERT);

		//if (curStatus == FactionStatus::COVERT)
		//	creature->setFactionStatus(FactionStatus::OVERT);

		if (curStatus == FactionStatus::OVERT)
			creature->sendSystemMessage("You are already overt.");


		return SUCCESS;
	}

};

#endif //DECLAREOVERTCOMMAND_H_
