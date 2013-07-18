/* Segasueños */

#include "ScriptMgr.h"
#include "ScriptedCreature.h"

enum say
{


};

enum spell
{
	RUNIC_LIGHTNING = 62327,
	WYVERN_STING = 26180,
	NOXIOUS_POISON = 26053,
	
};

class sega : public CreatureScript
{
public:
	sega(): CreatureScript("boss_segasuenos") {}
	
	CreatureAI* GetAI(Creature* creature) const
    {
        return new segaAI (creature);
    }
	
	struct segaAI : public ScriptedAI
	{
		segaAI(Creature* creature) : ScriptedAI(creature){}
		
		uint32 runiclinghttemp;
		uint32 wyverstingtemp;
		uint32 noxiouspotemp;

		void Reset()
		{
			runiclinghttemp = 10000;
			wyverstingtemp = 15000;
			noxiouspotemp = 25000;
		}
		
		void EnterCombat(Unit* /*who*/){}
		
		void JustDied(Unit* /*died*/)
		{
			
		}
		
		void UpdateAI(const uint32 diff)
		{
			if (!UpdateVictim())
                return;

			if(runiclinghttemp <= diff){
				if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
					DoCast(target,RUNIC_LIGHTNING);
				runiclinghttemp = 10000;
			}
			else runiclinghttemp -= diff;

			if(wyverstingtemp <= diff){
				for(uint32 i = 0; i <= 3; i++){
					if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0)){
						me->AddAura(WYVERN_STING,target);
					}
				}
				wyverstingtemp = 15000;
			}
			else wyverstingtemp -= diff;

			if(noxiouspotemp <= diff){
				if(Unit* target = me->getVictim())
					DoCast(target,NOXIOUS_POISON);
				noxiouspotemp = 25000;
			}
			else noxiouspotemp -= diff;
			
		
			DoMeleeAttackIfReady();
		}
	};
};

void AddSC_boss_sega()
{
	new sega();
}
