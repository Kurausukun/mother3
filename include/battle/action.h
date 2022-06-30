#ifndef BATTLE_action_H
#define BATTLE_action_H

#include "base.h"
#include "battle/archive.h"
#include "battle/unit.h"
#include "structs.h"

class Action : public Base {
public:
    Action() {}
    Action(Unit* user);
    virtual ~Action();

    virtual void action_68();
    virtual void action_70();
    virtual void playSfx();
    virtual void tellUseMessage();
    virtual void playDim();
    virtual void playAnim();
    virtual void action_a0(Unit* target);
    virtual u8 calcDidHit(Unit* target);
    virtual void tellMissed(Unit* target);
    virtual bool isResisted(Unit* target);
    virtual void tellResisted(Unit* target);
    virtual void doHit(Unit* target);
    virtual void action_d0(Unit* target);
    virtual s32 action_d8(Unit* user, Unit* target);
    virtual void action_e0(Unit* target);
    virtual s32 action_e8(Unit*, Unit*);
    virtual bool calcCrit(Unit* target);
    virtual void action_f8(Unit* target);
    virtual void onNoEffect(Unit* target);
    virtual void action_108(Unit* target);
    virtual void onSuccess(Unit* target);
    virtual void action_118(Unit* target);
    virtual bool calcStatusInflict(Unit* target, u16 status, s32 chance, bool unk);
    virtual void onFail(Unit* target);
    virtual bool action_130(Unit* target, u16 status, s32 chance, bool unk);
    virtual void action_138(Unit* target, bool crit);
    virtual void action_140();
    virtual void action_148();
    virtual void action_150();
    virtual Msg createMsg(u16) const;
    virtual Msg action_160(u16, const Msg&) const;
    virtual Unit* getUser() const;
    virtual Unit* addTarget(Unit* target);
    virtual bool removeTarget(Unit* target);
    virtual void clearTargets();
    virtual s32 numTargets() const;
    virtual Unit* getTarget(s32) const;
    virtual s32 getTargetIdx(Unit* target) const;
    virtual bool action_1a0();
    virtual void action_1a8();
    virtual bool action_1b0();
    virtual bool action_1b8();

    virtual Action* action_1c0() = 0;
    virtual u16 id() const = 0;
    virtual Msg name() const = 0;
    virtual Msg action_1d8() const = 0;
    //
    virtual Msg action_fixme(s32 idx);

    virtual u32 action_1e0() = 0;
    virtual u32 effect() const = 0;
    virtual u32 element() const = 0;
    virtual u32 target() const = 0;
    virtual u32 attackMult() const = 0;
    virtual s32 healLo() const = 0;
    virtual s32 healHi() const = 0;
    virtual u16 ailment() const = 0;
    virtual u32 ailmentChance() const = 0;
    virtual u8 hasAction() const = 0;
    virtual u32 priority() const = 0;
    virtual Msg getUseMessage() const = 0;
    virtual Msg getForceUseMessage() const = 0;
    virtual bool hasDim() const = 0;
    virtual u16 animNo() const = 0;
    virtual u16 successAnimNo() const = 0;
    virtual u16 nextAnim() const = 0;
    virtual u32 sfxNo() const = 0;
    virtual s32 hitChance() const = 0;
    virtual s32 critChance() const = 0;
    virtual bool redirectable() const = 0;
    virtual u32 action_288() = 0;
    virtual u32 action_290() = 0;
    virtual u32 action_298() = 0;

    bool fieldSet(s32 value, bool force);

    Unit* _20;
    Unit* mUser;
    Vector<Unit*> mPrevTargets;
    Vector<Unit*> mNextTargets;
    u32 _40;
    u8 _44;
};

struct MonsterSkillData {
    u16 id;
    u16 pp_cost;
    u16 recolor_value;
    s16 has_sound;
    MoveInfo move;
};

struct EffectType {
    enum {
        Damage = 0x0,
        Attack = 0x1,
        PsiDamage = 0x2,
        HealHP = 0x3,
        HealHP2 = 0x4,
        PPHeal = 0x5,
        StatusChange = 0x6,
        None = 0x7,
        Misc = 0x8,
    };
};

extern "C" void sub_08077D8C(Action*, u32);

#endif  // BATTLE_action_H
