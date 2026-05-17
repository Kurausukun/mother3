#include "battle/action.h"
#include "enums.h"

extern "C" const MonsterSkillInfo gMonsterSkillData[] = {
	{
		/*       ID       */                0x0, /*    PP_COST     */                0x0, /* RECOLOR_VALUE  */                0x0,
		/*   HAS_SOUND    */                0x0, /*     EFFECT     */ EffectType::Attack, /*    ELEMENT     */  ElementType::None,
		/*     TARGET     */   TargetType::Self, /*    ATK_MULT    */                0x0, /*    HEAL_LO     */                0x0,
		/*    HEAL_HI     */                0x0, /*    AILMENT     */                0x0, /* AILMENT_CHANCE */                0x0,
		/*     ACTION     */                0x0, /*    PRIORITY    */                0x0, /*     MSG_NO     */              0x2DF,
		/*    HAS_DIM     */                0x0, /*    ANIM_NO     */    Animation::None, /*  ANIM_SUCCESS  */    Animation::None,
		/*     SFX_NO     */           SFX_NULL, /*  MISS_CHANCE   */                0x0, /*  SMASH_CHANCE  */                0x0,
		/*  REDIRECTABLE  */                0x0, /* REDIRECTABLE2  */                0x0
	},
	{
		/*       ID       */               0x1, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */               0x0,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3FA,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                    0x2, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0xF, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E0,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x3, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0xA, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E1,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x4, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x14, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E2,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x5, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E3,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x6, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E4,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x7, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x28, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E5,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0xA, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x8, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E6,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x9, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x14, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E7,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0xA, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E8,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0xB, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E9,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0xC, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2EA,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0xD, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2EB,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0xE, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2EC,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0xF, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x28, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2ED,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0xA, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0x10, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x14, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2EE,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0x11, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2EF,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0x12, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2F0,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0x13, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0xF, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2F1,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0x14, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0xF, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2F2,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                     0x15, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x0, /* AILMENT_CHANCE */                      0x0,
		/*     ACTION     */                      0x0, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x4CA,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                   0x16, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x28, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x4B1,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0x17, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x14, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2F5,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0x18, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x14, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2F6,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0x19, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2F7,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0x1A, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2F8,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0x1B, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x23, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2F9,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0x1C, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x14, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2FA,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0x1D, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x28, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2FB,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0xA, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0x1E, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x28, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2FC,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0xA, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0x1F, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                   0x10,
		/*    HEAL_HI     */                   0x12, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2FD,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */        Animation::Beam, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0xA, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0x20, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                   0x43,
		/*    HEAL_HI     */                   0x48, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2FE,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */        Animation::Beam, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                        0x21, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */      ElementType::Explosion,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x3A,
		/*    HEAL_HI     */                        0x44, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x2FF,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */     Animation::MonsterThrow, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x4, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */              0x22, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x450,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                   0x23, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                   0x44,
		/*    HEAL_HI     */                   0x50, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2FD,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */        Animation::Beam, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0x24, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0xF, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x1, /* AILMENT_CHANCE */                   0x46,
		/*     ACTION     */                    0x1, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x302,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                     0x25, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                     -0x1, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x1, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x303,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */      Animation::NoEffect,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x26, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x1, /* AILMENT_CHANCE */                     0x3C,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x304,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::MonsterEfcA, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x27, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x2, /* AILMENT_CHANCE */                     0x28,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x305,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */    Animation::WhirlpoolA, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                   0x28, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x48,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x5, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x2, /* AILMENT_CHANCE */                   0x28,
		/*     ACTION     */                    0x1, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x306,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                     0x29, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x7, /* AILMENT_CHANCE */                     0x3C,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x307,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */      Animation::NoEffect,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                       0x2A, /*    PP_COST     */                        0x8, /* RECOLOR_VALUE  */                       0x47,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */   EffectType::StatusChange, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */     TargetType::RandomAlly, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                        0x0,
		/*    HEAL_HI     */                        0x0, /*    AILMENT     */                        0x2, /* AILMENT_CHANCE */                       0x28,
		/*     ACTION     */                        0x1, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x308,
		/*    HAS_DIM     */                        0x1, /*    ANIM_NO     */ Animation::CounterHitFlash, /*  ANIM_SUCCESS  */            Animation::None,
		/*     SFX_NO     */              SFX_ENEMY_PSI, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x1, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                      0x2B, /*    PP_COST     */                       0x6, /* RECOLOR_VALUE  */                      0x47,
		/*   HAS_SOUND    */                       0x0, /*     EFFECT     */  EffectType::StatusChange, /*    ELEMENT     */         ElementType::None,
		/*     TARGET     */    TargetType::RandomAlly, /*    ATK_MULT    */                       0x0, /*    HEAL_LO     */                       0x0,
		/*    HEAL_HI     */                       0x0, /*    AILMENT     */                       0x3, /* AILMENT_CHANCE */                      0x46,
		/*     ACTION     */                       0x1, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x30D,
		/*    HAS_DIM     */                       0x1, /*    ANIM_NO     */ Animation::ShieldHitFlash, /*  ANIM_SUCCESS  */           Animation::None,
		/*     SFX_NO     */             SFX_ENEMY_PSI, /*  MISS_CHANCE   */                       0x0, /*  SMASH_CHANCE  */                       0x0,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */                     0x2C, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x3, /* AILMENT_CHANCE */                     0x32,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x30A,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */       Animation::PsiBeam, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                        0x2D, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                         0x0,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */           ElementType::Fire,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0xB0,
		/*    HEAL_HI     */                        0xB6, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x354,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */     Animation::SelfDestruct, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                     0x2E, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x3, /* AILMENT_CHANCE */                     0x32,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x30C,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::MonsterEfcC, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                      0x2F, /*    PP_COST     */                       0x6, /* RECOLOR_VALUE  */                      0x47,
		/*   HAS_SOUND    */                       0x0, /*     EFFECT     */  EffectType::StatusChange, /*    ELEMENT     */         ElementType::None,
		/*     TARGET     */    TargetType::RandomAlly, /*    ATK_MULT    */                       0x0, /*    HEAL_LO     */                       0x0,
		/*    HEAL_HI     */                       0x0, /*    AILMENT     */                       0x3, /* AILMENT_CHANCE */                      0x46,
		/*     ACTION     */                       0x1, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x30D,
		/*    HAS_DIM     */                       0x1, /*    ANIM_NO     */ Animation::ShieldHitFlash, /*  ANIM_SUCCESS  */           Animation::None,
		/*     SFX_NO     */             SFX_ENEMY_PSI, /*  MISS_CHANCE   */                       0x0, /*  SMASH_CHANCE  */                       0x0,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */                      0x30, /*    PP_COST     */                      0x12, /* RECOLOR_VALUE  */                      0x47,
		/*   HAS_SOUND    */                       0x0, /*     EFFECT     */  EffectType::StatusChange, /*    ELEMENT     */         ElementType::None,
		/*     TARGET     */     TargetType::AllAllies, /*    ATK_MULT    */                       0x0, /*    HEAL_LO     */                       0x0,
		/*    HEAL_HI     */                       0x0, /*    AILMENT     */                       0x3, /* AILMENT_CHANCE */                      0x32,
		/*     ACTION     */                       0x1, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x30E,
		/*    HAS_DIM     */                       0x1, /*    ANIM_NO     */ Animation::ShieldHitFlash, /*  ANIM_SUCCESS  */           Animation::None,
		/*     SFX_NO     */             SFX_ENEMY_PSI, /*  MISS_CHANCE   */                       0x0, /*  SMASH_CHANCE  */                       0x0,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */                     0x31, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x4, /* AILMENT_CHANCE */                     0x32,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x30F,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::MonsterEfcE, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x32, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x4, /* AILMENT_CHANCE */                     0x4B,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x310,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */       Animation::PsiBeam, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x33, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */         TargetType::Self, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x4, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x30F,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::MonsterEfcE, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x34, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x5, /* AILMENT_CHANCE */                     0x46,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x312,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::MonsterEfcD, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x35, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x5, /* AILMENT_CHANCE */                     0x46,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x313,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::MonsterEfcE, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x36, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x5, /* AILMENT_CHANCE */                     0x28,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x314,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::MonsterEfcE, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x37, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x5, /* AILMENT_CHANCE */                     0x46,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x315,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::MonsterEfcF, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x38, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x5, /* AILMENT_CHANCE */                     0x32,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x316,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::MonsterEfcB, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x39, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x6, /* AILMENT_CHANCE */                     0x32,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x317,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */    Animation::PorkyThing, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x3A, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x6, /* AILMENT_CHANCE */                     0x32,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x318,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */    Animation::PorkyThing, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x3B, /*    PP_COST     */                     0x0, /* RECOLOR_VALUE  */                    0x46,
		/*   HAS_SOUND    */                     0x0, /*     EFFECT     */      EffectType::Attack, /*    ELEMENT     */       ElementType::None,
		/*     TARGET     */ TargetType::RandomEnemy, /*    ATK_MULT    */                    0x19, /*    HEAL_LO     */                     0x0,
		/*    HEAL_HI     */                     0x0, /*    AILMENT     */                     0x0, /* AILMENT_CHANCE */                     0x0,
		/*     ACTION     */                     0x0, /*    PRIORITY    */                     0x2, /*     MSG_NO     */                   0x473,
		/*    HAS_DIM     */                     0x0, /*    ANIM_NO     */         Animation::None, /*  ANIM_SUCCESS  */     Animation::NoEffect,
		/*     SFX_NO     */        SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                     0x4, /*  SMASH_CHANCE  */                     0x5,
		/*  REDIRECTABLE  */                     0x1, /* REDIRECTABLE2  */                     0x0
	},
	{
		/*       ID       */                     0x3C, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x6, /* AILMENT_CHANCE */                     0x32,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x31A,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */    Animation::WhirlpoolA, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x3D, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x5, /* AILMENT_CHANCE */                     0x50,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x31B,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::MonsterEfcG, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x3E, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x7, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x2DF,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::MonsterEfcG, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x3F, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x7, /* AILMENT_CHANCE */                     0x32,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x31D,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */          Animation::Burp, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x40, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x7, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x31E,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */          Animation::Burp, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x41, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                     -0x1, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x8, /* AILMENT_CHANCE */                     0x41,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x31F,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x42, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x8, /* AILMENT_CHANCE */                     0x28,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x31F,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */              0x43, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */               0x0,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x42A,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */          SFX_NULL, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                   0x44, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1D, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x320,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0xA, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */              0x45, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */               0x0,
		/*   HAS_SOUND    */              -0x1, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x397,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */          SFX_NULL, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                        0x46, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                        -0x1, /*     EFFECT     */          EffectType::Attack, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                        0x28, /*    HEAL_LO     */                         0x0,
		/*    HEAL_HI     */                         0x0, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x324,
		/*    HAS_DIM     */                         0x0, /*    ANIM_NO     */             Animation::None, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x4, /*  SMASH_CHANCE  */                         0x5,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                        0x47, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                        -0x1, /*     EFFECT     */          EffectType::Attack, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                        0x28, /*    HEAL_LO     */                         0x0,
		/*    HEAL_HI     */                         0x0, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x325,
		/*    HAS_DIM     */                         0x0, /*    ANIM_NO     */             Animation::None, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x4, /*  SMASH_CHANCE  */                         0x5,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */              0x48, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */               0x0,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4AB,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                      0x49, /*    PP_COST     */                       0x0, /* RECOLOR_VALUE  */                      0x46,
		/*   HAS_SOUND    */                       0x0, /*     EFFECT     */        EffectType::Damage, /*    ELEMENT     */    ElementType::Explosion,
		/*     TARGET     */ TargetType::TwoRandomAlly, /*    ATK_MULT    */                       0x0, /*    HEAL_LO     */                      0x3F,
		/*    HEAL_HI     */                      0x4A, /*    AILMENT     */                       0x0, /* AILMENT_CHANCE */                       0x0,
		/*     ACTION     */                       0x0, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x327,
		/*    HAS_DIM     */                       0x1, /*    ANIM_NO     */     Animation::EnemyThrow, /*  ANIM_SUCCESS  */        Animation::HardHit,
		/*     SFX_NO     */          SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                       0x0, /*  SMASH_CHANCE  */                       0x0,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */                        0x4A, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */      ElementType::Explosion,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x66,
		/*    HEAL_HI     */                        0x74, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x328,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */       Animation::EnemyThrow, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                        0x4B, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */      ElementType::Explosion,
		/*     TARGET     */ TargetType::EightRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x26,
		/*    HEAL_HI     */                        0x30, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x329,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */      Animation::EnemyThrow3, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0xA, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                   0x4C, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                    0xC,
		/*    HEAL_HI     */                    0xF, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2FD,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */        Animation::Beam, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0xA, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                        0x4D, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                        -0x1, /*     EFFECT     */          EffectType::Attack, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                        0x1E, /*    HEAL_LO     */                         0x0,
		/*    HEAL_HI     */                         0x0, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x325,
		/*    HAS_DIM     */                         0x0, /*    ANIM_NO     */             Animation::None, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0xA, /*  SMASH_CHANCE  */                         0x5,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                   0x4E, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */ ElementType::Explosion,
		/*     TARGET     */  TargetType::AllAllies, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                   0x28,
		/*    HEAL_HI     */                   0x2D, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x32C,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */ Animation::EnemyThrow2, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0x4F, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */ ElementType::Explosion,
		/*     TARGET     */  TargetType::AllAllies, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                   0x6C,
		/*    HEAL_HI     */                   0x80, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x32D,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */ Animation::EnemyThrow2, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                     0x50, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                     -0x1, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x23, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x32E,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */              0x51, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x484,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                      0x52, /*    PP_COST     */                       0x0, /* RECOLOR_VALUE  */                      0x46,
		/*   HAS_SOUND    */                       0x0, /*     EFFECT     */        EffectType::Damage, /*    ELEMENT     */         ElementType::None,
		/*     TARGET     */    TargetType::RandomAlly, /*    ATK_MULT    */                       0x0, /*    HEAL_LO     */                      0x12,
		/*    HEAL_HI     */                      0x18, /*    AILMENT     */                       0x0, /* AILMENT_CHANCE */                       0x0,
		/*     ACTION     */                       0x0, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x330,
		/*    HAS_DIM     */                       0x1, /*    ANIM_NO     */ Animation::DigestiveFluid, /*  ANIM_SUCCESS  */        Animation::HardHit,
		/*     SFX_NO     */          SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                       0x0, /*  SMASH_CHANCE  */                       0x0,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */                  0x53, /*    PP_COST     */                   0x0, /* RECOLOR_VALUE  */                  0x46,
		/*   HAS_SOUND    */                   0x0, /*     EFFECT     */    EffectType::Attack, /*    ELEMENT     */     ElementType::None,
		/*     TARGET     */ TargetType::AllAllies, /*    ATK_MULT    */                  0x16, /*    HEAL_LO     */                   0x0,
		/*    HEAL_HI     */                   0x0, /*    AILMENT     */                   0x0, /* AILMENT_CHANCE */                   0x0,
		/*     ACTION     */                   0x0, /*    PRIORITY    */                   0x2, /*     MSG_NO     */                 0x331,
		/*    HAS_DIM     */                   0x1, /*    ANIM_NO     */  Animation::GiantWave, /*  ANIM_SUCCESS  */    Animation::HardHit,
		/*     SFX_NO     */      SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                   0x0, /*  SMASH_CHANCE  */                   0x5,
		/*  REDIRECTABLE  */                   0x1, /* REDIRECTABLE2  */                   0x0
	},
	{
		/*       ID       */                        0x54, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x3E,
		/*    HEAL_HI     */                        0x43, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x332,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */       Animation::WhirlpoolC, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                        0x55, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x20,
		/*    HEAL_HI     */                        0x2A, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x333,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */       Animation::WhirlpoolB, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                     0x56, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x46,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */       EffectType::Damage, /*    ELEMENT     */        ElementType::Fire,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                     0x14,
		/*    HEAL_HI     */                     0x1A, /*    AILMENT     */                      0x9, /* AILMENT_CHANCE */                      0xA,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x334,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */ Animation::MonsterPKFire, /*  ANIM_SUCCESS  */      Animation::NoEffect,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                   0x57, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */      ElementType::Fire,
		/*     TARGET     */  TargetType::AllAllies, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                   0x32,
		/*    HEAL_HI     */                   0x36, /*    AILMENT     */                    0x9, /* AILMENT_CHANCE */                    0xA,
		/*     ACTION     */                    0x1, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x335,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */ Animation::MonsterBomb, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                     0x58, /*    PP_COST     */                      0x6, /* RECOLOR_VALUE  */                     0x47,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */    EffectType::PsiDamage, /*    ELEMENT     */        ElementType::Fire,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                     0x19,
		/*    HEAL_HI     */                     0x23, /*    AILMENT     */                      0x9, /* AILMENT_CHANCE */                      0xA,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x336,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */ Animation::MonsterPKFire, /*  ANIM_SUCCESS  */      Animation::NoEffect,
		/*     SFX_NO     */            SFX_ENEMY_PSI, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x59, /*    PP_COST     */                      0xC, /* RECOLOR_VALUE  */                     0x47,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */    EffectType::PsiDamage, /*    ELEMENT     */        ElementType::Fire,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                     0x48,
		/*    HEAL_HI     */                     0x58, /*    AILMENT     */                      0x9, /* AILMENT_CHANCE */                      0xA,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x337,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */ Animation::MonsterPKFire, /*  ANIM_SUCCESS  */      Animation::NoEffect,
		/*     SFX_NO     */            SFX_ENEMY_PSI, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x5A, /*    PP_COST     */                     0x14, /* RECOLOR_VALUE  */                     0x47,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */    EffectType::PsiDamage, /*    ELEMENT     */        ElementType::Fire,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                     0x66,
		/*    HEAL_HI     */                     0x70, /*    AILMENT     */                      0x9, /* AILMENT_CHANCE */                      0xA,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x338,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */ Animation::MonsterPKFire, /*  ANIM_SUCCESS  */       Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_PSI, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x5B, /*    PP_COST     */                     0x26, /* RECOLOR_VALUE  */                     0x47,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */    EffectType::PsiDamage, /*    ELEMENT     */        ElementType::Fire,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                     0xA4,
		/*    HEAL_HI     */                     0xB6, /*    AILMENT     */                      0x9, /* AILMENT_CHANCE */                      0xA,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x339,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */ Animation::MonsterPKFire, /*  ANIM_SUCCESS  */       Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_PSI, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x5C, /*    PP_COST     */                     0x5, /* RECOLOR_VALUE  */                    0x47,
		/*   HAS_SOUND    */                     0x0, /*     EFFECT     */   EffectType::PsiDamage, /*    ELEMENT     */        ElementType::Ice,
		/*     TARGET     */  TargetType::RandomAlly, /*    ATK_MULT    */                     0x0, /*    HEAL_LO     */                    0x2A,
		/*    HEAL_HI     */                    0x34, /*    AILMENT     */                     0xA, /* AILMENT_CHANCE */                     0x8,
		/*     ACTION     */                     0x1, /*    PRIORITY    */                     0x2, /*     MSG_NO     */                   0x33A,
		/*    HAS_DIM     */                     0x1, /*    ANIM_NO     */ Animation::MonsterPKIce, /*  ANIM_SUCCESS  */     Animation::NoEffect,
		/*     SFX_NO     */           SFX_ENEMY_PSI, /*  MISS_CHANCE   */                     0x0, /*  SMASH_CHANCE  */                     0x0,
		/*  REDIRECTABLE  */                     0x1, /* REDIRECTABLE2  */                     0x0
	},
	{
		/*       ID       */                    0x5D, /*    PP_COST     */                     0xA, /* RECOLOR_VALUE  */                    0x47,
		/*   HAS_SOUND    */                     0x0, /*     EFFECT     */   EffectType::PsiDamage, /*    ELEMENT     */        ElementType::Ice,
		/*     TARGET     */  TargetType::RandomAlly, /*    ATK_MULT    */                     0x0, /*    HEAL_LO     */                    0x64,
		/*    HEAL_HI     */                    0x78, /*    AILMENT     */                     0xA, /* AILMENT_CHANCE */                     0x8,
		/*     ACTION     */                     0x1, /*    PRIORITY    */                     0x2, /*     MSG_NO     */                   0x33B,
		/*    HAS_DIM     */                     0x1, /*    ANIM_NO     */ Animation::MonsterPKIce, /*  ANIM_SUCCESS  */     Animation::NoEffect,
		/*     SFX_NO     */           SFX_ENEMY_PSI, /*  MISS_CHANCE   */                     0x0, /*  SMASH_CHANCE  */                     0x0,
		/*  REDIRECTABLE  */                     0x1, /* REDIRECTABLE2  */                     0x0
	},
	{
		/*       ID       */                    0x5E, /*    PP_COST     */                    0x12, /* RECOLOR_VALUE  */                    0x47,
		/*   HAS_SOUND    */                     0x0, /*     EFFECT     */   EffectType::PsiDamage, /*    ELEMENT     */        ElementType::Ice,
		/*     TARGET     */  TargetType::RandomAlly, /*    ATK_MULT    */                     0x0, /*    HEAL_LO     */                    0xB4,
		/*    HEAL_HI     */                    0xC8, /*    AILMENT     */                     0xA, /* AILMENT_CHANCE */                     0x8,
		/*     ACTION     */                     0x1, /*    PRIORITY    */                     0x2, /*     MSG_NO     */                   0x33C,
		/*    HAS_DIM     */                     0x1, /*    ANIM_NO     */ Animation::MonsterPKIce, /*  ANIM_SUCCESS  */      Animation::HardHit,
		/*     SFX_NO     */           SFX_ENEMY_PSI, /*  MISS_CHANCE   */                     0x0, /*  SMASH_CHANCE  */                     0x0,
		/*  REDIRECTABLE  */                     0x1, /* REDIRECTABLE2  */                     0x0
	},
	{
		/*       ID       */                    0x5F, /*    PP_COST     */                    0x1C, /* RECOLOR_VALUE  */                    0x47,
		/*   HAS_SOUND    */                     0x0, /*     EFFECT     */   EffectType::PsiDamage, /*    ELEMENT     */        ElementType::Ice,
		/*     TARGET     */  TargetType::RandomAlly, /*    ATK_MULT    */                     0x0, /*    HEAL_LO     */                   0x140,
		/*    HEAL_HI     */                   0x15E, /*    AILMENT     */                     0xA, /* AILMENT_CHANCE */                     0x8,
		/*     ACTION     */                     0x1, /*    PRIORITY    */                     0x2, /*     MSG_NO     */                   0x33D,
		/*    HAS_DIM     */                     0x1, /*    ANIM_NO     */ Animation::MonsterPKIce, /*  ANIM_SUCCESS  */      Animation::HardHit,
		/*     SFX_NO     */           SFX_ENEMY_PSI, /*  MISS_CHANCE   */                     0x0, /*  SMASH_CHANCE  */                     0x0,
		/*  REDIRECTABLE  */                     0x1, /* REDIRECTABLE2  */                     0x0
	},
	{
		/*       ID       */                        0x60, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */        ElementType::Thunder,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x1C,
		/*    HEAL_HI     */                        0x23, /*    AILMENT     */                         0x2, /* AILMENT_CHANCE */                         0x3,
		/*     ACTION     */                         0x1, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x33E,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */ Animation::MonsterPKThunder, /*  ANIM_SUCCESS  */         Animation::NoEffect,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                        0x61, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */        ElementType::Thunder,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x25,
		/*    HEAL_HI     */                        0x2F, /*    AILMENT     */                         0x2, /* AILMENT_CHANCE */                         0xA,
		/*     ACTION     */                         0x1, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x33F,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */ Animation::MonsterPKThunder, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                        0x62, /*    PP_COST     */                         0x4, /* RECOLOR_VALUE  */                        0x47,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */       EffectType::PsiDamage, /*    ELEMENT     */        ElementType::Thunder,
		/*     TARGET     */      TargetType::RandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x64,
		/*    HEAL_HI     */                        0x78, /*    AILMENT     */                         0x2, /* AILMENT_CHANCE */                         0x3,
		/*     ACTION     */                         0x1, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x340,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */ Animation::MonsterPKThunder, /*  ANIM_SUCCESS  */         Animation::NoEffect,
		/*     SFX_NO     */               SFX_ENEMY_PSI, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                        0x63, /*    PP_COST     */                         0x8, /* RECOLOR_VALUE  */                        0x47,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */       EffectType::PsiDamage, /*    ELEMENT     */        ElementType::Thunder,
		/*     TARGET     */                        0x27, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x64,
		/*    HEAL_HI     */                        0x78, /*    AILMENT     */                         0x2, /* AILMENT_CHANCE */                         0x3,
		/*     ACTION     */                         0x1, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x341,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */ Animation::MonsterPKThunder, /*  ANIM_SUCCESS  */         Animation::NoEffect,
		/*     SFX_NO     */               SFX_ENEMY_PSI, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                        0x64, /*    PP_COST     */                        0x10, /* RECOLOR_VALUE  */                        0x47,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */       EffectType::PsiDamage, /*    ELEMENT     */        ElementType::Thunder,
		/*     TARGET     */                        0x28, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0xA0,
		/*    HEAL_HI     */                        0xB4, /*    AILMENT     */                         0x2, /* AILMENT_CHANCE */                         0x3,
		/*     ACTION     */                         0x1, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x342,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */ Animation::MonsterPKThunder, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */               SFX_ENEMY_PSI, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                        0x65, /*    PP_COST     */                        0x14, /* RECOLOR_VALUE  */                        0x47,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */       EffectType::PsiDamage, /*    ELEMENT     */        ElementType::Thunder,
		/*     TARGET     */                        0x29, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0xA0,
		/*    HEAL_HI     */                        0xB4, /*    AILMENT     */                         0x2, /* AILMENT_CHANCE */                         0x3,
		/*     ACTION     */                         0x1, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x343,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */ Animation::MonsterPKThunder, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */               SFX_ENEMY_PSI, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                       0x66, /*    PP_COST     */                       0x1C, /* RECOLOR_VALUE  */                       0x47,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */   EffectType::StatusChange, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */      TargetType::AllAllies, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                        0x0,
		/*    HEAL_HI     */                        0x0, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                       0x64,
		/*     ACTION     */                        0x1, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x344,
		/*    HAS_DIM     */                        0x1, /*    ANIM_NO     */ Animation::MonsterPKPoison, /*  ANIM_SUCCESS  */            Animation::None,
		/*     SFX_NO     */              SFX_ENEMY_PSI, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x0, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                   0x67, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0xA, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E2,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0x68, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x5, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E0,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                     0x69, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                     -0x1, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x27, /* AILMENT_CHANCE */                     0x46,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x487,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */       Animation::HardHit,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                        0x6A, /*    PP_COST     */                        0x28, /* RECOLOR_VALUE  */                        0x47,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */       EffectType::PsiDamage, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */       TargetType::AllAllies, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                       0x118,
		/*    HEAL_HI     */                       0x152, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x348,
		/*    HAS_DIM     */                         0x0, /*    ANIM_NO     */ Animation::MonsterPKDefense, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */               SFX_ENEMY_PSI, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */               0x6B, /*    PP_COST     */                0x0, /* RECOLOR_VALUE  */               0x48,
		/*   HAS_SOUND    */                0x0, /*     EFFECT     */ EffectType::HealHP, /*    ELEMENT     */  ElementType::None,
		/*     TARGET     */   TargetType::Self, /*    ATK_MULT    */                0x0, /*    HEAL_LO     */                0xA,
		/*    HEAL_HI     */                0xC, /*    AILMENT     */                0x0, /* AILMENT_CHANCE */                0x0,
		/*     ACTION     */                0x0, /*    PRIORITY    */                0x2, /*     MSG_NO     */              0x377,
		/*    HAS_DIM     */                0x0, /*    ANIM_NO     */    Animation::None, /*  ANIM_SUCCESS  */ Animation::LifeUpB,
		/*     SFX_NO     */   SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                0x0, /*  SMASH_CHANCE  */                0x0,
		/*  REDIRECTABLE  */                0x0, /* REDIRECTABLE2  */                0x0
	},
	{
		/*       ID       */                   0x6C, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x34A,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0x6D, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                   0x3E,
		/*    HEAL_HI     */                   0x48, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2FD,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */        Animation::Beam, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                        0x6E, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */       TargetType::AllAllies, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                         0x0,
		/*    HEAL_HI     */                         0x0, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x34C,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */ Animation::MonsterPKOffense, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                        0x6F, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */       TargetType::AllAllies, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x3A,
		/*    HEAL_HI     */                        0x40, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x34D,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */ Animation::MonsterPKOffense, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                     0x70, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0xA, /* AILMENT_CHANCE */                     0x1E,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x35E,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                      0x71, /*    PP_COST     */                       0x0, /* RECOLOR_VALUE  */                      0x46,
		/*   HAS_SOUND    */                      -0x1, /*     EFFECT     */        EffectType::Attack, /*    ELEMENT     */         ElementType::None,
		/*     TARGET     */ TargetType::ChooseOneAlly, /*    ATK_MULT    */                       0xA, /*    HEAL_LO     */                       0x0,
		/*    HEAL_HI     */                       0x0, /*    AILMENT     */                       0x0, /* AILMENT_CHANCE */                       0x0,
		/*     ACTION     */                       0x0, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x2E0,
		/*    HAS_DIM     */                       0x0, /*    ANIM_NO     */           Animation::None, /*  ANIM_SUCCESS  */       Animation::NoEffect,
		/*     SFX_NO     */          SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                       0x4, /*  SMASH_CHANCE  */                       0x5,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */                   0x72, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x23, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E6,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0x73, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2F5,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0x74, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0xF, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x351,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0x75, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x96, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x353,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */   Animation::ShakeLong, /*  ANIM_SUCCESS  */    Animation::FatalHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                        0x76, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                         0x0,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */           ElementType::Fire,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                       0x11C,
		/*    HEAL_HI     */                       0x12A, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x354,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */      Animation::MonsterBomb, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                        0x77, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                         0x0,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */      ElementType::Explosion,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0xCA,
		/*    HEAL_HI     */                        0xE0, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x345,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */         Animation::Immolate, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                   0x78, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                    0xA,
		/*    HEAL_HI     */                    0xC, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x356,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0x79, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x48,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                   0x1C,
		/*    HEAL_HI     */                   0x20, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x357,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x7A, /*    PP_COST     */                   0x0, /* RECOLOR_VALUE  */                  0x48,
		/*   HAS_SOUND    */                   0x0, /*     EFFECT     */    EffectType::Attack, /*    ELEMENT     */     ElementType::None,
		/*     TARGET     */ TargetType::AllAllies, /*    ATK_MULT    */                   0x0, /*    HEAL_LO     */                   0xA,
		/*    HEAL_HI     */                   0xF, /*    AILMENT     */                   0x0, /* AILMENT_CHANCE */                   0x0,
		/*     ACTION     */                   0x0, /*    PRIORITY    */                   0x2, /*     MSG_NO     */                 0x358,
		/*    HAS_DIM     */                   0x1, /*    ANIM_NO     */     Animation::Vacuum, /*  ANIM_SUCCESS  */   Animation::NoEffect,
		/*     SFX_NO     */      SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                   0x0, /*  SMASH_CHANCE  */                   0x0,
		/*  REDIRECTABLE  */                   0x1, /* REDIRECTABLE2  */                   0x0
	},
	{
		/*       ID       */                   0x7B, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x48,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                    0xA,
		/*    HEAL_HI     */                    0xF, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x359,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */        Animation::None,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                        0x7C, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x47,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */       EffectType::PsiDamage, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */      TargetType::RandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                         0x8,
		/*    HEAL_HI     */                         0xC, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x35A,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */ Animation::MonsterPsiMagnet, /*  ANIM_SUCCESS  */             Animation::None,
		/*     SFX_NO     */               SFX_ENEMY_PSI, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                        0x7D, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x47,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */       EffectType::PsiDamage, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */       TargetType::AllAllies, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                         0x8,
		/*    HEAL_HI     */                         0xC, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x35B,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */ Animation::MonsterPsiMagnet, /*  ANIM_SUCCESS  */             Animation::None,
		/*     SFX_NO     */               SFX_ENEMY_PSI, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                     0x7E, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                     -0x1, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0xA, /* AILMENT_CHANCE */                     0x14,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x35C,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x7F, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0xA, /* AILMENT_CHANCE */                     0x14,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x35D,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x80, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0xA, /* AILMENT_CHANCE */                     0x14,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x35E,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x81, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0xA, /* AILMENT_CHANCE */                      0xA,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x35F,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                      0x82, /*    PP_COST     */                       0x0, /* RECOLOR_VALUE  */                      0x48,
		/*   HAS_SOUND    */                       0x0, /*     EFFECT     */  EffectType::StatusChange, /*    ELEMENT     */         ElementType::None,
		/*     TARGET     */    TargetType::RandomAlly, /*    ATK_MULT    */                       0x0, /*    HEAL_LO     */                       0x0,
		/*    HEAL_HI     */                       0x0, /*    AILMENT     */                       0xA, /* AILMENT_CHANCE */                      0x1E,
		/*     ACTION     */                       0x1, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x360,
		/*    HAS_DIM     */                       0x1, /*    ANIM_NO     */ Animation::DigestiveFluid, /*  ANIM_SUCCESS  */           Animation::None,
		/*     SFX_NO     */          SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                       0x0, /*  SMASH_CHANCE  */                       0x0,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */                      0x83, /*    PP_COST     */                       0x0, /* RECOLOR_VALUE  */                      0x48,
		/*   HAS_SOUND    */                       0x0, /*     EFFECT     */  EffectType::StatusChange, /*    ELEMENT     */         ElementType::None,
		/*     TARGET     */    TargetType::RandomAlly, /*    ATK_MULT    */                       0x0, /*    HEAL_LO     */                       0x0,
		/*    HEAL_HI     */                       0x0, /*    AILMENT     */                       0xA, /* AILMENT_CHANCE */                      0x1E,
		/*     ACTION     */                       0x1, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x361,
		/*    HAS_DIM     */                       0x1, /*    ANIM_NO     */ Animation::DigestiveFluid, /*  ANIM_SUCCESS  */           Animation::None,
		/*     SFX_NO     */          SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                       0x0, /*  SMASH_CHANCE  */                       0x0,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */                     0x84, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x12, /* AILMENT_CHANCE */                     0x32,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x362,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::TickleStick, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x85, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x12, /* AILMENT_CHANCE */                     0x4B,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x363,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::Degradation, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x86, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x0, /* AILMENT_CHANCE */                     0x46,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x364,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::MonsterEfcB, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x87, /*    PP_COST     */                      0x7, /* RECOLOR_VALUE  */                     0x47,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x12, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x365,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::TickleStick, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */            SFX_ENEMY_PSI, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x88, /*    PP_COST     */                     0x12, /* RECOLOR_VALUE  */                     0x47,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x12, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x366,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::TickleStick, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */            SFX_ENEMY_PSI, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                       0x89, /*    PP_COST     */                        0x0, /* RECOLOR_VALUE  */                       0x48,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */   EffectType::StatusChange, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */     TargetType::RandomAlly, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                        0x0,
		/*    HEAL_HI     */                        0x0, /*    AILMENT     */                       0x14, /* AILMENT_CHANCE */                       0x32,
		/*     ACTION     */                        0x1, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x367,
		/*    HAS_DIM     */                        0x1, /*    ANIM_NO     */ Animation::TickleStickLong, /*  ANIM_SUCCESS  */            Animation::None,
		/*     SFX_NO     */           SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x1, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                       0x8A, /*    PP_COST     */                        0x6, /* RECOLOR_VALUE  */                       0x47,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */   EffectType::StatusChange, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */     TargetType::RandomAlly, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                        0x0,
		/*    HEAL_HI     */                        0x0, /*    AILMENT     */                       0x14, /* AILMENT_CHANCE */                       0x64,
		/*     ACTION     */                        0x1, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x368,
		/*    HAS_DIM     */                        0x1, /*    ANIM_NO     */ Animation::TickleStickLong, /*  ANIM_SUCCESS  */            Animation::None,
		/*     SFX_NO     */              SFX_ENEMY_PSI, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x1, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                       0x8B, /*    PP_COST     */                       0x12, /* RECOLOR_VALUE  */                       0x47,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */   EffectType::StatusChange, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */      TargetType::AllAllies, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                        0x0,
		/*    HEAL_HI     */                        0x0, /*    AILMENT     */                       0x14, /* AILMENT_CHANCE */                       0x64,
		/*     ACTION     */                        0x1, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x369,
		/*    HAS_DIM     */                        0x1, /*    ANIM_NO     */ Animation::TickleStickLong, /*  ANIM_SUCCESS  */            Animation::None,
		/*     SFX_NO     */              SFX_ENEMY_PSI, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x1, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                     0x8C, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x0, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x36A,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */        Animation::Vacuum, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x8D, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x12, /* AILMENT_CHANCE */                     0x46,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x36B,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::Degradation, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x8E, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x12, /* AILMENT_CHANCE */                     0x55,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x3D5,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::TickleStick, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x8F, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x0, /* AILMENT_CHANCE */                      0x0,
		/*     ACTION     */                      0x0, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x36D,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::Degradation, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x90, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x0, /* AILMENT_CHANCE */                      0x0,
		/*     ACTION     */                      0x0, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x36E,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */  Animation::ShieldKiller, /*  ANIM_SUCCESS  */    Animation::WhiteFlash,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x91, /*    PP_COST     */                      0x6, /* RECOLOR_VALUE  */                     0x47,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */    EffectType::PsiDamage, /*    ELEMENT     */        ElementType::Fire,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                     0x19,
		/*    HEAL_HI     */                     0x23, /*    AILMENT     */                      0x9, /* AILMENT_CHANCE */                      0xA,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x36F,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */ Animation::MonsterPKFire, /*  ANIM_SUCCESS  */      Animation::NoEffect,
		/*     SFX_NO     */            SFX_ENEMY_PSI, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x92, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */          TargetType::All, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x0, /* AILMENT_CHANCE */                      0x0,
		/*     ACTION     */                      0x0, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x370,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */    Animation::PorkyThing, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x93, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x10, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x371,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */    Animation::PorkyThing, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                   0x94, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x48,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */       EffectType::Misc, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2DF,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */        Animation::None,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                      0x95, /*    PP_COST     */                       0x6, /* RECOLOR_VALUE  */                      0x47,
		/*   HAS_SOUND    */                       0x0, /*     EFFECT     */  EffectType::StatusChange, /*    ELEMENT     */         ElementType::None,
		/*     TARGET     */    TargetType::RandomAlly, /*    ATK_MULT    */                       0x0, /*    HEAL_LO     */                       0x0,
		/*    HEAL_HI     */                       0x0, /*    AILMENT     */                       0x3, /* AILMENT_CHANCE */                      0x1E,
		/*     ACTION     */                       0x1, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x30D,
		/*    HAS_DIM     */                       0x1, /*    ANIM_NO     */ Animation::ShieldHitFlash, /*  ANIM_SUCCESS  */           Animation::None,
		/*     SFX_NO     */             SFX_ENEMY_PSI, /*  MISS_CHANCE   */                       0x0, /*  SMASH_CHANCE  */                       0x0,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */                   0x96, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                    0x0,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                  0x110,
		/*    HEAL_HI     */                  0x11E, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x353,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */   Animation::ShakeLong, /*  ANIM_SUCCESS  */    Animation::FatalHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */               0x97, /*    PP_COST     */                0x0, /* RECOLOR_VALUE  */               0x48,
		/*   HAS_SOUND    */                0x0, /*     EFFECT     */ EffectType::HealHP, /*    ELEMENT     */  ElementType::None,
		/*     TARGET     */   TargetType::Self, /*    ATK_MULT    */                0x0, /*    HEAL_LO     */               0x1E,
		/*    HEAL_HI     */               0x28, /*    AILMENT     */                0x0, /* AILMENT_CHANCE */                0x0,
		/*     ACTION     */                0x0, /*    PRIORITY    */                0x2, /*     MSG_NO     */              0x377,
		/*    HAS_DIM     */                0x0, /*    ANIM_NO     */    Animation::None, /*  ANIM_SUCCESS  */ Animation::LifeUpB,
		/*     SFX_NO     */   SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                0x0, /*  SMASH_CHANCE  */                0x0,
		/*  REDIRECTABLE  */                0x0, /* REDIRECTABLE2  */                0x0
	},
	{
		/*       ID       */               0x98, /*    PP_COST     */                0x0, /* RECOLOR_VALUE  */               0x48,
		/*   HAS_SOUND    */                0x0, /*     EFFECT     */ EffectType::HealHP, /*    ELEMENT     */  ElementType::None,
		/*     TARGET     */   TargetType::Self, /*    ATK_MULT    */                0x0, /*    HEAL_LO     */               0x9D,
		/*    HEAL_HI     */               0xB2, /*    AILMENT     */                0x0, /* AILMENT_CHANCE */                0x0,
		/*     ACTION     */                0x0, /*    PRIORITY    */                0x2, /*     MSG_NO     */              0x378,
		/*    HAS_DIM     */                0x0, /*    ANIM_NO     */    Animation::None, /*  ANIM_SUCCESS  */ Animation::LifeUpB,
		/*     SFX_NO     */   SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                0x0, /*  SMASH_CHANCE  */                0x0,
		/*  REDIRECTABLE  */                0x0, /* REDIRECTABLE2  */                0x0
	},
	{
		/*       ID       */               0x99, /*    PP_COST     */                0x0, /* RECOLOR_VALUE  */               0x48,
		/*   HAS_SOUND    */                0x0, /*     EFFECT     */ EffectType::HealHP, /*    ELEMENT     */  ElementType::None,
		/*     TARGET     */   TargetType::Self, /*    ATK_MULT    */                0x0, /*    HEAL_LO     */               0x28,
		/*    HEAL_HI     */               0x2D, /*    AILMENT     */                0x0, /* AILMENT_CHANCE */                0x0,
		/*     ACTION     */                0x0, /*    PRIORITY    */                0x2, /*     MSG_NO     */              0x379,
		/*    HAS_DIM     */                0x0, /*    ANIM_NO     */    Animation::None, /*  ANIM_SUCCESS  */ Animation::LifeUpB,
		/*     SFX_NO     */   SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                0x0, /*  SMASH_CHANCE  */                0x0,
		/*  REDIRECTABLE  */                0x0, /* REDIRECTABLE2  */                0x0
	},
	{
		/*       ID       */                    0x9A, /*    PP_COST     */                     0x5, /* RECOLOR_VALUE  */                    0x47,
		/*   HAS_SOUND    */                     0x0, /*     EFFECT     */   EffectType::PsiDamage, /*    ELEMENT     */        ElementType::Ice,
		/*     TARGET     */  TargetType::RandomAlly, /*    ATK_MULT    */                     0x0, /*    HEAL_LO     */                    0x23,
		/*    HEAL_HI     */                    0x2A, /*    AILMENT     */                     0xA, /* AILMENT_CHANCE */                     0x8,
		/*     ACTION     */                     0x1, /*    PRIORITY    */                     0x2, /*     MSG_NO     */                   0x33A,
		/*    HAS_DIM     */                     0x1, /*    ANIM_NO     */ Animation::MonsterPKIce, /*  ANIM_SUCCESS  */     Animation::NoEffect,
		/*     SFX_NO     */           SFX_ENEMY_PSI, /*  MISS_CHANCE   */                     0x0, /*  SMASH_CHANCE  */                     0x0,
		/*  REDIRECTABLE  */                     0x1, /* REDIRECTABLE2  */                     0x0
	},
	{
		/*       ID       */                   0x9B, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x23, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x37B,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                       0x9C, /*    PP_COST     */                        0x0, /* RECOLOR_VALUE  */                       0x48,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */         EffectType::HealHP, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */ TargetType::ChooseOneEnemy, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                        0x0,
		/*    HEAL_HI     */                        0x0, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                        0x0,
		/*     ACTION     */                        0x0, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x37C,
		/*    HAS_DIM     */                        0x0, /*    ANIM_NO     */            Animation::None, /*  ANIM_SUCCESS  */         Animation::LifeUpG,
		/*     SFX_NO     */           SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x0, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                       0x9D, /*    PP_COST     */                        0x0, /* RECOLOR_VALUE  */                       0x48,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */         EffectType::HealHP, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */ TargetType::ChooseOneEnemy, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                       0x96,
		/*    HEAL_HI     */                       0xA0, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                        0x0,
		/*     ACTION     */                        0x0, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x37D,
		/*    HAS_DIM     */                        0x0, /*    ANIM_NO     */            Animation::None, /*  ANIM_SUCCESS  */         Animation::LifeUpG,
		/*     SFX_NO     */           SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x0, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                       0x9E, /*    PP_COST     */                        0x0, /* RECOLOR_VALUE  */                       0x48,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */         EffectType::HealHP, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */ TargetType::ChooseOneEnemy, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                       0x1E,
		/*    HEAL_HI     */                       0x32, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                        0x0,
		/*     ACTION     */                        0x0, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x37E,
		/*    HAS_DIM     */                        0x0, /*    ANIM_NO     */            Animation::None, /*  ANIM_SUCCESS  */         Animation::LifeUpG,
		/*     SFX_NO     */           SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x0, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                       0x9F, /*    PP_COST     */                        0x5, /* RECOLOR_VALUE  */                       0x47,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */        EffectType::HealHP2, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */   TargetType::RandomEnemy_, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                       0x32,
		/*    HEAL_HI     */                       0x46, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                        0x0,
		/*     ACTION     */                        0x0, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x37F,
		/*    HAS_DIM     */                        0x1, /*    ANIM_NO     */ Animation::MonsterPKLifeUp, /*  ANIM_SUCCESS  */         Animation::LifeUpB,
		/*     SFX_NO     */              SFX_ENEMY_PSI, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x1, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                       0xA0, /*    PP_COST     */                        0x8, /* RECOLOR_VALUE  */                       0x47,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */        EffectType::HealHP2, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */   TargetType::RandomEnemy_, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                       0x78,
		/*    HEAL_HI     */                       0x8C, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                        0x0,
		/*     ACTION     */                        0x0, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x380,
		/*    HAS_DIM     */                        0x1, /*    ANIM_NO     */ Animation::MonsterPKLifeUp, /*  ANIM_SUCCESS  */         Animation::LifeUpG,
		/*     SFX_NO     */              SFX_ENEMY_PSI, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x1, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                       0xA1, /*    PP_COST     */                        0xD, /* RECOLOR_VALUE  */                       0x47,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */        EffectType::HealHP2, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */   TargetType::RandomEnemy_, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                        0x0,
		/*    HEAL_HI     */                        0x0, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                        0x0,
		/*     ACTION     */                        0x0, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x381,
		/*    HAS_DIM     */                        0x1, /*    ANIM_NO     */ Animation::MonsterPKLifeUp, /*  ANIM_SUCCESS  */         Animation::LifeUpO,
		/*     SFX_NO     */              SFX_ENEMY_PSI, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x1, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                       0xA2, /*    PP_COST     */                       0x18, /* RECOLOR_VALUE  */                       0x47,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */        EffectType::HealHP2, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */     TargetType::AllEnemies, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                        0x0,
		/*    HEAL_HI     */                        0x0, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                        0x0,
		/*     ACTION     */                        0x0, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x382,
		/*    HAS_DIM     */                        0x1, /*    ANIM_NO     */ Animation::MonsterPKLifeUp, /*  ANIM_SUCCESS  */         Animation::LifeUpO,
		/*     SFX_NO     */              SFX_ENEMY_PSI, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x1, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                     0xA3, /*    PP_COST     */                      0x4, /* RECOLOR_VALUE  */                     0x47,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */  TargetType::RandomEnemy, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x0, /* AILMENT_CHANCE */                      0x0,
		/*     ACTION     */                      0x0, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x383,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */ Animation::MonsterPKHeal, /*  ANIM_SUCCESS  */         Animation::HealA,
		/*     SFX_NO     */            SFX_ENEMY_PSI, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0xA4, /*    PP_COST     */                      0xC, /* RECOLOR_VALUE  */                     0x47,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */  TargetType::RandomEnemy, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x0, /* AILMENT_CHANCE */                      0x0,
		/*     ACTION     */                      0x0, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x384,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */ Animation::MonsterPKHeal, /*  ANIM_SUCCESS  */         Animation::HealB,
		/*     SFX_NO     */            SFX_ENEMY_PSI, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0xA5, /*    PP_COST     */                     0x12, /* RECOLOR_VALUE  */                     0x47,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */  TargetType::RandomEnemy, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x0, /* AILMENT_CHANCE */                      0x0,
		/*     ACTION     */                      0x0, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x385,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */ Animation::MonsterPKHeal, /*  ANIM_SUCCESS  */         Animation::HealG,
		/*     SFX_NO     */            SFX_ENEMY_PSI, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                           0xA6, /*    PP_COST     */                           0x1C, /* RECOLOR_VALUE  */                           0x47,
		/*   HAS_SOUND    */                            0x0, /*     EFFECT     */       EffectType::StatusChange, /*    ELEMENT     */              ElementType::None,
		/*     TARGET     */         TargetType::AllEnemies, /*    ATK_MULT    */                            0x0, /*    HEAL_LO     */                            0x0,
		/*    HEAL_HI     */                            0x0, /*    AILMENT     */                            0x0, /* AILMENT_CHANCE */                            0x0,
		/*     ACTION     */                            0x0, /*    PRIORITY    */                            0x2, /*     MSG_NO     */                          0x386,
		/*    HAS_DIM     */                            0x1, /*    ANIM_NO     */ Animation::MonsterOffenseFlash, /*  ANIM_SUCCESS  */               Animation::HealG,
		/*     SFX_NO     */                  SFX_ENEMY_PSI, /*  MISS_CHANCE   */                            0x0, /*  SMASH_CHANCE  */                            0x0,
		/*  REDIRECTABLE  */                            0x1, /* REDIRECTABLE2  */                            0x0
	},
	{
		/*       ID       */                           0xA7, /*    PP_COST     */                            0x0, /* RECOLOR_VALUE  */                           0x48,
		/*   HAS_SOUND    */                            0x0, /*     EFFECT     */       EffectType::StatusChange, /*    ELEMENT     */              ElementType::None,
		/*     TARGET     */               TargetType::Self, /*    ATK_MULT    */                            0x0, /*    HEAL_LO     */                            0x0,
		/*    HEAL_HI     */                            0x0, /*    AILMENT     */                           0x1B, /* AILMENT_CHANCE */                           0x64,
		/*     ACTION     */                            0x1, /*    PRIORITY    */                            0x2, /*     MSG_NO     */                          0x387,
		/*    HAS_DIM     */                            0x1, /*    ANIM_NO     */ Animation::MonsterOffenseFlash, /*  ANIM_SUCCESS  */                Animation::None,
		/*     SFX_NO     */               SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                            0x0, /*  SMASH_CHANCE  */                            0x0,
		/*  REDIRECTABLE  */                            0x0, /* REDIRECTABLE2  */                            0x0
	},
	{
		/*       ID       */                           0xA8, /*    PP_COST     */                            0x6, /* RECOLOR_VALUE  */                           0x47,
		/*   HAS_SOUND    */                            0x0, /*     EFFECT     */       EffectType::StatusChange, /*    ELEMENT     */              ElementType::None,
		/*     TARGET     */        TargetType::RandomEnemy, /*    ATK_MULT    */                            0x0, /*    HEAL_LO     */                            0x0,
		/*    HEAL_HI     */                            0x0, /*    AILMENT     */                           0x1B, /* AILMENT_CHANCE */                           0x64,
		/*     ACTION     */                            0x1, /*    PRIORITY    */                            0x2, /*     MSG_NO     */                          0x388,
		/*    HAS_DIM     */                            0x1, /*    ANIM_NO     */ Animation::MonsterOffenseFlash, /*  ANIM_SUCCESS  */                Animation::None,
		/*     SFX_NO     */                  SFX_ENEMY_PSI, /*  MISS_CHANCE   */                            0x0, /*  SMASH_CHANCE  */                            0x0,
		/*  REDIRECTABLE  */                            0x1, /* REDIRECTABLE2  */                            0x0
	},
	{
		/*       ID       */                           0xA9, /*    PP_COST     */                           0x12, /* RECOLOR_VALUE  */                           0x47,
		/*   HAS_SOUND    */                            0x0, /*     EFFECT     */       EffectType::StatusChange, /*    ELEMENT     */              ElementType::None,
		/*     TARGET     */         TargetType::AllEnemies, /*    ATK_MULT    */                            0x0, /*    HEAL_LO     */                            0x0,
		/*    HEAL_HI     */                            0x0, /*    AILMENT     */                           0x1B, /* AILMENT_CHANCE */                           0x64,
		/*     ACTION     */                            0x1, /*    PRIORITY    */                            0x2, /*     MSG_NO     */                          0x389,
		/*    HAS_DIM     */                            0x1, /*    ANIM_NO     */ Animation::MonsterDefenseFlash, /*  ANIM_SUCCESS  */                Animation::None,
		/*     SFX_NO     */                  SFX_ENEMY_PSI, /*  MISS_CHANCE   */                            0x0, /*  SMASH_CHANCE  */                            0x0,
		/*  REDIRECTABLE  */                            0x1, /* REDIRECTABLE2  */                            0x0
	},
	{
		/*       ID       */                           0xAA, /*    PP_COST     */                            0x0, /* RECOLOR_VALUE  */                           0x48,
		/*   HAS_SOUND    */                            0x0, /*     EFFECT     */       EffectType::StatusChange, /*    ELEMENT     */              ElementType::None,
		/*     TARGET     */        TargetType::RandomEnemy, /*    ATK_MULT    */                            0x0, /*    HEAL_LO     */                            0x0,
		/*    HEAL_HI     */                            0x0, /*    AILMENT     */                           0x1D, /* AILMENT_CHANCE */                           0x64,
		/*     ACTION     */                            0x1, /*    PRIORITY    */                            0x2, /*     MSG_NO     */                          0x38A,
		/*    HAS_DIM     */                            0x1, /*    ANIM_NO     */ Animation::MonsterDefenseFlash, /*  ANIM_SUCCESS  */                Animation::None,
		/*     SFX_NO     */               SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                            0x0, /*  SMASH_CHANCE  */                            0x0,
		/*  REDIRECTABLE  */                            0x1, /* REDIRECTABLE2  */                            0x0
	},
	{
		/*       ID       */                           0xAB, /*    PP_COST     */                            0x0, /* RECOLOR_VALUE  */                           0x48,
		/*   HAS_SOUND    */                            0x0, /*     EFFECT     */       EffectType::StatusChange, /*    ELEMENT     */              ElementType::None,
		/*     TARGET     */         TargetType::AllEnemies, /*    ATK_MULT    */                            0x0, /*    HEAL_LO     */                            0x0,
		/*    HEAL_HI     */                            0x0, /*    AILMENT     */                           0x1E, /* AILMENT_CHANCE */                           0x64,
		/*     ACTION     */                            0x1, /*    PRIORITY    */                            0x2, /*     MSG_NO     */                          0x38B,
		/*    HAS_DIM     */                            0x1, /*    ANIM_NO     */ Animation::MonsterDefenseFlash, /*  ANIM_SUCCESS  */                Animation::None,
		/*     SFX_NO     */               SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                            0x0, /*  SMASH_CHANCE  */                            0x0,
		/*  REDIRECTABLE  */                            0x1, /* REDIRECTABLE2  */                            0x0
	},
	{
		/*       ID       */                           0xAC, /*    PP_COST     */                            0x6, /* RECOLOR_VALUE  */                           0x47,
		/*   HAS_SOUND    */                            0x0, /*     EFFECT     */       EffectType::StatusChange, /*    ELEMENT     */              ElementType::None,
		/*     TARGET     */        TargetType::RandomEnemy, /*    ATK_MULT    */                            0x0, /*    HEAL_LO     */                            0x0,
		/*    HEAL_HI     */                            0x0, /*    AILMENT     */                           0x1D, /* AILMENT_CHANCE */                           0x64,
		/*     ACTION     */                            0x1, /*    PRIORITY    */                            0x2, /*     MSG_NO     */                          0x38C,
		/*    HAS_DIM     */                            0x1, /*    ANIM_NO     */ Animation::MonsterDefenseFlash, /*  ANIM_SUCCESS  */                Animation::None,
		/*     SFX_NO     */                  SFX_ENEMY_PSI, /*  MISS_CHANCE   */                            0x0, /*  SMASH_CHANCE  */                            0x0,
		/*  REDIRECTABLE  */                            0x1, /* REDIRECTABLE2  */                            0x0
	},
	{
		/*       ID       */                           0xAD, /*    PP_COST     */                           0x12, /* RECOLOR_VALUE  */                           0x47,
		/*   HAS_SOUND    */                            0x0, /*     EFFECT     */       EffectType::StatusChange, /*    ELEMENT     */              ElementType::None,
		/*     TARGET     */         TargetType::AllEnemies, /*    ATK_MULT    */                            0x0, /*    HEAL_LO     */                            0x0,
		/*    HEAL_HI     */                            0x0, /*    AILMENT     */                           0x1D, /* AILMENT_CHANCE */                           0x64,
		/*     ACTION     */                            0x1, /*    PRIORITY    */                            0x2, /*     MSG_NO     */                          0x38D,
		/*    HAS_DIM     */                            0x1, /*    ANIM_NO     */ Animation::MonsterDefenseFlash, /*  ANIM_SUCCESS  */                Animation::None,
		/*     SFX_NO     */                  SFX_ENEMY_PSI, /*  MISS_CHANCE   */                            0x0, /*  SMASH_CHANCE  */                            0x0,
		/*  REDIRECTABLE  */                            0x1, /* REDIRECTABLE2  */                            0x0
	},
	{
		/*       ID       */                          0xAE, /*    PP_COST     */                           0x6, /* RECOLOR_VALUE  */                          0x47,
		/*   HAS_SOUND    */                           0x0, /*     EFFECT     */      EffectType::StatusChange, /*    ELEMENT     */             ElementType::None,
		/*     TARGET     */       TargetType::RandomEnemy, /*    ATK_MULT    */                           0x0, /*    HEAL_LO     */                           0x0,
		/*    HEAL_HI     */                           0x0, /*    AILMENT     */                          0x16, /* AILMENT_CHANCE */                          0x64,
		/*     ACTION     */                           0x1, /*    PRIORITY    */                           0x2, /*     MSG_NO     */                         0x38E,
		/*    HAS_DIM     */                           0x1, /*    ANIM_NO     */ Animation::MonsterShieldFlash, /*  ANIM_SUCCESS  */               Animation::None,
		/*     SFX_NO     */                 SFX_ENEMY_PSI, /*  MISS_CHANCE   */                           0x0, /*  SMASH_CHANCE  */                           0x0,
		/*  REDIRECTABLE  */                           0x1, /* REDIRECTABLE2  */                           0x0
	},
	{
		/*       ID       */                          0xAF, /*    PP_COST     */                          0x12, /* RECOLOR_VALUE  */                          0x47,
		/*   HAS_SOUND    */                           0x0, /*     EFFECT     */      EffectType::StatusChange, /*    ELEMENT     */             ElementType::None,
		/*     TARGET     */        TargetType::AllEnemies, /*    ATK_MULT    */                           0x0, /*    HEAL_LO     */                           0x0,
		/*    HEAL_HI     */                           0x0, /*    AILMENT     */                          0x16, /* AILMENT_CHANCE */                          0x64,
		/*     ACTION     */                           0x1, /*    PRIORITY    */                           0x2, /*     MSG_NO     */                         0x38F,
		/*    HAS_DIM     */                           0x1, /*    ANIM_NO     */ Animation::MonsterShieldFlash, /*  ANIM_SUCCESS  */               Animation::None,
		/*     SFX_NO     */                 SFX_ENEMY_PSI, /*  MISS_CHANCE   */                           0x0, /*  SMASH_CHANCE  */                           0x0,
		/*  REDIRECTABLE  */                           0x1, /* REDIRECTABLE2  */                           0x0
	},
	{
		/*       ID       */                       0xB0, /*    PP_COST     */                        0x0, /* RECOLOR_VALUE  */                        0x0,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */         EffectType::Attack, /*    ELEMENT     */       ElementType::Thunder,
		/*     TARGET     */ TargetType::ChooseOneAlly2, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                        0x0,
		/*    HEAL_HI     */                        0x0, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                        0x0,
		/*     ACTION     */                        0x0, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x390,
		/*    HAS_DIM     */                        0x0, /*    ANIM_NO     */            Animation::None, /*  ANIM_SUCCESS  */            Animation::None,
		/*     SFX_NO     */           SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x0, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                     0xB1, /*    PP_COST     */                      0x6, /* RECOLOR_VALUE  */                     0x47,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */    EffectType::PsiDamage, /*    ELEMENT     */        ElementType::Fire,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0xE,
		/*    HEAL_HI     */                     0x12, /*    AILMENT     */                      0x9, /* AILMENT_CHANCE */                      0xA,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x336,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */ Animation::MonsterPKFire, /*  ANIM_SUCCESS  */      Animation::NoEffect,
		/*     SFX_NO     */            SFX_ENEMY_PSI, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0xB2, /*    PP_COST     */                      0x6, /* RECOLOR_VALUE  */                     0x47,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */    EffectType::PsiDamage, /*    ELEMENT     */        ElementType::Fire,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                     0x3E,
		/*    HEAL_HI     */                     0x4E, /*    AILMENT     */                      0x9, /* AILMENT_CHANCE */                      0xA,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x337,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */ Animation::MonsterPKFire, /*  ANIM_SUCCESS  */      Animation::NoEffect,
		/*     SFX_NO     */            SFX_ENEMY_PSI, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                   0xB3, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x424,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0xB4, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x424,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                             0xB5, /*    PP_COST     */                              0x8, /* RECOLOR_VALUE  */                             0x47,
		/*   HAS_SOUND    */                              0x0, /*     EFFECT     */         EffectType::StatusChange, /*    ELEMENT     */                ElementType::None,
		/*     TARGET     */          TargetType::RandomEnemy, /*    ATK_MULT    */                              0x0, /*    HEAL_LO     */                              0x0,
		/*    HEAL_HI     */                              0x0, /*    AILMENT     */                             0x19, /* AILMENT_CHANCE */                             0x64,
		/*     ACTION     */                              0x1, /*    PRIORITY    */                              0x2, /*     MSG_NO     */                            0x395,
		/*    HAS_DIM     */                              0x1, /*    ANIM_NO     */ Animation::MonsterPsiShieldFlash, /*  ANIM_SUCCESS  */                  Animation::None,
		/*     SFX_NO     */                    SFX_ENEMY_PSI, /*  MISS_CHANCE   */                              0x0, /*  SMASH_CHANCE  */                              0x0,
		/*  REDIRECTABLE  */                              0x1, /* REDIRECTABLE2  */                              0x0
	},
	{
		/*       ID       */                             0xB6, /*    PP_COST     */                             0x14, /* RECOLOR_VALUE  */                             0x47,
		/*   HAS_SOUND    */                              0x0, /*     EFFECT     */         EffectType::StatusChange, /*    ELEMENT     */                ElementType::None,
		/*     TARGET     */           TargetType::AllEnemies, /*    ATK_MULT    */                              0x0, /*    HEAL_LO     */                              0x0,
		/*    HEAL_HI     */                              0x0, /*    AILMENT     */                             0x19, /* AILMENT_CHANCE */                             0x64,
		/*     ACTION     */                              0x1, /*    PRIORITY    */                              0x2, /*     MSG_NO     */                            0x396,
		/*    HAS_DIM     */                              0x1, /*    ANIM_NO     */ Animation::MonsterPsiShieldFlash, /*  ANIM_SUCCESS  */                  Animation::None,
		/*     SFX_NO     */                    SFX_ENEMY_PSI, /*  MISS_CHANCE   */                              0x0, /*  SMASH_CHANCE  */                              0x0,
		/*  REDIRECTABLE  */                              0x1, /* REDIRECTABLE2  */                              0x0
	},
	{
		/*       ID       */              0xB7, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */               0x0,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x397,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */          SFX_NULL, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                   0xB8, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x398,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */        Animation::None,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                              0xB9, /*    PP_COST     */                              0x12, /* RECOLOR_VALUE  */                              0x47,
		/*   HAS_SOUND    */                               0x0, /*     EFFECT     */          EffectType::StatusChange, /*    ELEMENT     */                 ElementType::None,
		/*     TARGET     */           TargetType::RandomEnemy, /*    ATK_MULT    */                               0x0, /*    HEAL_LO     */                               0x0,
		/*    HEAL_HI     */                               0x0, /*    AILMENT     */                              0x1A, /* AILMENT_CHANCE */                              0x64,
		/*     ACTION     */                               0x1, /*    PRIORITY    */                               0x2, /*     MSG_NO     */                             0x399,
		/*    HAS_DIM     */                               0x1, /*    ANIM_NO     */ Animation::MonsterPsiCounterFlash, /*  ANIM_SUCCESS  */                   Animation::None,
		/*     SFX_NO     */                     SFX_ENEMY_PSI, /*  MISS_CHANCE   */                               0x0, /*  SMASH_CHANCE  */                               0x0,
		/*  REDIRECTABLE  */                               0x1, /* REDIRECTABLE2  */                               0x0
	},
	{
		/*       ID       */                              0xBA, /*    PP_COST     */                              0x22, /* RECOLOR_VALUE  */                              0x47,
		/*   HAS_SOUND    */                               0x0, /*     EFFECT     */          EffectType::StatusChange, /*    ELEMENT     */                 ElementType::None,
		/*     TARGET     */            TargetType::AllEnemies, /*    ATK_MULT    */                               0x0, /*    HEAL_LO     */                               0x0,
		/*    HEAL_HI     */                               0x0, /*    AILMENT     */                              0x1A, /* AILMENT_CHANCE */                              0x64,
		/*     ACTION     */                               0x1, /*    PRIORITY    */                               0x2, /*     MSG_NO     */                             0x39A,
		/*    HAS_DIM     */                               0x1, /*    ANIM_NO     */ Animation::MonsterPsiCounterFlash, /*  ANIM_SUCCESS  */                   Animation::None,
		/*     SFX_NO     */                     SFX_ENEMY_PSI, /*  MISS_CHANCE   */                               0x0, /*  SMASH_CHANCE  */                               0x0,
		/*  REDIRECTABLE  */                               0x1, /* REDIRECTABLE2  */                               0x0
	},
	{
		/*       ID       */              0xBB, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x39B,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                     0xBC, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */         TargetType::Self, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x4, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x39C,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x0, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */              0xBD, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x39D,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xBE, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x39E,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xBF, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x39F,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xC0, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3A0,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xC1, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3A1,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xC2, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3A2,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xC3, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3A3,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xC4, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3A6,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                        0xC5, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                         0x0,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */           ElementType::Fire,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0xB4,
		/*    HEAL_HI     */                        0xD2, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x354,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */     Animation::SelfDestruct, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */              0xC6, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3AC,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xC7, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3AD,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xC8, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3AE,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xC9, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3AF,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xCA, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3B0,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xCB, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3B1,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xCC, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3B2,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xCD, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3B3,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xCE, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3B4,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xCF, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3B5,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xD0, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3B6,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xD1, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3B7,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xD2, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3B8,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xD3, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3B9,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xD4, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3BA,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                     0xD5, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x5, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x41C,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */    Animation::PorkyThing, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */              0xD6, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x34F,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xD7, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3BD,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xD8, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3BE,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xD9, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3BF,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xDA, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3C0,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xDB, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3C1,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xDC, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3C2,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xDD, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3C3,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xDE, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3C4,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                  0xDF, /*    PP_COST     */                   0x0, /* RECOLOR_VALUE  */                  0x48,
		/*   HAS_SOUND    */                   0x0, /*     EFFECT     */      EffectType::Misc, /*    ELEMENT     */     ElementType::None,
		/*     TARGET     */ TargetType::ThirdAlly, /*    ATK_MULT    */                   0x0, /*    HEAL_LO     */                   0x0,
		/*    HEAL_HI     */                   0x0, /*    AILMENT     */                   0x0, /* AILMENT_CHANCE */                   0x0,
		/*     ACTION     */                   0x0, /*    PRIORITY    */                   0x2, /*     MSG_NO     */                 0x30B,
		/*    HAS_DIM     */                   0x0, /*    ANIM_NO     */       Animation::None, /*  ANIM_SUCCESS  */       Animation::None,
		/*     SFX_NO     */      SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                   0x0, /*  SMASH_CHANCE  */                   0x0,
		/*  REDIRECTABLE  */                   0x0, /* REDIRECTABLE2  */                   0x0
	},
	{
		/*       ID       */              0xE0, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3C4,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                   0xE1, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x48,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */       EffectType::Misc, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x3C7,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */        Animation::None,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x0, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0xE2, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x48,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */       EffectType::Misc, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x3C8,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */        Animation::None,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x0, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */              0xE3, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3C9,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xE4, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3CA,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xE5, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3CB,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xE6, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3CC,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                      0xE7, /*    PP_COST     */                       0x0, /* RECOLOR_VALUE  */                      0x48,
		/*   HAS_SOUND    */                       0x0, /*     EFFECT     */  EffectType::StatusChange, /*    ELEMENT     */         ElementType::None,
		/*     TARGET     */    TargetType::RandomAlly, /*    ATK_MULT    */                       0x0, /*    HEAL_LO     */                       0x0,
		/*    HEAL_HI     */                       0x0, /*    AILMENT     */                       0xA, /* AILMENT_CHANCE */                      0x28,
		/*     ACTION     */                       0x1, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x360,
		/*    HAS_DIM     */                       0x1, /*    ANIM_NO     */ Animation::DigestiveFluid, /*  ANIM_SUCCESS  */           Animation::None,
		/*     SFX_NO     */          SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                       0x0, /*  SMASH_CHANCE  */                       0x0,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */              0xE8, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3CE,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                   0xE9, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x424,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x7, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */              0xEA, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3D0,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xEB, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3D1,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                   0xEC, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x486,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                     0xED, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x20, /* AILMENT_CHANCE */                     0x28,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x3D3,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */              0xEE, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3D4,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                   0xEF, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x14, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x486,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */              0xF0, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3A3,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xF1, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x2DF,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xF2, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3D8,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                0xF3, /*    PP_COST     */                 0x0, /* RECOLOR_VALUE  */                0x48,
		/*   HAS_SOUND    */                 0x0, /*     EFFECT     */  EffectType::Damage, /*    ELEMENT     */   ElementType::None,
		/*     TARGET     */    TargetType::Self, /*    ATK_MULT    */                 0x0, /*    HEAL_LO     */                0x14,
		/*    HEAL_HI     */                0x1E, /*    AILMENT     */                 0x0, /* AILMENT_CHANCE */                 0x0,
		/*     ACTION     */                 0x0, /*    PRIORITY    */                 0x2, /*     MSG_NO     */               0x3D9,
		/*    HAS_DIM     */                 0x0, /*    ANIM_NO     */     Animation::None, /*  ANIM_SUCCESS  */ Animation::NoEffect,
		/*     SFX_NO     */    SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                 0x0, /*  SMASH_CHANCE  */                 0x0,
		/*  REDIRECTABLE  */                 0x0, /* REDIRECTABLE2  */                 0x0
	},
	{
		/*       ID       */              0xF4, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3DA,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                       0xF5, /*    PP_COST     */                        0x0, /* RECOLOR_VALUE  */                       0x48,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */           EffectType::Misc, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */     TargetType::RandomAlly, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                        0x0,
		/*    HEAL_HI     */                        0x0, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                        0x0,
		/*     ACTION     */                        0x0, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x3DB,
		/*    HAS_DIM     */                        0x1, /*    ANIM_NO     */ Animation::MonsterPKPoison, /*  ANIM_SUCCESS  */            Animation::None,
		/*     SFX_NO     */           SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x1, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */              0xF6, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3DC,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xF7, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3DD,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xF8, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3DE,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                       0xF9, /*    PP_COST     */                        0x0, /* RECOLOR_VALUE  */                       0x48,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */           EffectType::Misc, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */           TargetType::Self, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                        0x0,
		/*    HEAL_HI     */                        0x0, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                        0x0,
		/*     ACTION     */                        0x0, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x3DF,
		/*    HAS_DIM     */                        0x1, /*    ANIM_NO     */ Animation::MonsterPKPoison, /*  ANIM_SUCCESS  */            Animation::None,
		/*     SFX_NO     */           SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x0, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */              0xFA, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3E0,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xFB, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3E1,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */          SFX_NULL, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xFC, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3E2,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */              0xFD, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3E3,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                        0xFE, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */      ElementType::Explosion,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x2A,
		/*    HEAL_HI     */                        0x30, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x428,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */      Animation::EnemyThrow2, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x4, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                   0xFF, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                   0x2F,
		/*    HEAL_HI     */                   0x35, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2FD,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */        Animation::Beam, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0xA, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x100, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x48,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */       EffectType::Misc, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x3E6,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */        Animation::None,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x101, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                    0x3,
		/*    HEAL_HI     */                    0x5, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x326,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                          0x102, /*    PP_COST     */                            0x0, /* RECOLOR_VALUE  */                           0x48,
		/*   HAS_SOUND    */                            0x0, /*     EFFECT     */       EffectType::StatusChange, /*    ELEMENT     */              ElementType::None,
		/*     TARGET     */               TargetType::Self, /*    ATK_MULT    */                            0x0, /*    HEAL_LO     */                            0x0,
		/*    HEAL_HI     */                            0x0, /*    AILMENT     */                           0x1C, /* AILMENT_CHANCE */                           0x64,
		/*     ACTION     */                            0x1, /*    PRIORITY    */                            0x2, /*     MSG_NO     */                          0x458,
		/*    HAS_DIM     */                            0x0, /*    ANIM_NO     */ Animation::MonsterOffenseFlash, /*  ANIM_SUCCESS  */                Animation::None,
		/*     SFX_NO     */               SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                            0x0, /*  SMASH_CHANCE  */                            0x0,
		/*  REDIRECTABLE  */                            0x0, /* REDIRECTABLE2  */                            0x0
	},
	{
		/*       ID       */             0x103, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */               0x0,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3E9,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                  0x104, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x28, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2FC,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0xA, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x105, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0xF, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x3EB,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */             0x106, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3EC,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x107, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3ED,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x108, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3EE,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                     0x109, /*    PP_COST     */                       0x0, /* RECOLOR_VALUE  */                      0x46,
		/*   HAS_SOUND    */                      -0x1, /*     EFFECT     */        EffectType::Attack, /*    ELEMENT     */         ElementType::None,
		/*     TARGET     */ TargetType::TwoRandomAlly, /*    ATK_MULT    */                      0x1E, /*    HEAL_LO     */                       0x0,
		/*    HEAL_HI     */                       0x0, /*    AILMENT     */                       0x0, /* AILMENT_CHANCE */                       0x0,
		/*     ACTION     */                       0x0, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x456,
		/*    HAS_DIM     */                       0x0, /*    ANIM_NO     */           Animation::None, /*  ANIM_SUCCESS  */        Animation::HardHit,
		/*     SFX_NO     */          SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                       0xA, /*  SMASH_CHANCE  */                       0x5,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */             0x10A, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */               0x0,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x447,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                    0x10B, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x4, /* AILMENT_CHANCE */                     0x19,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x30F,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::MonsterEfcE, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */              0x10C, /*    PP_COST     */                0x0, /* RECOLOR_VALUE  */               0x48,
		/*   HAS_SOUND    */                0x0, /*     EFFECT     */ EffectType::HealHP, /*    ELEMENT     */  ElementType::None,
		/*     TARGET     */   TargetType::Self, /*    ATK_MULT    */                0x0, /*    HEAL_LO     */               0x9C,
		/*    HEAL_HI     */               0xB4, /*    AILMENT     */                0x0, /* AILMENT_CHANCE */                0x0,
		/*     ACTION     */                0x0, /*    PRIORITY    */                0x2, /*     MSG_NO     */              0x379,
		/*    HAS_DIM     */                0x0, /*    ANIM_NO     */    Animation::None, /*  ANIM_SUCCESS  */ Animation::LifeUpB,
		/*     SFX_NO     */   SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                0x0, /*  SMASH_CHANCE  */                0x0,
		/*  REDIRECTABLE  */                0x0, /* REDIRECTABLE2  */                0x0
	},
	{
		/*       ID       */             0x10D, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x42C,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                  0x10E, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x14, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E2,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                   0x14,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x10F, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0xF, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x455,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x110, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0xA, /* AILMENT_CHANCE */                     0x14,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x3F6,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x111, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */         TargetType::Self, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x1D, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x3F7,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x0, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */             0x112, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3F8,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                  0x113, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E0,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x114, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x48,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */ ElementType::Explosion,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                   0x4E,
		/*    HEAL_HI     */                   0x54, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x44E,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x115, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x3, /* AILMENT_CHANCE */                     0x50,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x30A,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */       Animation::PsiBeam, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                  0x116, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x48,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */       EffectType::Misc, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x426,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */        Animation::None,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x0, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x117, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x14, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E0,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x118, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x28, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2DF,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */             0x119, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x47,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x400,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */     SFX_ENEMY_PSI, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x11A, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x47,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x401,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */     SFX_ENEMY_PSI, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x11B, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x47,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x402,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */     SFX_ENEMY_PSI, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                       0x11C, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */      ElementType::Explosion,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x8A,
		/*    HEAL_HI     */                        0x9D, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x41A,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */     Animation::MonsterThrow, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0xA, /*  SMASH_CHANCE  */                         0x5,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                  0x11D, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */       EffectType::Misc, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x404,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */   Animation::RestoreBG, /*  ANIM_SUCCESS  */        Animation::None,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x0, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x11E, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */       EffectType::Misc, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x405,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */   Animation::RestoreBG, /*  ANIM_SUCCESS  */        Animation::None,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x0, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */             0x11F, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x419,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                    0x120, /*    PP_COST     */                      0xA, /* RECOLOR_VALUE  */                     0x47,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x4, /* AILMENT_CHANCE */                     0x50,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x41B,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */  Animation::ThunderFlash, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */            SFX_ENEMY_PSI, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                  0x121, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x418,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                      0x122, /*    PP_COST     */                        0x0, /* RECOLOR_VALUE  */                       0x48,
		/*   HAS_SOUND    */                       -0x1, /*     EFFECT     */         EffectType::HealHP, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */ TargetType::ChooseOneEnemy, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                        0x0,
		/*    HEAL_HI     */                        0x0, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                        0x0,
		/*     ACTION     */                        0x0, /*    PRIORITY    */                        0x1, /*     MSG_NO     */                      0x408,
		/*    HAS_DIM     */                        0x0, /*    ANIM_NO     */         Animation::LifeUpO, /*  ANIM_SUCCESS  */            Animation::None,
		/*     SFX_NO     */           SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x0, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                  0x123, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x48,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x1, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x407,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */        Animation::None,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x124, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x14, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x409,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                 0x125, /*    PP_COST     */                   0x0, /* RECOLOR_VALUE  */                  0x46,
		/*   HAS_SOUND    */                  -0x1, /*     EFFECT     */    EffectType::Attack, /*    ELEMENT     */     ElementType::None,
		/*     TARGET     */ TargetType::AllAllies, /*    ATK_MULT    */                  0x14, /*    HEAL_LO     */                   0x1,
		/*    HEAL_HI     */                   0x1, /*    AILMENT     */                   0x0, /* AILMENT_CHANCE */                   0x0,
		/*     ACTION     */                   0x0, /*    PRIORITY    */                   0x2, /*     MSG_NO     */                 0x40A,
		/*    HAS_DIM     */                   0x0, /*    ANIM_NO     */       Animation::None, /*  ANIM_SUCCESS  */    Animation::HardHit,
		/*     SFX_NO     */      SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                   0x0, /*  SMASH_CHANCE  */                   0x5,
		/*  REDIRECTABLE  */                   0x1, /* REDIRECTABLE2  */                   0x0
	},
	{
		/*       ID       */                 0x126, /*    PP_COST     */                   0x0, /* RECOLOR_VALUE  */                  0x46,
		/*   HAS_SOUND    */                  -0x1, /*     EFFECT     */    EffectType::Attack, /*    ELEMENT     */     ElementType::None,
		/*     TARGET     */ TargetType::AllAllies, /*    ATK_MULT    */                  0x14, /*    HEAL_LO     */                   0x1,
		/*    HEAL_HI     */                   0x1, /*    AILMENT     */                   0x0, /* AILMENT_CHANCE */                   0x0,
		/*     ACTION     */                   0x0, /*    PRIORITY    */                   0x2, /*     MSG_NO     */                 0x40B,
		/*    HAS_DIM     */                   0x0, /*    ANIM_NO     */       Animation::None, /*  ANIM_SUCCESS  */    Animation::HardHit,
		/*     SFX_NO     */      SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                   0x4, /*  SMASH_CHANCE  */                   0x0,
		/*  REDIRECTABLE  */                   0x1, /* REDIRECTABLE2  */                   0x0
	},
	{
		/*       ID       */                  0x127, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x14, /*    HEAL_LO     */                    0x1,
		/*    HEAL_HI     */                    0x1, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x413,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x128, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x28, /*    HEAL_LO     */                    0x1,
		/*    HEAL_HI     */                    0x1, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x415,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                       0x129, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                         0x0,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */      ElementType::Explosion,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                       0x128,
		/*    HEAL_HI     */                       0x15A, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x355,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */         Animation::Immolate, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */             0x12A, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3A3,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x12B, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3A3,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                  0x12C, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E6,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                       0x12D, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                        -0x1, /*     EFFECT     */          EffectType::Attack, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                        0x23, /*    HEAL_LO     */                         0x0,
		/*    HEAL_HI     */                         0x0, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x324,
		/*    HAS_DIM     */                         0x0, /*    ANIM_NO     */             Animation::None, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x4, /*  SMASH_CHANCE  */                         0x5,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */             0x12E, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x39F,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x12F, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3A1,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                  0x130, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0xF, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E2,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x131, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2F9,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x6, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x132, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */      ElementType::Fire,
		/*     TARGET     */  TargetType::AllAllies, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                   0x26,
		/*    HEAL_HI     */                   0x2A, /*    AILMENT     */                    0x9, /* AILMENT_CHANCE */                    0xA,
		/*     ACTION     */                    0x1, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x335,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */ Animation::MonsterBomb, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x133, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x12, /* AILMENT_CHANCE */                     0x55,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x36B,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::Degradation, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x134, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x46,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */       EffectType::Damage, /*    ELEMENT     */        ElementType::Fire,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x3,
		/*    HEAL_HI     */                      0x5, /*    AILMENT     */                      0x0, /* AILMENT_CHANCE */                      0x0,
		/*     ACTION     */                      0x0, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x334,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */ Animation::MonsterPKFire, /*  ANIM_SUCCESS  */      Animation::NoEffect,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                  0x135, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x3F5,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x136, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x48,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */       EffectType::Misc, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x3E6,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */        Animation::None,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */             0x137, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3F3,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x138, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3F4,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                  0x139, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0xF, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x457,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x13A, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */         TargetType::Self, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x1B, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x3D2,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                  0x13B, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x300,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x13C, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0xA, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x323,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x2, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */             0x13D, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3F1,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                  0x13E, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x452,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x13F, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                  0x300, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                    0x1,
		/*    HEAL_HI     */                    0x2, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x453,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x140, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0xF, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E2,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                 0x141, /*    PP_COST     */                   0x0, /* RECOLOR_VALUE  */                  0x46,
		/*   HAS_SOUND    */                   0x0, /*     EFFECT     */    EffectType::Damage, /*    ELEMENT     */     ElementType::None,
		/*     TARGET     */ TargetType::AllAllies, /*    ATK_MULT    */                   0x0, /*    HEAL_LO     */                  0x32,
		/*    HEAL_HI     */                  0x38, /*    AILMENT     */                   0x0, /* AILMENT_CHANCE */                   0x0,
		/*     ACTION     */                   0x0, /*    PRIORITY    */                   0x2, /*     MSG_NO     */                 0x331,
		/*    HAS_DIM     */                   0x1, /*    ANIM_NO     */  Animation::GiantWave, /*  ANIM_SUCCESS  */    Animation::HardHit,
		/*     SFX_NO     */      SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                   0x0, /*  SMASH_CHANCE  */                   0x0,
		/*  REDIRECTABLE  */                   0x1, /* REDIRECTABLE2  */                   0x0
	},
	{
		/*       ID       */                    0x142, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                     -0x1, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0xA, /* AILMENT_CHANCE */                     0x1E,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x35C,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */             0x143, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3BB,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x144, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3CF,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                  0x145, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x14, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2F5,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x146, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2FC,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0xA, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x147, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x32, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x322,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */             0x148, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3BA,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                 0x149, /*    PP_COST     */                   0x0, /* RECOLOR_VALUE  */                  0x48,
		/*   HAS_SOUND    */                   0x0, /*     EFFECT     */      EffectType::Misc, /*    ELEMENT     */     ElementType::None,
		/*     TARGET     */      TargetType::Self, /*    ATK_MULT    */                   0x0, /*    HEAL_LO     */                   0x0,
		/*    HEAL_HI     */                   0x0, /*    AILMENT     */                   0x0, /* AILMENT_CHANCE */                   0x0,
		/*     ACTION     */                   0x0, /*    PRIORITY    */                   0x2, /*     MSG_NO     */                 0x3EF,
		/*    HAS_DIM     */                   0x0, /*    ANIM_NO     */       Animation::None, /*  ANIM_SUCCESS  */ Animation::ShakeHoriz,
		/*     SFX_NO     */      SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                   0x0, /*  SMASH_CHANCE  */                   0x0,
		/*  REDIRECTABLE  */                   0x0, /* REDIRECTABLE2  */                   0x0
	},
	{
		/*       ID       */             0x14A, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3F0,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                  0x14B, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0xF, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E0,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                     0x14C, /*    PP_COST     */                       0x0, /* RECOLOR_VALUE  */                      0x48,
		/*   HAS_SOUND    */                       0x0, /*     EFFECT     */        EffectType::Damage, /*    ELEMENT     */         ElementType::None,
		/*     TARGET     */    TargetType::RandomAlly, /*    ATK_MULT    */                       0x0, /*    HEAL_LO     */                       0xA,
		/*    HEAL_HI     */                       0xF, /*    AILMENT     */                       0x0, /* AILMENT_CHANCE */                       0x0,
		/*     ACTION     */                       0x0, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x330,
		/*    HAS_DIM     */                       0x1, /*    ANIM_NO     */ Animation::DigestiveFluid, /*  ANIM_SUCCESS  */        Animation::HardHit,
		/*     SFX_NO     */          SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                       0x0, /*  SMASH_CHANCE  */                       0x0,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */             0x14D, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3A9,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                  0x14E, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E0,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */              0x14F, /*    PP_COST     */                0x0, /* RECOLOR_VALUE  */               0x48,
		/*   HAS_SOUND    */                0x0, /*     EFFECT     */ EffectType::HealHP, /*    ELEMENT     */  ElementType::None,
		/*     TARGET     */   TargetType::Self, /*    ATK_MULT    */                0x0, /*    HEAL_LO     */               0x94,
		/*    HEAL_HI     */               0x9E, /*    AILMENT     */                0x0, /* AILMENT_CHANCE */                0x0,
		/*     ACTION     */                0x0, /*    PRIORITY    */                0x2, /*     MSG_NO     */              0x40C,
		/*    HAS_DIM     */                0x0, /*    ANIM_NO     */    Animation::None, /*  ANIM_SUCCESS  */ Animation::LifeUpB,
		/*     SFX_NO     */   SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                0x0, /*  SMASH_CHANCE  */                0x0,
		/*  REDIRECTABLE  */                0x0, /* REDIRECTABLE2  */                0x0
	},
	{
		/*       ID       */                    0x150, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x20, /* AILMENT_CHANCE */                     0x46,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x3D3,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                  0x151, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */  TargetType::AllAllies, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                   0x23,
		/*    HEAL_HI     */                   0x2D, /*    AILMENT     */                    0x1, /* AILMENT_CHANCE */                   0x1E,
		/*     ACTION     */                    0x1, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x3FC,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */ Animation::MonsterEfcF, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x152, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x14, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2FB,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x153, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */ ElementType::Explosion,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                   0x28,
		/*    HEAL_HI     */                   0x2D, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x301,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */  Animation::CannonShot, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x154, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x5, /* AILMENT_CHANCE */                     0x46,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x316,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::MonsterEfcB, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                       0x155, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                        -0x1, /*     EFFECT     */          EffectType::Attack, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                        0x19, /*    HEAL_LO     */                         0x0,
		/*    HEAL_HI     */                         0x0, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x325,
		/*    HAS_DIM     */                         0x0, /*    ANIM_NO     */             Animation::None, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x4, /*  SMASH_CHANCE  */                         0x5,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */             0x156, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */               0x0,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x2DF,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x157, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x46,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3F2,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x158, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x34E,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x159, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x34B,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                  0x15A, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                   0x11,
		/*    HEAL_HI     */                   0x15, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x3FD,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */  Animation::EnemyThrow, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x15B, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E0,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                     0x15C, /*    PP_COST     */                       0x6, /* RECOLOR_VALUE  */                      0x47,
		/*   HAS_SOUND    */                       0x0, /*     EFFECT     */  EffectType::StatusChange, /*    ELEMENT     */         ElementType::None,
		/*     TARGET     */    TargetType::RandomAlly, /*    ATK_MULT    */                       0x0, /*    HEAL_LO     */                       0x0,
		/*    HEAL_HI     */                       0x0, /*    AILMENT     */                       0x3, /* AILMENT_CHANCE */                      0x46,
		/*     ACTION     */                       0x1, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x30D,
		/*    HAS_DIM     */                       0x1, /*    ANIM_NO     */ Animation::ShieldHitFlash, /*  ANIM_SUCCESS  */           Animation::None,
		/*     SFX_NO     */             SFX_ENEMY_PSI, /*  MISS_CHANCE   */                       0x0, /*  SMASH_CHANCE  */                       0x0,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */              0x15D, /*    PP_COST     */                0x0, /* RECOLOR_VALUE  */               0x46,
		/*   HAS_SOUND    */               -0x1, /*     EFFECT     */ EffectType::Attack, /*    ELEMENT     */  ElementType::None,
		/*     TARGET     */               0x24, /*    ATK_MULT    */               0x23, /*    HEAL_LO     */                0x0,
		/*    HEAL_HI     */                0x0, /*    AILMENT     */                0x0, /* AILMENT_CHANCE */                0x0,
		/*     ACTION     */                0x0, /*    PRIORITY    */                0x2, /*     MSG_NO     */              0x406,
		/*    HAS_DIM     */                0x0, /*    ANIM_NO     */    Animation::None, /*  ANIM_SUCCESS  */ Animation::HardHit,
		/*     SFX_NO     */   SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                0x4, /*  SMASH_CHANCE  */                0x5,
		/*  REDIRECTABLE  */                0x1, /* REDIRECTABLE2  */                0x0
	},
	{
		/*       ID       */              0x15E, /*    PP_COST     */                0x0, /* RECOLOR_VALUE  */               0x46,
		/*   HAS_SOUND    */               -0x1, /*     EFFECT     */ EffectType::Attack, /*    ELEMENT     */  ElementType::None,
		/*     TARGET     */               0x25, /*    ATK_MULT    */               0x1E, /*    HEAL_LO     */                0x0,
		/*    HEAL_HI     */                0x0, /*    AILMENT     */                0x0, /* AILMENT_CHANCE */                0x0,
		/*     ACTION     */                0x0, /*    PRIORITY    */                0x2, /*     MSG_NO     */              0x406,
		/*    HAS_DIM     */                0x0, /*    ANIM_NO     */    Animation::None, /*  ANIM_SUCCESS  */ Animation::HardHit,
		/*     SFX_NO     */   SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                0x4, /*  SMASH_CHANCE  */                0x5,
		/*  REDIRECTABLE  */                0x1, /* REDIRECTABLE2  */                0x0
	},
	{
		/*       ID       */                     0x15F, /*    PP_COST     */                       0x0, /* RECOLOR_VALUE  */                      0x46,
		/*   HAS_SOUND    */                      -0x1, /*     EFFECT     */        EffectType::Attack, /*    ELEMENT     */         ElementType::None,
		/*     TARGET     */ TargetType::TwoRandomAlly, /*    ATK_MULT    */                      0x14, /*    HEAL_LO     */                       0x0,
		/*    HEAL_HI     */                       0x0, /*    AILMENT     */                       0x0, /* AILMENT_CHANCE */                       0x0,
		/*     ACTION     */                       0x0, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x407,
		/*    HAS_DIM     */                       0x0, /*    ANIM_NO     */           Animation::None, /*  ANIM_SUCCESS  */       Animation::NoEffect,
		/*     SFX_NO     */          SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                       0x4, /*  SMASH_CHANCE  */                       0x5,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */                  0x160, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                   0x48,
		/*    HEAL_HI     */                   0x4E, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2FD,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */        Animation::Beam, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                     0x161, /*    PP_COST     */                       0x0, /* RECOLOR_VALUE  */                      0x46,
		/*   HAS_SOUND    */                       0x0, /*     EFFECT     */        EffectType::Damage, /*    ELEMENT     */         ElementType::None,
		/*     TARGET     */    TargetType::RandomAlly, /*    ATK_MULT    */                       0x0, /*    HEAL_LO     */                      0x4C,
		/*    HEAL_HI     */                      0x54, /*    AILMENT     */                       0x0, /* AILMENT_CHANCE */                       0x0,
		/*     ACTION     */                       0x0, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x330,
		/*    HAS_DIM     */                       0x1, /*    ANIM_NO     */ Animation::DigestiveFluid, /*  ANIM_SUCCESS  */        Animation::HardHit,
		/*     SFX_NO     */          SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                       0x0, /*  SMASH_CHANCE  */                       0x0,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */                  0x162, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E1,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x163, /*    PP_COST     */                     0x1E, /* RECOLOR_VALUE  */                     0x47,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x4, /* AILMENT_CHANCE */                     0x28,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x466,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */  Animation::ThunderFlash, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */            SFX_ENEMY_PSI, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */             0x164, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x485,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                       0x165, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Attack, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                        0x28, /*    HEAL_LO     */                         0x0,
		/*    HEAL_HI     */                         0x0, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x46E,
		/*    HAS_DIM     */                         0x0, /*    ANIM_NO     */             Animation::None, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x4, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */             0x166, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x46F,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                  0x167, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x40E,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x168, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x40F,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x169, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x48,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */       EffectType::Misc, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x410,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */        Animation::None,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */             0x16A, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */               0x0,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x411,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                 0x16B, /*    PP_COST     */                   0x0, /* RECOLOR_VALUE  */                  0x46,
		/*   HAS_SOUND    */                   0x0, /*     EFFECT     */    EffectType::Damage, /*    ELEMENT     */     ElementType::None,
		/*     TARGET     */ TargetType::AllAllies, /*    ATK_MULT    */                   0x0, /*    HEAL_LO     */                  0x3C,
		/*    HEAL_HI     */                  0x3E, /*    AILMENT     */                   0x0, /* AILMENT_CHANCE */                   0x0,
		/*     ACTION     */                   0x0, /*    PRIORITY    */                   0x2, /*     MSG_NO     */                 0x3C5,
		/*    HAS_DIM     */                   0x0, /*    ANIM_NO     */       Animation::None, /*  ANIM_SUCCESS  */    Animation::HardHit,
		/*     SFX_NO     */      SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                   0x0, /*  SMASH_CHANCE  */                   0x0,
		/*  REDIRECTABLE  */                   0x1, /* REDIRECTABLE2  */                   0x0
	},
	{
		/*       ID       */                  0x16C, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2EA,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x16D, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E3,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                       0x16E, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Attack, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                        0x28, /*    HEAL_LO     */                         0x0,
		/*    HEAL_HI     */                         0x0, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x325,
		/*    HAS_DIM     */                         0x0, /*    ANIM_NO     */             Animation::None, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x4, /*  SMASH_CHANCE  */                         0x5,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                  0x16F, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x28, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x415,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x3, /*  SMASH_CHANCE  */                    0x3,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                       0x170, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */        ElementType::Thunder,
		/*     TARGET     */       TargetType::AllAllies, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x84,
		/*    HEAL_HI     */                        0x89, /*    AILMENT     */                         0x2, /* AILMENT_CHANCE */                         0x3,
		/*     ACTION     */                         0x1, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x403,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */ Animation::NKCyborgBeamWipe, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                      0x171, /*    PP_COST     */                        0x0, /* RECOLOR_VALUE  */                       0x48,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */         EffectType::HealHP, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */           TargetType::Self, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                       0x64,
		/*    HEAL_HI     */                       0x64, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                        0x0,
		/*     ACTION     */                        0x0, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x3E4,
		/*    HAS_DIM     */                        0x1, /*    ANIM_NO     */ Animation::GenetorRecharge, /*  ANIM_SUCCESS  */         Animation::LifeUpB,
		/*     SFX_NO     */           SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x0, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                    0x172, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */         EffectType::Misc, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */         TargetType::Self, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x0, /* AILMENT_CHANCE */                      0x0,
		/*     ACTION     */                      0x0, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x3E5,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */ Animation::GenetorRevive, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x0, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x173, /*    PP_COST     */                       0x0, /* RECOLOR_VALUE  */                      0x46,
		/*   HAS_SOUND    */                      -0x1, /*     EFFECT     */        EffectType::Attack, /*    ELEMENT     */         ElementType::None,
		/*     TARGET     */ TargetType::TwoRandomAlly, /*    ATK_MULT    */                      0x1E, /*    HEAL_LO     */                       0x0,
		/*    HEAL_HI     */                       0x0, /*    AILMENT     */                       0x0, /* AILMENT_CHANCE */                       0x0,
		/*     ACTION     */                       0x0, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x420,
		/*    HAS_DIM     */                       0x0, /*    ANIM_NO     */           Animation::None, /*  ANIM_SUCCESS  */        Animation::HardHit,
		/*     SFX_NO     */          SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                       0x3, /*  SMASH_CHANCE  */                       0x5,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */                  0x174, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x421,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                     0x175, /*    PP_COST     */                       0x0, /* RECOLOR_VALUE  */                      0x46,
		/*   HAS_SOUND    */                      -0x1, /*     EFFECT     */        EffectType::Attack, /*    ELEMENT     */         ElementType::None,
		/*     TARGET     */ TargetType::TwoRandomAlly, /*    ATK_MULT    */                       0xA, /*    HEAL_LO     */                       0x0,
		/*    HEAL_HI     */                       0x0, /*    AILMENT     */                       0x0, /* AILMENT_CHANCE */                       0x0,
		/*     ACTION     */                       0x0, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x3E7,
		/*    HAS_DIM     */                       0x0, /*    ANIM_NO     */           Animation::None, /*  ANIM_SUCCESS  */       Animation::NoEffect,
		/*     SFX_NO     */          SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                       0x4, /*  SMASH_CHANCE  */                       0x5,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */                  0x176, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x28, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x41D,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                       0x177, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Attack, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0xF, /*    HEAL_LO     */                         0x0,
		/*    HEAL_HI     */                         0x0, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x48E,
		/*    HAS_DIM     */                         0x0, /*    ANIM_NO     */             Animation::None, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x4, /*  SMASH_CHANCE  */                         0x5,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                    0x178, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x7, /* AILMENT_CHANCE */                     0x55,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x41E,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::MonsterEfcA, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x179, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */         TargetType::Self, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x1B, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x41F,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */    Animation::WhiteFlash, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x0, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x17A, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */         TargetType::Self, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x1D, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x41F,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */    Animation::WhiteFlash, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x0, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                 0x17B, /*    PP_COST     */                   0x0, /* RECOLOR_VALUE  */                  0x48,
		/*   HAS_SOUND    */                   0x0, /*     EFFECT     */    EffectType::HealHP, /*    ELEMENT     */     ElementType::None,
		/*     TARGET     */      TargetType::Self, /*    ATK_MULT    */                   0x0, /*    HEAL_LO     */                 0x12C,
		/*    HEAL_HI     */                 0x140, /*    AILMENT     */                   0x0, /* AILMENT_CHANCE */                   0x0,
		/*     ACTION     */                   0x0, /*    PRIORITY    */                   0x2, /*     MSG_NO     */                 0x41F,
		/*    HAS_DIM     */                   0x1, /*    ANIM_NO     */ Animation::WhiteFlash, /*  ANIM_SUCCESS  */    Animation::LifeUpG,
		/*     SFX_NO     */      SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                   0x0, /*  SMASH_CHANCE  */                   0x0,
		/*  REDIRECTABLE  */                   0x0, /* REDIRECTABLE2  */                   0x0
	},
	{
		/*       ID       */                  0x17C, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x23, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E2,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x17D, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x46,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */       EffectType::Damage, /*    ELEMENT     */        ElementType::Fire,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                     0x2A,
		/*    HEAL_HI     */                     0x2F, /*    AILMENT     */                      0x9, /* AILMENT_CHANCE */                      0x7,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x334,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */ Animation::MonsterPKFire, /*  ANIM_SUCCESS  */      Animation::NoEffect,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                  0x17E, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2EF,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x17F, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x463,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0xA, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */             0x180, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */              -0x1, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x462,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x181, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */              -0x1, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x49D,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x182, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */               0x0,
		/*   HAS_SOUND    */              -0x1, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x49E,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                    0x183, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x7, /* AILMENT_CHANCE */                     0x50,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x364,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::MonsterEfcB, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */             0x184, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */              -0x1, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x459,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x185, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */              -0x1, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x45A,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                  0x186, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x2, /* AILMENT_CHANCE */                    0x3,
		/*     ACTION     */                    0x1, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x427,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                       0x187, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x47,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */       EffectType::PsiDamage, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */       TargetType::AllAllies, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0xF2,
		/*    HEAL_HI     */                       0x100, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x348,
		/*    HAS_DIM     */                         0x0, /*    ANIM_NO     */ Animation::MonsterPKDefense, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */               SFX_ENEMY_PSI, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */             0x188, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */               0x0,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4E2,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */          SFX_NULL, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x189, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */               0x0,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4E6,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */          SFX_NULL, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                  0x18A, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                    0x1,
		/*    HEAL_HI     */                    0x2, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E0,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */             0x18B, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4E7,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x18C, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x47,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4E9,
		/*    HAS_DIM     */               0x1, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */     SFX_ENEMY_PSI, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                       0x18D, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x47,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */       EffectType::PsiDamage, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */       TargetType::AllAllies, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0xF2,
		/*    HEAL_HI     */                       0x100, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x348,
		/*    HAS_DIM     */                         0x0, /*    ANIM_NO     */ Animation::MonsterPKDefense, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */               SFX_ENEMY_PSI, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                    0x18E, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x0, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x44D,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */   Animation::MonsterEfcB, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x18F, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x47,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */         TargetType::Self, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x17, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x391,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */            SFX_ENEMY_PSI, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x190, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x47,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::AllEnemies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x17, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x392,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */            SFX_ENEMY_PSI, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */             0x191, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x474,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                  0x192, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2EB,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x3, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x193, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x46,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */       EffectType::Damage, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                     0x50,
		/*    HEAL_HI     */                     0x57, /*    AILMENT     */                      0x0, /* AILMENT_CHANCE */                      0x0,
		/*     ACTION     */                      0x0, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x2FD,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */ Animation::MaskedManBeam, /*  ANIM_SUCCESS  */       Animation::HardHit,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x5,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                       0x194, /*    PP_COST     */                        0x50, /* RECOLOR_VALUE  */                        0x47,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */       EffectType::PsiDamage, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */       TargetType::AllAllies, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                       0x154,
		/*    HEAL_HI     */                       0x168, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x496,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */ Animation::MonsterPKDefense, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */               SFX_ENEMY_PSI, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                       0x195, /*    PP_COST     */                        0x28, /* RECOLOR_VALUE  */                        0x47,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */       EffectType::PsiDamage, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */       TargetType::AllAllies, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0xB2,
		/*    HEAL_HI     */                        0xBA, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x4F1,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */ Animation::MonsterPKDefense, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */               SFX_ENEMY_PSI, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                       0x196, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */        ElementType::Thunder,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x62,
		/*    HEAL_HI     */                        0x67, /*    AILMENT     */                         0x2, /* AILMENT_CHANCE */                         0x3,
		/*     ACTION     */                         0x1, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x442,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */ Animation::MonsterPKThunder, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                       0x197, /*    PP_COST     */                         0xA, /* RECOLOR_VALUE  */                        0x47,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */       EffectType::PsiDamage, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */       TargetType::AllAllies, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x55,
		/*    HEAL_HI     */                        0x58, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x4EF,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */ Animation::MonsterPKDefense, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */               SFX_ENEMY_PSI, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                       0x198, /*    PP_COST     */                        0x14, /* RECOLOR_VALUE  */                        0x47,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */       EffectType::PsiDamage, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */       TargetType::AllAllies, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x6D,
		/*    HEAL_HI     */                        0x79, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x4F0,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */ Animation::MonsterPKDefense, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */               SFX_ENEMY_PSI, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                       0x199, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */        ElementType::Thunder,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x10,
		/*    HEAL_HI     */                        0x16, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x442,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */ Animation::MonsterPKThunder, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                  0x19A, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x48,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */       EffectType::Misc, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2DF,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */        Animation::None,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                       0x19B, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */      ElementType::Explosion,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                       0x112,
		/*    HEAL_HI     */                       0x11F, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x346,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */         Animation::Immolate, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                       0x19C, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */      ElementType::Explosion,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                       0x140,
		/*    HEAL_HI     */                       0x154, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x347,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */         Animation::Immolate, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                      0x19D, /*    PP_COST     */                        0x0, /* RECOLOR_VALUE  */                       0x48,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */         EffectType::HealHP, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */ TargetType::ChooseOneEnemy, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                       0xC8,
		/*    HEAL_HI     */                       0xFA, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                        0x0,
		/*     ACTION     */                        0x0, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x37D,
		/*    HAS_DIM     */                        0x0, /*    ANIM_NO     */            Animation::None, /*  ANIM_SUCCESS  */         Animation::LifeUpG,
		/*     SFX_NO     */           SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x0, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */             0x19E, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x475,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                  0x19F, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x28, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x6, /* AILMENT_CHANCE */                   0x1E,
		/*     ACTION     */                    0x1, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x443,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x1A0, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x3C, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E5,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                   0x14,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                       0x1A1, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */      ElementType::Explosion,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x70,
		/*    HEAL_HI     */                        0x7C, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x41A,
		/*    HAS_DIM     */                         0x0, /*    ANIM_NO     */     Animation::MonsterThrow, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                       0x1A2, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */        ElementType::Thunder,
		/*     TARGET     */       TargetType::AllAllies, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x49,
		/*    HEAL_HI     */                        0x56, /*    AILMENT     */                         0x2, /* AILMENT_CHANCE */                         0x3,
		/*     ACTION     */                         0x1, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x442,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */ Animation::MonsterPKThunder, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                    0x1A3, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x1, /* AILMENT_CHANCE */                     0x3C,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x304,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::MonsterEfcA, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                          0x1A4, /*    PP_COST     */                            0x0, /* RECOLOR_VALUE  */                           0x48,
		/*   HAS_SOUND    */                           -0x1, /*     EFFECT     */       EffectType::StatusChange, /*    ELEMENT     */              ElementType::None,
		/*     TARGET     */               TargetType::Self, /*    ATK_MULT    */                            0x0, /*    HEAL_LO     */                            0x0,
		/*    HEAL_HI     */                            0x0, /*    AILMENT     */                            0x0, /* AILMENT_CHANCE */                           0x64,
		/*     ACTION     */                            0x1, /*    PRIORITY    */                            0x2, /*     MSG_NO     */                          0x422,
		/*    HAS_DIM     */                            0x0, /*    ANIM_NO     */ Animation::MonsterOffenseFlash, /*  ANIM_SUCCESS  */                Animation::None,
		/*     SFX_NO     */               SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                            0x0, /*  SMASH_CHANCE  */                            0x0,
		/*  REDIRECTABLE  */                            0x1, /* REDIRECTABLE2  */                            0x0
	},
	{
		/*       ID       */                    0x1A5, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                     -0x1, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */         TargetType::Self, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x17, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x3CD,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::CounterWipe, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x5,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                         0x1A6, /*    PP_COST     */                           0x0, /* RECOLOR_VALUE  */                          0x46,
		/*   HAS_SOUND    */                           0x0, /*     EFFECT     */            EffectType::Damage, /*    ELEMENT     */             ElementType::None,
		/*     TARGET     */         TargetType::AllAllies, /*    ATK_MULT    */                           0x0, /*    HEAL_LO     */                          0xA7,
		/*    HEAL_HI     */                          0xB6, /*    AILMENT     */                           0x0, /* AILMENT_CHANCE */                           0x0,
		/*     ACTION     */                           0x0, /*    PRIORITY    */                           0x2, /*     MSG_NO     */                         0x444,
		/*    HAS_DIM     */                           0x1, /*    ANIM_NO     */ Animation::NKCyborgBeamAttack, /*  ANIM_SUCCESS  */            Animation::HardHit,
		/*     SFX_NO     */              SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                           0x0, /*  SMASH_CHANCE  */                           0x0,
		/*  REDIRECTABLE  */                           0x1, /* REDIRECTABLE2  */                           0x0
	},
	{
		/*       ID       */                    0x1A7, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x0, /* AILMENT_CHANCE */                      0x0,
		/*     ACTION     */                      0x0, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x446,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                      0x1A8, /*    PP_COST     */                        0x0, /* RECOLOR_VALUE  */                       0x48,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */         EffectType::HealHP, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */           TargetType::Self, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                      0x237,
		/*    HEAL_HI     */                      0x248, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                        0x0,
		/*     ACTION     */                        0x0, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x445,
		/*    HAS_DIM     */                        0x1, /*    ANIM_NO     */ Animation::MonsterPKLifeUp, /*  ANIM_SUCCESS  */         Animation::LifeUpO,
		/*     SFX_NO     */           SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x0, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                     0x1A9, /*    PP_COST     */                       0x0, /* RECOLOR_VALUE  */                      0x48,
		/*   HAS_SOUND    */                       0x0, /*     EFFECT     */  EffectType::StatusChange, /*    ELEMENT     */         ElementType::None,
		/*     TARGET     */          TargetType::Self, /*    ATK_MULT    */                       0x0, /*    HEAL_LO     */                       0x0,
		/*    HEAL_HI     */                       0x0, /*    AILMENT     */                      0x1A, /* AILMENT_CHANCE */                      0x64,
		/*     ACTION     */                       0x1, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x48F,
		/*    HAS_DIM     */                       0x1, /*    ANIM_NO     */ Animation::PsiCounterWipe, /*  ANIM_SUCCESS  */           Animation::None,
		/*     SFX_NO     */          SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                       0x0, /*  SMASH_CHANCE  */                       0x0,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */                  0x1AA, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x32, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x4EE,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0xA, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x1AB, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x0, /* AILMENT_CHANCE */                      0x0,
		/*     ACTION     */                      0x0, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x44D,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */   Animation::MonsterEfcB, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x1AC, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x5, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x36D,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */   Animation::Degradation, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */             0x1AD, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x448,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x1AE, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x449,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x1AF, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x44A,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x1B0, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x44B,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x1B1, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x44C,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                  0x1B2, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x48,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                    0xC,
		/*    HEAL_HI     */                   0x10, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x356,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x1B3, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::AllAllies_, /*    ATK_MULT    */                   0x14, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x454,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x1B4, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::AllAllies_, /*    ATK_MULT    */                   0x14, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x454,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x1B5, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x14, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2DF,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                 0x1B6, /*    PP_COST     */                   0x0, /* RECOLOR_VALUE  */                  0x46,
		/*   HAS_SOUND    */                  -0x1, /*     EFFECT     */    EffectType::Attack, /*    ELEMENT     */     ElementType::None,
		/*     TARGET     */ TargetType::RandomAny, /*    ATK_MULT    */                   0xC, /*    HEAL_LO     */                   0x0,
		/*    HEAL_HI     */                   0x0, /*    AILMENT     */                   0x0, /* AILMENT_CHANCE */                   0x0,
		/*     ACTION     */                   0x0, /*    PRIORITY    */                   0x2, /*     MSG_NO     */                 0x2E0,
		/*    HAS_DIM     */                   0x0, /*    ANIM_NO     */       Animation::None, /*  ANIM_SUCCESS  */   Animation::NoEffect,
		/*     SFX_NO     */      SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                   0x4, /*  SMASH_CHANCE  */                   0x5,
		/*  REDIRECTABLE  */                   0x1, /* REDIRECTABLE2  */                   0x0
	},
	{
		/*       ID       */                 0x1B7, /*    PP_COST     */                   0x0, /* RECOLOR_VALUE  */                  0x46,
		/*   HAS_SOUND    */                  -0x1, /*     EFFECT     */    EffectType::Attack, /*    ELEMENT     */     ElementType::None,
		/*     TARGET     */ TargetType::RandomAny, /*    ATK_MULT    */                  0x1C, /*    HEAL_LO     */                   0x0,
		/*    HEAL_HI     */                   0x0, /*    AILMENT     */                   0x0, /* AILMENT_CHANCE */                   0x0,
		/*     ACTION     */                   0x0, /*    PRIORITY    */                   0x2, /*     MSG_NO     */                 0x2E0,
		/*    HAS_DIM     */                   0x0, /*    ANIM_NO     */       Animation::None, /*  ANIM_SUCCESS  */   Animation::NoEffect,
		/*     SFX_NO     */      SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                   0x4, /*  SMASH_CHANCE  */                   0x5,
		/*  REDIRECTABLE  */                   0x1, /* REDIRECTABLE2  */                   0x0
	},
	{
		/*       ID       */                 0x1B8, /*    PP_COST     */                   0x0, /* RECOLOR_VALUE  */                  0x46,
		/*   HAS_SOUND    */                  -0x1, /*     EFFECT     */    EffectType::Attack, /*    ELEMENT     */     ElementType::None,
		/*     TARGET     */ TargetType::RandomAny, /*    ATK_MULT    */                  0x20, /*    HEAL_LO     */                   0x0,
		/*    HEAL_HI     */                   0x0, /*    AILMENT     */                   0x0, /* AILMENT_CHANCE */                   0x0,
		/*     ACTION     */                   0x0, /*    PRIORITY    */                   0x2, /*     MSG_NO     */                 0x2E0,
		/*    HAS_DIM     */                   0x0, /*    ANIM_NO     */       Animation::None, /*  ANIM_SUCCESS  */   Animation::NoEffect,
		/*     SFX_NO     */      SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                   0x4, /*  SMASH_CHANCE  */                   0x5,
		/*  REDIRECTABLE  */                   0x1, /* REDIRECTABLE2  */                   0x0
	},
	{
		/*       ID       */                  0x1B9, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x28, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x4ED,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0xA, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                      0x1BA, /*    PP_COST     */                        0x0, /* RECOLOR_VALUE  */                       0x47,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */      EffectType::PsiDamage, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */      TargetType::AllAllies, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                       0x8C,
		/*    HEAL_HI     */                       0x96, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                        0x0,
		/*     ACTION     */                        0x0, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x4EF,
		/*    HAS_DIM     */                        0x1, /*    ANIM_NO     */ Animation::MaskedManPKLove, /*  ANIM_SUCCESS  */         Animation::HardHit,
		/*     SFX_NO     */              SFX_ENEMY_PSI, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x1, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                      0x1BB, /*    PP_COST     */                        0x0, /* RECOLOR_VALUE  */                       0x47,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */      EffectType::PsiDamage, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */      TargetType::AllAllies, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                       0xDC,
		/*    HEAL_HI     */                       0xF0, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                        0x0,
		/*     ACTION     */                        0x0, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x4F0,
		/*    HAS_DIM     */                        0x1, /*    ANIM_NO     */ Animation::MaskedManPKLove, /*  ANIM_SUCCESS  */         Animation::HardHit,
		/*     SFX_NO     */              SFX_ENEMY_PSI, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x1, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                      0x1BC, /*    PP_COST     */                        0x0, /* RECOLOR_VALUE  */                       0x47,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */      EffectType::PsiDamage, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */      TargetType::AllAllies, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                      0x12C,
		/*    HEAL_HI     */                      0x140, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                        0x0,
		/*     ACTION     */                        0x0, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x4F1,
		/*    HAS_DIM     */                        0x1, /*    ANIM_NO     */ Animation::MaskedManPKLove, /*  ANIM_SUCCESS  */         Animation::HardHit,
		/*     SFX_NO     */              SFX_ENEMY_PSI, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x1, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                      0x1BD, /*    PP_COST     */                        0x0, /* RECOLOR_VALUE  */                       0x47,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */      EffectType::PsiDamage, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */      TargetType::AllAllies, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                      0x280,
		/*    HEAL_HI     */                      0x28A, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                        0x0,
		/*     ACTION     */                        0x0, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x4F2,
		/*    HAS_DIM     */                        0x1, /*    ANIM_NO     */ Animation::MaskedManPKLove, /*  ANIM_SUCCESS  */         Animation::HardHit,
		/*     SFX_NO     */              SFX_ENEMY_PSI, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x1, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                  0x1BE, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x4A5,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x1BF, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x28, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x4A5,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x1C0, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x28, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x4A6,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0xA, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x1C1, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                     -0x1, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x8, /* AILMENT_CHANCE */                     0x32,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x4A7,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                   0x1C2, /*    PP_COST     */                     0x0, /* RECOLOR_VALUE  */                    0x46,
		/*   HAS_SOUND    */                     0x0, /*     EFFECT     */      EffectType::Damage, /*    ELEMENT     */  ElementType::Explosion,
		/*     TARGET     */  TargetType::RandomAlly, /*    ATK_MULT    */                     0x0, /*    HEAL_LO     */                    0x8A,
		/*    HEAL_HI     */                    0x9D, /*    AILMENT     */                     0x0, /* AILMENT_CHANCE */                     0x0,
		/*     ACTION     */                     0x0, /*    PRIORITY    */                     0x2, /*     MSG_NO     */                   0x4A5,
		/*    HAS_DIM     */                     0x1, /*    ANIM_NO     */ Animation::MonsterThrow, /*  ANIM_SUCCESS  */      Animation::HardHit,
		/*     SFX_NO     */        SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                     0x4, /*  SMASH_CHANCE  */                     0x5,
		/*  REDIRECTABLE  */                     0x1, /* REDIRECTABLE2  */                     0x0
	},
	{
		/*       ID       */                       0x1C3, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */      ElementType::Explosion,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x8A,
		/*    HEAL_HI     */                        0x9D, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x4A5,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */     Animation::MonsterThrow, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x4, /*  SMASH_CHANCE  */                         0x5,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                  0x1C4, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x4A5,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x1C5, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x46,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */       EffectType::Damage, /*    ELEMENT     */        ElementType::Fire,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                     0x2E,
		/*    HEAL_HI     */                     0x32, /*    AILMENT     */                      0x9, /* AILMENT_CHANCE */                      0xA,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x4A8,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */ Animation::MonsterPKFire, /*  ANIM_SUCCESS  */      Animation::NoEffect,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x1C6, /*    PP_COST     */                      0x12, /* RECOLOR_VALUE  */                      0x47,
		/*   HAS_SOUND    */                       0x0, /*     EFFECT     */  EffectType::StatusChange, /*    ELEMENT     */         ElementType::None,
		/*     TARGET     */     TargetType::AllAllies, /*    ATK_MULT    */                       0x0, /*    HEAL_LO     */                       0x0,
		/*    HEAL_HI     */                       0x0, /*    AILMENT     */                       0x3, /* AILMENT_CHANCE */                      0x3C,
		/*     ACTION     */                       0x1, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x4A7,
		/*    HAS_DIM     */                       0x1, /*    ANIM_NO     */ Animation::ShieldHitFlash, /*  ANIM_SUCCESS  */           Animation::None,
		/*     SFX_NO     */             SFX_ENEMY_PSI, /*  MISS_CHANCE   */                       0x0, /*  SMASH_CHANCE  */                       0x0,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */                  0x1C7, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */  TargetType::AllAllies, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                   0x23,
		/*    HEAL_HI     */                   0x2D, /*    AILMENT     */                    0x1, /* AILMENT_CHANCE */                   0x1E,
		/*     ACTION     */                    0x1, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x4A8,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */ Animation::MonsterEfcF, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x1C8, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x46,
		/*   HAS_SOUND    */                     -0x1, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x1, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x4F0,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */       Animation::HardHit,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x1C9, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x46,
		/*   HAS_SOUND    */                     -0x1, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x2, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x4F1,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */       Animation::HardHit,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x0, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x1CA, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x46,
		/*   HAS_SOUND    */                     -0x1, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x3, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x4F2,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */       Animation::HardHit,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x0, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x1CB, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x46,
		/*   HAS_SOUND    */                     -0x1, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x5, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x4F3,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */       Animation::HardHit,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x0, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x1CC, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x46,
		/*   HAS_SOUND    */                     -0x1, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x4, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x4F4,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */       Animation::HardHit,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x0, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                  0x1CD, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x14, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x1, /* AILMENT_CHANCE */                   0x32,
		/*     ACTION     */                    0x1, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x491,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */             0x1CE, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x460,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x1CF, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x461,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x1D0, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3B3,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                  0x1D1, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E2,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */             0x1D2, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x464,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x1D3, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x48B,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                    0x1D4, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x6, /* AILMENT_CHANCE */                     0x1E,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x48C,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::MonsterEfcB, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                  0x1D5, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x490,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                     0x1D6, /*    PP_COST     */                       0x0, /* RECOLOR_VALUE  */                      0x46,
		/*   HAS_SOUND    */                       0x0, /*     EFFECT     */        EffectType::Damage, /*    ELEMENT     */         ElementType::Fire,
		/*     TARGET     */     TargetType::AllAllies, /*    ATK_MULT    */                       0x0, /*    HEAL_LO     */                      0x52,
		/*    HEAL_HI     */                      0x69, /*    AILMENT     */                       0x9, /* AILMENT_CHANCE */                       0x8,
		/*     ACTION     */                       0x1, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x349,
		/*    HAS_DIM     */                       0x0, /*    ANIM_NO     */ Animation::MonsterBigBomb, /*  ANIM_SUCCESS  */       Animation::NoEffect,
		/*     SFX_NO     */          SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                       0x0, /*  SMASH_CHANCE  */                       0x0,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */                       0x1D7, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */        ElementType::Thunder,
		/*     TARGET     */   TargetType::TwoRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0xFA,
		/*    HEAL_HI     */                       0x10E, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x1, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x442,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */ Animation::MonsterPKThunder, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                  0x1D8, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x6, /* AILMENT_CHANCE */                    0xF,
		/*     ACTION     */                    0x1, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x443,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x1D9, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x46,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */       EffectType::Damage, /*    ELEMENT     */        ElementType::Fire,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                     0x1D,
		/*    HEAL_HI     */                     0x21, /*    AILMENT     */                      0x9, /* AILMENT_CHANCE */                      0x8,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x334,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */ Animation::MonsterPKFire, /*  ANIM_SUCCESS  */      Animation::NoEffect,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                  0x1DA, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x28, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x3F5,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x1DB, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x6, /* AILMENT_CHANCE */                   0x1E,
		/*     ACTION     */                    0x1, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x443,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x1DC, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x28, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2FC,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x1DD, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x5, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x375,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x1DE, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x12, /* AILMENT_CHANCE */                     0x46,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x363,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::Degradation, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                  0x1DF, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x48,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */       EffectType::Misc, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x376,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */        Animation::None,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x1E0, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */         TargetType::Self, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x31, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x489,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x1E1, /*    PP_COST     */                       0x0, /* RECOLOR_VALUE  */                      0x46,
		/*   HAS_SOUND    */                       0x0, /*     EFFECT     */        EffectType::Attack, /*    ELEMENT     */         ElementType::None,
		/*     TARGET     */ TargetType::TwoRandomAlly, /*    ATK_MULT    */                      0x23, /*    HEAL_LO     */                       0x0,
		/*    HEAL_HI     */                       0x0, /*    AILMENT     */                       0x0, /* AILMENT_CHANCE */                       0x0,
		/*     ACTION     */                       0x0, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x425,
		/*    HAS_DIM     */                       0x0, /*    ANIM_NO     */           Animation::None, /*  ANIM_SUCCESS  */        Animation::HardHit,
		/*     SFX_NO     */          SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                       0x4, /*  SMASH_CHANCE  */                       0x5,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */              0x1E2, /*    PP_COST     */                0x0, /* RECOLOR_VALUE  */               0x48,
		/*   HAS_SOUND    */                0x0, /*     EFFECT     */ EffectType::HealHP, /*    ELEMENT     */  ElementType::None,
		/*     TARGET     */   TargetType::Self, /*    ATK_MULT    */                0x0, /*    HEAL_LO     */               0x98,
		/*    HEAL_HI     */               0xA3, /*    AILMENT     */                0x0, /* AILMENT_CHANCE */                0x0,
		/*     ACTION     */                0x0, /*    PRIORITY    */                0x2, /*     MSG_NO     */              0x48A,
		/*    HAS_DIM     */                0x0, /*    ANIM_NO     */    Animation::None, /*  ANIM_SUCCESS  */ Animation::LifeUpB,
		/*     SFX_NO     */   SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                0x0, /*  SMASH_CHANCE  */                0x0,
		/*  REDIRECTABLE  */                0x1, /* REDIRECTABLE2  */                0x0
	},
	{
		/*       ID       */                  0x1E3, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x6, /* AILMENT_CHANCE */                   0x1E,
		/*     ACTION     */                    0x1, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x443,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x1E4, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x28, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2FC,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x1E5, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x5, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x375,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x1E6, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x12, /* AILMENT_CHANCE */                     0x46,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x363,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::Degradation, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                      0x1E7, /*    PP_COST     */                        0x0, /* RECOLOR_VALUE  */                        0x0,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */           EffectType::Misc, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */           TargetType::Self, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                        0x0,
		/*    HEAL_HI     */                        0x0, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                        0x0,
		/*     ACTION     */                        0x0, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x423,
		/*    HAS_DIM     */                        0x1, /*    ANIM_NO     */ Animation::PorkyAttackRecv, /*  ANIM_SUCCESS  */            Animation::None,
		/*     SFX_NO     */           SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x0, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                       0x1E8, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                        -0x1, /*     EFFECT     */          EffectType::Attack, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                        0x28, /*    HEAL_LO     */                         0x1,
		/*    HEAL_HI     */                         0x1, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x48D,
		/*    HAS_DIM     */                         0x0, /*    ANIM_NO     */             Animation::None, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x5,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                     0x1E9, /*    PP_COST     */                       0x0, /* RECOLOR_VALUE  */                      0x46,
		/*   HAS_SOUND    */                      -0x1, /*     EFFECT     */        EffectType::Attack, /*    ELEMENT     */         ElementType::None,
		/*     TARGET     */ TargetType::TwoRandomAlly, /*    ATK_MULT    */                      0x28, /*    HEAL_LO     */                       0x0,
		/*    HEAL_HI     */                       0x0, /*    AILMENT     */                       0x0, /* AILMENT_CHANCE */                       0x0,
		/*     ACTION     */                       0x0, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x2ED,
		/*    HAS_DIM     */                       0x0, /*    ANIM_NO     */           Animation::None, /*  ANIM_SUCCESS  */        Animation::HardHit,
		/*     SFX_NO     */          SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                       0x4, /*  SMASH_CHANCE  */                       0x5,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */                  0x1EA, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2F8,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                 0x1EB, /*    PP_COST     */                   0x0, /* RECOLOR_VALUE  */                  0x46,
		/*   HAS_SOUND    */                   0x0, /*     EFFECT     */    EffectType::Attack, /*    ELEMENT     */     ElementType::None,
		/*     TARGET     */ TargetType::AllAllies, /*    ATK_MULT    */                  0x32, /*    HEAL_LO     */                   0x0,
		/*    HEAL_HI     */                   0x0, /*    AILMENT     */                   0x0, /* AILMENT_CHANCE */                   0x0,
		/*     ACTION     */                   0x0, /*    PRIORITY    */                   0x2, /*     MSG_NO     */                 0x324,
		/*    HAS_DIM     */                   0x0, /*    ANIM_NO     */       Animation::None, /*  ANIM_SUCCESS  */    Animation::HardHit,
		/*     SFX_NO     */      SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                   0x4, /*  SMASH_CHANCE  */                   0x5,
		/*  REDIRECTABLE  */                   0x1, /* REDIRECTABLE2  */                   0x0
	},
	{
		/*       ID       */                    0x1EC, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x12, /* AILMENT_CHANCE */                     0x50,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x36B,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::Degradation, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                  0x1ED, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x2D, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2FB,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x1EE, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0xA, /* AILMENT_CHANCE */                    0xA,
		/*     ACTION     */                    0x1, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x465,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                   0x1EF, /*    PP_COST     */                     0x0, /* RECOLOR_VALUE  */                    0x46,
		/*   HAS_SOUND    */                     0x0, /*     EFFECT     */      EffectType::Damage, /*    ELEMENT     */  ElementType::Explosion,
		/*     TARGET     */   TargetType::AllAllies, /*    ATK_MULT    */                     0x0, /*    HEAL_LO     */                    0x78,
		/*    HEAL_HI     */                    0x84, /*    AILMENT     */                     0x0, /* AILMENT_CHANCE */                     0x0,
		/*     ACTION     */                     0x0, /*    PRIORITY    */                     0x2, /*     MSG_NO     */                   0x461,
		/*    HAS_DIM     */                     0x1, /*    ANIM_NO     */ Animation::MonsterThrow, /*  ANIM_SUCCESS  */      Animation::HardHit,
		/*     SFX_NO     */        SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                     0x0, /*  SMASH_CHANCE  */                     0x0,
		/*  REDIRECTABLE  */                     0x1, /* REDIRECTABLE2  */                     0x0
	},
	{
		/*       ID       */                    0x1F0, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x6, /* AILMENT_CHANCE */                     0x5A,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x48C,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::MonsterEfcB, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x1F1, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */   ElementType::Explosion,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x8, /* AILMENT_CHANCE */                     0x5A,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x467,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */       Animation::HardHit,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x1F2, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x7, /* AILMENT_CHANCE */                     0x50,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x364,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::MonsterEfcB, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x1F3, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x5, /* AILMENT_CHANCE */                     0x32,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x471,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */    Animation::PorkyThing, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x1F4, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */         TargetType::Self, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x0, /* AILMENT_CHANCE */                      0x0,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x470,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */              0x1F5, /*    PP_COST     */                0x0, /* RECOLOR_VALUE  */               0x48,
		/*   HAS_SOUND    */                0x0, /*     EFFECT     */ EffectType::HealHP, /*    ELEMENT     */  ElementType::None,
		/*     TARGET     */   TargetType::Self, /*    ATK_MULT    */                0x0, /*    HEAL_LO     */              0x238,
		/*    HEAL_HI     */              0x246, /*    AILMENT     */                0x0, /* AILMENT_CHANCE */                0x0,
		/*     ACTION     */                0x1, /*    PRIORITY    */                0x2, /*     MSG_NO     */              0x46C,
		/*    HAS_DIM     */                0x0, /*    ANIM_NO     */    Animation::None, /*  ANIM_SUCCESS  */ Animation::LifeUpG,
		/*     SFX_NO     */   SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                0x0, /*  SMASH_CHANCE  */                0x0,
		/*  REDIRECTABLE  */                0x1, /* REDIRECTABLE2  */                0x0
	},
	{
		/*       ID       */                    0x1F6, /*    PP_COST     */                     0x14, /* RECOLOR_VALUE  */                     0x47,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */    EffectType::PsiDamage, /*    ELEMENT     */        ElementType::Fire,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                     0xA2,
		/*    HEAL_HI     */                     0xAC, /*    AILMENT     */                      0x9, /* AILMENT_CHANCE */                      0xA,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x338,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */ Animation::MonsterPKFire, /*  ANIM_SUCCESS  */       Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_PSI, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                   0x1F7, /*    PP_COST     */                    0x12, /* RECOLOR_VALUE  */                    0x47,
		/*   HAS_SOUND    */                     0x0, /*     EFFECT     */   EffectType::PsiDamage, /*    ELEMENT     */        ElementType::Ice,
		/*     TARGET     */  TargetType::RandomAlly, /*    ATK_MULT    */                     0x0, /*    HEAL_LO     */                    0xA8,
		/*    HEAL_HI     */                    0xB7, /*    AILMENT     */                     0xA, /* AILMENT_CHANCE */                     0x8,
		/*     ACTION     */                     0x1, /*    PRIORITY    */                     0x2, /*     MSG_NO     */                   0x33C,
		/*    HAS_DIM     */                     0x1, /*    ANIM_NO     */ Animation::MonsterPKIce, /*  ANIM_SUCCESS  */      Animation::HardHit,
		/*     SFX_NO     */           SFX_ENEMY_PSI, /*  MISS_CHANCE   */                     0x0, /*  SMASH_CHANCE  */                     0x0,
		/*  REDIRECTABLE  */                     0x1, /* REDIRECTABLE2  */                     0x0
	},
	{
		/*       ID       */                    0x1F8, /*    PP_COST     */                      0xC, /* RECOLOR_VALUE  */                     0x47,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */    EffectType::PsiDamage, /*    ELEMENT     */        ElementType::Fire,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                     0x49,
		/*    HEAL_HI     */                     0x54, /*    AILMENT     */                      0x9, /* AILMENT_CHANCE */                      0xA,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x337,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */ Animation::MonsterPKFire, /*  ANIM_SUCCESS  */      Animation::NoEffect,
		/*     SFX_NO     */            SFX_ENEMY_PSI, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                   0x1F9, /*    PP_COST     */                     0x5, /* RECOLOR_VALUE  */                    0x47,
		/*   HAS_SOUND    */                     0x0, /*     EFFECT     */   EffectType::PsiDamage, /*    ELEMENT     */        ElementType::Ice,
		/*     TARGET     */  TargetType::RandomAlly, /*    ATK_MULT    */                     0x0, /*    HEAL_LO     */                    0x7C,
		/*    HEAL_HI     */                    0x84, /*    AILMENT     */                     0xA, /* AILMENT_CHANCE */                     0x8,
		/*     ACTION     */                     0x1, /*    PRIORITY    */                     0x2, /*     MSG_NO     */                   0x33B,
		/*    HAS_DIM     */                     0x1, /*    ANIM_NO     */ Animation::MonsterPKIce, /*  ANIM_SUCCESS  */     Animation::NoEffect,
		/*     SFX_NO     */           SFX_ENEMY_PSI, /*  MISS_CHANCE   */                     0x0, /*  SMASH_CHANCE  */                     0x0,
		/*  REDIRECTABLE  */                     0x1, /* REDIRECTABLE2  */                     0x0
	},
	{
		/*       ID       */             0x1FA, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x429,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x1FB, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4E3,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x1FC, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4E4,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x1FD, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4E5,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                 0x1FE, /*    PP_COST     */                   0x0, /* RECOLOR_VALUE  */                  0x48,
		/*   HAS_SOUND    */                   0x0, /*     EFFECT     */      EffectType::Misc, /*    ELEMENT     */     ElementType::None,
		/*     TARGET     */ TargetType::FirstAlly, /*    ATK_MULT    */                   0x0, /*    HEAL_LO     */                   0x0,
		/*    HEAL_HI     */                   0x0, /*    AILMENT     */                   0x0, /* AILMENT_CHANCE */                   0x0,
		/*     ACTION     */                   0x0, /*    PRIORITY    */                   0x2, /*     MSG_NO     */                 0x3DB,
		/*    HAS_DIM     */                   0x0, /*    ANIM_NO     */       Animation::None, /*  ANIM_SUCCESS  */ Animation::ShakeHoriz,
		/*     SFX_NO     */      SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                   0x0, /*  SMASH_CHANCE  */                   0x0,
		/*  REDIRECTABLE  */                   0x0, /* REDIRECTABLE2  */                   0x0
	},
	{
		/*       ID       */                 0x1FF, /*    PP_COST     */                   0x0, /* RECOLOR_VALUE  */                  0x48,
		/*   HAS_SOUND    */                   0x0, /*     EFFECT     */      EffectType::Misc, /*    ELEMENT     */     ElementType::None,
		/*     TARGET     */ TargetType::ThirdAlly, /*    ATK_MULT    */                   0x0, /*    HEAL_LO     */                   0x0,
		/*    HEAL_HI     */                   0x0, /*    AILMENT     */                   0x0, /* AILMENT_CHANCE */                   0x0,
		/*     ACTION     */                   0x0, /*    PRIORITY    */                   0x2, /*     MSG_NO     */                 0x3DB,
		/*    HAS_DIM     */                   0x0, /*    ANIM_NO     */       Animation::None, /*  ANIM_SUCCESS  */ Animation::ShakeHoriz,
		/*     SFX_NO     */      SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                   0x0, /*  SMASH_CHANCE  */                   0x0,
		/*  REDIRECTABLE  */                   0x0, /* REDIRECTABLE2  */                   0x0
	},
	{
		/*       ID       */                  0x200, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x48,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */       EffectType::Misc, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::SecondAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x3DB,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */  Animation::ShakeHoriz,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x0, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x201, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x48,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */       EffectType::Misc, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::FourthAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x3DB,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */  Animation::ShakeHoriz,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x0, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x202, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */ ElementType::Explosion,
		/*     TARGET     */  TargetType::FirstAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                  0x104,
		/*    HEAL_HI     */                  0x118, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x346,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */    Animation::Immolate, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x203, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */ ElementType::Explosion,
		/*     TARGET     */  TargetType::ThirdAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                  0x104,
		/*    HEAL_HI     */                  0x118, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x346,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */    Animation::Immolate, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x204, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */ ElementType::Explosion,
		/*     TARGET     */ TargetType::SecondAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                  0x104,
		/*    HEAL_HI     */                  0x118, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x346,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */    Animation::Immolate, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x205, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */ ElementType::Explosion,
		/*     TARGET     */ TargetType::FourthAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                  0x104,
		/*    HEAL_HI     */                  0x118, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x346,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */    Animation::Immolate, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */             0x206, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x44A,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                      0x207, /*    PP_COST     */                        0x5, /* RECOLOR_VALUE  */                       0x47,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */        EffectType::HealHP2, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */  TargetType::ChooseOneAlly, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                       0x32,
		/*    HEAL_HI     */                       0x46, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                        0x0,
		/*     ACTION     */                        0x0, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x37F,
		/*    HAS_DIM     */                        0x1, /*    ANIM_NO     */ Animation::MonsterPKLifeUp, /*  ANIM_SUCCESS  */         Animation::LifeUpB,
		/*     SFX_NO     */              SFX_ENEMY_PSI, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x1, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                    0x208, /*    PP_COST     */                      0x4, /* RECOLOR_VALUE  */                     0x47,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */  TargetType::RandomEnemy, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x0, /* AILMENT_CHANCE */                      0x0,
		/*     ACTION     */                      0x0, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x383,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */ Animation::MonsterPKHeal, /*  ANIM_SUCCESS  */         Animation::HealA,
		/*     SFX_NO     */            SFX_ENEMY_PSI, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */             0x209, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x319,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                    0x20A, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x4, /* AILMENT_CHANCE */                     0x32,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x30F,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::MonsterEfcE, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */             0x20B, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */               0x0,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x1, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x397,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x20C, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3C4,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x20D, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x492,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x20E, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x46,
		/*   HAS_SOUND    */              -0x1, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3A3,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x5,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                       0x20F, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                        -0x1, /*     EFFECT     */          EffectType::Attack, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                        0x1E, /*    HEAL_LO     */                         0x0,
		/*    HEAL_HI     */                         0x0, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x3FB,
		/*    HAS_DIM     */                         0x0, /*    ANIM_NO     */             Animation::None, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x4, /*  SMASH_CHANCE  */                         0x5,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                  0x210, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                    0x0,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */ ElementType::Explosion,
		/*     TARGET     */  TargetType::AllAllies, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                   0x4E,
		/*    HEAL_HI     */                   0x56, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x448,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */    Animation::Immolate, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x211, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x417,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                       0x212, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x4C,
		/*    HEAL_HI     */                        0x54, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x3FB,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */         Animation::BeamLong, /*  ANIM_SUCCESS  */         Animation::NoEffect,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x4, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                  0x213, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E0,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                 0x214, /*    PP_COST     */                   0x0, /* RECOLOR_VALUE  */                  0x46,
		/*   HAS_SOUND    */                   0x0, /*     EFFECT     */    EffectType::Damage, /*    ELEMENT     */     ElementType::None,
		/*     TARGET     */ TargetType::AllAllies, /*    ATK_MULT    */                   0x0, /*    HEAL_LO     */                  0x54,
		/*    HEAL_HI     */                  0x59, /*    AILMENT     */                   0x0, /* AILMENT_CHANCE */                   0x0,
		/*     ACTION     */                   0x0, /*    PRIORITY    */                   0x2, /*     MSG_NO     */                 0x332,
		/*    HAS_DIM     */                   0x1, /*    ANIM_NO     */ Animation::WhirlpoolC, /*  ANIM_SUCCESS  */    Animation::HardHit,
		/*     SFX_NO     */      SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                   0x0, /*  SMASH_CHANCE  */                   0x0,
		/*  REDIRECTABLE  */                   0x1, /* REDIRECTABLE2  */                   0x0
	},
	{
		/*       ID       */                  0x215, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */ ElementType::Explosion,
		/*     TARGET     */  TargetType::AllAllies, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                  0x285,
		/*    HEAL_HI     */                  0x2B1, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x49B,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */  Animation::WhirlpoolC, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x216, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                     -0x1, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0xA, /* AILMENT_CHANCE */                     0x28,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x35C,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                     0x217, /*    PP_COST     */                       0x0, /* RECOLOR_VALUE  */                      0x48,
		/*   HAS_SOUND    */                       0x0, /*     EFFECT     */  EffectType::StatusChange, /*    ELEMENT     */         ElementType::None,
		/*     TARGET     */     TargetType::AllAllies, /*    ATK_MULT    */                       0x0, /*    HEAL_LO     */                       0x0,
		/*    HEAL_HI     */                       0x0, /*    AILMENT     */                       0x3, /* AILMENT_CHANCE */                      0x1E,
		/*     ACTION     */                       0x1, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x49C,
		/*    HAS_DIM     */                       0x1, /*    ANIM_NO     */ Animation::ShieldHitFlash, /*  ANIM_SUCCESS  */           Animation::None,
		/*     SFX_NO     */          SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                       0x0, /*  SMASH_CHANCE  */                       0x0,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */                   0x218, /*    PP_COST     */                     0x5, /* RECOLOR_VALUE  */                    0x47,
		/*   HAS_SOUND    */                     0x0, /*     EFFECT     */   EffectType::PsiDamage, /*    ELEMENT     */        ElementType::Ice,
		/*     TARGET     */  TargetType::RandomAlly, /*    ATK_MULT    */                     0x0, /*    HEAL_LO     */                    0x1A,
		/*    HEAL_HI     */                    0x23, /*    AILMENT     */                     0xA, /* AILMENT_CHANCE */                     0x8,
		/*     ACTION     */                     0x1, /*    PRIORITY    */                     0x2, /*     MSG_NO     */                   0x33A,
		/*    HAS_DIM     */                     0x1, /*    ANIM_NO     */ Animation::MonsterPKIce, /*  ANIM_SUCCESS  */     Animation::NoEffect,
		/*     SFX_NO     */           SFX_ENEMY_PSI, /*  MISS_CHANCE   */                     0x0, /*  SMASH_CHANCE  */                     0x0,
		/*  REDIRECTABLE  */                     0x1, /* REDIRECTABLE2  */                     0x0
	},
	{
		/*       ID       */                  0x219, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x45C,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x21A, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x45D,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */             0x21B, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4A0,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x21C, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4A1,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */          SFX_NULL, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x21D, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4A2,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */          SFX_NULL, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x21E, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4A3,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */          SFX_NULL, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x21F, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4A4,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                      0x220, /*    PP_COST     */                        0x0, /* RECOLOR_VALUE  */                       0x48,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */         EffectType::HealHP, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */           TargetType::Self, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                      0x121,
		/*    HEAL_HI     */                      0x144, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                        0x0,
		/*     ACTION     */                        0x0, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x40C,
		/*    HAS_DIM     */                        0x1, /*    ANIM_NO     */ Animation::MonsterPKLifeUp, /*  ANIM_SUCCESS  */         Animation::LifeUpB,
		/*     SFX_NO     */           SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x0, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                       0x221, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                        -0x1, /*     EFFECT     */          EffectType::Attack, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                        0x28, /*    HEAL_LO     */                         0x0,
		/*    HEAL_HI     */                         0x0, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x45E,
		/*    HAS_DIM     */                         0x0, /*    ANIM_NO     */             Animation::None, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x4, /*  SMASH_CHANCE  */                         0x5,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                  0x222, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x14, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x1, /*     MSG_NO     */                  0x2E2,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                       0x223, /*    PP_COST     */                        0x28, /* RECOLOR_VALUE  */                        0x47,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */       EffectType::PsiDamage, /*    ELEMENT     */           ElementType::Fire,
		/*     TARGET     */       TargetType::AllAllies, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                       0x106,
		/*    HEAL_HI     */                       0x118, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x348,
		/*    HAS_DIM     */                         0x0, /*    ANIM_NO     */ Animation::MonsterPKDefense, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */               SFX_ENEMY_PSI, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                    0x224, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x7, /* AILMENT_CHANCE */                     0x3C,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x31D,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */          Animation::Burp, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                  0x225, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */  TargetType::AllAllies, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                   0x23,
		/*    HEAL_HI     */                   0x2A, /*    AILMENT     */                    0x1, /* AILMENT_CHANCE */                    0xF,
		/*     ACTION     */                    0x1, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x476,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */ Animation::MonsterEfcF, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x226, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x46,
		/*   HAS_SOUND    */                     -0x1, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x6, /* AILMENT_CHANCE */                     0x32,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x4F5,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */      Animation::NoEffect,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x5,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x227, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x46,
		/*   HAS_SOUND    */                     -0x1, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x7, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x4F6,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */      Animation::NoEffect,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x5,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x228, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x46,
		/*   HAS_SOUND    */                     -0x1, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x8, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x4F7,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */      Animation::NoEffect,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x5,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x229, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                     -0x1, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x5, /* AILMENT_CHANCE */                     0x4B,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x4AA,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */   Animation::MonsterEfcF, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x5,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                  0x22A, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */ ElementType::Explosion,
		/*     TARGET     */  TargetType::AllAllies, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                   0x4E,
		/*    HEAL_HI     */                   0x5C, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x4B7,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */ Animation::EnemyThrow2, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                       0x22B, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                        -0x1, /*     EFFECT     */          EffectType::Attack, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                        0x32, /*    HEAL_LO     */                         0x0,
		/*    HEAL_HI     */                         0x0, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x477,
		/*    HAS_DIM     */                         0x0, /*    ANIM_NO     */             Animation::None, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                 0x22C, /*    PP_COST     */                   0x0, /* RECOLOR_VALUE  */                  0x46,
		/*   HAS_SOUND    */                   0x0, /*     EFFECT     */    EffectType::Damage, /*    ELEMENT     */     ElementType::None,
		/*     TARGET     */ TargetType::AllAllies, /*    ATK_MULT    */                   0x0, /*    HEAL_LO     */                  0x48,
		/*    HEAL_HI     */                  0x52, /*    AILMENT     */                   0x0, /* AILMENT_CHANCE */                   0x0,
		/*     ACTION     */                   0x0, /*    PRIORITY    */                   0x2, /*     MSG_NO     */                 0x422,
		/*    HAS_DIM     */                   0x0, /*    ANIM_NO     */       Animation::None, /*  ANIM_SUCCESS  */    Animation::HardHit,
		/*     SFX_NO     */      SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                   0x0, /*  SMASH_CHANCE  */                   0x0,
		/*  REDIRECTABLE  */                   0x1, /* REDIRECTABLE2  */                   0x0
	},
	{
		/*       ID       */                    0x22D, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x5, /* AILMENT_CHANCE */                     0x50,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x4AC,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x5,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x22E, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x12, /* AILMENT_CHANCE */                     0x5A,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x4AD,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x5,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                       0x22F, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */        ElementType::Thunder,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x25,
		/*    HEAL_HI     */                        0x2F, /*    AILMENT     */                         0x2, /* AILMENT_CHANCE */                         0x5,
		/*     ACTION     */                         0x1, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x33F,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */ Animation::MonsterPKThunder, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */             0x230, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x42B,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                          0x231, /*    PP_COST     */                           0x12, /* RECOLOR_VALUE  */                           0x47,
		/*   HAS_SOUND    */                            0x0, /*     EFFECT     */       EffectType::StatusChange, /*    ELEMENT     */              ElementType::None,
		/*     TARGET     */         TargetType::AllEnemies, /*    ATK_MULT    */                            0x0, /*    HEAL_LO     */                            0x0,
		/*    HEAL_HI     */                            0x0, /*    AILMENT     */                           0x1D, /* AILMENT_CHANCE */                           0x64,
		/*     ACTION     */                            0x1, /*    PRIORITY    */                            0x2, /*     MSG_NO     */                          0x38D,
		/*    HAS_DIM     */                            0x1, /*    ANIM_NO     */ Animation::MonsterDefenseFlash, /*  ANIM_SUCCESS  */                Animation::None,
		/*     SFX_NO     */                  SFX_ENEMY_PSI, /*  MISS_CHANCE   */                            0x0, /*  SMASH_CHANCE  */                            0x0,
		/*  REDIRECTABLE  */                            0x1, /* REDIRECTABLE2  */                            0x0
	},
	{
		/*       ID       */                    0x232, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x46,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x2, /* AILMENT_CHANCE */                     0x28,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x472,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x233, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x5, /* AILMENT_CHANCE */                     0x50,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x45F,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                       0x234, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */        ElementType::Thunder,
		/*     TARGET     */       TargetType::AllAllies, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x64,
		/*    HEAL_HI     */                        0x64, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x4EF,
		/*    HAS_DIM     */                         0x0, /*    ANIM_NO     */ Animation::MonsterPKThunder, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x0, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                         0x235, /*    PP_COST     */                           0x0, /* RECOLOR_VALUE  */                          0x48,
		/*   HAS_SOUND    */                           0x0, /*     EFFECT     */      EffectType::StatusChange, /*    ELEMENT     */             ElementType::None,
		/*     TARGET     */        TargetType::AllEnemies, /*    ATK_MULT    */                           0x0, /*    HEAL_LO     */                           0x0,
		/*    HEAL_HI     */                           0x0, /*    AILMENT     */                          0x16, /* AILMENT_CHANCE */                          0x64,
		/*     ACTION     */                           0x1, /*    PRIORITY    */                           0x2, /*     MSG_NO     */                         0x470,
		/*    HAS_DIM     */                           0x1, /*    ANIM_NO     */ Animation::MonsterShieldFlash, /*  ANIM_SUCCESS  */               Animation::None,
		/*     SFX_NO     */              SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                           0x0, /*  SMASH_CHANCE  */                           0x0,
		/*  REDIRECTABLE  */                           0x1, /* REDIRECTABLE2  */                           0x0
	},
	{
		/*       ID       */             0x236, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */               0x0,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4B3,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x237, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */               0x0,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x2DF,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                   0x238, /*    PP_COST     */                    0x1C, /* RECOLOR_VALUE  */                    0x47,
		/*   HAS_SOUND    */                     0x0, /*     EFFECT     */   EffectType::PsiDamage, /*    ELEMENT     */        ElementType::Ice,
		/*     TARGET     */  TargetType::RandomAlly, /*    ATK_MULT    */                     0x0, /*    HEAL_LO     */                   0x140,
		/*    HEAL_HI     */                   0x15E, /*    AILMENT     */                     0xA, /* AILMENT_CHANCE */                     0x8,
		/*     ACTION     */                     0x1, /*    PRIORITY    */                     0x2, /*     MSG_NO     */                   0x33D,
		/*    HAS_DIM     */                     0x1, /*    ANIM_NO     */ Animation::MonsterPKIce, /*  ANIM_SUCCESS  */      Animation::HardHit,
		/*     SFX_NO     */           SFX_ENEMY_PSI, /*  MISS_CHANCE   */                     0x0, /*  SMASH_CHANCE  */                     0x0,
		/*  REDIRECTABLE  */                     0x1, /* REDIRECTABLE2  */                     0x0
	},
	{
		/*       ID       */                    0x239, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */         TargetType::Self, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                     0x2A, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x4AE,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x0, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */             0x23A, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3C4,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x23B, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */               0x0,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4B0,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */          SFX_NULL, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                  0x23C, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x48,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */       EffectType::Misc, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x4AF,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */        Animation::None,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x0, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                       0x23D, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */       TargetType::AllAllies, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                       0x118,
		/*    HEAL_HI     */                       0x12C, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x4B3,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */ Animation::MonsterPKOffense, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                     0x23E, /*    PP_COST     */                       0x0, /* RECOLOR_VALUE  */                      0x46,
		/*   HAS_SOUND    */                      -0x1, /*     EFFECT     */        EffectType::Attack, /*    ELEMENT     */         ElementType::None,
		/*     TARGET     */ TargetType::TwoRandomAlly, /*    ATK_MULT    */                      0x64, /*    HEAL_LO     */                       0x0,
		/*    HEAL_HI     */                       0x0, /*    AILMENT     */                       0x0, /* AILMENT_CHANCE */                       0x0,
		/*     ACTION     */                       0x0, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x4B4,
		/*    HAS_DIM     */                       0x0, /*    ANIM_NO     */           Animation::None, /*  ANIM_SUCCESS  */        Animation::HardHit,
		/*     SFX_NO     */          SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                       0x4, /*  SMASH_CHANCE  */                       0x5,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */                      0x23F, /*    PP_COST     */                        0x0, /* RECOLOR_VALUE  */                       0x46,
		/*   HAS_SOUND    */                       -0x1, /*     EFFECT     */         EffectType::Attack, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */ TargetType::ChooseOneAlly2, /*    ATK_MULT    */                       0x64, /*    HEAL_LO     */                        0x0,
		/*    HEAL_HI     */                        0x0, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                        0x0,
		/*     ACTION     */                        0x0, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x4B5,
		/*    HAS_DIM     */                        0x0, /*    ANIM_NO     */            Animation::None, /*  ANIM_SUCCESS  */         Animation::HardHit,
		/*     SFX_NO     */           SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                        0x4, /*  SMASH_CHANCE  */                        0x5,
		/*  REDIRECTABLE  */                        0x1, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                      0x240, /*    PP_COST     */                        0x0, /* RECOLOR_VALUE  */                       0x46,
		/*   HAS_SOUND    */                       -0x1, /*     EFFECT     */         EffectType::Attack, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */ TargetType::ChooseOneAlly2, /*    ATK_MULT    */                       0x64, /*    HEAL_LO     */                        0x0,
		/*    HEAL_HI     */                        0x0, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                        0x0,
		/*     ACTION     */                        0x0, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x4B5,
		/*    HAS_DIM     */                        0x0, /*    ANIM_NO     */            Animation::None, /*  ANIM_SUCCESS  */         Animation::HardHit,
		/*     SFX_NO     */           SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                        0x4, /*  SMASH_CHANCE  */                        0x5,
		/*  REDIRECTABLE  */                        0x1, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                            0x241, /*    PP_COST     */                              0x0, /* RECOLOR_VALUE  */                             0x48,
		/*   HAS_SOUND    */                              0x0, /*     EFFECT     */         EffectType::StatusChange, /*    ELEMENT     */                ElementType::None,
		/*     TARGET     */           TargetType::AllEnemies, /*    ATK_MULT    */                              0x0, /*    HEAL_LO     */                              0x0,
		/*    HEAL_HI     */                              0x0, /*    AILMENT     */                             0x19, /* AILMENT_CHANCE */                             0x64,
		/*     ACTION     */                              0x1, /*    PRIORITY    */                              0x2, /*     MSG_NO     */                            0x4B8,
		/*    HAS_DIM     */                              0x1, /*    ANIM_NO     */ Animation::MonsterPsiShieldFlash, /*  ANIM_SUCCESS  */                  Animation::None,
		/*     SFX_NO     */                 SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                              0x0, /*  SMASH_CHANCE  */                              0x0,
		/*  REDIRECTABLE  */                              0x1, /* REDIRECTABLE2  */                              0x0
	},
	{
		/*       ID       */                       0x242, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Attack, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                        0x23, /*    HEAL_LO     */                         0x0,
		/*    HEAL_HI     */                         0x0, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x1, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x4BF,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */             Animation::None, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                  0x243, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */       EffectType::Misc, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x4C0,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */  Animation::PorkyThing, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x0, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                 0x244, /*    PP_COST     */                   0x0, /* RECOLOR_VALUE  */                  0x48,
		/*   HAS_SOUND    */                   0x0, /*     EFFECT     */    EffectType::Attack, /*    ELEMENT     */     ElementType::None,
		/*     TARGET     */ TargetType::AllAllies, /*    ATK_MULT    */                  0x19, /*    HEAL_LO     */                   0x0,
		/*    HEAL_HI     */                   0x0, /*    AILMENT     */                   0x0, /* AILMENT_CHANCE */                   0x0,
		/*     ACTION     */                   0x0, /*    PRIORITY    */                   0x2, /*     MSG_NO     */                 0x2E0,
		/*    HAS_DIM     */                   0x0, /*    ANIM_NO     */       Animation::None, /*  ANIM_SUCCESS  */   Animation::NoEffect,
		/*     SFX_NO     */      SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                   0x4, /*  SMASH_CHANCE  */                   0x0,
		/*  REDIRECTABLE  */                   0x1, /* REDIRECTABLE2  */                   0x0
	},
	{
		/*       ID       */                 0x245, /*    PP_COST     */                   0x0, /* RECOLOR_VALUE  */                  0x48,
		/*   HAS_SOUND    */                   0x0, /*     EFFECT     */    EffectType::Attack, /*    ELEMENT     */     ElementType::None,
		/*     TARGET     */ TargetType::AllAllies, /*    ATK_MULT    */                  0x1E, /*    HEAL_LO     */                   0x0,
		/*    HEAL_HI     */                   0x0, /*    AILMENT     */                   0x0, /* AILMENT_CHANCE */                   0x0,
		/*     ACTION     */                   0x0, /*    PRIORITY    */                   0x2, /*     MSG_NO     */                 0x2E0,
		/*    HAS_DIM     */                   0x0, /*    ANIM_NO     */       Animation::None, /*  ANIM_SUCCESS  */   Animation::NoEffect,
		/*     SFX_NO     */      SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                   0x4, /*  SMASH_CHANCE  */                   0x0,
		/*  REDIRECTABLE  */                   0x1, /* REDIRECTABLE2  */                   0x0
	},
	{
		/*       ID       */                  0x246, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */ ElementType::Explosion,
		/*     TARGET     */  TargetType::AllAllies, /*    ATK_MULT    */                   0x28, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E0,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                 0x247, /*    PP_COST     */                   0x0, /* RECOLOR_VALUE  */                  0x46,
		/*   HAS_SOUND    */                   0x0, /*     EFFECT     */    EffectType::Attack, /*    ELEMENT     */     ElementType::None,
		/*     TARGET     */ TargetType::AllAllies, /*    ATK_MULT    */                  0x32, /*    HEAL_LO     */                   0x0,
		/*    HEAL_HI     */                   0x0, /*    AILMENT     */                   0x0, /* AILMENT_CHANCE */                   0x0,
		/*     ACTION     */                   0x0, /*    PRIORITY    */                   0x2, /*     MSG_NO     */                 0x2E0,
		/*    HAS_DIM     */                   0x1, /*    ANIM_NO     */       Animation::None, /*  ANIM_SUCCESS  */   Animation::NoEffect,
		/*     SFX_NO     */      SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                   0x4, /*  SMASH_CHANCE  */                   0x0,
		/*  REDIRECTABLE  */                   0x1, /* REDIRECTABLE2  */                   0x0
	},
	{
		/*       ID       */                   0x248, /*    PP_COST     */                     0x0, /* RECOLOR_VALUE  */                    0x46,
		/*   HAS_SOUND    */                    -0x1, /*     EFFECT     */      EffectType::Attack, /*    ELEMENT     */       ElementType::None,
		/*     TARGET     */ TargetType::RandomEnemy, /*    ATK_MULT    */                     0xF, /*    HEAL_LO     */                     0x0,
		/*    HEAL_HI     */                     0x0, /*    AILMENT     */                     0x0, /* AILMENT_CHANCE */                     0x0,
		/*     ACTION     */                     0x0, /*    PRIORITY    */                     0x2, /*     MSG_NO     */                   0x409,
		/*    HAS_DIM     */                     0x0, /*    ANIM_NO     */         Animation::None, /*  ANIM_SUCCESS  */     Animation::NoEffect,
		/*     SFX_NO     */        SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                     0x4, /*  SMASH_CHANCE  */                     0x5,
		/*  REDIRECTABLE  */                     0x1, /* REDIRECTABLE2  */                     0x0
	},
	{
		/*       ID       */                   0x249, /*    PP_COST     */                     0x0, /* RECOLOR_VALUE  */                    0x46,
		/*   HAS_SOUND    */                    -0x1, /*     EFFECT     */      EffectType::Attack, /*    ELEMENT     */       ElementType::None,
		/*     TARGET     */ TargetType::RandomEnemy, /*    ATK_MULT    */                    0x1E, /*    HEAL_LO     */                     0x0,
		/*    HEAL_HI     */                     0x0, /*    AILMENT     */                     0x0, /* AILMENT_CHANCE */                     0x0,
		/*     ACTION     */                     0x0, /*    PRIORITY    */                     0x2, /*     MSG_NO     */                   0x418,
		/*    HAS_DIM     */                     0x0, /*    ANIM_NO     */         Animation::None, /*  ANIM_SUCCESS  */      Animation::HardHit,
		/*     SFX_NO     */        SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                     0x4, /*  SMASH_CHANCE  */                     0x5,
		/*  REDIRECTABLE  */                     0x1, /* REDIRECTABLE2  */                     0x0
	},
	{
		/*       ID       */                 0x24A, /*    PP_COST     */                   0x0, /* RECOLOR_VALUE  */                  0x46,
		/*   HAS_SOUND    */                  -0x1, /*     EFFECT     */    EffectType::Attack, /*    ELEMENT     */     ElementType::None,
		/*     TARGET     */ TargetType::FirstAlly, /*    ATK_MULT    */                  0x22, /*    HEAL_LO     */                   0x0,
		/*    HEAL_HI     */                   0x0, /*    AILMENT     */                   0x0, /* AILMENT_CHANCE */                   0x0,
		/*     ACTION     */                   0x0, /*    PRIORITY    */                   0x2, /*     MSG_NO     */                 0x2E2,
		/*    HAS_DIM     */                   0x0, /*    ANIM_NO     */       Animation::None, /*  ANIM_SUCCESS  */   Animation::NoEffect,
		/*     SFX_NO     */      SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                   0x4, /*  SMASH_CHANCE  */                   0x5,
		/*  REDIRECTABLE  */                   0x1, /* REDIRECTABLE2  */                   0x0
	},
	{
		/*       ID       */                     0x24B, /*    PP_COST     */                       0x0, /* RECOLOR_VALUE  */                      0x46,
		/*   HAS_SOUND    */                      -0x1, /*     EFFECT     */        EffectType::Attack, /*    ELEMENT     */         ElementType::None,
		/*     TARGET     */ TargetType::TwoRandomAlly, /*    ATK_MULT    */                      0x28, /*    HEAL_LO     */                       0x0,
		/*    HEAL_HI     */                       0x0, /*    AILMENT     */                       0x0, /* AILMENT_CHANCE */                       0x0,
		/*     ACTION     */                       0x0, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x47F,
		/*    HAS_DIM     */                       0x0, /*    ANIM_NO     */           Animation::None, /*  ANIM_SUCCESS  */       Animation::NoEffect,
		/*     SFX_NO     */          SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                       0x4, /*  SMASH_CHANCE  */                       0x5,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */             0x24C, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4C2,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x24D, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4C3,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x24E, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4C4,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x24F, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4C5,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x250, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4C6,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x251, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4C7,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                    0x252, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x5, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x4C8,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x253, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x4, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x4C9,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x254, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x0, /* AILMENT_CHANCE */                      0x0,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x4CA,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x255, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x7, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x4CB,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x256, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x3, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x4CC,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */          Animation::None, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                  0x257, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x48,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */       EffectType::Misc, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x4CD,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */        Animation::None,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x0, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */             0x258, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4CE,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x259, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4CF,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x25A, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4D0,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x25B, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4D1,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x25C, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4D2,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x25D, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4D3,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x25E, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4D4,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x25F, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4D5,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x260, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4D6,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x261, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4D7,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x262, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4D8,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                       0x263, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */      ElementType::Explosion,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x21,
		/*    HEAL_HI     */                        0x2A, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x41A,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */     Animation::MonsterThrow, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x4, /*  SMASH_CHANCE  */                         0x5,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                  0x264, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */ ElementType::Explosion,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                   0x3C,
		/*    HEAL_HI     */                   0x46, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x301,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */  Animation::CannonShot, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                       0x265, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                        -0x1, /*     EFFECT     */          EffectType::Attack, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                        0x28, /*    HEAL_LO     */                         0x0,
		/*    HEAL_HI     */                         0x0, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x4D9,
		/*    HAS_DIM     */                         0x0, /*    ANIM_NO     */             Animation::None, /*  ANIM_SUCCESS  */         Animation::NoEffect,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x4, /*  SMASH_CHANCE  */                         0x5,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                    0x266, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x5, /* AILMENT_CHANCE */                     0x3C,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x4DB,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */    Animation::PorkyThing, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                  0x267, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */ ElementType::Explosion,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                   0x91,
		/*    HEAL_HI     */                   0xA2, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x4D9,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */ Animation::EnemyThrow2, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                       0x268, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */      ElementType::Explosion,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x91,
		/*    HEAL_HI     */                        0xA2, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x4D9,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */     Animation::MonsterThrow, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                  0x269, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */ ElementType::Explosion,
		/*     TARGET     */  TargetType::AllAllies, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                   0x91,
		/*    HEAL_HI     */                   0xA2, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x4D9,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */ Animation::EnemyThrow3, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x26A, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x2, /* AILMENT_CHANCE */                     0x28,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x4DA,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */    Animation::WhirlpoolA, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                  0x26B, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x48,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Damage, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x0, /*    HEAL_LO     */                   0x78,
		/*    HEAL_HI     */                   0x80, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x4DC,
		/*    HAS_DIM     */                    0x1, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */             0x26C, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3A3,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x26D, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x3A3,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                    0x26E, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x48,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */ EffectType::StatusChange, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */    TargetType::AllAllies, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0x0,
		/*    HEAL_HI     */                      0x0, /*    AILMENT     */                      0x0, /* AILMENT_CHANCE */                     0x64,
		/*     ACTION     */                      0x1, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x4EC,
		/*    HAS_DIM     */                      0x0, /*    ANIM_NO     */   Animation::MonsterEfcB, /*  ANIM_SUCCESS  */          Animation::None,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */             0x26F, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4DD,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */             0x270, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */              0x48,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x2, /*     MSG_NO     */             0x4DE,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */  SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                  0x271, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x300,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                     0x272, /*    PP_COST     */                       0x0, /* RECOLOR_VALUE  */                      0x46,
		/*   HAS_SOUND    */                      -0x1, /*     EFFECT     */        EffectType::Attack, /*    ELEMENT     */         ElementType::None,
		/*     TARGET     */ TargetType::TwoRandomAlly, /*    ATK_MULT    */                      0x14, /*    HEAL_LO     */                       0x0,
		/*    HEAL_HI     */                       0x0, /*    AILMENT     */                       0x0, /* AILMENT_CHANCE */                       0x0,
		/*     ACTION     */                       0x0, /*    PRIORITY    */                       0x2, /*     MSG_NO     */                     0x323,
		/*    HAS_DIM     */                       0x0, /*    ANIM_NO     */           Animation::None, /*  ANIM_SUCCESS  */       Animation::NoEffect,
		/*     SFX_NO     */          SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                       0x2, /*  SMASH_CHANCE  */                       0x5,
		/*  REDIRECTABLE  */                       0x1, /* REDIRECTABLE2  */                       0x0
	},
	{
		/*       ID       */                 0x273, /*    PP_COST     */                   0x0, /* RECOLOR_VALUE  */                  0x46,
		/*   HAS_SOUND    */                  -0x1, /*     EFFECT     */    EffectType::Attack, /*    ELEMENT     */     ElementType::None,
		/*     TARGET     */ TargetType::AllAllies, /*    ATK_MULT    */                  0x28, /*    HEAL_LO     */                   0x0,
		/*    HEAL_HI     */                   0x0, /*    AILMENT     */                   0x0, /* AILMENT_CHANCE */                   0x0,
		/*     ACTION     */                   0x0, /*    PRIORITY    */                   0x2, /*     MSG_NO     */                 0x457,
		/*    HAS_DIM     */                   0x0, /*    ANIM_NO     */       Animation::None, /*  ANIM_SUCCESS  */    Animation::HardHit,
		/*     SFX_NO     */      SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                   0x4, /*  SMASH_CHANCE  */                   0x5,
		/*  REDIRECTABLE  */                   0x1, /* REDIRECTABLE2  */                   0x0
	},
	{
		/*       ID       */                  0x274, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x452,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x275, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0xA, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x494,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x276, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E0,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x3, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x277, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x46,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */       EffectType::Damage, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                     0x55,
		/*    HEAL_HI     */                     0x64, /*    AILMENT     */                      0x0, /* AILMENT_CHANCE */                      0x0,
		/*     ACTION     */                      0x0, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x2E0,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */ Animation::MaskedManBeam, /*  ANIM_SUCCESS  */       Animation::HardHit,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x5,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                      0x278, /*    PP_COST     */                        0x0, /* RECOLOR_VALUE  */                       0x47,
		/*   HAS_SOUND    */                        0x0, /*     EFFECT     */   EffectType::StatusChange, /*    ELEMENT     */          ElementType::None,
		/*     TARGET     */      TargetType::AllAllies, /*    ATK_MULT    */                        0x0, /*    HEAL_LO     */                        0x0,
		/*    HEAL_HI     */                        0x0, /*    AILMENT     */                        0x0, /* AILMENT_CHANCE */                        0x0,
		/*     ACTION     */                        0x1, /*    PRIORITY    */                        0x2, /*     MSG_NO     */                      0x344,
		/*    HAS_DIM     */                        0x0, /*    ANIM_NO     */ Animation::MonsterPKPoison, /*  ANIM_SUCCESS  */            Animation::None,
		/*     SFX_NO     */              SFX_ENEMY_PSI, /*  MISS_CHANCE   */                        0x0, /*  SMASH_CHANCE  */                        0x0,
		/*  REDIRECTABLE  */                        0x0, /* REDIRECTABLE2  */                        0x0
	},
	{
		/*       ID       */                         0x279, /*    PP_COST     */                           0x0, /* RECOLOR_VALUE  */                          0x46,
		/*   HAS_SOUND    */                           0x0, /*     EFFECT     */            EffectType::Attack, /*    ELEMENT     */          ElementType::Thunder,
		/*     TARGET     */         TargetType::AllAllies, /*    ATK_MULT    */                           0x0, /*    HEAL_LO     */                           0x0,
		/*    HEAL_HI     */                           0x0, /*    AILMENT     */                           0x0, /* AILMENT_CHANCE */                           0x0,
		/*     ACTION     */                           0x0, /*    PRIORITY    */                           0x2, /*     MSG_NO     */                         0x4DF,
		/*    HAS_DIM     */                           0x0, /*    ANIM_NO     */ Animation::MaskedManLightning, /*  ANIM_SUCCESS  */            Animation::HardHit,
		/*     SFX_NO     */              SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                           0x0, /*  SMASH_CHANCE  */                           0x0,
		/*  REDIRECTABLE  */                           0x1, /* REDIRECTABLE2  */                           0x0
	},
	{
		/*       ID       */                         0x27A, /*    PP_COST     */                           0x0, /* RECOLOR_VALUE  */                          0x46,
		/*   HAS_SOUND    */                           0x0, /*     EFFECT     */            EffectType::Attack, /*    ELEMENT     */             ElementType::None,
		/*     TARGET     */    TargetType::ChooseOneAlly2, /*    ATK_MULT    */                           0x0, /*    HEAL_LO     */                           0x0,
		/*    HEAL_HI     */                           0x0, /*    AILMENT     */                           0x0, /* AILMENT_CHANCE */                           0x0,
		/*     ACTION     */                           0x0, /*    PRIORITY    */                           0x2, /*     MSG_NO     */                         0x4E0,
		/*    HAS_DIM     */                           0x0, /*    ANIM_NO     */ Animation::MaskedManLightning, /*  ANIM_SUCCESS  */            Animation::HardHit,
		/*     SFX_NO     */              SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                           0x0, /*  SMASH_CHANCE  */                           0x0,
		/*  REDIRECTABLE  */                           0x1, /* REDIRECTABLE2  */                           0x0
	},
	{
		/*       ID       */                  0x27B, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x1E, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2DF,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x3, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x27C, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x46,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */       EffectType::Damage, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                     0x55,
		/*    HEAL_HI     */                     0x64, /*    AILMENT     */                      0x0, /* AILMENT_CHANCE */                      0x0,
		/*     ACTION     */                      0x0, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x2DF,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */ Animation::MaskedManBeam, /*  ANIM_SUCCESS  */       Animation::HardHit,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x5,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                    0x27D, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x46,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */       EffectType::Damage, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                     0x55,
		/*    HEAL_HI     */                     0x64, /*    AILMENT     */                      0x0, /* AILMENT_CHANCE */                      0x0,
		/*     ACTION     */                      0x0, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x2DF,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */ Animation::MaskedManBeam, /*  ANIM_SUCCESS  */       Animation::HardHit,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x4, /*  SMASH_CHANCE  */                      0x5,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */                  0x27E, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                    0x0, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0x5, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E0,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x0,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                    0x27F, /*    PP_COST     */                      0x0, /* RECOLOR_VALUE  */                     0x46,
		/*   HAS_SOUND    */                      0x0, /*     EFFECT     */       EffectType::Damage, /*    ELEMENT     */        ElementType::None,
		/*     TARGET     */   TargetType::RandomAlly, /*    ATK_MULT    */                      0x0, /*    HEAL_LO     */                      0xC,
		/*    HEAL_HI     */                     0x12, /*    AILMENT     */                      0x0, /* AILMENT_CHANCE */                      0x0,
		/*     ACTION     */                      0x0, /*    PRIORITY    */                      0x2, /*     MSG_NO     */                    0x2E0,
		/*    HAS_DIM     */                      0x1, /*    ANIM_NO     */ Animation::MaskedManBeam, /*  ANIM_SUCCESS  */       Animation::HardHit,
		/*     SFX_NO     */         SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                      0x0, /*  SMASH_CHANCE  */                      0x0,
		/*  REDIRECTABLE  */                      0x1, /* REDIRECTABLE2  */                      0x0
	},
	{
		/*       ID       */             0x280, /*    PP_COST     */               0x0, /* RECOLOR_VALUE  */               0x0,
		/*   HAS_SOUND    */               0x0, /*     EFFECT     */  EffectType::Misc, /*    ELEMENT     */ ElementType::None,
		/*     TARGET     */  TargetType::Self, /*    ATK_MULT    */               0x0, /*    HEAL_LO     */               0x0,
		/*    HEAL_HI     */               0x0, /*    AILMENT     */               0x0, /* AILMENT_CHANCE */               0x0,
		/*     ACTION     */               0x0, /*    PRIORITY    */               0x0, /*     MSG_NO     */             0x2DF,
		/*    HAS_DIM     */               0x0, /*    ANIM_NO     */   Animation::None, /*  ANIM_SUCCESS  */   Animation::None,
		/*     SFX_NO     */          SFX_NULL, /*  MISS_CHANCE   */               0x0, /*  SMASH_CHANCE  */               0x0,
		/*  REDIRECTABLE  */               0x0, /* REDIRECTABLE2  */               0x0
	},
	{
		/*       ID       */                  0x281, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                    0xF, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x2E0,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */    Animation::NoEffect,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x0, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                  0x282, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x19, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x47C,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                       0x283, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */        ElementType::Thunder,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x30,
		/*    HEAL_HI     */                        0x36, /*    AILMENT     */                         0x2, /* AILMENT_CHANCE */                         0x3,
		/*     ACTION     */                         0x1, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x4BC,
		/*    HAS_DIM     */                         0x0, /*    ANIM_NO     */ Animation::MonsterPKThunder, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                       0x284, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Attack, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */ TargetType::ThreeRandomAlly, /*    ATK_MULT    */                        0x14, /*    HEAL_LO     */                         0x0,
		/*    HEAL_HI     */                         0x0, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x4BB,
		/*    HAS_DIM     */                         0x0, /*    ANIM_NO     */             Animation::None, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x4, /*  SMASH_CHANCE  */                         0x5,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                  0x285, /*    PP_COST     */                    0x0, /* RECOLOR_VALUE  */                   0x46,
		/*   HAS_SOUND    */                   -0x1, /*     EFFECT     */     EffectType::Attack, /*    ELEMENT     */      ElementType::None,
		/*     TARGET     */ TargetType::RandomAlly, /*    ATK_MULT    */                   0x23, /*    HEAL_LO     */                    0x0,
		/*    HEAL_HI     */                    0x0, /*    AILMENT     */                    0x0, /* AILMENT_CHANCE */                    0x0,
		/*     ACTION     */                    0x0, /*    PRIORITY    */                    0x2, /*     MSG_NO     */                  0x4B9,
		/*    HAS_DIM     */                    0x0, /*    ANIM_NO     */        Animation::None, /*  ANIM_SUCCESS  */     Animation::HardHit,
		/*     SFX_NO     */       SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                    0x4, /*  SMASH_CHANCE  */                    0x5,
		/*  REDIRECTABLE  */                    0x1, /* REDIRECTABLE2  */                    0x0
	},
	{
		/*       ID       */                       0x286, /*    PP_COST     */                         0x0, /* RECOLOR_VALUE  */                        0x46,
		/*   HAS_SOUND    */                         0x0, /*     EFFECT     */          EffectType::Damage, /*    ELEMENT     */           ElementType::None,
		/*     TARGET     */       TargetType::AllAllies, /*    ATK_MULT    */                         0x0, /*    HEAL_LO     */                        0x70,
		/*    HEAL_HI     */                        0x7C, /*    AILMENT     */                         0x0, /* AILMENT_CHANCE */                         0x0,
		/*     ACTION     */                         0x0, /*    PRIORITY    */                         0x2, /*     MSG_NO     */                       0x4BA,
		/*    HAS_DIM     */                         0x1, /*    ANIM_NO     */ Animation::MonsterPKOffense, /*  ANIM_SUCCESS  */          Animation::HardHit,
		/*     SFX_NO     */            SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                         0x0, /*  SMASH_CHANCE  */                         0x0,
		/*  REDIRECTABLE  */                         0x1, /* REDIRECTABLE2  */                         0x0
	},
	{
		/*       ID       */                 0x287, /*    PP_COST     */                   0x0, /* RECOLOR_VALUE  */                  0x46,
		/*   HAS_SOUND    */                   0x0, /*     EFFECT     */    EffectType::Damage, /*    ELEMENT     */     ElementType::None,
		/*     TARGET     */ TargetType::AllAllies, /*    ATK_MULT    */                   0x0, /*    HEAL_LO     */                 0x11D,
		/*    HEAL_HI     */                 0x131, /*    AILMENT     */                   0x0, /* AILMENT_CHANCE */                   0x0,
		/*     ACTION     */                   0x0, /*    PRIORITY    */                   0x2, /*     MSG_NO     */                 0x444,
		/*    HAS_DIM     */                   0x1, /*    ANIM_NO     */       Animation::None, /*  ANIM_SUCCESS  */    Animation::HardHit,
		/*     SFX_NO     */      SFX_ENEMY_ATTACK, /*  MISS_CHANCE   */                   0x0, /*  SMASH_CHANCE  */                   0x0,
		/*  REDIRECTABLE  */                   0x1, /* REDIRECTABLE2  */                   0x0
	},
	{
		/*       ID       */                0x0, /*    PP_COST     */                0x0, /* RECOLOR_VALUE  */                0x0,
		/*   HAS_SOUND    */                0x0, /*     EFFECT     */ EffectType::Damage, /*    ELEMENT     */  ElementType::None,
		/*     TARGET     */   TargetType::Self, /*    ATK_MULT    */                0x0, /*    HEAL_LO     */                0x0,
		/*    HEAL_HI     */                0x0, /*    AILMENT     */                0x0, /* AILMENT_CHANCE */                0x0,
		/*     ACTION     */                0x0, /*    PRIORITY    */                0x0, /*     MSG_NO     */                0x0,
		/*    HAS_DIM     */                0x0, /*    ANIM_NO     */    Animation::None, /*  ANIM_SUCCESS  */    Animation::None,
		/*     SFX_NO     */           SFX_NULL, /*  MISS_CHANCE   */                0x0, /*  SMASH_CHANCE  */                0x0,
		/*  REDIRECTABLE  */                0x0, /* REDIRECTABLE2  */                0x0
	},
	{
		/*       ID       */                0x0, /*    PP_COST     */                0x0, /* RECOLOR_VALUE  */                0x0,
		/*   HAS_SOUND    */                0x0, /*     EFFECT     */ EffectType::Damage, /*    ELEMENT     */  ElementType::None,
		/*     TARGET     */   TargetType::Self, /*    ATK_MULT    */                0x0, /*    HEAL_LO     */                0x0,
		/*    HEAL_HI     */                0x0, /*    AILMENT     */                0x0, /* AILMENT_CHANCE */                0x0,
		/*     ACTION     */                0x0, /*    PRIORITY    */                0x0, /*     MSG_NO     */                0x0,
		/*    HAS_DIM     */                0x0, /*    ANIM_NO     */    Animation::None, /*  ANIM_SUCCESS  */    Animation::None,
		/*     SFX_NO     */           SFX_NULL, /*  MISS_CHANCE   */                0x0, /*  SMASH_CHANCE  */                0x0,
		/*  REDIRECTABLE  */                0x0, /* REDIRECTABLE2  */                0x0
	}
};
