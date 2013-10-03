/* Cromatus */

#include "ScriptPCH.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"

enum say
{


};

enum spell
{

	BROOD_AFFLICTION_BLUE = 23153,
	BROOD_AFFLICTION_BLACK = 23154,
	BROOD_AFFLICTION_GREEND = 23169,
	BROOD_AFFLICTION_RED = 23155,
	WILD_MAGIC_RED = 45002,
	WILD_MAGIC_PURPLE = 45001,
	WILD_MAGIC_BLACK = 45006,
	SANDBAG = 29673,
	FROST_BREATH = 69771,
	ACCID_BREATH = 62315,
	FIRE_BREATH = 57801,
};

class cromatus : public CreatureScript
{
public:
	cromatus(): CreatureScript("boss_cromatus") {}
	
	CreatureAI* GetAI(Creature* creature) const
    {
        return new cromatusAI (creature);
    }
	
	struct cromatusAI : public ScriptedAI
	{
		cromatusAI(Creature* creature) : ScriptedAI(creature){}
		
		uint32 aflicctiontime;
		uint32 sandbagtime;
		uint32 alienttime;
		uint32 phase;
		
		void Reset()
		{	
			phase = 1;
			aflicctiontime = 7000;
			alienttime = 10000;
		
		}
		
		void EnterCombat(Unit* /*who*/){}
		
		void JustDied(Unit* /*died*/){}

		void DamageTaken(Unit* /*attacker*/, uint32& damage){
			if(HealthBelowPct(75)){
				phase = 2;
			}

			if(HealthBelowPct(50)){
				phase = 3;
			}

			if(HealthBelowPct(25)){
				phase = 4;
			}
		}
		
		void UpdateAI(const uint32 diff)
		{
		
			if (!UpdateVictim())
                return;
			
			if(aflicctiontime <= diff){
				for(uint32 i = 0; i<= 7; i++){
					if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0)){
						switch(i){
							case 1:
								DoCast(target,BROOD_AFFLICTION_BLUE);
								break;
							case 2:
								DoCast(target,BROOD_AFFLICTION_BLACK);
								break;
							case 3:
								DoCast(target,BROOD_AFFLICTION_GREEND);
								break;
							case 4:
								DoCast(target,BROOD_AFFLICTION_RED);
								break;
							case 5:
								DoCast(target,WILD_MAGIC_PURPLE);
								break;
							case 6:
								DoCast(target,WILD_MAGIC_BLACK);
								break;
							case 7:
								DoCast(target,WILD_MAGIC_RED);
								break;
							default:
								break;
						}		
					}
				}
				aflicctiontime = 2000;
			}
			else aflicctiontime -=diff;


			if(phase == 1){
				if(alienttime <= diff){
					if(Unit* target = me->getVictim()){
						DoCast(target,SANDBAG);
					}
					alienttime = 10000;
				}
				else alienttime -= diff;
			}

			if(phase == 2){
				if(alienttime <= diff){
					if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0)){
						DoCast(target,FROST_BREATH);
					}
					alienttime = 10000;
				}	
				else alienttime -= diff;
			}

			if(phase == 3){
				if(alienttime <= diff){
					if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0)){
						DoCast(target,ACCID_BREATH);
					}
					alienttime = 10000;
				}
				else alienttime -= diff;
			}

			if(phase == 4){
				if(alienttime <= diff){
					if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0)){
						DoCast(target,FIRE_BREATH);
					}
					alienttime = 10000;
				}
				else alienttime -= diff;
			}


			DoMeleeAttackIfReady();
		
		
		}
	
	};
};

void AddSC_boss_cromatus()
{
	new cromatus();
}