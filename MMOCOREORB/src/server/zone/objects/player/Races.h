/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef RACES_H_
#define RACES_H_

#include "system/lang.h"

const static char* Species[] = {
	"human", 	// human male
	"trandoshan", 	// trandoshan male
	"twilek", 	// twilek male
	"bothan", 	// bothan male
	"zabrak", 	// zabrak male
	"rodian", 	// rodian male
 	"moncal", 	// moncal male
	"wookiee", 	// wookiee male
	"sullustan", 	// sullustan male
	"ithorian",	// ithorian male
	"human", 	// human female
	"trandoshan", 	// trandoshan female
	"twilek", 	// twilek female
	"bothan", 	// bothan female
	"zabrak", 	// zabrak female
	"rodian", 	// rodian female
	"moncal", 	// moncal female
	"wookiee", 	// wookiee female
	"sullustan", 	// sullustan female
	"ithorian",  	// ithorian female
	"aqualish",	// male aqualish
	"aqualish",	// female aqualish
	"bith",		// male bith
	"bith",		// female bith
	"chiss", 	// male chiss
	"chiss", 	// female chiss
	"gotal",	// male gotal
	"gran", 	// male gran
	"ishi_tib", 	// male ishi tib
	"nautolan", 	// male Nautolan
	"nightsister", 	// female nightsister
	"nikto", 	// male nikto
	"quarren", 	// male quarren
	"smc", 		// female singing mountain clan witch
};

const static int TemplateSpecies[] = { //hex code for species number
		0,
		2,
		6,
		5,
		7,
		1,
		3,
		4,
		0x31,
		0x21,
		0,
		2,
		6,
		5,
		7,
		1,
		3,
		4,
		0x31,
		0x21,
		0x1f,
		0, // aqualish
		0, // aqualish
		0, // bith
		0, //bith
		0x34, //chiss
		0x34, //chiss
		0, //gotal
		0x36, //gran
		0x37, //ishi tib
		0x2c,
		0x38, //nightsister
		0x39, //nikto
		0x3a, //quarren
		0x3b, //smc
};

const static char* Gender[] = {
	"male", 	// human male
	"male", 	// trandoshan male
	"male", 	// twilek male
	"male", 	// bothan male
	"male", 	// zabrak male
	"male", 	// rodian male
	"male", 	// moncal male
	"male", 	// wookiee male
	"male", 	// sullustan male
	"male", 	// ithorian male
	"female", 	// human female
	"female", 	// trandoshan female
	"female", 	// twilek female
	"female", 	// bothan female
	"female", 	// zabrak female
	"female", 	// rodian female
	"female", 	// moncal female
	"female", 	// wookiee female
	"female", 	// sullustan female
	"female", 	// ithorian female
	"male", 	// aqualish male
	"female", 	// aqualish female
	"male", 	// bith male
	"female", 	// bith female
	"male", 	// chiss male
	"female", 	// chiss female
	"male", 	// gotal male
	"male", 	// gran male
	"male", 	// ishi tib male
	"male", 	// nautolan male
	"female", 	// nightsister female
	"male", 	// nikto male
	"male", 	// quarren male
	"female", 	// smc female
};

const static char* RaceStrs[] = {
	"object/creature/player/shared_human_male.iff", 	// human male
	"object/creature/player/shared_trandoshan_male.iff", 	// trandoshan male
	"object/creature/player/shared_twilek_male.iff", 	// twilek male
	"object/creature/player/shared_bothan_male.iff", 	// bothan male
	"object/creature/player/shared_zabrak_male.iff", 	// zabrak male
	"object/creature/player/shared_rodian_male.iff", 	// rodian male
	"object/creature/player/shared_moncal_male.iff", 	// moncal male
	"object/creature/player/shared_wookiee_male.iff", 	// wookiee male
	"object/creature/player/shared_sullustan_male.iff", 	// sullustan male
	"object/creature/player/shared_ithorian_male.iff", 	// ithorian male
	"object/creature/player/shared_human_female.iff", 	// human female
	"object/creature/player/shared_trandoshan_female.iff", 	// trandoshan female
	"object/creature/player/shared_twilek_female.iff", 	// twilek female
	"object/creature/player/shared_bothan_female.iff", 	// bothan female
	"object/creature/player/shared_zabrak_female.iff", 	// zabrak female
	"object/creature/player/shared_rodian_female.iff", 	// rodian female
	"object/creature/player/shared_moncal_female.iff", 	// moncal female
	"object/creature/player/shared_wookiee_female.iff", 	// wookiee female
	"object/creature/player/shared_sullustan_female.iff", 	// sullustan female
	"object/creature/player/shared_ithorian_female.iff",  	// ithorian female
	"object/creature/player/shared_aqualish_male.iff", 	// aqualish male
	"object/creature/player/shared_aqualish_female.iff", 	// aqualish female
	"object/creature/player/shared_bith_male.iff", 		// bith male
	"object/creature/player/shared_bith_female.iff", 	// bith female
	"object/creature/player/shared_chiss_male.iff", 	// chiss male
	"object/creature/player/shared_chiss_female.iff", 	// chiss female
	"object/creature/player/shared_gotal_male.iff", 	// gotal male
	"object/creature/player/shared_gran_male.iff", 		// gran male
	"object/creature/player/shared_ishi_tib_male.iff", 	// ishi tib male
	"object/creature/player/shared_nautolan_male.iff", 	// nautolan male
	"object/creature/player/shared_nightsister_female.iff", // nightsister female
	"object/creature/player/shared_nikto_male.iff", 	// nikto male
	"object/creature/player/shared_quarren_male.iff", 	// quarren male
	"object/creature/player/shared_smc_female.iff", 	// smc female

};

const static char* CCRaceStrs[] = {
	"object/creature/player/human_male.iff", 	// human male
	"object/creature/player/trandoshan_male.iff", 	// trandoshan male
	"object/creature/player/twilek_male.iff", 	// twilek male
	"object/creature/player/bothan_male.iff", 	// bothan male
	"object/creature/player/zabrak_male.iff", 	// zabrak male
	"object/creature/player/rodian_male.iff", 	// rodian male
	"object/creature/player/moncal_male.iff", 	// moncal male
	"object/creature/player/wookiee_male.iff", 	// wookiee male
	"object/creature/player/sullustan_male.iff", 	// sullustan male
	"object/creature/player/ithorian_male.iff", 	// ithorian male
	"object/creature/player/human_female.iff", 	// human female
	"object/creature/player/trandoshan_female.iff", // trandoshan female
	"object/creature/player/twilek_female.iff", 	// twilek female
	"object/creature/player/bothan_female.iff", 	// bothan female
	"object/creature/player/zabrak_female.iff", 	// zabrak female
	"object/creature/player/rodian_female.iff", 	// rodian female
	"object/creature/player/moncal_female.iff", 	// moncal female
	"object/creature/player/wookiee_female.iff", 	// wookiee female
	"object/creature/player/sullustan_female.iff", 	// sullustan female
	"object/creature/player/ithorian_female.iff",  	// ithorian female
	"object/creature/player/aqualish_male.iff", 	//aqualish male
	"object/creature/player/aqualish_female.iff", 	//aqualish female
	"object/creature/player/bith_male.iff", 	//bith male
	"object/creature/player/bith_female.iff", 	//bith female
	"object/creature/player/chiss_male.iff", 	//chiss male
	"object/creature/player/chiss_female.iff", 	//chiss female
	"object/creature/player/gotal_male.iff", 	//gotal male
	"object/creature/player/gran_male.iff", 	//gran male
	"object/creature/player/ishi_tib_male.iff", 	//ishi tib male
	"object/creature/player/nautolan_male.iff", 	//nautolan male
	"object/creature/player/nightsister_female.iff",//nightsister female
	"object/creature/player/nikto_male.iff", 	//nikto male
	"object/creature/player/quarren_male.iff", 	//quarren male
	"object/creature/player/smc_female.iff", 	//smc female
};

static uint32 SharedRace[] = { //race CRC
	0xAF1DC1A1, // human male
	0x50C45B8F, // trandoshan male
	0xF280E27B, // twi'lek male
	0x5BF77F33, // bothan male
	0xE204A556, // zabrak male
	0x0BF9CD9C, // rodian male
	0xB9C855A8, // moncal male
	0x0564791D, // wookiee male
	0x0B9399A4, // sullustan male
	0x38BAC7C4, // ithorian male
	0xFFFFBBE9, // human female
	0x183C24C6, // trandoshan female
	0x849752DC, // twi'lek female
	0x1D52730E, // bothan female
	0xA9E35FFD, // zabrak female
	0xC264245B, // rodian female
	0x982FBFDE, // moncal female
	0x0DAB65E2, // wookiee female
	0x1573341A, // sullustan female
	0xB3E08013, // ithorian female
	0xCEF4B4A1, // aqualish male
	0xDE63F629, // aqualish female
	0x73C992FF, // bith male
	0xB2C9CBE0, // bith female
	0x02F60EAC, // chiss male
	0x614A1B68, // chiss female
	0x30CFFED2, // gotal male
	0xC2872D34, // gran male
	0x809EF398, // ishi tib male
	0xAB03ACB1, // nautolan male
	0xC56D9790, // nightsister female
	0x59ECB38B, // nikto male
	0x3435F686, // quarren male
	0x82A138F9, // smc female
};


static unsigned int attributeLimits[21][19] = { //HAM
		{400, 1100,	400, 1100,  	400, 1100, 400, 1100, 400, 	1100, 400, 1100,400, 1100, 400,	1100, 400, 	1100, 5400},
		{550, 1250,	600,  800,	700,  800, 300,	1000, 300,  	450, 300,  400,	300, 1000, 300,	 500, 300,	600, 5550},
		{300, 1000,	300,  500,	550,  650, 550,	1250, 600,	750, 300,  400,	400, 1100, 300,	 500, 300,	500, 5400},
		{300, 1000,	300,  500,	300,  400, 600,	1300, 600,	750, 400,  500,	400, 1100, 400,	 600, 300,	500, 5400},
		{500, 1200,	300,  500,	300,  400, 600,	1300, 300,	450, 300,  400,	300, 1000, 300,	 500, 700,	900, 5400},
		{300, 1000,	300,  500,	300,  400, 300,	1200, 300,	650, 450,  850,	300, 1000, 300,	 500, 350,	550, 5400},
		{300, 1000,	300,  500,	300,  400, 300,	1000, 300,	450, 450,  550,	600, 1300, 600,	 800, 450,	650, 5400},
		{650, 1350,	650,  850,	450,  550, 500,	1200, 400,	550, 400,  500,	400, 1100, 450,	 650, 400,	600, 6100},
		{300, 1200,	300,  500,	300,  400, 600,	1400, 300,	750, 300,  500,	400, 1200, 400,	 600, 300,	600, 5400},
		{300, 1400,	300,  600,	300,  500, 600,	1100, 300,	750, 300,  500,	400, 1300, 400,	 600, 300,	500, 5400},
		{400, 1100,	400, 1100,  	400, 1100, 400, 1100, 400, 	1100, 400, 1100,400, 1100, 400,	1100, 400, 	1100, 5400},
		{400, 1100,	400, 1100,  	400, 1100, 400, 1100, 400, 	1100, 400, 1100,400, 1100, 400,	1100, 400, 	1100, 5400},
		{400, 1100,	400, 1100,  	400, 1100, 400, 1100, 400, 	1100, 400, 1100,400, 1100, 400,	1100, 400, 	1100, 5400},
		{400, 1100,	400, 1100,  	400, 1100, 400, 1100, 400, 	1100, 400, 1100,400, 1100, 400,	1100, 400, 	1100, 5400},
		{400, 1100,	400, 1100,  	400, 1100, 400, 1100, 400, 	1100, 400, 1100,400, 1100, 400,	1100, 400, 	1100, 5400},
		{400, 1100,	400, 1100,  	400, 1100, 400, 1100, 400, 	1100, 400, 1100,400, 1100, 400,	1100, 400, 	1100, 5400},
		{400, 1100,	400, 1100,  	400, 1100, 400, 1100, 400, 	1100, 400, 1100,400, 1100, 400,	1100, 400, 	1100, 5400},
		{400, 1100,	400, 1100,  	400, 1100, 400, 1100, 400, 	1100, 400, 1100,400, 1100, 400,	1100, 400, 	1100, 5400},
		{400, 1100,	400, 1100,  	400, 1100, 400, 1100, 400, 	1100, 400, 1100,400, 1100, 400,	1100, 400, 	1100, 5400},
		{400, 1100,	400, 1100,  	400, 1100, 400, 1100, 400, 	1100, 400, 1100,400, 1100, 400,	1100, 400, 	1100, 5400},
		{400, 1100,	400, 1100,  	400, 1100, 400, 1100, 400, 	1100, 400, 1100,400, 1100, 400,	1100, 400, 	1100, 5400},
			
};

class Races {
public:
	inline const static char* getRace(int raceid) {
		if (raceid < 0 || raceid > 34)
			return "";

		return RaceStrs[raceid];
	}

	inline static int getSpeciesID(int raceid) {
		if (raceid < 0 || raceid > 34)
			return 0;

		return TemplateSpecies[raceid];
	}


	inline const static char* getSpecies(int raceid) {
		if (raceid < 0 || raceid > 34)
			return "";

		return Species[raceid];
	}

	inline const static char* getGender(int raceid) {
		if (raceid < 0 || raceid > 34)
			return "";

		return Gender[raceid];
	}

	inline static uint32 getRaceCRC(int raceid) {
		if (raceid < 0 || raceid > 34)
			return 0;

		return SharedRace[raceid];
	}

	inline static const char* getCompleteRace(uint32 sharedRaceCRC) {
		int race = -1;
		for (int i = 0; i < 35; ++i) {
			if (SharedRace[i] == sharedRaceCRC) {
				race = i;
				break;
			}
		}

		if (race == -1)
			return "";
		else
			return CCRaceStrs[race];
	}

	inline static int getRaceID(const String& name) {
    	for (int i = 0; i < 35; i++) {
        	if (strcmp(name.toCharArray(), CCRaceStrs[i]) == 0)
            	return i;
    	}

    	return 0;
	}

	inline static unsigned int * getAttribLimits(int raceid) {
		return attributeLimits[raceid % 21];
	}

};

#endif /*RACES_H_*/

