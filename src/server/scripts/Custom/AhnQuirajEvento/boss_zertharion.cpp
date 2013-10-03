/* Boss Zertharion */

#include "ScriptPCH.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"

enum spell {

	LAVA_BURST = 59519,
	FLAME_BREATH = 18435,
	TAIL_LASH = 56910,
	PYROBUFFET = 57557,
	BERSERK = 61632,

};

enum Says{
	
	SAY_AGRO = 0,
	SAY_DIE = 1,
};

Position const fly = {-8510.84f,1548.56f,65.72f,5.8f};

class zertharion : public CreatureScript
{
public:

	zertharion(): CreatureScript("boss_zertharion"){ }

	CreatureAI* GetAI(Creature* creature) const
    {
        return new zertharionAI (creature);
    }

	struct zertharionAI : public ScriptedAI
	{
		zertharionAI(Creature* creature) : ScriptedAI(creature) {}

		uint32 lavaburstime;
		uint32 flamebreathtime; 
		uint32 taillashtime;
		uint32 pyrobuffettime;
		uint32 berserktime;
		uint32 phase;
		
		void Reset(){ 
		
			lavaburstime = 10000;
			flamebreathtime = 22000;
			taillashtime = 15000;
			pyrobuffettime = 5000;
			berserktime = 480000;
			phase = 1;
			me->RemoveAurasDueToSpell(BERSERK);
		}

		void EnterCombat(Unit* /*who*/){ 
			
			Talk(SAY_AGRO);
		}

		void JustDied(Unit* /*died*/) { 
			
			Talk(SAY_DIE);
		}

		void DamageTaken(Unit* /*attacker*/, uint32& damage){
			if (me->HealthBelowPctDamaged(30, damage)){
				phase = 2;
				me->GetMotionMaster()->MovePoint(0,fly);
			}
		}

		void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;


			if(lavaburstime <= diff){
				if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(target, LAVA_BURST);
				lavaburstime = 10000;
			}
			else lavaburstime -= diff;

			if (phase == 1) {
			
				if(flamebreathtime <= diff){
					DoCast(me->getVictim(),FLAME_BREATH);
					flamebreathtime = 22000;
				}
				else flamebreathtime -= diff;
				
				if(taillashtime <= diff){
					if(Unit* target = me->getVictim())
						DoCast(target,TAIL_LASH);
					taillashtime = 15000;
				}
				else taillashtime -= diff;
			
			}
			
			if(phase == 2){
				
				if(pyrobuffettime <= diff){
					if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
						DoCast(target, PYROBUFFET);
					pyrobuffettime = 5000;
				}
				else pyrobuffettime -= diff;
			}
			
			if(berserktime <= diff){
				me->AddAura(BERSERK,me);
			}
			else berserktime -= diff;

			DoMeleeAttackIfReady();
		}
	};
};

void AddSC_zertharion()
{
	new zertharion();

};
