#include "battle/action.h"
#include "battle/guestSkill.h"
#include "enums.h"

extern "C" const GuestSkillInfo gPlayerSkillData[] = {
    {
        /*      ID */ 0x0,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x276,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x1,
        /*  EFFECT */ EffectType::Attack,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::ChooseOneEnemy,

        /* ATK MUL */ 0x32,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x277,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ Animation::Hit,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x3,
        /* REDIR 1 */ 0x1,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x2,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ Status::Defense,
        /* STATUS% */ 0x64,
        /*  ACTION */ 0x1,
        /*    PRIO */ 0x1,
        /*  MSG NO */ 0x278,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x3,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x0,
        /*  MSG NO */ 0x279,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x4,
        /*  EFFECT */ EffectType::Attack,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::ChooseOneEnemy,

        /* ATK MUL */ 0x9,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x277,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x1,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x1,
        /* REDIR 1 */ 0x1,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x5,
        /*  EFFECT */ EffectType::Attack,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::RandomAny,

        /* ATK MUL */ 0x32,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x27b,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x49,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x4,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x6,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x27d,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x7,
        /*  EFFECT */ EffectType::Attack,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::ChooseOneEnemy,

        /* ATK MUL */ 0x32,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x27e,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x1,
        /*   SOUND */ 0x0,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x8,
        /*  EFFECT */ EffectType::Attack,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::ChooseOneEnemy,

        /* ATK MUL */ 0x32,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x27f,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ Animation::Hit,
        /*   SOUND */ 0x0,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x9,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x276,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0xa,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x285,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0xb,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x286,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0xc,
        /*  EFFECT */ EffectType::Damage,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::ChooseOneEnemy,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0xc4,
        /* HEAL HI */ 0xcc,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x286,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ Animation::CritHit,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0xd,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x288,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0xe,
        /*  EFFECT */ EffectType::Damage,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::ChooseOneEnemy,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0xba,
        /* HEAL HI */ 0xc0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x288,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ Animation::CritHit,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0xf,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x28a,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x10,
        /*  EFFECT */ EffectType::Damage,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::ChooseOneEnemy,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0xe0,
        /* HEAL HI */ 0xec,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x28a,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ Animation::CritHit,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x11,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x28c,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x12,
        /*  EFFECT */ EffectType::Damage,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::ChooseOneEnemy,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x106,
        /* HEAL HI */ 0x112,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x28c,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ Animation::CritHit,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x13,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x28e,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x14,
        /*  EFFECT */ EffectType::Damage,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::ChooseOneEnemy,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x270,
        /* HEAL HI */ 0x278,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x28e,
        /* DIMMING */ 0x1,
        /*  SEQ NO */ Animation::PencilRocket,
        /* SEQ NO2 */ Animation::QuickWhiteFlash,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x15,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x290,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x16,
        /*  EFFECT */ ElementType::None,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::ChooseOneEnemy,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x102,
        /* HEAL HI */ 0x109,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x290,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ Animation::CritHit,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x17,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x292,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x18,
        /*  EFFECT */ EffectType::Damage,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::ChooseOneEnemy,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x361,
        /* HEAL HI */ 0x36a,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x292,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ Animation::CritHit,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x19,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x282,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x1a,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x276,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x1b,
        /*  EFFECT */ EffectType::Attack,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::ChooseOneEnemy,

        /* ATK MUL */ 0x32,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x277,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ Animation::Hit,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x3,
        /* REDIR 1 */ 0x1,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x1c,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x276,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x1d,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x276,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x1e,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x278,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x1f,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x1d8,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x20,
        /*  EFFECT */ EffectType::Attack,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::AllEnemies,

        /* ATK MUL */ 0x2d,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x1dd,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ Animation::Hit,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x4,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x1,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x21,
        /*  EFFECT */ EffectType::Attack,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::RandomEnemy,

        /* ATK MUL */ 0xfa,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x1dc,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ Animation::CritHit,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x46,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x1,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x22,
        /*  EFFECT */ EffectType::StatusChange,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ Status::MonkeyDanceOff,
        /* STATUS% */ 0x64,
        /*  ACTION */ 0x1,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x1e3,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x23,
        /*  EFFECT */ EffectType::StatusChange,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ Status::MonkeyDanceDef,
        /* STATUS% */ 0x64,
        /*  ACTION */ 0x1,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x1e4,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x24,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x238,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x25,
        /*  EFFECT */ EffectType::StatusChange,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::ChooseOneEnemy,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ Status::Stapled,
        /* STATUS% */ 0x64,
        /*  ACTION */ 0x1,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x239,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ Animation::WallStaples,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x1,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x26,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::ChooseOneEnemy,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x23a,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ Animation::_B8,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x1,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x27,
        /*  EFFECT */ EffectType::StatusChange,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::ChooseOneEnemy,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ Status::Sleep,
        /* STATUS% */ 0x55,
        /*  ACTION */ 0x1,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x23b,
        /* DIMMING */ 0x1,
        /*  SEQ NO */ Animation::Pendulum,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x1,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x28,
        /*  EFFECT */ EffectType::StatusChange,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::ChooseOneEnemy,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ Status::Crying,
        /* STATUS% */ 0x55,
        /*  ACTION */ 0x1,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x23c,
        /* DIMMING */ 0x1,
        /*  SEQ NO */ Animation::MonsterEfcF,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x1,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x29,
        /*  EFFECT */ EffectType::StatusChange,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::ChooseOneEnemy,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ Status::OffDownWeak,
        /* STATUS% */ 0x46,
        /*  ACTION */ 0x1,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x23d,
        /* DIMMING */ 0x1,
        /*  SEQ NO */ Animation::TickleStick,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x1,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x2a,
        /*  EFFECT */ EffectType::StatusChange,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::ChooseOneEnemy,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ Status::DefDownWeak,
        /* STATUS% */ 0x46,
        /*  ACTION */ 0x1,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x23e,
        /* DIMMING */ 0x1,
        /*  SEQ NO */ Animation::TickleStickLong,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x1,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x2b,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x1e6,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x2c,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::ChooseOneEnemy,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x1e7,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x1,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x2d,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x24f,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x2e,
        /*  EFFECT */ EffectType::StatusChange,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::ChooseOneEnemy,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ Status::Apologetic,
        /* STATUS% */ 0x64,
        /*  ACTION */ 0x1,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x24f,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x1,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x2f,
        /*  EFFECT */ EffectType::StatusChange,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::ChooseOneEnemy,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ Status::Laughing,
        /* STATUS% */ 0x64,
        /*  ACTION */ 0x1,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x24f,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x1,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x30,
        /*  EFFECT */ EffectType::StatusChange,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::RandomAny,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x64,
        /*  ACTION */ 0x1,
        /*    PRIO */ 0x2,
        /*  MSG NO */ 0x264,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x1,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x31,
        /*  EFFECT */ EffectType::Misc,
        /* ELEMENT */ ElementType::None,
        /*  TARGET */ TargetType::Self,

        /* ATK MUL */ 0x0,
        /* HEAL LO */ 0x0,
        /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0,
        /* STATUS% */ 0x0,
        /*  ACTION */ 0x0,
        /*    PRIO */ 0x1,
        /*  MSG NO */ 0x265,
        /* DIMMING */ 0x0,
        /*  SEQ NO */ 0x0,
        /* SEQ NO2 */ 0x0,
        /*   SOUND */ SFX_PLAYER_ATTACK,
        /*  MISS % */ 0x0,
        /* SMASH % */ 0x0,
        /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x0, /*  EFFECT */ 0x0, /* ELEMENT */ 0x0, /*  TARGET */ 0x0,
        /* ATK MUL */ 0x0, /* HEAL LO */ 0x0, /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0, /* STATUS% */ 0x0, /*  ACTION */ 0x0, /*    PRIO */ 0x0,
        /*  MSG NO */ 0x0, /* DIMMING */ 0x0, /*  SEQ NO */ 0x0, /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0, /*  MISS % */ 0x0, /* SMASH % */ 0x0, /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x0, /*  EFFECT */ 0x0, /* ELEMENT */ 0x0, /*  TARGET */ 0x0,
        /* ATK MUL */ 0x0, /* HEAL LO */ 0x0, /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0, /* STATUS% */ 0x0, /*  ACTION */ 0x0, /*    PRIO */ 0x0,
        /*  MSG NO */ 0x0, /* DIMMING */ 0x0, /*  SEQ NO */ 0x0, /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0, /*  MISS % */ 0x0, /* SMASH % */ 0x0, /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x0, /*  EFFECT */ 0x0, /* ELEMENT */ 0x0, /*  TARGET */ 0x0,
        /* ATK MUL */ 0x0, /* HEAL LO */ 0x0, /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0, /* STATUS% */ 0x0, /*  ACTION */ 0x0, /*    PRIO */ 0x0,
        /*  MSG NO */ 0x0, /* DIMMING */ 0x0, /*  SEQ NO */ 0x0, /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0, /*  MISS % */ 0x0, /* SMASH % */ 0x0, /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x0, /*  EFFECT */ 0x0, /* ELEMENT */ 0x0, /*  TARGET */ 0x0,
        /* ATK MUL */ 0x0, /* HEAL LO */ 0x0, /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0, /* STATUS% */ 0x0, /*  ACTION */ 0x0, /*    PRIO */ 0x0,
        /*  MSG NO */ 0x0, /* DIMMING */ 0x0, /*  SEQ NO */ 0x0, /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0, /*  MISS % */ 0x0, /* SMASH % */ 0x0, /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x0, /*  EFFECT */ 0x0, /* ELEMENT */ 0x0, /*  TARGET */ 0x0,
        /* ATK MUL */ 0x0, /* HEAL LO */ 0x0, /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0, /* STATUS% */ 0x0, /*  ACTION */ 0x0, /*    PRIO */ 0x0,
        /*  MSG NO */ 0x0, /* DIMMING */ 0x0, /*  SEQ NO */ 0x0, /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0, /*  MISS % */ 0x0, /* SMASH % */ 0x0, /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x0, /*  EFFECT */ 0x0, /* ELEMENT */ 0x0, /*  TARGET */ 0x0,
        /* ATK MUL */ 0x0, /* HEAL LO */ 0x0, /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0, /* STATUS% */ 0x0, /*  ACTION */ 0x0, /*    PRIO */ 0x0,
        /*  MSG NO */ 0x0, /* DIMMING */ 0x0, /*  SEQ NO */ 0x0, /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0, /*  MISS % */ 0x0, /* SMASH % */ 0x0, /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x0, /*  EFFECT */ 0x0, /* ELEMENT */ 0x0, /*  TARGET */ 0x0,
        /* ATK MUL */ 0x0, /* HEAL LO */ 0x0, /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0, /* STATUS% */ 0x0, /*  ACTION */ 0x0, /*    PRIO */ 0x0,
        /*  MSG NO */ 0x0, /* DIMMING */ 0x0, /*  SEQ NO */ 0x0, /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0, /*  MISS % */ 0x0, /* SMASH % */ 0x0, /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x0, /*  EFFECT */ 0x0, /* ELEMENT */ 0x0, /*  TARGET */ 0x0,
        /* ATK MUL */ 0x0, /* HEAL LO */ 0x0, /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0, /* STATUS% */ 0x0, /*  ACTION */ 0x0, /*    PRIO */ 0x0,
        /*  MSG NO */ 0x0, /* DIMMING */ 0x0, /*  SEQ NO */ 0x0, /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0, /*  MISS % */ 0x0, /* SMASH % */ 0x0, /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x0, /*  EFFECT */ 0x0, /* ELEMENT */ 0x0, /*  TARGET */ 0x0,
        /* ATK MUL */ 0x0, /* HEAL LO */ 0x0, /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0, /* STATUS% */ 0x0, /*  ACTION */ 0x0, /*    PRIO */ 0x0,
        /*  MSG NO */ 0x0, /* DIMMING */ 0x0, /*  SEQ NO */ 0x0, /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0, /*  MISS % */ 0x0, /* SMASH % */ 0x0, /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x0, /*  EFFECT */ 0x0, /* ELEMENT */ 0x0, /*  TARGET */ 0x0,
        /* ATK MUL */ 0x0, /* HEAL LO */ 0x0, /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0, /* STATUS% */ 0x0, /*  ACTION */ 0x0, /*    PRIO */ 0x0,
        /*  MSG NO */ 0x0, /* DIMMING */ 0x0, /*  SEQ NO */ 0x0, /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0, /*  MISS % */ 0x0, /* SMASH % */ 0x0, /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x0, /*  EFFECT */ 0x0, /* ELEMENT */ 0x0, /*  TARGET */ 0x0,
        /* ATK MUL */ 0x0, /* HEAL LO */ 0x0, /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0, /* STATUS% */ 0x0, /*  ACTION */ 0x0, /*    PRIO */ 0x0,
        /*  MSG NO */ 0x0, /* DIMMING */ 0x0, /*  SEQ NO */ 0x0, /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0, /*  MISS % */ 0x0, /* SMASH % */ 0x0, /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x0, /*  EFFECT */ 0x0, /* ELEMENT */ 0x0, /*  TARGET */ 0x0,
        /* ATK MUL */ 0x0, /* HEAL LO */ 0x0, /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0, /* STATUS% */ 0x0, /*  ACTION */ 0x0, /*    PRIO */ 0x0,
        /*  MSG NO */ 0x0, /* DIMMING */ 0x0, /*  SEQ NO */ 0x0, /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0, /*  MISS % */ 0x0, /* SMASH % */ 0x0, /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x0, /*  EFFECT */ 0x0, /* ELEMENT */ 0x0, /*  TARGET */ 0x0,
        /* ATK MUL */ 0x0, /* HEAL LO */ 0x0, /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0, /* STATUS% */ 0x0, /*  ACTION */ 0x0, /*    PRIO */ 0x0,
        /*  MSG NO */ 0x0, /* DIMMING */ 0x0, /*  SEQ NO */ 0x0, /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0, /*  MISS % */ 0x0, /* SMASH % */ 0x0, /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
    {
        /*      ID */ 0x0, /*  EFFECT */ 0x0, /* ELEMENT */ 0x0, /*  TARGET */ 0x0,
        /* ATK MUL */ 0x0, /* HEAL LO */ 0x0, /* HEAL HI */ 0x0,
        /*  STATUS */ 0x0, /* STATUS% */ 0x0, /*  ACTION */ 0x0, /*    PRIO */ 0x0,
        /*  MSG NO */ 0x0, /* DIMMING */ 0x0, /*  SEQ NO */ 0x0, /* SEQ NO2 */ 0x0,
        /*   SOUND */ 0x0, /*  MISS % */ 0x0, /* SMASH % */ 0x0, /* REDIR 1 */ 0x0,
        /* REDIR 2 */ 0x0,
    },
};
