/*  
Padre crepuscular

*/

#include "ScriptMgr.h"
#include "ScriptedCreature.h"

enum say
{
	SAY_AGRO = 0,
	SAY_ZERRES = 1,
	SAY_ARERES = 2,
	SAY_SEGARES = 3,
	SAY_TRANSFORM = 4,
	SAY_FINAL = 5,
	SAY_DEAD = 6,

};

enum spell
{
	//Padre Crepuscular
	HOLY_FIRE = 66538,
	HOLY_SMITE = 66536,
	SARONITE_BARRIER = 63364,
	SENTINEL_BLAST = 64389,
	TAIL_SWEEP = 55696,
	CONDENATION = 57377,
	FRENZY = 37023,


	//Yamix res
	CRIPPLE = 31477,
	FEAR = 31358,
	SILENCE = 69242,
	DUSK_SHROUD = 75476,

	//Aregos res
	FROSTBOLT = 28478,
	OVERHEAD = 64003,

	//Sega res
	DECREPIT_FEVER = 29998,
	NECROTIC_POISON = 54121,

	//Zertharion res
	FIREBALL = 33051,
};

enum npcobject
{
	SEGASUEÑOS_RES = 130181,
	AREGOS_RES = 130182,
	ZERTHARION_RES = 130183,
	YAMIX_RES = 130184,
	COFRE_NORMAL = 130009,
	COFRE_EXTRA = 130010,
};

enum form
{
	NORMAL = 27898,
	DRAGON = 31952,
};

uint32 sega = 0;
uint32 zertha = 0;
uint32 are = 0;
uint32 yamix = 0;

class father : public CreatureScript
{
public:
	father(): CreatureScript("boss_padre_crepuscular") {}
	
	CreatureAI* GetAI(Creature* creature) const
    {
        return new fatherAI (creature);
    }
	
	struct fatherAI : public ScriptedAI
	{
		fatherAI(Creature* creature) : ScriptedAI(creature), Summons(me) {}
		
		SummonList Summons;
		uint32 phase;
		uint32 holyfiretemp;
		uint32 holysimitetemp;
		uint32 sentinelblasttemp;
		uint32 tailsweeptemp;
		uint32 condenationtemp;
		bool escudo;
		bool draco1;
		bool draco2;
		bool draco3;
		
		void Reset()
		{
			Summons.DespawnAll();
			me->RemoveAurasDueToSpell(SARONITE_BARRIER);
			if(phase == 4 && sega == 1)
				me->SetDisplayId(NORMAL);
				me->RemoveAurasDueToSpell(FRENZY);
			phase = 1;
			bool escudo = false;
			holyfiretemp = 10000;
			holysimitetemp = 15000;
			sentinelblasttemp = 18000;
			tailsweeptemp = 5000;
			condenationtemp = 3000;
			draco1 = false;
			draco2 = false;
			draco3 = false;
			sega = 0;
			zertha = 0;
			are = 0;
			yamix = 0;
		
		}
		
		void EnterCombat(Unit* /*who*/)
		{
			Talk(SAY_AGRO);
				me->SummonCreature(YAMIX_RES,me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(),TEMPSUMMON_CORPSE_DESPAWN);
		}
		
		void JustDied(Unit* /*died*/)
		{	
			Summons.DespawnAll();
		}
		
		void JustSummoned(Creature* summoned){
		
			Summons.Summon(summoned);
		
		}

		void DamageTaken(Unit* /*attacker*/, uint32& damage){

			if (HealthBelowPct(80) && !draco1){
				if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0)){
					Talk(SAY_ZERRES);
					me->SummonCreature(ZERTHARION_RES,target->GetPositionX(), target->GetPositionY(), target->GetPositionZ(),TEMPSUMMON_CORPSE_DESPAWN);
					me->AddAura(SARONITE_BARRIER,me);
					phase = 2;
					escudo = true;
					draco1 = true;
				}
			}

			if (HealthBelowPct(60) && !draco2){
				if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0)){
					Talk(SAY_ARERES);
					me->SummonCreature(AREGOS_RES,target->GetPositionX(), target->GetPositionY(), target->GetPositionZ(),TEMPSUMMON_CORPSE_DESPAWN);
					me->AddAura(SARONITE_BARRIER,me);
					phase = 3;
					escudo = true;
					draco2 = true;
				}
			}
			
			if (HealthBelowPct(40) && !draco3){
				if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0)){
					Talk(SAY_SEGARES);
					me->SummonCreature(SEGASUEÑOS_RES,target->GetPositionX(), target->GetPositionY(), target->GetPositionZ(),TEMPSUMMON_CORPSE_DESPAWN);
					me->AddAura(SARONITE_BARRIER,me);
					phase = 4;
					escudo = true;
					draco3 = true;
				}
			}

			if (HealthBelowPct(2)){
				me->setFaction(35);
				me->CombatStop();
				me->SetTarget(0);
				me->SummonGameObject(COFRE_NORMAL, -9493.60f,2030.27f,105.48f,5.52f, 0, 0, 0, 0, 90000000);
				if(yamix == 0)
					me->SummonGameObject(COFRE_EXTRA, -9493.60f,2030.27f,105.48f,5.52f, 0, 0, 0, 0, 90000000);
				Talk(SAY_FINAL);
				Summons.DespawnAll();
				me->DespawnOrUnsummon();

			}
		}

		void UpdateAI(const uint32 diff)
		{
			if (!UpdateVictim())
                return;

			if(condenationtemp <= diff){
				if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
					DoCast(target,CONDENATION);
				condenationtemp = 3000;
			}
			else condenationtemp -= diff;

			if(holyfiretemp <= diff){
				if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
					DoCast(target,HOLY_FIRE);
				holyfiretemp = 10000;
			}
			else holyfiretemp -= diff;

			if(holysimitetemp <= diff){
				if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
					DoCast(target,HOLY_SMITE);
				holysimitetemp = 15000;
			}
			else holysimitetemp -= diff;

			if(phase == 4){

				if(sentinelblasttemp <=diff){
					if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
						DoCast(target,SENTINEL_BLAST);
					sentinelblasttemp = 18000;
				}
				else sentinelblasttemp -= diff;

				if(tailsweeptemp <= diff){
					if(Unit* target = me->getVictim())
						DoCast(target,TAIL_SWEEP);
					tailsweeptemp = 5000;
				}
				else tailsweeptemp -= diff;
				
			}

			if(phase == 2 && zertha == 1){
				if(escudo){
				me->RemoveAurasDueToSpell(SARONITE_BARRIER);
				escudo = false;
				}
			}
			
			else if (phase == 3 && are == 1){
				if(escudo){
				me->RemoveAurasDueToSpell(SARONITE_BARRIER);
				escudo = false;
				}
			}
			
			else if(phase == 4 && sega == 1){
				if(escudo){
				me->RemoveAurasDueToSpell(SARONITE_BARRIER);
				escudo = false;
				Talk(SAY_TRANSFORM);
				me->AddAura(FRENZY,me);
				me->SetDisplayId(DRAGON);
				}
			}

			

			DoMeleeAttackIfReady();
		}
	};
};

class segares : public CreatureScript
{
public:
	segares(): CreatureScript("boss_segasuenosres") {}
	
	CreatureAI* GetAI(Creature* creature) const
    {
        return new segaresAI (creature);
    }
	
	struct segaresAI : public ScriptedAI
	{
		segaresAI(Creature* creature) : ScriptedAI(creature) {}
		
		uint32 decriptemp;
		uint32 necrotictemp;
		
		void Reset()
		{
			decriptemp = 10000;
			necrotictemp = 5000;
		
		}
		
		void EnterCombat(Unit* /*who*/){}
		
		void JustDied(Unit* /*died*/)
		{
			sega = 1;
		
		}
		
		void UpdateAI(const uint32 diff){
			
			if(decriptemp <= diff){
				if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
					DoCast(target,DECREPIT_FEVER);
				decriptemp = 10000;
			}
			else decriptemp -= diff;

			if(necrotictemp <= diff){
				if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
					DoCast(target,NECROTIC_POISON);
				necrotictemp = 5000;
			}
			else necrotictemp -= diff;
		
			DoMeleeAttackIfReady();
		}
	
	};
};

class areres : public CreatureScript
{
public:
	areres(): CreatureScript("boss_aregosres") {}
	
	CreatureAI* GetAI(Creature* creature) const
    {
        return new areresAI (creature);
    }
	
	struct areresAI : public ScriptedAI
	{
		areresAI(Creature* creature) : ScriptedAI(creature) {}
		
		uint32 frostbolltemp;
		uint32 overheadtemp;

		void Reset()
		{
			frostbolltemp = 5000;
			overheadtemp = 13000;
		}
		
		void EnterCombat(Unit* /*who*/){}
		
		void JustDied(Unit* /*died*/)
		{
			are = 1;
		
		}
		
		void UpdateAI(const uint32 diff){
			
			if(frostbolltemp <= diff){
				if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
					DoCast(target,FROSTBOLT);
				frostbolltemp = 5000;
			}
			else frostbolltemp -= diff;

			if(overheadtemp <= diff){
				if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
					DoCast(target,OVERHEAD);
				overheadtemp = 13000;
			}
			else overheadtemp -= diff;
		
			DoMeleeAttackIfReady();
		}
	
	};
};

class zeres : public CreatureScript
{
public:
	zeres(): CreatureScript("boss_zertharionres") {}
	
	CreatureAI* GetAI(Creature* creature) const
    {
        return new zeresAI (creature);
    }
	
	struct zeresAI : public ScriptedAI
	{
		zeresAI(Creature* creature) : ScriptedAI(creature) {}
		
		uint32 fireball;

		void Reset()
		{
			fireball = 5000;
		
		}
		
		void EnterCombat(Unit* /*who*/){}
		
		void JustDied(Unit* /*died*/)
		{
			zertha = 1;
		
		}
		
		void UpdateAI(const uint32 diff){
			
			if(fireball<= diff){
				if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
					DoCast(target,FIREBALL);
				fireball = 5000;
			}
			else fireball -= diff;
		
			DoMeleeAttackIfReady();
		}
	
	};
};

class yamires : public CreatureScript
{
public:
	yamires(): CreatureScript("boss_yamixres") {}
	
	CreatureAI* GetAI(Creature* creature) const
    {
        return new yamiresAI (creature);
    }
	
	struct yamiresAI : public ScriptedAI
	{
		yamiresAI(Creature* creature) : ScriptedAI(creature) {}
		
		uint32 crippletemp;
		uint32 feartemp;
		uint32 silencetemp;

		void Reset()
		{
			crippletemp = 10000;
			feartemp = 5000;
			silencetemp = 15000;
			me->RemoveAurasDueToSpell(DUSK_SHROUD);
		
		}
		
		void EnterCombat(Unit* /*who*/)
		{
			me->AddAura(DUSK_SHROUD,me);
		}
		
		void JustDied(Unit* /*died*/)
		{
			yamix = 1;
		
		}
		
		void UpdateAI(const uint32 diff){
			
			if(crippletemp <= diff){
				if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
					DoCast(target,CRIPPLE);
				crippletemp = 10000;
			}
			else crippletemp -= diff;

			if(feartemp <= diff){
				for(uint32 i = 0; i <=4; i++){
					if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
						DoCast(target,FEAR);
					feartemp = 5000;
				}
			}
			else feartemp -= diff;

			if(silencetemp <= diff){
				for(uint32 a = 0; a<=4; a++){
					if(Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
						me->AddAura(SILENCE,target);
					silencetemp = 20000;
				}
			}
			else silencetemp -= diff;

			DoMeleeAttackIfReady();
		}
	
	};
};

void AddSC_boss_father()
{
	new father();
	new segares();
	new areres();
	new zeres();
	new yamires();
}