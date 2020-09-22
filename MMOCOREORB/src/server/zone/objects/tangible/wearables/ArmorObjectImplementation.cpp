/*
 * ArmorObjectImplementation.cpp
 *
 *  Created on: 02/08/2009
 *      Author: victor
 */

#include "server/zone/objects/tangible/wearables/ArmorObject.h"
#include "templates/tangible/ArmorObjectTemplate.h"
#include "server/zone/objects/player/sessions/SlicingSession.h"
#include "templates/tangible/SharedWeaponObjectTemplate.h"

void ArmorObjectImplementation::initializeTransientMembers() {
	TangibleObjectImplementation::initializeTransientMembers();

	setLoggingName("ArmorObject");
}

void ArmorObjectImplementation::loadTemplateData(SharedObjectTemplate* templateData) {
	WearableObjectImplementation::loadTemplateData(templateData);

	if (!templateData->isArmorObjectTemplate())
		return;

	ArmorObjectTemplate* armorTemplate = cast<ArmorObjectTemplate*>( templateData);

	vulnerabilites = armorTemplate->getVulnerabilites();

	specialResists = armorTemplate->getSpecialResists();

	healthEncumbrance = armorTemplate->getHealthEncumbrance();
	actionEncumbrance = armorTemplate->getActionEncumbrance();
	mindEncumbrance = armorTemplate->getMindEncumbrance();

	rating = armorTemplate->getRating();

	kinetic = armorTemplate->getKinetic();
	energy = armorTemplate->getEnergy();
	electricity = armorTemplate->getElectricity();
	stun = armorTemplate->getStun();
	blast = armorTemplate->getBlast();
	heat = armorTemplate->getHeat();
	cold = armorTemplate->getCold();
	acid = armorTemplate->getAcid();
	lightSaber = armorTemplate->getLightSaber();

	hitLocation = armorTemplate->getHitLocation();
	if (hitLocation == ArmorObjectTemplate::NOLOCATION) {
		if (hasArrangementDescriptor("chest2"))
			hitLocation |= ArmorObjectTemplate::CHEST;
		if (hasArrangementDescriptor("bicep_r") || hasArrangementDescriptor("bicep_l") || hasArrangementDescriptor("bracer_upper_r") || hasArrangementDescriptor("bracer_upper_l") || hasArrangementDescriptor("gloves"))
			hitLocation |= ArmorObjectTemplate::ARMS;
		if (hasArrangementDescriptor("shoes") || hasArrangementDescriptor("pants1"))
			hitLocation |= ArmorObjectTemplate::LEGS;
		if (hasArrangementDescriptor("hat"))
			hitLocation |= ArmorObjectTemplate::HEAD;
	}

	setSliceable(true);
}

void ArmorObjectImplementation::notifyLoadFromDatabase() {
	WearableObjectImplementation::notifyLoadFromDatabase();

	if (templateObject == nullptr)
		return;

	if (rating != LIGHT && templateObject->getClientTemplateFileName().contains("armor_bounty_hunter_"))
		rating = LIGHT;
}

void ArmorObjectImplementation::fillAttributeList(AttributeListMessage* alm, CreatureObject* object) {
	WearableObjectImplementation::fillAttributeList(alm, object);

	//Armor Rating
	if (rating == LIGHT)
		alm->insertAttribute("armorrating", "@obj_attr_n:armor_pierce_light"); //Light
	else if (rating == MEDIUM)
		alm->insertAttribute("armorrating", "@obj_attr_n:armor_pierce_medium"); //Medium
	else if (rating == HEAVY)
		alm->insertAttribute("armorrating", "@obj_attr_n:armor_pierce_heavy"); //Heavy
	else
		alm->insertAttribute("armorrating", "@obj_attr_n:armor_pierce_none"); //None

	//Check for special protections
	if ((isSpecial(SharedWeaponObjectTemplate::KINETIC) || isVulnerable(SharedWeaponObjectTemplate::KINETIC)) && getKinetic() >= 0.5) {
		StringBuffer txt;
		txt << Math::getPrecision(getKinetic(),1) << "%";
		alm->insertAttribute("cat_armor_special_protection.armor_eff_kinetic",
				txt.toString());
	}
	if ((isSpecial(SharedWeaponObjectTemplate::ENERGY) || isVulnerable(SharedWeaponObjectTemplate::ENERGY)) && getEnergy() >= 0.5) {
		StringBuffer txt;
		txt << Math::getPrecision(getEnergy(),1) << "%";
		alm->insertAttribute("cat_armor_special_protection.armor_eff_energy",
				txt.toString());
	}
	if ((isSpecial(SharedWeaponObjectTemplate::ELECTRICITY) || isVulnerable(SharedWeaponObjectTemplate::ELECTRICITY)) && getElectricity() >= 0.5) {
		StringBuffer txt;
		txt << Math::getPrecision(getElectricity(),1) << "%";
		alm->insertAttribute(
				"cat_armor_special_protection.armor_eff_elemental_electrical",
				txt.toString());
	}
	if ((isSpecial(SharedWeaponObjectTemplate::STUN) || isVulnerable(SharedWeaponObjectTemplate::STUN)) &&  getStun() >= 0.5) {
		StringBuffer txt;
		txt << Math::getPrecision(getStun(),1) << "%";
		alm->insertAttribute("cat_armor_special_protection.armor_eff_stun",
				txt.toString());
	}
	if ((isSpecial(SharedWeaponObjectTemplate::BLAST) || isVulnerable(SharedWeaponObjectTemplate::BLAST)) && getBlast() >= 0.5) {
		StringBuffer txt;
		txt << Math::getPrecision(getBlast(),1) << "%";
		alm->insertAttribute("cat_armor_special_protection.armor_eff_blast",
				txt.toString());
	}
	if ((isSpecial(SharedWeaponObjectTemplate::HEAT) || isVulnerable(SharedWeaponObjectTemplate::HEAT)) && getHeat() >= 0.5) {
		StringBuffer txt;
		txt << Math::getPrecision(getHeat(),1) << "%";
		alm->insertAttribute(
				"cat_armor_special_protection.armor_eff_elemental_heat",
				txt.toString());
	}
	if ((isSpecial(SharedWeaponObjectTemplate::COLD) || isVulnerable(SharedWeaponObjectTemplate::COLD)) && getCold() >= 0.5) {
		StringBuffer txt;
		txt << Math::getPrecision(getCold(),1) << "%";
		alm->insertAttribute(
				"cat_armor_special_protection.armor_eff_elemental_cold",
				txt.toString());
	}
	if ((isSpecial(SharedWeaponObjectTemplate::ACID) || isVulnerable(SharedWeaponObjectTemplate::ACID)) && getAcid() >= 0.5) {
		StringBuffer txt;
		txt << Math::getPrecision(getAcid(),1) << "%";
		alm->insertAttribute(
				"cat_armor_special_protection.armor_eff_elemental_acid",
				txt.toString());
	}
	if ((isSpecial(SharedWeaponObjectTemplate::LIGHTSABER) || isVulnerable(SharedWeaponObjectTemplate::LIGHTSABER)) && getLightSaber() >= 0.5) {
		StringBuffer txt;
		txt << Math::getPrecision(getLightSaber(),1) << "%";
		alm->insertAttribute(
				"cat_armor_special_protection.armor_eff_restraint",
				txt.toString());
	}
	//Check for Effectiveness protections(Normal)
	if (!isSpecial(SharedWeaponObjectTemplate::KINETIC) && !isVulnerable(SharedWeaponObjectTemplate::KINETIC) && getKinetic() >= 0.5) {
		StringBuffer txt;
		txt << Math::getPrecision(getKinetic(),1) << "%";
		alm->insertAttribute("cat_armor_effectiveness.armor_eff_kinetic",
				txt.toString());
	}
	if (!isSpecial(SharedWeaponObjectTemplate::ENERGY) && !isVulnerable(SharedWeaponObjectTemplate::ENERGY) && getEnergy() >= 0.5) {
		StringBuffer txt;
		txt << Math::getPrecision(getEnergy(),1) << "%";
		alm->insertAttribute("cat_armor_effectiveness.armor_eff_energy",
				txt.toString());
	}
	if (!isSpecial(SharedWeaponObjectTemplate::ELECTRICITY) && !isVulnerable(SharedWeaponObjectTemplate::ELECTRICITY) && getElectricity() >= 0.5) {
		StringBuffer txt;
		txt << Math::getPrecision(getElectricity(),1) << "%";
		alm->insertAttribute(
				"cat_armor_effectiveness.armor_eff_elemental_electrical",
				txt.toString());
	}
	if (!isSpecial(SharedWeaponObjectTemplate::STUN) && !isVulnerable(SharedWeaponObjectTemplate::STUN) && getStun() >= 0.5) {
		StringBuffer txt;
		txt << Math::getPrecision(getStun(),1) << "%";
		alm->insertAttribute("cat_armor_effectiveness.armor_eff_stun",
				txt.toString());
	}
	if (!isSpecial(SharedWeaponObjectTemplate::BLAST) && !isVulnerable(SharedWeaponObjectTemplate::BLAST) && getBlast() >= 0.5) {
		StringBuffer txt;
		txt << Math::getPrecision(getBlast(),1) << "%";
		alm->insertAttribute("cat_armor_effectiveness.armor_eff_blast",
				txt.toString());
	}
	if (!isSpecial(SharedWeaponObjectTemplate::HEAT) && !isVulnerable(SharedWeaponObjectTemplate::HEAT) && getHeat() >= 0.5) {
		StringBuffer txt;
		txt << Math::getPrecision(getHeat(),1) << "%";
		alm->insertAttribute(
				"cat_armor_effectiveness.armor_eff_elemental_heat",
				txt.toString());
	}
	if (!isSpecial(SharedWeaponObjectTemplate::COLD) && !isVulnerable(SharedWeaponObjectTemplate::COLD) && getCold() >= 0.5) {
		StringBuffer txt;
		txt << Math::getPrecision(getCold(),1) << "%";
		alm->insertAttribute(
				"cat_armor_effectiveness.armor_eff_elemental_cold",
				txt.toString());
	}
	if (!isSpecial(SharedWeaponObjectTemplate::ACID) && !isVulnerable(SharedWeaponObjectTemplate::ACID) && getAcid() >= 0.5) {
		StringBuffer txt;
		txt << Math::getPrecision(getAcid(),1) << "%";
		alm->insertAttribute(
				"cat_armor_effectiveness.armor_eff_elemental_acid",
				txt.toString());
	}
	if (!isSpecial(SharedWeaponObjectTemplate::LIGHTSABER) && !isVulnerable(SharedWeaponObjectTemplate::LIGHTSABER) && getLightSaber() >= 0.5) {
		StringBuffer txt;
		txt << Math::getPrecision(getLightSaber(),1) << "%";
		alm->insertAttribute("cat_armor_effectiveness.armor_eff_restraint",
				txt.toString());
	}

	//Vulnerabilities
	if (getKinetic() < 0.5)
		alm->insertAttribute("cat_armor_vulnerability.armor_eff_kinetic", "-");

	if (getEnergy() < 0.5)
		alm->insertAttribute("cat_armor_vulnerability.armor_eff_energy", "-");

	if (getElectricity() < 0.5)
		alm->insertAttribute(
				"cat_armor_vulnerability.armor_eff_elemental_electrical", "-");

	if (getStun() < 0.5)
		alm->insertAttribute("cat_armor_vulnerability.armor_eff_stun", "-");

	if (getBlast() < 0.5)
		alm->insertAttribute("cat_armor_vulnerability.armor_eff_blast", "-");

	if (getHeat() < 0.5)
		alm->insertAttribute(
				"cat_armor_vulnerability.armor_eff_elemental_heat", "-");

	if (getCold() < 0.5)
		alm->insertAttribute(
				"cat_armor_vulnerability.armor_eff_elemental_cold", "-");

	if (getAcid() < 0.5)
		alm->insertAttribute(
				"cat_armor_vulnerability.armor_eff_elemental_acid", "-");

	if (getLightSaber() < 0.5)
		alm->insertAttribute("cat_armor_vulnerability.armor_eff_restraint", "-");

	//Encumbrances
	alm->insertAttribute("cat_armor_encumbrance.health", getHealthEncumbrance());

	alm->insertAttribute("cat_armor_encumbrance.action", getActionEncumbrance());

	alm->insertAttribute("cat_armor_encumbrance.mind", getMindEncumbrance());

	//Anti Decay Kit
	if(hasAntiDecayKit()){
		alm->insertAttribute("@veteran_new:antidecay_examine_title", "@veteran_new:antidecay_examine_text");
	}

	if (sliced)
		alm->insertAttribute("arm_attr", "@obj_attr_n:hacked");

}

bool ArmorObjectImplementation::isVulnerable(int type) const {
	return isBroken() || (!isSpecial(type) && (vulnerabilites & type));
}

float ArmorObjectImplementation::getTypeValue(int type, float value) const {
	int newValue = 0;

	if (vulnerabilites & type)
		newValue = value;

	else if(isSpecial(type)) {
		
		newValue = specialProtection + value;

		if(templateObject->getClientTemplateFileName().contains("armor_ris_")) {

		    if(newValue > 84)
			   newValue = 84;		
		}
		


		else if(newValue > 80)
			    newValue = 80;

	} else {
		newValue = baseProtection + value;
		newValue *= effectivenessSlice;

		if(sliced && effectivenessSlice > 1) {
			if(newValue > 84)
				newValue = 84;
		} else {
			if(newValue > 84)
				newValue = 84; // TODO: Sort stun
		} 

			if(templateObject->getClientTemplateFileName().contains("armor_clone_trooper_")) {
				//if(newValue > 40)
					newValue = 65;
				//if(stun < 15)
					//stun = 15;		
			}
			if(templateObject->getClientTemplateFileName().contains("armor_stormtrooper_")) {
				//if(newValue > 40)
					newValue = 68;
				//if(stun < 20)
					//stun = 20;		
			}			
			if(templateObject->getClientTemplateFileName().contains("armor_marine_")) {
				//if(newValue > 40)
					newValue = 68;
				//if(stun < 20)
					//stun = 20;		
			}		
			if(templateObject->getClientTemplateFileName().contains("armor_assault_trooper_")) {
				//if(newValue > 40)
					newValue = 72;	
				//if(stun > 23)
					//stun = 23;
			}
			if(templateObject->getClientTemplateFileName().contains("armor_rebel_battle_")) {
				//if(newValue > 40)
					newValue = 72;	
				//if(stun < 23)
					//stun = 23;	
			}
			if(templateObject->getClientTemplateFileName().contains("armor_rebel_assault_")) {
				//if(newValue > 40)
					newValue = 72;	
				//if(stun < 23)
					//stun = 23;	
			}
			if(templateObject->getClientTemplateFileName().contains("armor_scout_trooper_")) {
				//if(newValue > 40)
					newValue = 72;	
				//if(stun < 23)
					//stun = 23;	
			}
			if(templateObject->getClientTemplateFileName().contains("armor_snowtrooper_")) {
				//if(newValue > 40)
					newValue = 72;	
				//if(stun < 23)
					//stun = 23;	
			}
			if(templateObject->getClientTemplateFileName().contains("armor_rebel_snow_")) {
				//if(newValue > 40)
					newValue = 72;	
				//if(stun < 23)
					//stun = 23;	
			}
			if(templateObject->getClientTemplateFileName().contains("armor_galactic_marine_")) {
				//if(newValue > 40)
					newValue = 77;	
				//if(stun < 27)
					//stun = 27;	
			}
			if(templateObject->getClientTemplateFileName().contains("armor_rebel_spec_force_")) {
				//if(newValue > 40)
					newValue = 77;	
				//if(stun < 27)
					//stun = 27;	
			}
			if(templateObject->getClientTemplateFileName().contains("armor_mandalorian_imperial_")) {
				//if(newValue > 40)
					newValue = 78;	
				//if(stun < 25)
					//stun = 25;	
			}
			if(templateObject->getClientTemplateFileName().contains("armor_mandalorian_rebel_")) {
				//if(newValue > 40)
					newValue = 78;	
				//if(stun < 25)
					//stun = 25;	
			}		
			if(templateObject->getClientTemplateFileName().contains("_gcw")) {
				//if(newValue > 40)
					newValue = 76;
				//if(stun < 27)
					//stun = 27;		
			}
			if(templateObject->getClientTemplateFileName().contains("invisible_helmet")) {
			
					newValue = 68;			
					//stun = 20;	
			}
			if(templateObject->getClientTemplateFileName().contains("invisible_helmet_imperial")) {
				//if(newValue > 40)
					newValue = 68;
				// if(stun < 21)
				// 	stun = 30;		
			}
			if(templateObject->getClientTemplateFileName().contains("invisible_helmet_rebel")) {
				//if(newValue > 40)
					newValue = 68;
				// if(stun < 21)
				// 	stun = 30;			
			}
			if(templateObject->getClientTemplateFileName().contains("invisible_helmet_imperial_quartermaster")) {
				//if(newValue > 40)
					newValue = 76;
				// if(stun < 21)
				// 	stun = 36;		
			}
			if(templateObject->getClientTemplateFileName().contains("invisible_helmet_rebel_quartermaster")) {
				//if(newValue > 40)
					newValue = 76;
				// if(stun < 21)
				// 	stun = 36;			
			}
			if(templateObject->getClientTemplateFileName().contains("_pvp_officer_")) {
				//if(newValue > 40)
					newValue = 74;
				// if(stun < 24)
				// 	stun = 24;		
			}
			if(templateObject->getClientTemplateFileName().contains("_groupleader_gcw")) {
				//if(newValue > 40)
					newValue = 77;
				//if(stun < 28)
					//stun = 28;		
			}
			if(templateObject->getClientTemplateFileName().contains("shield_generator_pvp")) {
				//if(newValue > 25)
					newValue = 25;
				//if(stun < 10)
					//stun = 10;		
			}
			if(templateObject->getClientTemplateFileName().contains("riot_shield_pvp")) {
				//if(newValue > 25)
					newValue = 25;
				//if(stun < 10)
					//stun = 10;		
			}
			if(templateObject->getClientTemplateFileName().contains("armor_stormtrooper_leggings_quest") || templateObject->getClientTemplateFileName().contains("armor_stormtrooper_helmet_quest") || templateObject->getClientTemplateFileName().contains("armor_stormtrooper_chest_plate_quest")) {
				//if(newValue > 25)
					newValue = 70;
				//if(stun < 10)
					//stun = 10;		
			}
			
	}

	return newValue;
}

int ArmorObjectImplementation::handleObjectMenuSelect(CreatureObject* player, byte selectedID) {
	if (selectedID == 69 && player->hasSkill("combat_smuggler_slicing_03") && isASubChildOf(player)) {
		if (isSliced()) {
			player->sendSystemMessage("@slicing/slicing:already_sliced");
			return 0;
		}

		ManagedReference<Facade*> facade = player->getActiveSession(SessionFacadeType::SLICING);
		ManagedReference<SlicingSession*> session = dynamic_cast<SlicingSession*>(facade.get());

		if (session != nullptr) {
			player->sendSystemMessage("@slicing/slicing:already_slicing");
			return 0;
		}

		//Create Session
		session = new SlicingSession(player);
		session->initalizeSlicingMenu(player, _this.getReferenceUnsafeStaticCast());

		return 0;
	} else
		return TangibleObjectImplementation::handleObjectMenuSelect(player, selectedID);
}

void ArmorObjectImplementation::updateCraftingValues(CraftingValues* values, bool firstUpdate) {

	WearableObjectImplementation::updateCraftingValues(values, firstUpdate);

	/*
	 * Incoming Values:					Ranges:
	 * sockets							All depend on type of armor
	 * hit_points
	 * armor_effectiveness
	 * armor_integrity
	 * armor_health_encumbrance
	 * armor_action_encumbrance
	 * armor_mind_encumbrance
	 * armor_rating
	 * armor_special_type
	 * armor_special_effectiveness
	 * armor_special_integrity
	 */
	//craftingValues->toString();

	if(firstUpdate) {

		kinetic = 0;
		energy = 0;
		electricity = 0;
		stun = 0;
		blast = 0;
		heat = 0;
		cold = 0;
		acid = 0;
		lightSaber = 0;
		baseProtection = 0;
		specialProtection = 0;
		effectivenessSlice = 1;
		encumbranceSlice = 1;

		calculateSpecialProtection(values);

		setRating((int) values->getCurrentValue("armor_rating"));

		setConditionDamage(0);
	}

	setHealthEncumbrance((int) values->getCurrentValue(
			"armor_health_encumbrance"));
	setActionEncumbrance((int) values->getCurrentValue(
			"armor_action_encumbrance"));
	setMindEncumbrance((int) values->getCurrentValue(
			"armor_mind_encumbrance"));

	setMaxCondition((int) values->getCurrentValue("armor_integrity"));

	baseProtection = values->getCurrentValue("armor_effectiveness");

	/// Because SOE had to be stupid and not make the rules consistant
	if(values->getMaxValue("armor_special_effectiveness") == values->getMinValue("armor_special_effectiveness"))
		specialProtection = values->getCurrentValue("armor_effectiveness");
	else
		specialProtection = values->getCurrentValue("armor_special_effectiveness");

}

void ArmorObjectImplementation::calculateSpecialProtection(CraftingValues* craftingValues) {
	specialResists = ((int)(craftingValues->getCurrentValue("armor_special_type")));

	for (int i = 0; i <= 8; ++i) {
		int type = pow((float)2,i);

		String subtitle = getStringType(type);
		float value = craftingValues->getCurrentValue(subtitle);

		if (value != ValuesMap::VALUENOTFOUND) {
			specialResists |= type;
			setProtectionValue(type, value);
		}
	}
}

String ArmorObjectImplementation::getStringType(int type) const {
	switch(type) {
	case SharedWeaponObjectTemplate::KINETIC:
		return "kineticeffectiveness";
		break;
	case SharedWeaponObjectTemplate::ENERGY:
		return "energyeffectiveness";
	break;
	case SharedWeaponObjectTemplate::ELECTRICITY:
		return "electricaleffectiveness";
		break;
	case SharedWeaponObjectTemplate::STUN:
		return "stuneffectiveness";
		break;
	case SharedWeaponObjectTemplate::BLAST:
		return "blasteffectiveness";
		break;
	case SharedWeaponObjectTemplate::HEAT:
		return "heateffectiveness";
		break;
	case SharedWeaponObjectTemplate::COLD:
		return "coldeffectiveness";
		break;
	case SharedWeaponObjectTemplate::ACID:
		return "acideffectiveness";
		break;
	case SharedWeaponObjectTemplate::LIGHTSABER:
		return "restraineffectiveness";
		break;
	default:
		return "";
	}
}

float ArmorObjectImplementation::getKinetic() const {
	float value = getTypeValue(SharedWeaponObjectTemplate::KINETIC, kinetic);
	return value - getConditionReduction(value);
}

float ArmorObjectImplementation::getEnergy() const {
	float value = getTypeValue(SharedWeaponObjectTemplate::ENERGY, energy);
	return value - getConditionReduction(value);
}

float ArmorObjectImplementation::getElectricity() const {
	float value = getTypeValue(SharedWeaponObjectTemplate::ELECTRICITY, electricity);
	return value - getConditionReduction(value);
}
float ArmorObjectImplementation::getStun() const {
			if(templateObject->getClientTemplateFileName().contains("invisible_neutral_clone_")) {
				return 25 - getConditionReduction(25);
			}
			if(templateObject->getClientTemplateFileName().contains("armor_clone_trooper_")) {
				return 25 - getConditionReduction(25);	
			}
			if(templateObject->getClientTemplateFileName().contains("armor_stormtrooper_")) {
				return 30 - getConditionReduction(30);		
			}			
			if(templateObject->getClientTemplateFileName().contains("armor_marine_")) {
				return 30 - getConditionReduction(30);		
			}		
			if(templateObject->getClientTemplateFileName().contains("armor_assault_trooper_")) {
				return 33 - getConditionReduction(33);
			}
			if(templateObject->getClientTemplateFileName().contains("armor_rebel_battle_")) {
				return 33 - getConditionReduction(33);	
			}
			if(templateObject->getClientTemplateFileName().contains("armor_rebel_assault_")) {
				return 33 - getConditionReduction(33);	
			}
			if(templateObject->getClientTemplateFileName().contains("armor_scout_trooper_")) {
				return 33 - getConditionReduction(33);	
			}
			if(templateObject->getClientTemplateFileName().contains("armor_snowtrooper_")) {
				return 33 - getConditionReduction(33);	
			}
			if(templateObject->getClientTemplateFileName().contains("armor_rebel_snow_")) {
				return 33 - getConditionReduction(33);	
			}
			if(templateObject->getClientTemplateFileName().contains("armor_galactic_marine_")) {
				return 37 - getConditionReduction(37);	
			}
			if(templateObject->getClientTemplateFileName().contains("armor_rebel_spec_force_")) {
				return 37 - getConditionReduction(37);
			}
			if(templateObject->getClientTemplateFileName().contains("armor_mandalorian_imperial_")) {
				return 35 - getConditionReduction(35);
			}
			if(templateObject->getClientTemplateFileName().contains("armor_mandalorian_rebel_")) {
				return 35 - getConditionReduction(35);	
			}		
			if(templateObject->getClientTemplateFileName().contains("_gcw")) {
				return 37 - getConditionReduction(37);		
			}
			if(templateObject->getClientTemplateFileName().contains("invisible_helmet")) {
				return 30 - getConditionReduction(30);	
			}
			if(templateObject->getClientTemplateFileName().contains("invisible_helmet_imperial")) {
				return 30 - getConditionReduction(30);			
			}
			if(templateObject->getClientTemplateFileName().contains("invisible_helmet_rebel")) {
				return 30 - getConditionReduction(30);			
			}
			if(templateObject->getClientTemplateFileName().contains("invisible_helmet_imperial_quartermaster")) {
				return 36 - getConditionReduction(36);			
			}
			if(templateObject->getClientTemplateFileName().contains("invisible_helmet_rebel_quartermaster")) {
				return 36 - getConditionReduction(36);			
			}
			if(templateObject->getClientTemplateFileName().contains("_pvp_officer_")) {
				return 34 - getConditionReduction(34);			
			}
			if(templateObject->getClientTemplateFileName().contains("_groupleader_gcw")) {
				return 38 - getConditionReduction(38);			
			}
			if(templateObject->getClientTemplateFileName().contains("shield_generator_pvp")) {
				return 10 - getConditionReduction(10);			
			}
			if(templateObject->getClientTemplateFileName().contains("riot_shield_pvp")) {
				return 10 - getConditionReduction(10);	
			}

	float value = getTypeValue(SharedWeaponObjectTemplate::STUN, stun);
	return value - getConditionReduction(value);
}

float ArmorObjectImplementation::getBlast() const {
	float value = getTypeValue(SharedWeaponObjectTemplate::BLAST, blast);
	return value - getConditionReduction(value);
}

float ArmorObjectImplementation::getHeat() const {
	float value = getTypeValue(SharedWeaponObjectTemplate::HEAT, heat);
	return value - getConditionReduction(value);
}

float ArmorObjectImplementation::getCold() const {
	float value = getTypeValue(SharedWeaponObjectTemplate::COLD, cold);
	return value - getConditionReduction(value);
}

float ArmorObjectImplementation::getAcid() const {
	float value = getTypeValue(SharedWeaponObjectTemplate::ACID, acid);
	return value - getConditionReduction(value);
}

float ArmorObjectImplementation::getLightSaber() const {
	float value = getTypeValue(SharedWeaponObjectTemplate::LIGHTSABER, lightSaber);
	return value - getConditionReduction(value);
}

void ArmorObjectImplementation::setProtectionValue(int type, float value) {
	if (type & SharedWeaponObjectTemplate::KINETIC)
		setKinetic(value);
	if (type & SharedWeaponObjectTemplate::ENERGY)
		setEnergy(value);
	if (type & SharedWeaponObjectTemplate::BLAST)
		setBlast(value);
	if (type & SharedWeaponObjectTemplate::STUN)
		setStun(value);
	if (type & SharedWeaponObjectTemplate::LIGHTSABER)
		setLightSaber(value);
	if (type & SharedWeaponObjectTemplate::HEAT)
		setHeat(value);
	if (type & SharedWeaponObjectTemplate::COLD)
		setCold(value);
	if (type & SharedWeaponObjectTemplate::ACID)
		setAcid(value);
	if (type & SharedWeaponObjectTemplate::ELECTRICITY)
		setElectricity(value);
}
