#ifndef GUARD_GLOBAL_H
#define GUARD_GLOBAL_H

#include <stddef.h>
#include <stdio.h>
#include <string.h>
#include "gba/types.h"

#define static_assert(cond) extern char assertion[(cond) ? 1 : -1]
#define asm_unified(x) asm(".syntax unified\n" x "\n.syntax divided")
#define NAKED __attribute__((naked))

#if NON_MATCHING
#define ASM_FUNC(path, decl)
#else
#define ASM_FUNC(path, decl)                                                                       \
    NAKED decl { asm(".include " #path); }
#endif

#if NON_MATCHING
#define NONMATCH(path, decl) decl
#define END_NONMATCH
#else
#define NONMATCH(path, decl)                                                                       \
    NAKED decl {                                                                                   \
        asm(".include " #path);                                                                    \
        if (0)
#define END_NONMATCH }
#endif

// agbcc stddef.h doesnt have this
#ifdef __cplusplus
#undef NULL
#define NULL 0
#endif

#if DEBUG
#define DBPRINT(...)                                                                               \
    { u16 hax[46];                                                                                   \
    hax[0] = 0x46E4; /* mov r12, r12 */                                                            \
    hax[1] = 0xE02A; /* b pc + 88 */                                                               \
    hax[2] = 0x6464;                                                                               \
    hax[3] = 0;                                                                                    \
    hax[45] = 0x4770;                                                                              \
    sprintf((char*)&hax[4], __VA_ARGS__);                                                          \
    ((void (*)())((u8*)(&hax) + 1))(); }
#else
#define DBPRINT(...)
#endif

#if DEBUG
#define BKPT() asm("mov r11, r11");
#else
#define BKPT()
#endif

#define INLINE_VT_END                                                                              \
    virtual void VT_HACK(); /*necessary for inline classes using baserom                           \
                               vtables*/
#define DUMP_INLINE(CLASS)                                                                         \
    NAKED void CLASS::VT_HACK() {} /* establish a reference to the class, but create no code */

#endif  // GUARD_GLOBAL_H
