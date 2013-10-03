/*Boss Yamix*/

#include "ScriptPCH.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"

enum spell{

	DUSK_SHROUD = 75476,
	SHADOW_WORD_PAIN = 65541,
	MIND_BLAST = 58850,
	CORRUPTION = 68135,

};

enum summon{

	EGG_YAMIX = 130177,
};

class yamix : public CreatureScript
{
public:
	yamix(): CreatureScript("boss_yamix") {}
	
	CreatureAI* GetAI(Creature* creature) const
    {
        return new yamixAI (creature);
    }
	
	struct yamixAI : public ScriptedAI
	{
		yamixAI(Creature* creature) : ScriptedAI(creature), Summons(me) {}
		
		SummonList Summons;
		uint32 tempSummon;
		uint32 tempshadowpain;
		uint32 tempmindblast;
		uint32 tempcorruption;

		
		void Reset(){ 
			
			tempshadowpain = 5000;
			tempmindblast = 20000;
			tempcorruption = 8000;
			tempSummon = 30000;
			me->RemoveAurasDueToSpell(DUSK_SHROUD);
			Summons.DespawnAll();
			
		}

		void EnterCombat(Unit* /*who*/){ 
			me->AddAura(DUSK_SHROUD,me);
		}
		
		void JustDied(Unit* /*died*/) { 
			
			Summons.DespawnAll();
		}
		
		void JustSummoned(Creature* summoned){
		
			Summons.Summon(summoned);
		
		}
		
		void UpdateAI(const uint32 diff){
		
			if (!UpdateVictim())
                return;
		
			if(tempSummon <= diff){
				if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0)){
					me->SummonCreature(EGG_YAMIX,target->GetPositionX(), target->GetPositionY(), target->GetPositionZ(),TEMPSUMMON_CORPSE_DESPAWN);
				}
				tempSummon = 30000;
			}
			else tempSummon -= diff;
			
			if(tempshadowpain <= diff){
				for(uint32 i = 0; i <= 5; i++){
					if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
						DoCast(target,SHADOW_WORD_PAIN);
				}
				tempshadowpain = 5000;
			}
			else tempshadowpain -= diff;

			if(tempcorruption <= diff){
				for(uint32 i = 0; i <= 5; i++){
					if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
						me->AddAura(CORRUPTION,target);
				}
				tempcorruption = 8000;
			}
			else tempcorruption -= diff;
			
			if(tempmindblast <= diff){
				if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
						DoCast(target,MIND_BLAST);
				tempmindblast = 20000;
			}
			else tempmindblast -= diff;


			DoMeleeAttackIfReady();
		
		}
	};
};

void AddSC_yamix()
{
	new yamix();
};