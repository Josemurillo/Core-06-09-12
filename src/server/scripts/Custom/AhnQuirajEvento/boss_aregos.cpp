/* Aregos */

#include "ScriptMgr.h"
#include "ScriptedCreature.h"

enum say
{


};

enum spell
{
	ARCANE_STORM = 61693,
	CHILLING_WAVE = 68778,
	SHADOW_LANCE = 69058,

};

class are : public CreatureScript
{
public:
	are(): CreatureScript("boss_aregos") {}
	
	CreatureAI* GetAI(Creature* creature) const
    {
        return new areAI (creature);
    }
	
	struct areAI : public ScriptedAI
	{
		areAI(Creature* creature) : ScriptedAI(creature){}
		
		uint32 arcanestormtemp;
		uint32 chillingwavtemp;
		uint32 shadowlancetemp;
		
		void Reset()
		{
			arcanestormtemp = 20000;
			chillingwavtemp = 12000;
			shadowlancetemp = 5000;
			
		}
		
		void EnterCombat(Unit* /*who*/){}
		
		void JustDied(Unit* /*died*/)
		{
			
		}
		
		void UpdateAI(const uint32 diff)
		{
			if (!UpdateVictim())
                return;
			
			if(arcanestormtemp <= diff){
				if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
					DoCast(target,ARCANE_STORM);
				arcanestormtemp = 20000;
			}
			else arcanestormtemp -= diff;

			if(chillingwavtemp <= diff){
				if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
					DoCast(target,CHILLING_WAVE);
				chillingwavtemp = 12000;
			}
			else chillingwavtemp -= diff;

			if(shadowlancetemp <= diff){
				if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
					DoCast(target,SHADOW_LANCE);
				shadowlancetemp = 5000;
			}
			else shadowlancetemp -= diff;
		
			DoMeleeAttackIfReady();
		
		}
	};
};

void AddSC_boss_aregos()
{
	new are();
}

