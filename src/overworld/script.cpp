#include "overworld/script.h"
#include "battle/goods.h"
#include "battle/guest.h"
#include "functions.h"

extern "C" {
    
extern u16 gUnknown_03005314;
extern u32 gUnknown_030055F4[];
extern u32 gUnknown_0200DEBC[];
extern u8 gUnknown_02005080;
extern u8 gUnknown_080C1FF0[];

extern void DoReset();


// not functionally equivalent
NONMATCH("asm/non_matching/script/exec_cmd.inc", void exec_cmd(void* script, u16* unk)) {
    void* v1 = script;
    void* v2 = script;
    u32 argc;
    u32 tmp;

    union {
        struct {
            s32 val;
        } onearg;
        struct {
            u8 u8val;
            u16 u16val;
        } twoarg;
        s32 raw;
    };

    if (gGame.state_10) {
        v1 = sub_08027E60();
        v2 = gGame._84c0;
    }
    gGame._84c0 = v2;
    gGame._9470 = unk;

    u16 sp = gGame.sp;
    bool ok = false;
    do {
        gGame.script_pc = sub_08021878(v2, &onearg.val, unk);
        switch (*gGame.script_pc) {
        case 0x0:
            gGame.stack[sp] = gGame.stack[gGame.registers[twoarg.u8val] + (u16)(raw >> 8)];
            sp++;
            break;
        case 0x1:
            gGame.stack[sp] = raw;
            sp++;
            break;
        case 0x2:
            gGame.stack[sp] = gGame.registers[twoarg.u8val] + (u16)(raw >> 8);
            sp++;
            break;
        case 0x3:
            sp--;
            gGame.stack[gGame.registers[twoarg.u8val] + (u16)(raw >> 8)] = gGame.stack[sp];
            break;
        case 0x4:
            gGame.state_40 = 0;
            gGame.sp = sp;
            argc = sub_08021920((u16)(raw >> 8));
            ok = exec_extended((u16)(raw >> 8), &gGame.stack[sp - 1]);
            if (gGame.state_20) {
                return;
            }
            if (!gGame.state_40) {
                u32 temp;
                u32 x;
                if (gGame.sp != sp) {
                    x = 1;
                    sp = gGame.sp - 1;
                    temp = gGame.stack[sp];
                } else {
                    x = 0;
                    temp = 0;
                }
                sp -= argc;
                if (x) {
                    gGame.stack[sp] = temp;
                    sp++;
                }
            }
            break;
        case 0x5:
            gGame.state_10 = 1;
            v2 = sub_08027E60();
            goto CASE_7;
            // gGame.stack[sp] = gGame.registers[raw - 19];
            // gGame.stack[sp + 1] = *unk;
            // gGame.registers[raw - 19] = sp;
            // *unk = (u16)(raw >> 8);
            break;
        case 0x6:
            gGame.state_10 = 0;
            tmp = gGame.stack[(u16)(sp - 1)];
            sp = gGame.registers[twoarg.u8val];
            gGame.registers[twoarg.u8val] = gGame.stack[sp];
            *unk = gGame.stack[sp];
            sp -= (u16)((u32)raw >> 8);
            gGame.stack[sp] = tmp;
            sp++;
            v2 = gGame._84c0;
            break;
        case 0x7:
        CASE_7:
            gGame.stack[sp] = gGame.registers[raw - 19];
            gGame.stack[sp + 1] = *unk;
            gGame.registers[raw - 19] = sp;
            *unk = (u16)(raw >> 8);
            break;
        case 0x8:
            tmp = gGame.stack[sp - 1];
            sp = gGame.registers[twoarg.u8val];
            gGame.registers[twoarg.u8val] = gGame.stack[sp];
            *unk = gGame.stack[sp + 1];
            sp -= (u16)(raw >> 8);
            gGame.stack[sp] = tmp;
            sp++;
            if (gGame.stack[sp + 1] == 0) {
                ok = 1;
                sub_0801BF18();
            }
            break;
        case 0x9:
            ok = 1;
            sub_0801BF18();
            break;
        case 0xA:
            *(u16*)&gGame.stack[1000] = raw;
            break;
        case 0xB:
            sp += raw;
            break;
        case 0xC:
            *unk = raw >> 8;
            break;
        case 0xD:
            sp--;
            if (gGame.stack[sp] == 0) {
                *unk = raw >> 8;
            }
            break;
        case 0xE:
            switch (raw) {
            case 0:
                gGame.stack[sp - 1] = -gGame.stack[sp - 1];
                break;
            case 1:
                sp--;
                gGame.stack[sp - 1] += gGame.stack[sp];
                break;
            case 2:
                sp--;
                gGame.stack[sp - 1] -= gGame.stack[sp];
                break;
            case 3:
                sp--;
                gGame.stack[sp - 1] *= gGame.stack[sp];
                break;
            case 4:
                sp--;
                gGame.stack[sp - 1] /= gGame.stack[sp];
                break;
            case 5:
                sp--;
                gGame.stack[sp - 1] %= gGame.stack[sp];
                break;
            case 6:
                gGame.stack[sp - 1]++;
                break;
            case 7:
                gGame.stack[sp - 1]--;
                break;
            case 8:
                sp--;
                gGame.stack[sp - 1] &= gGame.stack[sp];
                break;
            case 9:
                sp--;
                gGame.stack[sp - 1] |= gGame.stack[sp];
                break;
            case 0xA:
                sp--;
                gGame.stack[sp - 1] = gGame.stack[sp - 1] == gGame.stack[sp];
                break;
            case 0xB:
                sp--;
                gGame.stack[sp - 1] = gGame.stack[sp - 1] != gGame.stack[sp];
                break;
            case 0xC:
                sp--;
                gGame.stack[sp - 1] = gGame.stack[sp - 1] < gGame.stack[sp];
                break;
            case 0xD:
                sp--;
                gGame.stack[sp - 1] = gGame.stack[sp] > gGame.stack[sp - 1];
                break;
            case 0xE:
                sp--;
                gGame.stack[sp - 1] = gGame.stack[sp - 1] <= gGame.stack[sp];
                break;
            case 0xF:
                sp--;
                gGame.stack[sp - 1] = gGame.stack[sp] <= gGame.stack[sp - 1];
                break;
            case 0x10:
                gGame.stack[sp - 1] = gGame.stack[sp];
                sp++;
                break;
            case 0x11:
            case 0x12:
                sp--;
                break;
            }
            break;
        }
    } while (!ok);
    gGame.sp = sp;
}
END_NONMATCH

// verify if function name is accurate
inline void scriptstack_pop() {
    (*gGame._9470)--;
    gGame.stack[gGame.sp] = gGame.stack[gGame.sp - 1];
    gGame.sp++;
}

u16 exec_extended(u16 cmd, s32* sp) {
    u8 temp[4];

    if (cmd > 0xFF || !gScriptCmdTable[cmd]) {
        sub_0801BF18();
        return 1;
    }
    return gScriptCmdTable[cmd](sp);
}

u16 sub_0801BF18() {
    if (gGame.state_1 == 5) {
        if (gGame.state_8 == 0) {
            sub_0800AD6C();
        }
        sub_08023EF8();
    }
    return 1;
}

u16 cmd_delay(s32* sp) {
    if (gGame.state_1 != 5)
        return 0;

    gGame.delay = scriptstack_peek(sp, 0);
    return 1;
}

u16 cmd_set_anim_speed(s32* sp) {
    s32 idx;
    Object* sprite;

    if (gGame.state_1 != 5)
        return 0;

    idx = scriptstack_peek(sp, 0);
    sprite = get_obj(idx);
    if (sprite == NULL || sprite->speed == 0)
        return 0;

    scriptstack_pop();
    return 1;
}

u16 cmd_load_subscript(s32* sp) {
    u16 temp;

    temp = scriptstack_peek(sp, 0);
    switch (gGame.state_1) {
    case 0:
    case 2:
    case 3:
        sub_08025620(get_obj_direct(0), 5, temp);
        break;
    default:
        break;
    }
    return 0;
}

u16 cmd_04(s32* sp) {
    if (gGame.state_8 != 0)
        scriptstack_push(1);
    else
        scriptstack_push(0);
    return 0;
}

u16 cmd_05(s32* sp) {
    s32 temp;

    if (gGame.state_1 != 5)
        return 0;

    temp = scriptstack_peek(sp, 0);
    if ((gSomeBlend._2CA0._2 & temp) == 0) {
        scriptstack_pop();
        return 1;
    } else {
        scriptstack_push(gSomeBlend._2CA0._2 & temp);
        return 0;
    }
}

u16 cmd_06(s32* sp) {
    s32 idx;
    Object* sprite;
    int tmp;

    if (gGame.state_1 != 5)
        return 0;

    idx = scriptstack_peek(sp, 0);
    sprite = get_obj(idx);
    if (sprite == 0 || (tmp = sprite->_ca_8)) {
        return 0;
    }
    scriptstack_pop();
    return 1;
}

u16 cmd_07() {
    if (gGame._8495 / 128 != 0) {
        scriptstack_push(3);
        return 0;
    }

    switch (gUnknown_02005080) {
    case 0:
    case 1:
    case 2:
        scriptstack_push(0);
        break;
    case 3:
        scriptstack_push(1);
        break;
    case 4:
        scriptstack_push(2);
        break;
    default:
        break;
    }
    return 0;
}

u16 cmd_reload_room() {
    if (gGame.state_1 != 5)
        return 0;

    gGame.disable_collision = 0;
    sub_08024744();
    gGame.state_80 = 1;
    sub_08005BFC();
    sub_0801B5E8(2);
    sub_08005C14();
    gGame.state_80 = 0;
    gGame.state_20 = 1;
    if (gGame._8484 != 0) {
        gSomeBlend._121bb_10 = 1;
        sub_0800AD6C();
        sub_08001B18(&gGame._9488, &gUnknown_03005314, 0x400);
        gGame.mode = 6;
        sub_08013D38();
        sub_0802610C(0);
    } else {
        gGame._67c4_40 = 1;
    }
    return 0;
}

u16 cmd_C9() {
    if (gGame.state_1 == 5)
        gGame._8494_4 = 1;
    return 0;
}

NAKED
u16 cmd_E4(s32* sp) {
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	sub sp, #4\n\
	adds r5, r0, #0\n\
	ldr r7, _0801C31C @ =gGame\n\
	ldr r1, _0801C320 @ =0x00009480\n\
	adds r0, r7, r1\n\
	ldrb r1, [r0]\n\
	movs r0, #7\n\
	ands r0, r1\n\
	cmp r0, #5\n\
	beq _0801C2D0\n\
	b _0801C432\n\
_0801C2D0:\n\
	adds r0, r5, #0\n\
	movs r1, #1\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r4, r0, #0x10\n\
	adds r0, r5, #0\n\
	movs r1, #0\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r6, r0, #0x10\n\
	ldr r5, _0801C324 @ =0x0000947C\n\
	adds r2, r7, r5\n\
	movs r0, #0\n\
	ldrsh r1, [r2, r0]\n\
	movs r0, #1\n\
	rsbs r0, r0, #0\n\
	cmp r1, r0\n\
	bne _0801C308\n\
	lsls r0, r6, #0x10\n\
	asrs r0, r0, #0x10\n\
	cmp r0, r1\n\
	beq _0801C308\n\
	ldr r1, _0801C328 @ =0x0000947E\n\
	adds r0, r7, r1\n\
	strh r6, [r0]\n\
	strh r6, [r2]\n\
_0801C308:\n\
	movs r0, #0x80\n\
	lsls r0, r0, #3\n\
	cmp r4, r0\n\
	bne _0801C32C\n\
	mov r1, sp\n\
	movs r0, #1\n\
	strh r0, [r1]\n\
	movs r4, #1\n\
	b _0801C332\n\
	.align 2, 0\n\
_0801C31C: .4byte gGame\n\
_0801C320: .4byte 0x00009480\n\
_0801C324: .4byte 0x0000947C\n\
_0801C328: .4byte 0x0000947E\n\
_0801C32C:\n\
	mov r1, sp\n\
	movs r0, #0\n\
	strh r0, [r1]\n\
_0801C332:\n\
	ldr r1, _0801C36C @ =gGame\n\
	ldr r2, _0801C370 @ =0x0000947C\n\
	adds r3, r1, r2\n\
	ldrh r2, [r3]\n\
	movs r5, #0\n\
	ldrsh r0, [r3, r5]\n\
	adds r5, r1, #0\n\
	cmp r0, #0\n\
	ble _0801C384\n\
	subs r1, r2, #1\n\
	strh r1, [r3]\n\
	lsls r0, r1, #0x10\n\
	cmp r0, #0\n\
	bne _0801C384\n\
	ldr r2, _0801C374 @ =0x0000FFFF\n\
	adds r0, r2, #0\n\
	orrs r1, r0\n\
	strh r1, [r3]\n\
	mov r0, sp\n\
	ldrh r0, [r0]\n\
	cmp r0, #0\n\
	beq _0801C37C\n\
	ldr r1, _0801C378 @ =0x0000947E\n\
	adds r0, r5, r1\n\
	movs r2, #0\n\
	ldrsh r0, [r0, r2]\n\
	bl scriptstack_push\n\
	b _0801C432\n\
	.align 2, 0\n\
_0801C36C: .4byte gGame\n\
_0801C370: .4byte 0x0000947C\n\
_0801C374: .4byte 0x0000FFFF\n\
_0801C378: .4byte 0x0000947E\n\
_0801C37C:\n\
	movs r0, #0\n\
	bl scriptstack_push\n\
	b _0801C432\n\
_0801C384:\n\
	mov r0, sp\n\
	ldrh r0, [r0]\n\
	cmp r0, #0\n\
	beq _0801C3DC\n\
	ldr r0, _0801C3AC @ =gSomeBlend\n\
	ldr r1, _0801C3B0 @ =0x00002CA0\n\
	adds r0, r0, r1\n\
	ldrh r0, [r0]\n\
	ands r4, r0\n\
	cmp r4, #0\n\
	bne _0801C3B8\n\
	cmp r6, #0\n\
	bne _0801C400\n\
	ldr r2, _0801C3B4 @ =0x0000947E\n\
	adds r0, r5, r2\n\
	movs r5, #0\n\
	ldrsh r0, [r0, r5]\n\
	bl scriptstack_push\n\
	b _0801C432\n\
	.align 2, 0\n\
_0801C3AC: .4byte gSomeBlend\n\
_0801C3B0: .4byte 0x00002CA0\n\
_0801C3B4: .4byte 0x0000947E\n\
_0801C3B8:\n\
	ldr r2, _0801C3D4 @ =0x0000947E\n\
	adds r0, r5, r2\n\
	movs r1, #0\n\
	ldrsh r0, [r0, r1]\n\
	subs r2, #2\n\
	adds r4, r5, r2\n\
	movs r5, #0\n\
	ldrsh r1, [r4, r5]\n\
	subs r0, r0, r1\n\
	bl scriptstack_push\n\
	ldr r0, _0801C3D8 @ =0x0000FFFF\n\
	strh r0, [r4]\n\
	b _0801C432\n\
	.align 2, 0\n\
_0801C3D4: .4byte 0x0000947E\n\
_0801C3D8: .4byte 0x0000FFFF\n\
_0801C3DC:\n\
	ldr r0, _0801C3F8 @ =gSomeBlend\n\
	ldr r1, _0801C3FC @ =0x00002CA2\n\
	adds r0, r0, r1\n\
	ldrh r0, [r0]\n\
	ands r0, r4\n\
	cmp r0, #0\n\
	bne _0801C424\n\
	cmp r6, #0\n\
	bne _0801C400\n\
	movs r0, #0\n\
	bl scriptstack_push\n\
	b _0801C432\n\
	.align 2, 0\n\
_0801C3F8: .4byte gSomeBlend\n\
_0801C3FC: .4byte 0x00002CA2\n\
_0801C400:\n\
	ldr r0, _0801C41C @ =0x00009480\n\
	adds r2, r5, r0\n\
	ldrb r0, [r2]\n\
	movs r1, #0x40\n\
	orrs r0, r1\n\
	strb r0, [r2]\n\
	ldr r1, _0801C420 @ =0x00009470\n\
	adds r0, r5, r1\n\
	ldr r1, [r0]\n\
	ldrh r0, [r1]\n\
	subs r0, #1\n\
	strh r0, [r1]\n\
	movs r0, #1\n\
	b _0801C434\n\
	.align 2, 0\n\
_0801C41C: .4byte 0x00009480\n\
_0801C420: .4byte 0x00009470\n\
_0801C424:\n\
	bl scriptstack_push\n\
	ldr r0, _0801C43C @ =gGame\n\
	ldr r2, _0801C440 @ =0x0000947C\n\
	adds r0, r0, r2\n\
	ldr r1, _0801C444 @ =0x0000FFFF\n\
	strh r1, [r0]\n\
_0801C432:\n\
	movs r0, #0\n\
_0801C434:\n\
	add sp, #4\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_0801C43C: .4byte gGame\n\
_0801C440: .4byte 0x0000947C\n\
_0801C444: .4byte 0x0000FFFF\n\
    ");
}

u16 cmd_F5(s32* sp) {
    u16 b;
    u16 a;
    u32 temp;

    b = scriptstack_peek(sp, 1);
    a = scriptstack_peek(sp, 0);
    if (a == 0)
        temp = 5;
    else
        temp = 4;

    switch (gGame.state_1) {
    case 0:
    case 2:
    case 3:
        sub_08025620(get_obj_direct(0), temp, b);
        break;
    default:
        break;
    }
    return 0;
}

u16 cmd_set_flag(s32* sp) {
    u16 flag;
    u32 value;

    flag = scriptstack_peek(sp, 1);
    value = scriptstack_peek(sp, 0) & 1;
    if (flag < 0x800)
        set_event_flag(flag, value);
    return 0;
}

u16 cmd_0B(s32* sp) {
    u16 idx;
    u32 val;

    idx = scriptstack_peek(sp, 1);
    val = scriptstack_peek(sp, 0) & 0xff;
    if (idx < 0x40)
        sub_08002938(idx, val);
    return 0;
}

u16 cmd_0C(s32* sp) {
    u16 idx;
    u16 val;

    idx = scriptstack_peek(sp, 1);
    val = scriptstack_peek(sp, 0);
    if (idx < 0x20)
        sub_08002950(idx, val);
    return 0;
}

u16 cmd_push_flag(s32* sp) {
    u16 val;
    u16 idx;

    idx = scriptstack_peek(sp, 0);
    if (idx < 0x800) {
        val = get_flag(idx);
        scriptstack_push(val);
    }
    return 0;
}

u16 cmd_0E(s32* sp) {
    u16 val;
    u16 idx;

    idx = scriptstack_peek(sp, 0);
    if (idx < 0x40) {
        val = get_progression_flag(idx);
        scriptstack_push(val);
    }
    return 0;
}

u16 cmd_0F(s32* sp) {
    u16 val;
    u16 idx;

    idx = scriptstack_peek(sp, 0);
    if (idx < 0x20) {
        val = sub_080029D4(idx);
        scriptstack_push(val);
    }
    return 0;
}

u16 cmd_flag_equals(s32* sp) {
    u16 val;
    u16 idx;
    u16 test;

    idx = scriptstack_peek(sp, 1);
    if (idx < 0x800) {
        val = get_flag(idx);
        test = scriptstack_peek(sp, 0);
        sub_080218B0(val, test);
    }
    return 0;
}

u16 cmd_11(s32* sp) {
    u16 val;
    u16 idx;
    u16 test;

    idx = scriptstack_peek(sp, 1);
    if (idx < 0x40) {
        val = get_progression_flag(idx);
        test = scriptstack_peek(sp, 0);
        sub_080218B0(val, test);
    }
    return 0;
}

u16 cmd_12(s32* sp) {
    u16 val;
    u16 idx;
    u16 test;

    idx = scriptstack_peek(sp, 1);
    if (idx < 0x20) {
        val = sub_080029D4(idx);
        test = scriptstack_peek(sp, 0);
        sub_080218B0(val, test);
    }
    return 0;
}

u16 cmd_DD(s32* sp) {
    u16 idx;
    u16 val;

    idx = scriptstack_peek(sp, 1);
    val = scriptstack_peek(sp, 0) & 0xf;
    if (idx < 0x80) {
        sub_080028F4(idx, val);
    }
    return 0;
}

u16 cmd_DE(s32* sp) {
    u16 idx;
    u16 val;

    idx = scriptstack_peek(sp, 0);
    if (idx < 0x80) {
        val = sub_08002998(idx);
        scriptstack_push(val);
    }
    return 0;
}

u16 cmd_DF(s32* sp) {
    u16 val;
    u16 idx;

    idx = scriptstack_peek(sp, 1);
    if (idx < 0x80) {
        val = sub_08002998(idx);
        idx = scriptstack_peek(sp, 0);
        sub_080218B0(val, idx);
    }
    return 0;
}

u16 cmd_14(s32* sp) {
    u16 idx;
    u16 iVar3;

    idx = scriptstack_peek(sp, 0);
    if (idx < 1000) {
        switch (gUnknown_02005080) {
        case 6:
        case 7:
            gSave._220 = idx;
            break;
        default:
            gGame.cur_room = idx;
            break;
        }
    }
    return 0;
}

u16 cmd_push_map_id(s32* sp) {
    scriptstack_push(gGame.cur_room);
    return 0;
}

u16 cmd_add_pocket(s32* sp) {
    s32 amt = scriptstack_peek(sp, 0);
    sub_0802A038(amt);
    return 0;
}

u16 cmd_push_pocket(s32* sp) {
    scriptstack_push(gSave.dp_pocket);
    return 0;
}

u16 cmd_set_key_item(s32* sp) {
    u16 idx;
    u32 val;

    idx = scriptstack_peek(sp, 1);
    val = scriptstack_peek(sp, 0);
    sub_0802A0F8(idx, val);
    return 0;
}

u16 cmd_get_item_count(s32* sp) {
    u16 idx;
    u16 cnt;
    CharStats* item;
    u16 temp;

    idx = scriptstack_peek(sp, 0);

    if (gGoodsInfo[idx].item_type == Key) {
        scriptstack_push(gSave.key_items[idx]);
        return 0;
    }

    cnt = 0;
    for (u16 i = 0; i < gGame.party_count; ++i) {
        item = get_char_stats(i);
        if (item->charNo != 0) {
            temp = sub_08001D2C(item->charNo);
            if (temp != 0) {
                cnt += sub_0802A3D0(item, idx);
            }
        }
    }

    scriptstack_push(cnt);
    return 0;
}

u16 cmd_get_party_size(s32* sp) {
    scriptstack_push(gGame.party_count);
    return 0;
}

#ifdef NONMATCHING
u16 cmd_has_party_member(s32* sp) {
    s16 status;
    u16 idx;

    idx = scriptstack_peek(sp, 0);
    if (idx < 0xf) {
        status = sub_0802B8C4(idx);
        if (status != -1)
            scriptstack_push(1);
        else
            scriptstack_push(0);
    }
    return 0;
}
#else
NAKED
u16 cmd_has_party_member(s32* sp) {
    asm_unified("\n\
	push {lr}\n\
	movs r1, #0\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r1, r0, #0x10\n\
	ldr r2, _0801C87C @ =0xFFFF0000\n\
	adds r0, r0, r2\n\
	lsrs r0, r0, #0x10\n\
	cmp r0, #0xe\n\
	bhi _0801C886\n\
	adds r0, r1, #0\n\
	bl sub_0802B8C4\n\
	lsls r0, r0, #0x10\n\
	asrs r0, r0, #0x10\n\
	movs r1, #1\n\
	rsbs r1, r1, #0\n\
	cmp r0, r1\n\
	beq _0801C880\n\
	movs r0, #1\n\
	bl scriptstack_push\n\
	b _0801C886\n\
	.align 2, 0\n\
_0801C87C: .4byte 0xFFFF0000\n\
_0801C880:\n\
	movs r0, #0\n\
	bl scriptstack_push\n\
_0801C886:\n\
	movs r0, #0\n\
	pop {r1}\n\
	bx r1\n\
    ");
}
#endif

u16 cmd_has_party_member_2(s32* sp) {
    s16 status;
    u16 idx;

    idx = scriptstack_peek(sp, 0);
    if (idx > 0 && idx < 16) {
        status = sub_0802B8C4(idx);
        scriptstack_push(status);
    } else {
        scriptstack_push(-1);
    }
    return 0;
}
void sub_080296E4(int);

u16 cmd_party_add(s32* sp) {
    s16 status;
    u16 idx;

    idx = scriptstack_peek(sp, 0);
    if ((u16)(idx - 1) < 0xf) {
        status = sub_0802B8C4(idx);
        if (status == -1) {
            sub_080296E4(idx);
        }
    }
    if (gGame.party_count > 1) {
        set_event_flag(0x3e3, 1);
    }
    return 0;
}

u16 cmd_party_heal(s32* sp) {
    u16 mode;

    mode = scriptstack_peek(sp, 0);
    if (mode < 4) {
        sub_0802AA78(mode);
        if (get_flag(0x2de) || get_flag(0x477)) {
            sub_08033BCC(0);
            sub_0802B4D8();
        } else {
            sub_08028040();
        }
    }
    return 0;
}

#ifdef NONMATCHING
u16 cmd_party_remove(s32* sp) {
    s16 status;
    u16 idx;

    idx = scriptstack_peek(sp, 0);
    if ((u32)(idx * 0x10000 - 0x10000 >> 0x10) < 0xf) {
        status = sub_0802B8C4(idx);
        if (status != -1) {
            sub_08029B18(status);
        }
    }
    if (gGame.party_count == 1) {
        set_event_flag(0x3e3, 0);
    }
    return 0;
}
#else
NAKED
u16 cmd_party_remove(s32* sp) {
    asm_unified("\n\
	push {lr}\n\
	movs r1, #0\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r1, r0, #0x10\n\
	ldr r2, _0801C9BC @ =0xFFFF0000\n\
	adds r0, r0, r2\n\
	lsrs r0, r0, #0x10\n\
	cmp r0, #0xe\n\
	bhi _0801C9A0\n\
	adds r0, r1, #0\n\
	bl sub_0802B8C4\n\
	lsls r0, r0, #0x10\n\
	lsrs r2, r0, #0x10\n\
	asrs r0, r0, #0x10\n\
	movs r1, #1\n\
	rsbs r1, r1, #0\n\
	cmp r0, r1\n\
	beq _0801C9A0\n\
	adds r0, r2, #0\n\
	bl sub_08029B18\n\
_0801C9A0:\n\
	ldr r0, _0801C9C0 @ =gGame\n\
	ldr r1, _0801C9C4 @ =0x00008299\n\
	adds r0, r0, r1\n\
	ldrb r0, [r0]\n\
	cmp r0, #1\n\
	bne _0801C9B4\n\
	ldr r0, _0801C9C8 @ =0x000003E3\n\
	movs r1, #0\n\
	bl set_event_flag\n\
_0801C9B4:\n\
	movs r0, #0\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_0801C9BC: .4byte 0xFFFF0000\n\
_0801C9C0: .4byte gGame\n\
_0801C9C4: .4byte 0x00008299\n\
_0801C9C8: .4byte 0x000003E3\n\
    ");
}
#endif

u16 cmd_20(s32* sp) {
    u16 clear;

    clear = scriptstack_peek(sp, 0);
    if (clear == 1)
        gGame._82b6_1 = 0;
    else if (clear == 0)
        gGame._82b6_1 = 1;
    return 0;
}

u16 cmd_set_giftbox_flag(s32* sp) {
    u16 idx;
    u16 val;

    idx = scriptstack_peek(sp, 1);
    val = scriptstack_peek(sp, 0) & 1;
    if (idx < 0x400) {
        sub_080029F8(idx, val);
    }
    return 0;
}

u16 cmd_get_giftbox_flag(s32* sp) {
    u16 val;
    u16 idx;

    idx = scriptstack_peek(sp, 0);
    if (idx < 0x400) {
        val = get_giftbox_flag(idx);
        scriptstack_push(val);
    }
    return 0;
}

u16 cmd_member_heal(s32* sp) {
    s16 idx;

    idx = scriptstack_peek(sp, 0);
    sub_0802AF24(idx);
    return 0;
}

u16 cmd_24(s32* sp) {
    u16 idx;

    idx = scriptstack_peek(sp, 0);
    gGame._82b4 = idx * 60;
    return 0;
}

u16 cmd_add_bank(s32* sp) {
    s32 val = scriptstack_peek(sp, 0);
    sub_0802A05C(val);
    return 0;
}

u16 cmd_get_bank(s32* sp) {
    scriptstack_push(gSave.dp_bank);
    return 0;
}

u16 cmd_27(s32* sp) {
    s16 val;
    u16 idx;

    idx = scriptstack_peek(sp, 0);
    val = sub_0802B954(idx);
    scriptstack_push(val);
    return 0;
}

u16 cmd_28(s32* sp) {
    u32 val;
    u32 idx;

    if (gGame.state_8)
        idx = gGame._829b;
    else
        idx = gGame._829c;

    switch (idx) {
    case 3:
        val = 1;
        break;
    case 6:
        val = 2;
        break;
    default:
        val = 0;
        break;
    }
    scriptstack_push(val);
    return 0;
}

// EXACTLY the same as cmd_party_add
u16 cmd_29(s32* sp) {
    s16 status;
    u16 idx;

    idx = scriptstack_peek(sp, 0);
    if ((u16)(idx - 1) < 0xf) {
        status = sub_0802B8C4(idx);
        if (status == -1) {
            sub_080296E4(idx);
        }
    }
    if (gGame.party_count > 1) {
        set_event_flag(0x3e3, 1);
    }
    return 0;
}

void sub_08029684(u32, u32, u32, Size*);
void sub_08029FC8(u32, u32, u32, Size*);

u16 cmd_31(s32* sp) {
    u16 a;
    u16 b;
    u16 c;
    u16 d;
    Size sz;

    a = scriptstack_peek(sp, 4);
    b = scriptstack_peek(sp, 3);
    c = scriptstack_peek(sp, 2);
    sz.w = c;
    d = scriptstack_peek(sp, 1);
    sz.h = d;
    c = scriptstack_peek(sp, 0);
    sz.w += 8;
    if (a < 5) {
        sub_08029684(a, b, c, &sz);
    }
    return 0;
}

u16 cmd_2A(s32* sp) {
    u16 idx;

    idx = scriptstack_peek(sp, 0);
    if (idx == 1) {
        gGame._82b8_20 = 0;
    } else if (idx == 0) {
        gGame._82b8_20 = 1;
    }
    return 0;
}

#ifdef NONMATCHING
u16 cmd_cfg_member(s32* sp) {
    u16 temp;
    u16 chrNum;
    s16 chrLvl;
    s16 sprNum;
    u32 a;
    u32 b;
    u8 auStack32[8];

    chrNum = scriptstack_peek(sp, 2);
    chrLvl = scriptstack_peek(sp, 1);
    sprNum = scriptstack_peek(sp, 0);
    if ((u16)(chrNum - 1) < 0xf) {
        if (chrLvl != -1) {
            sub_0805BB34(auStack32, chrNum);
            temp = sub_0802B8C4(chrNum);
            if ((s16)temp != -1) {
                a = get_char_stats(temp);
                b = sub_0802B874(temp);
                sub_0802941C(a, b);
                sub_080294DC(a, b);
                sub_080295E8(a, temp);
            }
        }
        if (sprNum != -1) {
            gCharStats[chrNum]._1 = sprNum;
        }
    }
    return 0;
}
#else
NAKED
u16 cmd_cfg_member(s32* sp) {
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	mov r7, r8\n\
	push {r7}\n\
	sub sp, #8\n\
	adds r4, r0, #0\n\
	movs r1, #2\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r7, r0, #0x10\n\
	adds r0, r4, #0\n\
	movs r1, #1\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r5, r0, #0x10\n\
	adds r0, r4, #0\n\
	movs r1, #0\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	mov r8, r0\n\
	subs r0, r7, #1\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	cmp r0, #0xe\n\
	bhi _0801CD0E\n\
	lsls r0, r5, #0x10\n\
	asrs r2, r0, #0x10\n\
	movs r5, #1\n\
	rsbs r5, r5, #0\n\
	cmp r2, r5\n\
	beq _0801CCF4\n\
	mov r0, sp\n\
	adds r1, r7, #0\n\
	bl sub_0805BB34\n\
	adds r0, r7, #0\n\
	bl sub_0802B8C4\n\
	lsls r0, r0, #0x10\n\
	lsrs r4, r0, #0x10\n\
	asrs r0, r0, #0x10\n\
	cmp r0, r5\n\
	beq _0801CCF4\n\
	adds r0, r4, #0\n\
	bl get_char_stats\n\
	adds r5, r0, #0\n\
	adds r0, r4, #0\n\
	bl sub_0802B874\n\
	adds r6, r0, #0\n\
	adds r0, r5, #0\n\
	adds r1, r6, #0\n\
	bl sub_0802941C\n\
	adds r0, r5, #0\n\
	adds r1, r6, #0\n\
	bl sub_080294DC\n\
	adds r0, r5, #0\n\
	adds r1, r4, #0\n\
	bl sub_080295E8\n\
_0801CCF4:\n\
	mov r1, r8\n\
	lsls r0, r1, #0x10\n\
	asrs r0, r0, #0x10\n\
	movs r1, #1\n\
	rsbs r1, r1, #0\n\
	cmp r0, r1\n\
	beq _0801CD0E\n\
	ldr r1, _0801CD1C @ =gCharStats\n\
	movs r0, #0x6c\n\
	muls r0, r7, r0\n\
	adds r0, r0, r1\n\
	mov r1, r8\n\
	strb r1, [r0, #1]\n\
_0801CD0E:\n\
	movs r0, #0\n\
	add sp, #8\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_0801CD1C: .4byte gCharStats\n\
    ");
}
#endif

NAKED
u16 cmd_cfg_member_item(s32* sp) {
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	mov r7, r8\n\
	push {r7}\n\
	adds r4, r0, #0\n\
	movs r1, #2\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r7, r0, #0x10\n\
	adds r0, r4, #0\n\
	movs r1, #1\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r5, r0, #0x10\n\
	mov r8, r5\n\
	adds r0, r4, #0\n\
	movs r1, #0\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r6, r0, #0x10\n\
	ldr r1, _0801CD68 @ =gGoodsInfo\n\
	movs r0, #0x6c\n\
	muls r0, r5, r0\n\
	adds r1, #4\n\
	adds r0, r0, r1\n\
	ldr r0, [r0]\n\
	cmp r0, #8\n\
	bne _0801CD6C\n\
	lsls r1, r6, #0x10\n\
	asrs r1, r1, #0x10\n\
	adds r0, r5, #0\n\
	bl sub_0802A0F8\n\
	b _0801CDF4\n\
	.align 2, 0\n\
_0801CD68: .4byte gGoodsInfo\n\
_0801CD6C:\n\
	lsls r2, r7, #0x10\n\
	asrs r1, r2, #0x10\n\
	movs r0, #1\n\
	rsbs r0, r0, #0\n\
	cmp r1, r0\n\
	bne _0801CDA6\n\
	lsls r0, r6, #0x10\n\
	asrs r4, r0, #0x10\n\
	cmp r4, #0\n\
	ble _0801CD92\n\
	lsrs r1, r0, #0x10\n\
	adds r0, r5, #0\n\
	bl sub_0802A180\n\
_0801CD88:\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	cmp r0, r4\n\
	beq _0801CDD0\n\
	b _0801CDD8\n\
_0801CD92:\n\
	adds r1, r4, #0\n\
	cmp r4, #0\n\
	bge _0801CD9A\n\
	rsbs r1, r4, #0\n\
_0801CD9A:\n\
	lsls r1, r1, #0x10\n\
	lsrs r1, r1, #0x10\n\
	adds r0, r5, #0\n\
	bl sub_0802A264\n\
	b _0801CD88\n\
_0801CDA6:\n\
	cmp r1, #4\n\
	bgt _0801CDF4\n\
	lsrs r0, r2, #0x10\n\
	bl get_char_stats\n\
	adds r4, r0, #0\n\
	lsls r6, r6, #0x10\n\
	asrs r2, r6, #0x10\n\
	cmp r2, #0\n\
	ble _0801CDE0\n\
	adds r1, r5, #0\n\
	bl sub_0802A60C\n\
	lsls r0, r0, #0x10\n\
	cmp r0, #0\n\
	beq _0801CDD8\n\
	lsrs r2, r6, #0x10\n\
	adds r0, r4, #0\n\
	adds r1, r5, #0\n\
	bl sub_0802A454\n\
_0801CDD0:\n\
	movs r0, #1\n\
	bl scriptstack_push\n\
	b _0801CDF4\n\
_0801CDD8:\n\
	movs r0, #0\n\
	bl scriptstack_push\n\
	b _0801CDF4\n\
_0801CDE0:\n\
	rsbs r2, r2, #0\n\
	lsls r2, r2, #0x10\n\
	lsrs r2, r2, #0x10\n\
	adds r0, r4, #0\n\
	mov r1, r8\n\
	bl sub_0802A49C\n\
	movs r0, #1\n\
	bl scriptstack_push\n\
_0801CDF4:\n\
	movs r0, #0\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1\n\
    ");
}

u16 cmd_get_hp_pp(s32* sp) {
    u16 idx;
    CharStats* pm;

    idx = scriptstack_peek(sp, 4);
    pm = get_char_stats(idx);
    scriptstack_set(sp, 3, pm->curHP);
    scriptstack_set(sp, 2, pm->maxHP);
    scriptstack_set(sp, 1, pm->curPP);
    scriptstack_set(sp, 0, pm->maxPP);
    return 0;
}

u16 cmd_2E(s32* sp) {
    gSave._744 = scriptstack_peek(sp, 0);
    return 0;
}

u16 cmd_2F(s32* sp) {
    scriptstack_push(gSave._744);
    return 0;
}

u16 cmd_set_ailment(s32* sp) {
    s32 idx;
    u16 ailment;
    u16 status;
    Object* spr;

    idx = scriptstack_peek(sp, 2);
    ailment = scriptstack_peek(sp, 1);
    status = scriptstack_peek(sp, 0);
    if (idx == -2) {
        sub_0802AD88(ailment, status);
    } else {
        spr = get_obj(idx);
        if ((spr != 0) && (spr->character < 5)) {
            set_ailment(spr->character, ailment, status);
        }
    }
    return 0;
}

u16 cmd_E3(s32* sp) {
    u16 sVar1;
    s16 idx;

    idx = scriptstack_peek(sp, 0);
    if (idx == -1) {
        scriptstack_push(gGame._82ae);
    } else if (gGoodsInfo[idx].item_type == Key || sub_0802A124(idx) != 0) {
        scriptstack_push(1);
    } else {
        scriptstack_push(0);
    }
    return 0;
}

u16 cmd_E5(s32* sp) {
    s32 idx;
    u16 stat;
    s32 value;
    Object* spr;

    idx = scriptstack_peek(sp, 2);
    stat = scriptstack_peek(sp, 1);
    value = scriptstack_peek(sp, 0);
    if (idx == -2) {
        sub_0802B094(stat, value);
    } else {
        spr = get_obj(idx);
        if ((spr != 0) && (spr->character < 5)) {
            sub_0802B0D0(spr->character, stat, value);
        }
    }
    return 0;
}

u16 cmd_E6(s32* sp) {
    u16 a;
    u16 b;
    u16 c;
    u32 d;
    Size sz;

    a = scriptstack_peek(sp, 4);
    b = scriptstack_peek(sp, 3);
    c = scriptstack_peek(sp, 2);
    sz.w = c;
    d = scriptstack_peek(sp, 1);
    sz.h = d;
    c = scriptstack_peek(sp, 0);
    sz.w += 8;
    sub_08029FC8(a, b, c, &sz);
    return 0;
}

u16 cmd_E7(s32* sp) {
    u8 chr;
    u16 c;
    u32 idx;
    s32 b;
    Object* spr;
    CharStats* cd;
    u64 t;

    idx = scriptstack_peek(sp, 1);
    b = scriptstack_peek(sp, 0);
    scriptstack_push(0);
    spr = get_obj(idx);
    if (spr != 0) {
        chr = spr->character;
        if (chr < 5) {
            cd = get_char_stats(chr);
            c = sub_08001D2C(cd->charNo);
            if (c != 0) {
                sub_0805BC8C(&t, cd->charNo, b);
                gSomeBlend._121c8 = t;
                scriptstack_push(gSomeBlend._121c8_b.b0 & 0xff);
                if (gSomeBlend._121c8_b.b1 != 0) {
                    heal_hp(spr->character, gSomeBlend._121c8_b.b1);
                    sub_0802B4D8();
                }
            }
        }
    }
    return 0;
}

u16 cmd_E8(s32* sp) {
    u16 idx;

    idx = scriptstack_peek(sp, 0);
    scriptstack_push(0);

    switch (idx) {
    case 0:
        scriptstack_push(gSomeBlend._121c8_b.b1);
        break;
    case 1:
        scriptstack_push(gSomeBlend._121c8_b.b2);
        break;
    case 2:
        scriptstack_push(gSomeBlend._121c8_b.b3);
        break;
    case 3:
        scriptstack_push(gSomeBlend._121c8_b.b4);
        break;
    case 4:
        scriptstack_push(gSomeBlend._121c8_b.b5);
        break;
    case 5:
        scriptstack_push(gSomeBlend._121c8_b.b7);
        break;
    case 6:
        scriptstack_push(gSomeBlend._121c8_b.b6);
        break;
    }
    return 0;
}

u16 cmd_EA(s32* sp) {
    u16 a;

    a = scriptstack_peek(sp, 4);
    switch (a) {
    case 0:
        scriptstack_set(sp, 3, gSave._6f8);
        scriptstack_set(sp, 2, gSave._6fa - 8);
        scriptstack_set(sp, 1, gSave._6fc);
        scriptstack_set(sp, 0, gSave._6fe);
        break;
    case 1:
        scriptstack_set(sp, 3, gSave._700);
        scriptstack_set(sp, 2, gSave._702 - 8);
        scriptstack_set(sp, 1, gSave._704);
        scriptstack_set(sp, 0, gSave._706);
        break;
    }
    return 0;
}

u16 cmd_get_char_lvl(s32* sp) {
    u16 idx;

    idx = scriptstack_peek(sp, 0);
    if (idx > 0 && idx < 16) {
        scriptstack_push(gCharStats[idx].level);
    }
    return 0;
}

u16 cmd_heal_hp(s32* sp) {
    s32 idx;
    s32 hp;
    s32 v4;
    Object* spr;
    s32 v7;

    idx = scriptstack_peek(sp, 1);
    hp = scriptstack_peek(sp, 0);
    if (idx == -2) {
        v4 = sub_0802AF88((s16)hp);
        sub_0802B4D8();
    } else {
        spr = get_obj(idx);
        if (spr) {
            if (spr->character <= 4) {
                v7 = heal_hp(spr->character, hp);
                sub_0802B4D8();
            }
        }
    }
    return 0;
}

u16 cmd_heal_pp(s32* sp) {
    s32 idx;
    s32 pp;
    Object* spr;

    idx = scriptstack_peek(sp, 1);
    pp = scriptstack_peek(sp, 0);
    if (idx == -2) {
        sub_0802AFBC(pp);
    } else {
        spr = get_obj(idx);
        if (spr) {
            if (spr->character <= 4)
                sub_0802B048(spr->character, pp);
        }
    }
    return 0;
}

NAKED
u16 cmd_set_psi(s32* sp) {
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	adds r4, r0, #0\n\
	movs r1, #2\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r5, r0, #0x10\n\
	adds r7, r5, #0\n\
	adds r0, r4, #0\n\
	movs r1, #1\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r6, r0, #0x10\n\
	adds r0, r4, #0\n\
	movs r1, #0\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r2, r0, #0x10\n\
	subs r0, r5, #1\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	cmp r0, #0xe\n\
	bhi _0801D412\n\
	lsls r3, r6, #0x10\n\
	asrs r1, r3, #0x10\n\
	cmp r1, #0\n\
	ble _0801D374\n\
	movs r0, #0x6c\n\
	muls r0, r5, r0\n\
	ldr r1, _0801D370 @ =gCharStats\n\
	adds r0, r0, r1\n\
	lsrs r1, r3, #0x10\n\
	lsls r2, r2, #0x18\n\
	lsrs r2, r2, #0x18\n\
	bl sub_0805C300\n\
	b _0801D412\n\
	.align 2, 0\n\
_0801D370: .4byte gCharStats\n\
_0801D374:\n\
	movs r0, #1\n\
	rsbs r0, r0, #0\n\
	cmp r1, r0\n\
	bne _0801D390\n\
	movs r0, #0x6c\n\
	muls r0, r5, r0\n\
	ldr r1, _0801D38C @ =gCharStats\n\
	adds r0, r0, r1\n\
	ldrb r1, [r0, #0x12]\n\
	bl sub_0805C458\n\
	b _0801D412\n\
	.align 2, 0\n\
_0801D38C: .4byte gCharStats\n\
_0801D390:\n\
	movs r0, #2\n\
	rsbs r0, r0, #0\n\
	cmp r1, r0\n\
	bne _0801D412\n\
	cmp r5, #2\n\
	bne _0801D3D4\n\
	ldr r0, _0801D3C0 @ =gCharStats\n\
	adds r0, #0xd8\n\
	bl sub_0805C3B8\n\
	ldr r1, _0801D3C4 @ =gSave\n\
	ldr r2, _0801D3C8 @ =0x0000071A\n\
	adds r0, r1, r2\n\
	movs r2, #0\n\
	strb r2, [r0]\n\
	ldr r3, _0801D3CC @ =0x0000071B\n\
	adds r0, r1, r3\n\
	strb r2, [r0]\n\
	adds r3, #1\n\
	adds r0, r1, r3\n\
	strh r2, [r0]\n\
	ldr r0, _0801D3D0 @ =0x0000071E\n\
	b _0801D3FE\n\
	.align 2, 0\n\
_0801D3C0: .4byte gCharStats\n\
_0801D3C4: .4byte gSave\n\
_0801D3C8: .4byte 0x0000071A\n\
_0801D3CC: .4byte 0x0000071B\n\
_0801D3D0: .4byte 0x0000071E\n\
_0801D3D4:\n\
	cmp r7, #4\n\
	bne _0801D402\n\
	ldr r0, _0801D420 @ =gCharStats\n\
	movs r1, #0xd8\n\
	lsls r1, r1, #1\n\
	adds r0, r0, r1\n\
	bl sub_0805C3B8\n\
	ldr r1, _0801D424 @ =gSave\n\
	ldr r2, _0801D428 @ =0x00000734\n\
	adds r0, r1, r2\n\
	movs r2, #0\n\
	strb r2, [r0]\n\
	ldr r3, _0801D42C @ =0x00000735\n\
	adds r0, r1, r3\n\
	strb r2, [r0]\n\
	adds r3, #1\n\
	adds r0, r1, r3\n\
	strh r2, [r0]\n\
	movs r0, #0xe7\n\
	lsls r0, r0, #3\n\
_0801D3FE:\n\
	adds r1, r1, r0\n\
	strh r2, [r1]\n\
_0801D402:\n\
	ldr r0, _0801D430 @ =gGame\n\
	ldr r1, _0801D434 @ =0x000082B9\n\
	adds r0, r0, r1\n\
	ldrb r2, [r0]\n\
	movs r1, #2\n\
	rsbs r1, r1, #0\n\
	ands r1, r2\n\
	strb r1, [r0]\n\
_0801D412:\n\
	bl sub_08029D9C\n\
	movs r0, #0\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_0801D420: .4byte gCharStats\n\
_0801D424: .4byte gSave\n\
_0801D428: .4byte 0x00000734\n\
_0801D42C: .4byte 0x00000735\n\
_0801D430: .4byte gGame\n\
_0801D434: .4byte 0x000082B9\n\
    ");
}

s32 cmd_F2(s32* sp) {
    u16 idx;
    s16 x[4];

    idx = scriptstack_peek(sp, 4);
    x[0] = scriptstack_peek(sp, 3);
    x[1] = scriptstack_peek(sp, 2);
    x[2] = scriptstack_peek(sp, 1);
    x[3] = scriptstack_peek(sp, 0);

    if (idx > 0 && idx < 0x10) {
        CharStats* s = &gCharStats[idx];
        if (x[0] == -1 || x[1] == -1 || x[2] == -1 || x[3] == -1)
            sub_0802A74C(s, x);
        else
            sub_0802A670(s, x);
    }
    return 0;
}

u16 cmd_F8(s32* sp) {
    scriptstack_push(gGame._8450);
    return 0;
}

u16 cmd_F9(s32* sp) {
    u16 cnt = 0;
    for (u16 i = 0; i < 10; ++i) {
        u16 bit = 1;
        for (u16 j = 0; j < 8; ++j) {
            if ((gGame._846f[i] & bit) != 0) {
                cnt++;
            }
            bit <<= 1;
        }
    }
    scriptstack_push(cnt);
    return 0;
}

u16 cmd_FA(s32* sp) {
    u16 cnt = 0;

    for (u16 i = 0; i < 10; ++i) {
        u16 bit = 1;
        for (u16 j = 0; j < 8; ++j) {
            u8* p = &gGame._846f[i];
            if ((*p & bit) != 0) {
                *p &= ~bit;
                scriptstack_push(cnt);
                return 0;
            }
            bit <<= 1;
            cnt++;
        }
    }
    scriptstack_push(0);
    return 0;
}

u16 cmd_put_ocho(s32* sp) {
    u16 cnt;
    CharStats* cd;

    gSave._78d = 0;
    gSave._78c = 0;
    gSave._78b = 0;
    gSave._78a = 0;
    memclear(gSave._78e, 0x80);
    cnt = 0;
    for (u16 i = 0; i < gGame.party_count; ++i) {
        cd = get_char_stats(i);
        if (cd->charNo != 0 && sub_08001D2C(cd->charNo) != 0) {
            sub_0802A7F8(cd, cnt);
            cnt++;
        }
    }
    return 0;
}

u16 cmd_get_ocho(s32* sp) {
    CharStats* cd;

    if (sub_0802A98C() == 0) {
        scriptstack_push(1);
    } else {
        for (u16 i = 0; i < gGame.party_count; ++i) {
            cd = get_char_stats(i);
            if (cd->charNo != 0 && sub_08001D2C(cd->charNo) != 0) {
                sub_0802A8D4(cd);
            }
        }
        if (sub_0802A98C() != 0) {
            scriptstack_push(0);
        } else {
            scriptstack_push(2);
        }
    }
    return 0;
}

u16 cmd_FF(s32* sp) {
    u16 tmp;
    u16 idx;
    CharStats* pCVar3;

    tmp = scriptstack_peek(sp, 1);
    idx = scriptstack_peek(sp, 0);
    if (gGoodsInfo[idx].item_type == Key) {
        scriptstack_push(gSave.key_items[idx]);
    } else if (tmp < 5) {
        u16 tmp2 = sub_0802A3D0(get_char_stats(tmp), idx);
        scriptstack_push(tmp2);
    }
    return 0;
}

NAKED
u16 cmd_disp_msg(s32* sp) {
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	mov r7, r8\n\
	push {r7}\n\
	adds r7, r0, #0\n\
	movs r1, #2\n\
	bl scriptstack_peek\n\
	adds r4, r0, #0\n\
	adds r0, r7, #0\n\
	movs r1, #1\n\
	bl scriptstack_peek\n\
	ldr r0, _0801D76C @ =gGame\n\
	ldr r1, _0801D770 @ =0x00008452\n\
	adds r5, r0, r1\n\
	ldr r1, _0801D774 @ =0x0000FFFF\n\
	strh r1, [r5]\n\
	ldr r2, _0801D778 @ =0x00008454\n\
	adds r1, r0, r2\n\
	movs r0, #1\n\
	rsbs r0, r0, #0\n\
	mov r8, r0\n\
	strh r0, [r1]\n\
	cmp r4, #0x63\n\
	ble _0801D738\n\
	adds r0, r4, #0\n\
	subs r0, #0x64\n\
	strh r0, [r1]\n\
	movs r4, #3\n\
	rsbs r4, r4, #0\n\
_0801D738:\n\
	adds r0, r4, #0\n\
	bl get_obj\n\
	adds r6, r0, #0\n\
	cmp r6, #0\n\
	beq _0801D77C\n\
	adds r1, r6, #0\n\
	adds r1, #0x85\n\
	ldrb r0, [r1]\n\
	strh r0, [r5]\n\
	adds r0, r6, #0\n\
	adds r0, #0xbc\n\
	ldrb r0, [r0]\n\
	lsls r0, r0, #0x19\n\
	cmp r0, #0\n\
	blt _0801D784\n\
	ldrb r0, [r1]\n\
	adds r1, #6\n\
	ldrb r1, [r1]\n\
	movs r2, #7\n\
	ands r2, r1\n\
	movs r1, #2\n\
	bl sub_080332AC\n\
	b _0801D784\n\
	.align 2, 0\n\
_0801D76C: .4byte gGame\n\
_0801D770: .4byte 0x00008452\n\
_0801D774: .4byte 0x0000FFFF\n\
_0801D778: .4byte 0x00008454\n\
_0801D77C:\n\
	ldrh r0, [r5]\n\
	mov r1, r8\n\
	orrs r0, r1\n\
	strh r0, [r5]\n\
_0801D784:\n\
	ldr r2, _0801D804 @ =gGame\n\
	mov r8, r2\n\
	ldr r0, _0801D808 @ =0x000067AC\n\
	add r0, r8\n\
	ldrh r4, [r0]\n\
	adds r0, r7, #0\n\
	movs r1, #0\n\
	bl scriptstack_peek\n\
	adds r1, r0, #0\n\
	lsls r1, r1, #0x10\n\
	lsrs r1, r1, #0x10\n\
	adds r0, r4, #0\n\
	bl sub_08027F70\n\
	adds r4, r0, #0\n\
	cmp r4, #0\n\
	beq _0801D858\n\
	bl sub_0802630C\n\
	ldr r5, _0801D80C @ =gSomeBlend\n\
	ldr r0, _0801D810 @ =0x0001ED10\n\
	adds r2, r5, r0\n\
	ldrb r1, [r2]\n\
	movs r0, #0x21\n\
	rsbs r0, r0, #0\n\
	ands r0, r1\n\
	strb r0, [r2]\n\
	adds r0, r4, #0\n\
	bl sub_08021930\n\
	ldr r0, _0801D814 @ =0x00008452\n\
	add r0, r8\n\
	movs r2, #0\n\
	ldrsh r1, [r0, r2]\n\
	movs r0, #1\n\
	rsbs r0, r0, #0\n\
	cmp r1, r0\n\
	bne _0801D82C\n\
	ldr r0, _0801D818 @ =0x00004AF2\n\
	adds r4, r5, r0\n\
	ldr r0, _0801D81C @ =0x0000FFFF\n\
	strh r0, [r4]\n\
	ldr r1, _0801D820 @ =0x00008454\n\
	add r1, r8\n\
	movs r2, #0\n\
	ldrsh r0, [r1, r2]\n\
	cmp r0, #0\n\
	blt _0801D84E\n\
	ldrh r0, [r1]\n\
	bl sub_08036D3C\n\
	ldrb r1, [r0]\n\
	movs r0, #0x38\n\
	ands r0, r1\n\
	cmp r0, #0x18\n\
	beq _0801D84E\n\
	lsls r1, r1, #0x1a\n\
	lsrs r0, r1, #0x1d\n\
	cmp r0, #3\n\
	bls _0801D824\n\
	adds r0, #0xe9\n\
	strh r0, [r4]\n\
	b _0801D84E\n\
	.align 2, 0\n\
_0801D804: .4byte gGame\n\
_0801D808: .4byte 0x000067AC\n\
_0801D80C: .4byte gSomeBlend\n\
_0801D810: .4byte 0x0001ED10\n\
_0801D814: .4byte 0x00008452\n\
_0801D818: .4byte 0x00004AF2\n\
_0801D81C: .4byte 0x0000FFFF\n\
_0801D820: .4byte 0x00008454\n\
_0801D824:\n\
	lsrs r0, r1, #0x1d\n\
	adds r0, #0xe1\n\
	strh r0, [r4]\n\
	b _0801D84E\n\
_0801D82C:\n\
	adds r0, r6, #0\n\
	adds r0, #0xc9\n\
	ldrb r0, [r0]\n\
	lsls r0, r0, #0x19\n\
	lsrs r0, r0, #0x1d\n\
	cmp r0, #3\n\
	beq _0801D84E\n\
	cmp r0, #3\n\
	ble _0801D844\n\
	adds r1, r0, #0\n\
	adds r1, #0xe9\n\
	b _0801D848\n\
_0801D844:\n\
	adds r1, r0, #0\n\
	adds r1, #0xe1\n\
_0801D848:\n\
	ldr r2, _0801D854 @ =0x00004AF2\n\
	adds r0, r5, r2\n\
	strh r1, [r0]\n\
_0801D84E:\n\
	movs r0, #1\n\
	b _0801D85A\n\
	.align 2, 0\n\
_0801D854: .4byte 0x00004AF2\n\
_0801D858:\n\
	movs r0, #0\n\
_0801D85A:\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1\n\
    ");
}

NAKED
u16 cmd_disp_msg_0(s32* sp) {
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	mov r7, r8\n\
	push {r7}\n\
	adds r7, r0, #0\n\
	movs r1, #2\n\
	bl scriptstack_peek\n\
	adds r4, r0, #0\n\
	adds r0, r7, #0\n\
	movs r1, #1\n\
	bl scriptstack_peek\n\
	ldr r0, _0801D8D4 @ =gGame\n\
	ldr r1, _0801D8D8 @ =0x00008452\n\
	adds r6, r0, r1\n\
	ldr r1, _0801D8DC @ =0x0000FFFF\n\
	strh r1, [r6]\n\
	ldr r2, _0801D8E0 @ =0x00008454\n\
	adds r1, r0, r2\n\
	movs r3, #1\n\
	rsbs r3, r3, #0\n\
	mov r8, r3\n\
	adds r0, r3, #0\n\
	strh r0, [r1]\n\
	cmp r4, #0x63\n\
	ble _0801D8A2\n\
	adds r0, r4, #0\n\
	subs r0, #0x64\n\
	strh r0, [r1]\n\
	movs r4, #3\n\
	rsbs r4, r4, #0\n\
_0801D8A2:\n\
	adds r0, r4, #0\n\
	bl get_obj\n\
	adds r5, r0, #0\n\
	cmp r5, #0\n\
	beq _0801D8E4\n\
	adds r1, r5, #0\n\
	adds r1, #0x85\n\
	ldrb r0, [r1]\n\
	strh r0, [r6]\n\
	adds r0, r5, #0\n\
	adds r0, #0xbc\n\
	ldrb r0, [r0]\n\
	lsls r0, r0, #0x19\n\
	cmp r0, #0\n\
	blt _0801D8EC\n\
	ldrb r0, [r1]\n\
	adds r1, #6\n\
	ldrb r1, [r1]\n\
	movs r2, #7\n\
	ands r2, r1\n\
	movs r1, #2\n\
	bl sub_080332AC\n\
	b _0801D8EC\n\
	.align 2, 0\n\
_0801D8D4: .4byte gGame\n\
_0801D8D8: .4byte 0x00008452\n\
_0801D8DC: .4byte 0x0000FFFF\n\
_0801D8E0: .4byte 0x00008454\n\
_0801D8E4:\n\
	ldrh r0, [r6]\n\
	mov r1, r8\n\
	orrs r0, r1\n\
	strh r0, [r6]\n\
_0801D8EC:\n\
	adds r0, r7, #0\n\
	movs r1, #0\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	bl sub_08027F38\n\
	adds r4, r0, #0\n\
	cmp r4, #0\n\
	beq _0801D9B8\n\
	bl sub_0802630C\n\
	ldr r6, _0801D960 @ =gSomeBlend\n\
	ldr r3, _0801D964 @ =0x0001ED10\n\
	adds r2, r6, r3\n\
	ldrb r1, [r2]\n\
	movs r0, #0x21\n\
	rsbs r0, r0, #0\n\
	ands r0, r1\n\
	strb r0, [r2]\n\
	adds r0, r4, #0\n\
	bl sub_08021930\n\
	ldr r2, _0801D968 @ =gGame\n\
	ldr r1, _0801D96C @ =0x00008452\n\
	adds r0, r2, r1\n\
	movs r3, #0\n\
	ldrsh r1, [r0, r3]\n\
	movs r0, #1\n\
	rsbs r0, r0, #0\n\
	cmp r1, r0\n\
	bne _0801D984\n\
	ldr r0, _0801D970 @ =0x00004AF2\n\
	adds r4, r6, r0\n\
	ldr r0, _0801D974 @ =0x0000FFFF\n\
	strh r0, [r4]\n\
	ldr r3, _0801D978 @ =0x00008454\n\
	adds r1, r2, r3\n\
	movs r2, #0\n\
	ldrsh r0, [r1, r2]\n\
	cmp r0, #0\n\
	blt _0801D9AE\n\
	ldrh r0, [r1]\n\
	bl sub_08036D3C\n\
	ldrb r1, [r0]\n\
	movs r0, #0x38\n\
	ands r0, r1\n\
	cmp r0, #0x18\n\
	beq _0801D9AE\n\
	lsls r1, r1, #0x1a\n\
	lsrs r0, r1, #0x1d\n\
	cmp r0, #3\n\
	bls _0801D97C\n\
	adds r0, #0xe9\n\
	strh r0, [r4]\n\
	b _0801D9AE\n\
	.align 2, 0\n\
_0801D960: .4byte gSomeBlend\n\
_0801D964: .4byte 0x0001ED10\n\
_0801D968: .4byte gGame\n\
_0801D96C: .4byte 0x00008452\n\
_0801D970: .4byte 0x00004AF2\n\
_0801D974: .4byte 0x0000FFFF\n\
_0801D978: .4byte 0x00008454\n\
_0801D97C:\n\
	lsrs r0, r1, #0x1d\n\
	adds r0, #0xe1\n\
	strh r0, [r4]\n\
	b _0801D9AE\n\
_0801D984:\n\
	adds r0, r5, #0\n\
	adds r0, #0xc9\n\
	ldrb r0, [r0]\n\
	lsls r0, r0, #0x19\n\
	lsrs r0, r0, #0x1d\n\
	cmp r0, #3\n\
	beq _0801D9AE\n\
	cmp r0, #3\n\
	ble _0801D9A4\n\
	adds r1, r0, #0\n\
	adds r1, #0xe9\n\
	ldr r3, _0801D9A0 @ =0x00004AF2\n\
	adds r0, r6, r3\n\
	b _0801D9AC\n\
	.align 2, 0\n\
_0801D9A0: .4byte 0x00004AF2\n\
_0801D9A4:\n\
	adds r1, r0, #0\n\
	adds r1, #0xe1\n\
	ldr r2, _0801D9B4 @ =0x00004AF2\n\
	adds r0, r6, r2\n\
_0801D9AC:\n\
	strh r1, [r0]\n\
_0801D9AE:\n\
	movs r0, #1\n\
	b _0801D9BA\n\
	.align 2, 0\n\
_0801D9B4: .4byte 0x00004AF2\n\
_0801D9B8:\n\
	movs r0, #0\n\
_0801D9BA:\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1\n\
    ");
}

u16 cmd_34(s32* sp) {
    if (gSomeBlend.msg_type == 2 && gSomeBlend.msg_choice == 0)
        scriptstack_push(1);
    else
        scriptstack_push(0);
    return 0;
}

u16 cmd_35(s32* sp) {
    if (gSomeBlend.msg_type == 2 && gSomeBlend.msg_choice == 1)
        scriptstack_push(1);
    else
        scriptstack_push(0);
    return 0;
}

u16 cmd_get_msg_choice(s32* sp) {
    scriptstack_push(gSomeBlend.msg_choice);
    return 0;
}

u16 cmd_37(s32* sp) {
    u16 v1;

    v1 = scriptstack_peek(sp, 0);
    if (v1 <= 2)
        gSomeBlend._4b19 = v1;
    return 0;
}

u16 cmd_38(s32* sp) {
    s16 v2;
    s16 v3;
    s16 v4;
    s16 v5;

    v2 = scriptstack_peek(sp, 3);
    v3 = scriptstack_peek(sp, 2);
    v4 = scriptstack_peek(sp, 1);
    v5 = scriptstack_peek(sp, 0);
    if (v2 != -1)
        gSomeBlend._4b10 = v2;
    if (v3 != -1)
        gSomeBlend._4b12 = v3;
    if (v4 != -1)
        gSomeBlend._4b14 = v4;
    if (v5 != -1)
        gSomeBlend._4b16 = v5;
    return 0;
}

u16 cmd_load_name(s32* sp) {
    u16 v2;

    v2 = scriptstack_peek(sp, 1);
    if (v2 <= 7)
        gSomeBlend.char_names[v2] = scriptstack_peek(sp, 0);
    return 0;
}

u16 cmd_3A(s32* sp) {
    gGame._9486 = 0;
    gGame._9486_2 = 0;
    sub_0800A240(gUnknown_080C1FF0);
    sub_08009E38(&gSomeBlend._5778[0], 0);
    sub_0800ACA0(0);
    gSomeBlend._121bb_8 = 1;
    gSomeBlend._121bb_10 = 0;
    gSomeBlend._121bc[8] = 80;
    return 1;
}

u16 cmd_3B(s32* sp) {
    sub_0800AD6C();
    return 1;
}

NAKED
u16 cmd_change_room(s32* sp) {
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	mov r7, r8\n\
	push {r7}\n\
	sub sp, #0x18\n\
	adds r4, r0, #0\n\
	movs r1, #3\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	mov r8, r0\n\
	movs r7, #0\n\
	adds r0, r4, #0\n\
	movs r1, #2\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	ldr r6, _0801DC8C @ =0xFFFF0000\n\
	ands r5, r6\n\
	orrs r5, r0\n\
	adds r0, r4, #0\n\
	movs r1, #1\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	ldr r1, _0801DC90 @ =0x0000FFFF\n\
	ands r5, r1\n\
	orrs r5, r0\n\
	adds r0, r4, #0\n\
	movs r1, #0\n\
	bl scriptstack_peek\n\
	adds r1, r0, #0\n\
	movs r0, #1\n\
	rsbs r0, r0, #0\n\
	cmp r1, r0\n\
	bne _0801DC12\n\
	movs r0, #0\n\
	bl sub_08036C68\n\
	lsls r0, r0, #0x10\n\
	lsrs r1, r0, #0x10\n\
_0801DC12:\n\
	adds r0, r5, #0\n\
	adds r0, #8\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	ands r5, r6\n\
	orrs r5, r0\n\
	ldr r0, _0801DC94 @ =0x000003E7\n\
	cmp r8, r0\n\
	bhi _0801DCB0\n\
	ldr r6, _0801DC98 @ =gGame\n\
	ldr r2, _0801DC9C @ =0x0000595B\n\
	adds r0, r6, r2\n\
	ldrb r0, [r0]\n\
	movs r2, #0\n\
	cmp r0, #2\n\
	bne _0801DC34\n\
	movs r2, #2\n\
_0801DC34:\n\
	lsls r3, r5, #0x10\n\
	lsrs r3, r3, #0x10\n\
	lsrs r0, r5, #0x10\n\
	str r0, [sp]\n\
	lsls r0, r1, #0x10\n\
	lsrs r0, r0, #0x10\n\
	str r0, [sp, #4]\n\
	str r2, [sp, #8]\n\
	str r7, [sp, #0xc]\n\
	str r7, [sp, #0x10]\n\
	str r7, [sp, #0x14]\n\
	movs r0, #1\n\
	mov r1, r8\n\
	movs r2, #0\n\
	bl sub_0801A434\n\
	ldr r1, _0801DCA0 @ =0x00009480\n\
	adds r0, r6, r1\n\
	ldrb r4, [r0]\n\
	lsls r4, r4, #0x1d\n\
	lsrs r4, r4, #0x1d\n\
	ldr r0, _0801DCA4 @ =0x00008494\n\
	adds r2, r6, r0\n\
	ldrb r0, [r2]\n\
	movs r1, #2\n\
	orrs r0, r1\n\
	strb r0, [r2]\n\
	movs r0, #0\n\
	bl sub_08004660\n\
	ldr r1, _0801DCA8 @ =gSomeBlend\n\
	ldr r2, _0801DCAC @ =0x0001ED10\n\
	adds r1, r1, r2\n\
	ldrb r0, [r1]\n\
	movs r2, #0x10\n\
	orrs r0, r2\n\
	strb r0, [r1]\n\
	cmp r4, #3\n\
	beq _0801DC86\n\
	bl sub_0802773C\n\
_0801DC86:\n\
	movs r0, #1\n\
	b _0801DCB2\n\
	.align 2, 0\n\
_0801DC8C: .4byte 0xFFFF0000\n\
_0801DC90: .4byte 0x0000FFFF\n\
_0801DC94: .4byte 0x000003E7\n\
_0801DC98: .4byte gGame\n\
_0801DC9C: .4byte 0x0000595B\n\
_0801DCA0: .4byte 0x00009480\n\
_0801DCA4: .4byte 0x00008494\n\
_0801DCA8: .4byte gSomeBlend\n\
_0801DCAC: .4byte 0x0001ED10\n\
_0801DCB0:\n\
	movs r0, #0\n\
_0801DCB2:\n\
	add sp, #0x18\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
    ");
}

NAKED
u16 cmd_3D(s32* sp) {
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	sub sp, #0x18\n\
	movs r1, #0\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r6, r0, #0x10\n\
	adds r0, r6, #0\n\
	bl sub_0801B4E4\n\
	adds r4, r0, #0\n\
	cmp r4, #0\n\
	beq _0801DDA8\n\
	ldrb r2, [r4, #6]\n\
	lsls r2, r2, #4\n\
	ldrb r1, [r4]\n\
	lsls r0, r1, #0x1e\n\
	lsrs r0, r0, #0x1b\n\
	adds r0, #8\n\
	adds r7, r2, r0\n\
	ldrb r0, [r4, #7]\n\
	lsls r0, r0, #4\n\
	lsls r1, r1, #0x1c\n\
	lsrs r1, r1, #0x1e\n\
	adds r1, #1\n\
	lsls r1, r1, #3\n\
	adds r1, r0, r1\n\
	ldr r0, _0801DD08 @ =gGame\n\
	ldr r2, _0801DD0C @ =0x0000595B\n\
	adds r0, r0, r2\n\
	ldrb r0, [r0]\n\
	cmp r0, #2\n\
	bne _0801DD10\n\
	movs r2, #2\n\
	b _0801DD16\n\
	.align 2, 0\n\
_0801DD08: .4byte gGame\n\
_0801DD0C: .4byte 0x0000595B\n\
_0801DD10:\n\
	ldrb r0, [r4, #1]\n\
	lsls r0, r0, #0x1c\n\
	lsrs r2, r0, #0x1d\n\
_0801DD16:\n\
	ldrh r5, [r4, #4]\n\
	ldrh r0, [r4]\n\
	lsls r0, r0, #0x17\n\
	lsrs r3, r0, #0x1e\n\
	str r1, [sp]\n\
	ldrb r0, [r4]\n\
	lsls r0, r0, #0x19\n\
	lsrs r0, r0, #0x1d\n\
	str r0, [sp, #4]\n\
	str r2, [sp, #8]\n\
	movs r0, #0\n\
	str r0, [sp, #0xc]\n\
	ldrb r0, [r4, #1]\n\
	lsrs r0, r0, #7\n\
	str r0, [sp, #0x10]\n\
	ldrb r0, [r4, #1]\n\
	lsrs r0, r0, #7\n\
	cmp r0, #0\n\
	beq _0801DD42\n\
	ldrb r0, [r4, #2]\n\
	lsls r0, r0, #0x1f\n\
	lsrs r0, r0, #0x1f\n\
_0801DD42:\n\
	str r0, [sp, #0x14]\n\
	movs r0, #1\n\
	adds r1, r5, #0\n\
	adds r2, r3, #0\n\
	adds r3, r7, #0\n\
	bl sub_0801A434\n\
	ldr r2, _0801DD90 @ =gGame\n\
	ldr r1, _0801DD94 @ =0x00005982\n\
	adds r0, r2, r1\n\
	strh r6, [r0]\n\
	ldr r1, _0801DD98 @ =0x00009480\n\
	adds r0, r2, r1\n\
	ldrb r4, [r0]\n\
	lsls r4, r4, #0x1d\n\
	lsrs r4, r4, #0x1d\n\
	ldr r0, _0801DD9C @ =0x00008494\n\
	adds r2, r2, r0\n\
	ldrb r0, [r2]\n\
	movs r1, #2\n\
	orrs r0, r1\n\
	strb r0, [r2]\n\
	movs r0, #0\n\
	bl sub_08004660\n\
	ldr r1, _0801DDA0 @ =gSomeBlend\n\
	ldr r2, _0801DDA4 @ =0x0001ED10\n\
	adds r1, r1, r2\n\
	ldrb r0, [r1]\n\
	movs r2, #0x10\n\
	orrs r0, r2\n\
	strb r0, [r1]\n\
	cmp r4, #3\n\
	beq _0801DD8A\n\
	bl sub_0802773C\n\
_0801DD8A:\n\
	movs r0, #1\n\
	b _0801DDAA\n\
	.align 2, 0\n\
_0801DD90: .4byte gGame\n\
_0801DD94: .4byte 0x00005982\n\
_0801DD98: .4byte 0x00009480\n\
_0801DD9C: .4byte 0x00008494\n\
_0801DDA0: .4byte gSomeBlend\n\
_0801DDA4: .4byte 0x0001ED10\n\
_0801DDA8:\n\
	movs r0, #0\n\
_0801DDAA:\n\
	add sp, #0x18\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
    ");
}

u16 cmd_3E(s32* sp) {
    return 0;
}

u16 cmd_3F(s32* sp) {
    u16 v2;
    u16 v3;
    u16 v4;
    u16 i;

    v2 = scriptstack_peek(sp, 2) + 1;
    v3 = scriptstack_peek(sp, 1);
    v4 = scriptstack_peek(sp, 0);
    if (v2 <= 8 && v3 <= 5) {
        for (i = 0; i <= 2; i++) {
            if ((i || gGame._f << 0x1f) && (i != 1 || (gGame._11 << 0x1c) >= 0))
                sub_08018910(i, v2, v3, v4);
        }
    }
    return 0;
}

NAKED u16 cmd_pan_to_pos(s32* sp) {
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	mov r7, r8\n\
	push {r7}\n\
	sub sp, #4\n\
	adds r4, r0, #0\n\
	movs r1, #2\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	ldr r6, _0801DED0 @ =0xFFFF0000\n\
	ands r7, r6\n\
	orrs r7, r0\n\
	adds r0, r4, #0\n\
	movs r1, #1\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	ldr r5, _0801DED4 @ =0x0000FFFF\n\
	ands r7, r5\n\
	orrs r7, r0\n\
	adds r0, r4, #0\n\
	movs r1, #0\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	mov r8, r0\n\
	adds r0, r7, #0\n\
	adds r0, #8\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	ands r7, r6\n\
	orrs r7, r0\n\
	asrs r0, r7, #0x10\n\
	adds r0, #8\n\
	lsls r0, r0, #0x10\n\
	ands r7, r5\n\
	orrs r7, r0\n\
	lsls r1, r7, #0x10\n\
	lsrs r1, r1, #0x10\n\
	lsrs r2, r7, #0x10\n\
	mov r0, sp\n\
	bl sub_08010528\n\
	mov r0, sp\n\
	bl sub_0801059C\n\
	movs r4, #0\n\
	ldr r5, _0801DED8 @ =gGame\n\
_0801DE94:\n\
	cmp r4, #0\n\
	bne _0801DEA0\n\
	ldrb r0, [r5, #0xf]\n\
	lsls r0, r0, #0x1f\n\
	cmp r0, #0\n\
	beq _0801DEB6\n\
_0801DEA0:\n\
	cmp r4, #1\n\
	bne _0801DEAC\n\
	ldrb r0, [r5, #0x11]\n\
	lsls r0, r0, #0x1c\n\
	cmp r0, #0\n\
	blt _0801DEB6\n\
_0801DEAC:\n\
	adds r0, r4, #0\n\
	mov r1, r8\n\
	mov r2, sp\n\
	bl sub_08018988\n\
_0801DEB6:\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x10\n\
	lsrs r4, r0, #0x10\n\
	cmp r4, #2\n\
	bls _0801DE94\n\
	movs r0, #0\n\
	add sp, #4\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_0801DED0: .4byte 0xFFFF0000\n\
_0801DED4: .4byte 0x0000FFFF\n\
_0801DED8: .4byte gGame\n\
    ");
}

u16 cmd_41(s32* sp) {
    u32 v2;
    u16 v3;
    Object* spr;
    u32 v5;
    u16 i;
    Size y;
    Size x;

    v2 = scriptstack_peek(sp, 1);
    v3 = scriptstack_peek(sp, 0);
    spr = get_obj(v2);
    if (spr) {
        sub_08036BEC(spr, &y);
        sub_08010528(&x, y.w, y.h);
        sub_0801059C(&x);
        switch (gGame.state_1) {
        case 2:
        case 3:
            v5 = sub_0801A218(&x);
            sub_0801084C();
            break;
        case 5:
            for (i = 0; i <= 2; ++i) {
                if ((i || gGame._f << 31) && (i != 1 || (gGame._11 << 0x1c) >= 0))
                    sub_08018988(i, v3, &x);
            }
            break;
        }
    }
    return 0;
}

NAKED
u16 cmd_pan_to_map_pos(s32* sp) {
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	mov r7, r8\n\
	push {r7}\n\
	sub sp, #0x14\n\
	adds r4, r0, #0\n\
	movs r1, #2\n\
	bl scriptstack_peek\n\
	mov r8, r0\n\
	adds r0, r4, #0\n\
	movs r1, #1\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	ldr r5, _0801E01C @ =0xFFFF0000\n\
	ldr r1, [sp]\n\
	ands r1, r5\n\
	orrs r1, r0\n\
	str r1, [sp]\n\
	adds r0, r4, #0\n\
	movs r1, #0\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	ldr r2, _0801E020 @ =0x0000FFFF\n\
	ldr r1, [sp]\n\
	ands r1, r2\n\
	orrs r1, r0\n\
	str r1, [sp]\n\
	mov r0, sp\n\
	movs r6, #0\n\
	ldrh r1, [r0]\n\
	ldr r0, [sp, #4]\n\
	ands r0, r5\n\
	orrs r0, r1\n\
	str r0, [sp, #4]\n\
	mov r4, sp\n\
	ldrh r1, [r4, #2]\n\
	add r0, sp, #4\n\
	strh r1, [r0, #2]\n\
	add r0, sp, #8\n\
	bl sub_0801A530\n\
	mov r0, sp\n\
	movs r1, #0\n\
	ldrsh r0, [r0, r1]\n\
	asrs r5, r5, #0x10\n\
	cmp r0, r5\n\
	bne _0801DFF0\n\
	mov r0, sp\n\
	strh r6, [r0]\n\
_0801DFF0:\n\
	ldrh r0, [r4, #2]\n\
	lsls r0, r0, #0x10\n\
	asrs r0, r0, #0x10\n\
	cmp r0, r5\n\
	bne _0801DFFC\n\
	strh r6, [r4, #2]\n\
_0801DFFC:\n\
	add r6, sp, #0xc\n\
	mov r0, sp\n\
	ldrh r1, [r0]\n\
	ldrh r2, [r4, #2]\n\
	adds r0, r6, #0\n\
	bl sub_08010528\n\
	adds r0, r6, #0\n\
	bl sub_0801059C\n\
	cmp r8, r5\n\
	bne _0801E024\n\
	adds r0, r6, #0\n\
	bl sub_0801A218\n\
	b _0801E0A4\n\
	.align 2, 0\n\
_0801E01C: .4byte 0xFFFF0000\n\
_0801E020: .4byte 0x0000FFFF\n\
_0801E024:\n\
	ldr r7, _0801E08C @ =gGame\n\
	ldr r1, _0801E090 @ =0x000067AC\n\
	adds r0, r7, r1\n\
	ldrh r1, [r0]\n\
	ldr r0, _0801E094 @ =0x00000326\n\
	cmp r1, r0\n\
	beq _0801E038\n\
	adds r0, #0x5c\n\
	cmp r1, r0\n\
	bne _0801E098\n\
_0801E038:\n\
	adds r3, r7, #0\n\
	adds r3, #0x24\n\
	ldrb r1, [r3]\n\
	movs r4, #0x3f\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	strb r0, [r3]\n\
	adds r5, r7, #0\n\
	adds r5, #0x20\n\
	ldrb r1, [r5]\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	strb r0, [r5]\n\
	ldrb r1, [r7, #0x1c]\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	strb r0, [r7, #0x1c]\n\
	mov r1, r8\n\
	lsls r0, r1, #0x10\n\
	lsrs r0, r0, #0x10\n\
	adds r1, r6, #0\n\
	str r3, [sp, #0x10]\n\
	bl sub_0801A238\n\
	ldr r3, [sp, #0x10]\n\
	ldrb r1, [r3]\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	movs r2, #0x40\n\
	orrs r0, r2\n\
	strb r0, [r3]\n\
	ldrb r1, [r5]\n\
	adds r0, r4, #0\n\
	ands r0, r1\n\
	orrs r0, r2\n\
	strb r0, [r5]\n\
	ldrb r0, [r7, #0x1c]\n\
	ands r4, r0\n\
	orrs r4, r2\n\
	strb r4, [r7, #0x1c]\n\
	b _0801E0A4\n\
	.align 2, 0\n\
_0801E08C: .4byte gGame\n\
_0801E090: .4byte 0x000067AC\n\
_0801E094: .4byte 0x00000326\n\
_0801E098:\n\
	mov r1, r8\n\
	lsls r0, r1, #0x10\n\
	lsrs r0, r0, #0x10\n\
	adds r1, r6, #0\n\
	bl sub_0801A238\n\
_0801E0A4:\n\
	ldr r0, _0801E0C4 @ =gGame\n\
	ldr r1, _0801E0C8 @ =0x00009480\n\
	adds r0, r0, r1\n\
	ldrb r1, [r0]\n\
	movs r0, #7\n\
	ands r0, r1\n\
	cmp r0, #5\n\
	bne _0801E0CC\n\
	bl sub_08005BFC\n\
	bl sub_0801084C\n\
	bl sub_08005C14\n\
	b _0801E0D0\n\
	.align 2, 0\n\
_0801E0C4: .4byte gGame\n\
_0801E0C8: .4byte 0x00009480\n\
_0801E0CC:\n\
	bl sub_0801084C\n\
_0801E0D0:\n\
	movs r0, #0\n\
	add sp, #0x14\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
    ");
}

u16 cmd_43(s32* sp) {
    u16 v2;
    u16 v3;
    u16 v4;

    v2 = scriptstack_peek(sp, 2);
    v3 = scriptstack_peek(sp, 1);
    v4 = scriptstack_peek(sp, 0);
    sub_0801263C(v2, v3, 0, v4);
    return 0;
}

u16 cmd_44(s32* sp) {
    s32 v2;
    s32 v3;

    v2 = scriptstack_peek(sp, 1);
    v3 = scriptstack_peek(sp, 0);
    sub_080127BC(v2, v3);
    return 0;
}

u16 cmd_45(s32* sp) {
    u32 v1;

    v1 = scriptstack_peek(sp, 0);
    sub_08013CC8(v1, 0);
    return 0;
}

u16 cmd_46(s32* sp) {
    u32 v1;

    v1 = scriptstack_peek(sp, 0);
    sub_08013CC8(v1, 1);
    return 0;
}

u16 cmd_47(s32* sp) {
    u16 uVar1;
    s16 iVar2;
    s16 uVar3;

    iVar2 = scriptstack_peek(sp, 1);
    uVar3 = scriptstack_peek(sp, 0);
    if (iVar2 == -1) {
        sub_08012210();
    } else if (uVar3 == -1) {
        uVar1 = sub_08013998(iVar2);
        for (u16 i = 0; i < uVar1; ++i) {
            sub_08012830(iVar2, i, 0, 1);
        }
    } else {
        sub_08012830(iVar2, uVar3, 0, 1);
    }
    return 0;
}

struct U {
    u16 a;
    u16 b;
};

u16 cmd_48(s32* sp) {
    u16 a;
    U b;
    u16 c;
    u16 d;
    u16 e;
    u16 f;
    u16 g;

    a = scriptstack_peek(sp, 7);
    b.a = scriptstack_peek(sp, 6);
    b.b = scriptstack_peek(sp, 5);
    c = scriptstack_peek(sp, 4);
    d = scriptstack_peek(sp, 3);
    e = scriptstack_peek(sp, 2);
    f = scriptstack_peek(sp, 1);
    g = scriptstack_peek(sp, 0);
    sub_080133D8(a, b.a, b.b, c, d, e, f, g);
    return 0;
}

u16 cmd_cam_follow_sprite(s32* sp) {
    s32 idx;
    Object* spr;

    idx = scriptstack_peek(sp, 0);
    if (idx == -2) {
        gGame.cam_target = -1;
    } else {
        spr = get_obj(idx);
        if (spr != 0) {
            gGame.cam_target = spr->character;
        }
    }
    return 0;
}

NAKED
u16 cmd_4A(s32* sp) {
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	sub sp, #4\n\
	adds r4, r0, #0\n\
	movs r1, #1\n\
	bl scriptstack_peek\n\
	adds r5, r0, #0\n\
	adds r0, r4, #0\n\
	movs r1, #0\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r1, r0, #0x10\n\
	movs r0, #1\n\
	rsbs r0, r0, #0\n\
	cmp r5, r0\n\
	bne _0801E326\n\
	adds r0, r1, #0\n\
	bl sub_0801A2B4\n\
	b _0801E32E\n\
_0801E326:\n\
	lsls r0, r5, #0x10\n\
	lsrs r0, r0, #0x10\n\
	bl sub_0801A2DC\n\
_0801E32E:\n\
	mov r0, sp\n\
	movs r1, #0\n\
	strh r1, [r0]\n\
	adds r0, #2\n\
	strh r1, [r0]\n\
	movs r3, #0\n\
	adds r6, r0, #0\n\
	mov r4, sp\n\
	ldr r7, _0801E388 @ =gGame\n\
	adds r5, r6, #0\n\
_0801E342:\n\
	lsls r1, r3, #3\n\
	subs r1, r1, r3\n\
	lsls r1, r1, #3\n\
	adds r1, r1, r7\n\
	ldr r0, _0801E38C @ =0x000058E5\n\
	adds r1, r1, r0\n\
	ldrb r0, [r1]\n\
	lsls r0, r0, #0x1e\n\
	lsrs r0, r0, #0x1f\n\
	ldrh r2, [r4]\n\
	orrs r0, r2\n\
	strh r0, [r4]\n\
	ldrb r0, [r1]\n\
	lsls r0, r0, #0x1d\n\
	lsrs r0, r0, #0x1f\n\
	ldrh r1, [r5]\n\
	orrs r0, r1\n\
	strh r0, [r5]\n\
	adds r0, r3, #1\n\
	lsls r0, r0, #0x10\n\
	lsrs r3, r0, #0x10\n\
	cmp r3, #2\n\
	bls _0801E342\n\
	mov r0, sp\n\
	ldrh r0, [r0]\n\
	cmp r0, #0\n\
	beq _0801E390\n\
	ldrh r0, [r6]\n\
	cmp r0, #0\n\
	beq _0801E390\n\
	movs r0, #2\n\
	bl sub_08005900\n\
	b _0801E3BC\n\
	.align 2, 0\n\
_0801E388: .4byte gGame\n\
_0801E38C: .4byte 0x000058E5\n\
_0801E390:\n\
	mov r0, sp\n\
	ldrh r0, [r0]\n\
	cmp r0, #0\n\
	beq _0801E3A0\n\
	movs r0, #3\n\
	bl sub_08005900\n\
	b _0801E3BC\n\
_0801E3A0:\n\
	ldrh r0, [r6]\n\
	cmp r0, #0\n\
	beq _0801E3AE\n\
	movs r0, #4\n\
	bl sub_08005900\n\
	b _0801E3BC\n\
_0801E3AE:\n\
	ldr r0, _0801E3C8 @ =gSomeBlend\n\
	ldr r1, _0801E3CC @ =0x000121BB\n\
	adds r0, r0, r1\n\
	ldrb r1, [r0]\n\
	movs r2, #4\n\
	orrs r1, r2\n\
	strb r1, [r0]\n\
_0801E3BC:\n\
	movs r0, #0\n\
	add sp, #4\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_0801E3C8: .4byte gSomeBlend\n\
_0801E3CC: .4byte 0x000121BB\n\
    ");
}

u16 cmd_4B(s32* sp) {
    scriptstack_set(sp, 3, gGame.last_room);
    scriptstack_set(sp, 2, gGame._5982);
    scriptstack_set(sp, 1, gGame._5984);
    scriptstack_set(sp, 0, gGame._5986);
    return 0;
}

u16 cmd_4C(s32* sp) {
    s32 v2;
    u16 v3;
    u16 v4;
    u32 v5;

    v2 = scriptstack_peek(sp, 3);
    v3 = scriptstack_peek(sp, 2);
    v4 = scriptstack_peek(sp, 1);
    v5 = scriptstack_peek(sp, 0);
    if (v2 == -1)
        sub_0801A3AC(v3, v4, v5);
    else
        sub_0801A3D8(v2, v3, v4, v5);
    return 0;
}

NAKED
u16 cmd_4D(s32* sp) {
    asm_unified("\n\
	push {r4, r5, r6, lr}\n\
	sub sp, #4\n\
	adds r4, r0, #0\n\
	movs r1, #3\n\
	bl scriptstack_peek\n\
	adds r5, r0, #0\n\
	adds r0, r4, #0\n\
	movs r1, #2\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	ldr r2, _0801E50C @ =0xFFFF0000\n\
	ldr r1, [sp]\n\
	ands r1, r2\n\
	orrs r1, r0\n\
	str r1, [sp]\n\
	adds r0, r4, #0\n\
	movs r1, #1\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	ldr r2, _0801E510 @ =0x0000FFFF\n\
	ldr r1, [sp]\n\
	ands r1, r2\n\
	orrs r1, r0\n\
	str r1, [sp]\n\
	adds r0, r4, #0\n\
	movs r1, #0\n\
	bl scriptstack_peek\n\
	adds r1, r0, #0\n\
	movs r0, #1\n\
	rsbs r0, r0, #0\n\
	cmp r5, r0\n\
	bne _0801E518\n\
	movs r4, #0\n\
	ldr r5, _0801E514 @ =gGame\n\
	lsls r6, r1, #0x10\n\
_0801E4DC:\n\
	cmp r4, #0\n\
	bne _0801E4E8\n\
	ldrb r0, [r5, #0xf]\n\
	lsls r0, r0, #0x1f\n\
	cmp r0, #0\n\
	beq _0801E4FE\n\
_0801E4E8:\n\
	cmp r4, #1\n\
	bne _0801E4F4\n\
	ldrb r0, [r5, #0x11]\n\
	lsls r0, r0, #0x1c\n\
	cmp r0, #0\n\
	blt _0801E4FE\n\
_0801E4F4:\n\
	adds r0, r4, #0\n\
	lsrs r1, r6, #0x10\n\
	mov r2, sp\n\
	bl sub_08018AC4\n\
_0801E4FE:\n\
	adds r0, r4, #1\n\
	lsls r0, r0, #0x10\n\
	lsrs r4, r0, #0x10\n\
	cmp r4, #2\n\
	bls _0801E4DC\n\
	b _0801E526\n\
	.align 2, 0\n\
_0801E50C: .4byte 0xFFFF0000\n\
_0801E510: .4byte 0x0000FFFF\n\
_0801E514: .4byte gGame\n\
_0801E518:\n\
	lsls r0, r5, #0x10\n\
	lsrs r0, r0, #0x10\n\
	lsls r1, r1, #0x10\n\
	lsrs r1, r1, #0x10\n\
	mov r2, sp\n\
	bl sub_08018AC4\n\
_0801E526:\n\
	movs r0, #0\n\
	add sp, #4\n\
	pop {r4, r5, r6}\n\
	pop {r1}\n\
	bx r1\n\
    ");
}

u16 cmd_4E(s32* sp) {
    u16 v2;
    u16 v3;
    u16 v4;
    u16 v5;

    v2 = scriptstack_peek(sp, 3);
    v3 = scriptstack_peek(sp, 2);
    v4 = scriptstack_peek(sp, 1);
    v5 = scriptstack_peek(sp, 0);
    sub_08013578(v2, v3, v4, v5);
    sub_0801084C();
    return 0;
}

u16 cmd_4F(s32* sp) {
    gGame._67c0 = scriptstack_peek(sp, 0);
    return 0;
}

u16 cmd_CC(s32* sp) {
    u16 temp;

    temp = scriptstack_peek(sp, 0);
    gGame._67c4_10 = 0;
    sub_08012C48(temp);
    return 0;
}

u16 cmd_CD(s32* sp) {
    s32 temp;

    temp = scriptstack_peek(sp, 0);
    if (gGame.state_1 == 5) {
        sub_08012D50(temp);
    } else {
        sub_08012CEC(temp);
    }
    return 0;
}

u16 cmd_E0(s32* sp) {
    u16 uVar1;
    s16 iVar2;
    s16 uVar3;
    u16 i;

    iVar2 = scriptstack_peek(sp, 1);
    uVar3 = scriptstack_peek(sp, 0);
    if (iVar2 == -1) {
        sub_08012210();
    } else {
        if (uVar3 == -1) {
            uVar1 = sub_08013998(iVar2);
            for (u16 i = 0; i < uVar1; ++i) {
                sub_08012830(iVar2, i, -1, 1);
            }
        } else {
            sub_08012830(iVar2, uVar3, -1, 1);
        }
    }
    return 0;
}

NAKED
u16 cmd_EB(s32* sp) {
    asm_unified("\n\
	push {r4, r5, lr}\n\
	movs r1, #0\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	asrs r4, r0, #0x10\n\
	movs r0, #1\n\
	rsbs r0, r0, #0\n\
	cmp r4, r0\n\
	bne _0801E6F4\n\
	ldr r4, _0801E6E4 @ =gGame\n\
	ldr r1, _0801E6E8 @ =0x000067AC\n\
	adds r0, r4, r1\n\
	ldrh r0, [r0]\n\
	bl sub_0801B3B4\n\
	ldr r5, _0801E6EC @ =0x000067C5\n\
	adds r3, r4, r5\n\
	ldrb r2, [r3]\n\
	movs r1, #9\n\
	rsbs r1, r1, #0\n\
	ands r1, r2\n\
	strb r1, [r3]\n\
	ldrb r1, [r0, #2]\n\
	lsrs r1, r1, #6\n\
	lsls r1, r1, #6\n\
	ldrb r2, [r4, #0xe]\n\
	movs r0, #0x3f\n\
	ands r0, r2\n\
	orrs r0, r1\n\
	strb r0, [r4, #0xe]\n\
	ldr r0, _0801E6F0 @ =0x000058B0\n\
	adds r4, r4, r0\n\
	movs r0, #0\n\
_0801E6CC:\n\
	ldrh r1, [r4, #0x18]\n\
	cmp r1, #0\n\
	bne _0801E6D6\n\
	strh r1, [r4, #0x1c]\n\
	strh r1, [r4, #0x1e]\n\
_0801E6D6:\n\
	adds r0, #1\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	adds r4, #0x38\n\
	cmp r0, #2\n\
	bls _0801E6CC\n\
	b _0801E716\n\
	.align 2, 0\n\
_0801E6E4: .4byte gGame\n\
_0801E6E8: .4byte 0x000067AC\n\
_0801E6EC: .4byte 0x000067C5\n\
_0801E6F0: .4byte 0x000058B0\n\
_0801E6F4:\n\
	ldr r3, _0801E720 @ =gGame\n\
	ldr r1, _0801E724 @ =0x000067C5\n\
	adds r2, r3, r1\n\
	ldrb r0, [r2]\n\
	movs r1, #8\n\
	orrs r0, r1\n\
	strb r0, [r2]\n\
	ldrb r2, [r3, #0xe]\n\
	lsrs r1, r2, #6\n\
	ldr r5, _0801E728 @ =0x000067C2\n\
	adds r0, r3, r5\n\
	strh r1, [r0]\n\
	lsls r1, r4, #6\n\
	movs r0, #0x3f\n\
	ands r0, r2\n\
	orrs r0, r1\n\
	strb r0, [r3, #0xe]\n\
_0801E716:\n\
	movs r0, #0\n\
	pop {r4, r5}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_0801E720: .4byte gGame\n\
_0801E724: .4byte 0x000067C5\n\
_0801E728: .4byte 0x000067C2\n\
    ");
}

u16 cmd_F0(s32* sp) {
    u16 temp;

    temp = scriptstack_peek(sp, 0);
    sub_08011564(temp);
    return 0;
}

u16 cmd_F1(s32* sp) {
    u16 v1;
    u16 v3[2];

    v1 = scriptstack_peek(sp, 0);
    u16* p = v3;
    sub_0801A594(v1, v3);
    sub_0801097C(v1, v3[0], p[1]);
    return 0;
}

u16 cmd_50(s32* sp) {
    s32 b, c;
    u32 idx;
    u16 a;
    Object* obj;

    idx = scriptstack_peek(sp, 3);
    c = scriptstack_peek(sp, 2);
    b = scriptstack_peek(sp, 1);
    a = scriptstack_peek(sp, 0);
    obj = get_obj(idx);
    if (obj == NULL) {
        return 0;
    }

    if (c == -1 || c > 12) {
        c = obj->_8b >> 3;
    }
    if (b == -1 || b > 7) {
        b = obj->_8b & 7;
    }

    if (idx == -2) {
        sub_08033948(c, b);
    } else {
        obj->_bc_2 = b;
        sub_080332AC(obj->character, c, b);
    }
    if (!a) {
        sub_08033484(obj->character);
    }
    return 0;
}

u16 cmd_play_anim(s32* sp) {
    u32 idx = scriptstack_peek(sp, 2);
    u16 anim = scriptstack_peek(sp, 1);
    u16 loop = scriptstack_peek(sp, 0);

    Object* obj = get_obj(idx);
    if (obj == NULL) {
        return 0;
    }
    if (anim < 0x100) {
        if (idx == -2) {
            sub_08033A54(anim - 1);
        } else {
            sub_08033374(obj->character, anim - 1);
        }
    }
    if (!loop) {
        sub_08033484(obj->character);
    }
    if (gGame.cur_room == 632) {  // osohe mirror room?
        if (anim - 1 == sub_08035C0C(obj->_86, obj->_88, 4)) {
            sub_08036BA4(obj);
        } else if (anim - 1 == sub_08035C0C(obj->_86, obj->_88, 0)) {
            sub_08036BA4(obj);
        }
    }
    return 0;
}

u16 cmd_linemove(s32* sp) {
    u32 idx = scriptstack_peek(sp, 3);
    u16 direction = scriptstack_peek(sp, 2) + 1;
    u16 flags = scriptstack_peek(sp, 1);
    u16 frames = scriptstack_peek(sp, 0);

    Object* obj = get_obj(idx);
    if (obj == NULL) {
        return 0;
    }
    if (idx == -2) {
        obj->_87 = 3;
    }
    if (direction < 9 && flags < 6) {
        sub_08035C8C(obj, direction, flags, frames);
    }
    return 0;
}

NAKED
u16 cmd_53(s32* sp) {
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	mov r7, sl\n\
	mov r6, sb\n\
	mov r5, r8\n\
	push {r5, r6, r7}\n\
	sub sp, #0x1c\n\
	adds r4, r0, #0\n\
	add r5, sp, #8\n\
	adds r0, r5, #0\n\
	bl sub_0801A530\n\
	add r0, sp, #8\n\
	ldrh r1, [r0]\n\
	ldr r0, _0801EA30 @ =0xFFFF0000\n\
	mov sb, r0\n\
	ldr r0, [sp, #0xc]\n\
	mov r2, sb\n\
	ands r0, r2\n\
	orrs r0, r1\n\
	str r0, [sp, #0xc]\n\
	ldrh r0, [r5, #2]\n\
	add r5, sp, #0xc\n\
	strh r0, [r5, #2]\n\
	movs r0, #0xf0\n\
	strh r0, [r5, #4]\n\
	movs r0, #0xa0\n\
	strh r0, [r5, #6]\n\
	adds r0, r4, #0\n\
	movs r1, #4\n\
	bl scriptstack_peek\n\
	mov r8, r0\n\
	adds r0, r4, #0\n\
	movs r1, #3\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	mov r7, sb\n\
	ldr r1, [sp, #0x14]\n\
	ands r1, r7\n\
	orrs r1, r0\n\
	str r1, [sp, #0x14]\n\
	adds r0, r4, #0\n\
	movs r1, #2\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	ldr r2, _0801EA34 @ =0x0000FFFF\n\
	ldr r1, [sp, #0x14]\n\
	ands r1, r2\n\
	orrs r1, r0\n\
	str r1, [sp, #0x14]\n\
	adds r0, r4, #0\n\
	movs r1, #1\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	mov sl, r0\n\
	adds r0, r4, #0\n\
	movs r1, #0\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	str r0, [sp, #0x18]\n\
	mov r0, r8\n\
	bl get_obj\n\
	adds r4, r0, #0\n\
	adds r6, r5, #0\n\
	cmp r4, #0\n\
	bne _0801E9FE\n\
	b _0801EAF8\n\
_0801E9FE:\n\
	movs r5, #2\n\
	rsbs r5, r5, #0\n\
	cmp r8, r5\n\
	bne _0801EA0E\n\
	adds r1, r4, #0\n\
	adds r1, #0x87\n\
	movs r0, #3\n\
	strb r0, [r1]\n\
_0801EA0E:\n\
	add r0, sp, #0x14\n\
	ldrh r2, [r0]\n\
	movs r1, #0\n\
	ldrsh r3, [r0, r1]\n\
	asrs r1, r7, #0x10\n\
	mov r8, r0\n\
	cmp r3, r1\n\
	bne _0801EA38\n\
	ldrh r0, [r4, #0x14]\n\
	lsrs r0, r0, #1\n\
	ldrh r1, [r6]\n\
	subs r1, r1, r0\n\
	lsls r1, r1, #0x10\n\
	lsrs r1, r1, #0x10\n\
	ldr r0, [sp, #0x14]\n\
	ands r0, r7\n\
	b _0801EA74\n\
	.align 2, 0\n\
_0801EA30: .4byte 0xFFFF0000\n\
_0801EA34: .4byte 0x0000FFFF\n\
_0801EA38:\n\
	cmp r3, r5\n\
	bne _0801EA4A\n\
	ldrh r0, [r6, #4]\n\
	ldrh r2, [r6]\n\
	adds r0, r0, r2\n\
	ldrh r1, [r4, #0x14]\n\
	lsrs r1, r1, #1\n\
	adds r0, r0, r1\n\
	b _0801EA58\n\
_0801EA4A:\n\
	movs r0, #3\n\
	rsbs r0, r0, #0\n\
	cmp r3, r0\n\
	bne _0801EA66\n\
	ldrh r0, [r4]\n\
	lsls r0, r0, #0x10\n\
	asrs r0, r0, #0x14\n\
_0801EA58:\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	ldr r1, [sp, #0x14]\n\
	ands r1, r7\n\
	orrs r1, r0\n\
	str r1, [sp, #0x14]\n\
	b _0801EA78\n\
_0801EA66:\n\
	adds r1, r2, #0\n\
	adds r1, #8\n\
	lsls r1, r1, #0x10\n\
	lsrs r1, r1, #0x10\n\
	ldr r0, [sp, #0x14]\n\
	mov r2, sb\n\
	ands r0, r2\n\
_0801EA74:\n\
	orrs r0, r1\n\
	str r0, [sp, #0x14]\n\
_0801EA78:\n\
	ldr r3, [sp, #0x14]\n\
	asrs r2, r3, #0x10\n\
	adds r1, r2, #0\n\
	movs r0, #1\n\
	rsbs r0, r0, #0\n\
	cmp r1, r0\n\
	bne _0801EA9C\n\
	ldrh r0, [r4, #0x16]\n\
	lsrs r0, r0, #1\n\
	ldrh r1, [r6, #2]\n\
	subs r1, r1, r0\n\
	lsls r1, r1, #0x10\n\
	ldr r0, _0801EA98 @ =0x0000FFFF\n\
	ands r3, r0\n\
	orrs r3, r1\n\
	b _0801EADC\n\
	.align 2, 0\n\
_0801EA98: .4byte 0x0000FFFF\n\
_0801EA9C:\n\
	movs r0, #2\n\
	rsbs r0, r0, #0\n\
	cmp r1, r0\n\
	bne _0801EAC0\n\
	ldrh r1, [r6, #2]\n\
	ldrh r0, [r6, #6]\n\
	adds r1, r1, r0\n\
	ldrh r0, [r4, #0x16]\n\
	lsrs r0, r0, #1\n\
	adds r1, r1, r0\n\
	lsls r1, r1, #0x10\n\
	ldr r0, _0801EABC @ =0x0000FFFF\n\
	ands r3, r0\n\
	orrs r3, r1\n\
	b _0801EADC\n\
	.align 2, 0\n\
_0801EABC: .4byte 0x0000FFFF\n\
_0801EAC0:\n\
	movs r0, #3\n\
	rsbs r0, r0, #0\n\
	cmp r1, r0\n\
	bne _0801EAD0\n\
	ldrh r0, [r4, #2]\n\
	lsls r0, r0, #0x10\n\
	asrs r0, r0, #0x14\n\
	b _0801EAD4\n\
_0801EAD0:\n\
	adds r0, r2, #0\n\
	adds r0, #8\n\
_0801EAD4:\n\
	lsls r0, r0, #0x10\n\
	ldr r1, _0801EB0C @ =0x0000FFFF\n\
	ands r3, r1\n\
	orrs r3, r0\n\
_0801EADC:\n\
	str r3, [sp, #0x14]\n\
	mov r0, sl\n\
	cmp r0, #5\n\
	bhi _0801EAF8\n\
	ldr r1, [sp, #0x18]\n\
	str r1, [sp]\n\
	movs r0, #0\n\
	str r0, [sp, #4]\n\
	adds r0, r4, #0\n\
	movs r1, #0\n\
	mov r2, r8\n\
	mov r3, sl\n\
	bl sub_08036EB8\n\
_0801EAF8:\n\
	movs r0, #0\n\
	add sp, #0x1c\n\
	pop {r3, r4, r5}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	mov sl, r5\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_0801EB0C: .4byte 0x0000FFFF\n\
	");
}

u16 cmd_54(s32* sp) {
    register u32 idx asm("r6");
    Size size;
    u16 a, b;

    idx = scriptstack_peek(sp, 4);
    size.w = scriptstack_peek(sp, 3);
    size.h = scriptstack_peek(sp, 2);
    b = scriptstack_peek(sp, 1);
    a = scriptstack_peek(sp, 0);

    Object* obj = get_obj(idx);
    if (obj == NULL) {
        return 0;
    }

    if (idx == -2) {
        obj->_87 = 3;
    }

    size.w *= 16;
    size.h *= 16;
    size.w += 8;
    size.h += 8;
    if (b < 6 && a < 4) {
        sub_08036EB8(obj, 0, &size, b, a, 0);
    }
    return 0;
}

u16 cmd_55(s32* sp) {
    u16 a, b;
    s32 idx, idx2;

    idx = scriptstack_peek(sp, 3);
    idx2 = scriptstack_peek(sp, 2);
    b = scriptstack_peek(sp, 1);
    a = scriptstack_peek(sp, 0);

    Object* obj = get_obj(idx);
    if (!obj) {
        return 0;
    }

    Object* obj2 = get_obj(idx2);
    if (!obj2) {
        return 0;
    }
    if (idx == -2) {
        obj->_87 = 3;
    }

    Size sz;
    sub_08036BEC(obj2, &sz);

    if (b == 0) {
        if (obj->xpos > obj2->xpos) {
            sz.w += obj->_a6 + obj2->_a6;
        } else if (obj->xpos < obj2->xpos) {
            sz.w -= obj->_a6 + obj2->_a6;
        }
    } else {
        if (obj->ypos > obj2->ypos) {
            sz.h += obj->_a8 + obj2->_a8;
        } else if (obj->ypos < obj2->ypos) {
            sz.h -= obj->_a8 + obj2->_a8;
        }
    }

    if (a < 6) {
        sub_08036EB8(obj, 0, &sz, a, 2, 0);
    }
    return 0;
}

u16 cmd_56(s32* sp) {
    s32 idx = scriptstack_peek(sp, 3);
    Size sz;
    sz.w = scriptstack_peek(sp, 2);
    sz.h = scriptstack_peek(sp, 1);
    u16 a = scriptstack_peek(sp, 0);

    Object* obj = get_obj(idx);
    if (obj == 0) {
        return 0;
    }
    if (idx == -2) {
        obj->_87 = 3;
    }
    sz.w += 8;
    sz.h += 8;
    sub_08035DFC(obj, a, &sz);
    return 0;
}

u16 cmd_57(s32* sp) {
    s32 idx = scriptstack_peek(sp, 2);
    u16 b = scriptstack_peek(sp, 1);
    u32 a = scriptstack_peek(sp, 0);
    Object* obj = get_obj(idx);
    if (obj == 0) {
        return 0;
    }
    if (idx == -2) {
        obj->_87 = 3;
    }

    Size sz;
    sub_08036BEC(obj, &sz);

    // matching hack
    u32 tmp = 0;
    tmp = 0xf;

    if (b < 6) {
        sub_08036EB8(obj, 0, &sz, b, 2, 0);
        if (a < 8) {
            obj->_c7_4 = a;
        } else {
            obj->_c7_4 = 8;
        }
    }
    return 0;
}

u16 cmd_58(s32* sp) {
    s32 idx = scriptstack_peek(sp, 2);
    Object* obj = get_obj(idx);
    if (obj == 0) {
        return 0;
    }
    obj->_ae = scriptstack_peek(sp, 1);
    obj->_b0 = 0;
    obj->_b2 = scriptstack_peek(sp, 0);
    return 0;
}

u16 cmd_59(s32* sp) {
    sub_08029EF0();
    sub_08035170(1);
    return 0;
}

u16 cmd_5A(s32* sp) {
    s32 idx = scriptstack_peek(sp, 1);
    u16 a = scriptstack_peek(sp, 0);
    if (idx == -2) {
        switch (a) {
        case 0:
            gGame._82b6_1 = 0;
            break;
        case 1:
            gGame._82b6_1 = 1;
            break;
        case 2 ... 7:
            sub_08033B20(a);
            break;
        }
    } else {
        Object* obj = get_obj(idx);
        if (obj != 0 && a < 17) {
            sub_08033620(obj->character, a);
        }
    }
    return 0;
}

NAKED
u16 cmd_5B(s32* sp) {
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	mov r7, sb\n\
	mov r6, r8\n\
	push {r6, r7}\n\
	sub sp, #0xc\n\
	adds r5, r0, #0\n\
	mov r4, sp\n\
	mov r0, sp\n\
	bl sub_0801A530\n\
	mov r0, sp\n\
	ldrh r1, [r0]\n\
	ldr r0, _0801EF8C @ =0xFFFF0000\n\
	mov sb, r0\n\
	ldr r0, [sp, #4]\n\
	mov r2, sb\n\
	ands r0, r2\n\
	orrs r0, r1\n\
	str r0, [sp, #4]\n\
	ldrh r0, [r4, #2]\n\
	add r4, sp, #4\n\
	strh r0, [r4, #2]\n\
	movs r0, #0xf0\n\
	strh r0, [r4, #4]\n\
	movs r0, #0xa0\n\
	strh r0, [r4, #6]\n\
	adds r0, r5, #0\n\
	movs r1, #2\n\
	bl scriptstack_peek\n\
	adds r6, r0, #0\n\
	adds r0, r5, #0\n\
	movs r1, #1\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	mov r8, sb\n\
	mov r3, r8\n\
	ands r7, r3\n\
	orrs r7, r0\n\
	adds r0, r5, #0\n\
	movs r1, #0\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	ldr r1, _0801EF90 @ =0x0000FFFF\n\
	ands r7, r1\n\
	orrs r7, r0\n\
	adds r0, r6, #0\n\
	bl get_obj\n\
	adds r2, r0, #0\n\
	cmp r2, #0\n\
	beq _0801F03A\n\
	lsls r0, r7, #0x10\n\
	asrs r1, r0, #0x10\n\
	mov r3, r8\n\
	asrs r0, r3, #0x10\n\
	cmp r1, r0\n\
	bne _0801EF94\n\
	ldrh r1, [r2, #0x14]\n\
	lsrs r1, r1, #1\n\
	ldrh r0, [r4]\n\
	subs r0, r0, r1\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	b _0801EFD6\n\
	.align 2, 0\n\
_0801EF8C: .4byte 0xFFFF0000\n\
_0801EF90: .4byte 0x0000FFFF\n\
_0801EF94:\n\
	movs r0, #2\n\
	rsbs r0, r0, #0\n\
	cmp r1, r0\n\
	bne _0801EFB4\n\
	ldrh r1, [r4, #4]\n\
	ldrh r0, [r4]\n\
	adds r1, r1, r0\n\
	ldrh r0, [r2, #0x14]\n\
	lsrs r0, r0, #1\n\
	adds r1, r1, r0\n\
	lsls r1, r1, #0x10\n\
	lsrs r1, r1, #0x10\n\
	mov r3, r8\n\
	ands r7, r3\n\
	orrs r7, r1\n\
	b _0801EFDA\n\
_0801EFB4:\n\
	movs r0, #3\n\
	rsbs r0, r0, #0\n\
	cmp r1, r0\n\
	bne _0801EFCC\n\
	ldrh r0, [r2]\n\
	lsls r0, r0, #0x10\n\
	asrs r0, r0, #0x14\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	mov r1, r8\n\
	ands r7, r1\n\
	b _0801EFD8\n\
_0801EFCC:\n\
	adds r0, r7, #0\n\
	adds r0, #8\n\
	lsls r0, r0, #0x10\n\
	lsrs r0, r0, #0x10\n\
	mov r3, sb\n\
_0801EFD6:\n\
	ands r7, r3\n\
_0801EFD8:\n\
	orrs r7, r0\n\
_0801EFDA:\n\
	asrs r3, r7, #0x10\n\
	adds r1, r3, #0\n\
	movs r0, #1\n\
	rsbs r0, r0, #0\n\
	cmp r1, r0\n\
	bne _0801EFF0\n\
	ldrh r0, [r2, #0x16]\n\
	lsrs r0, r0, #1\n\
	ldrh r1, [r4, #2]\n\
	subs r1, r1, r0\n\
	b _0801F004\n\
_0801EFF0:\n\
	movs r0, #2\n\
	rsbs r0, r0, #0\n\
	cmp r1, r0\n\
	bne _0801F014\n\
	ldrh r1, [r4, #2]\n\
	ldrh r0, [r4, #6]\n\
	adds r1, r1, r0\n\
	ldrh r0, [r2, #0x16]\n\
	lsrs r0, r0, #1\n\
	adds r1, r1, r0\n\
_0801F004:\n\
	lsls r1, r1, #0x10\n\
	ldr r0, _0801F010 @ =0x0000FFFF\n\
	ands r7, r0\n\
	orrs r7, r1\n\
	b _0801F030\n\
	.align 2, 0\n\
_0801F010: .4byte 0x0000FFFF\n\
_0801F014:\n\
	movs r0, #3\n\
	rsbs r0, r0, #0\n\
	cmp r1, r0\n\
	bne _0801F024\n\
	ldrh r0, [r2, #2]\n\
	lsls r0, r0, #0x10\n\
	asrs r0, r0, #0x14\n\
	b _0801F028\n\
_0801F024:\n\
	adds r0, r3, #0\n\
	adds r0, #8\n\
_0801F028:\n\
	lsls r0, r0, #0x10\n\
	ldr r1, _0801F04C @ =0x0000FFFF\n\
	ands r7, r1\n\
	orrs r7, r0\n\
_0801F030:\n\
	lsls r0, r7, #4\n\
	strh r0, [r2]\n\
	asrs r0, r7, #0x10\n\
	lsls r0, r0, #4\n\
	strh r0, [r2, #2]\n\
_0801F03A:\n\
	movs r0, #0\n\
	add sp, #0xc\n\
	pop {r3, r4}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_0801F04C: .4byte 0x0000FFFF\n\
	");
}

u16 cmd_5C(s32* sp) {
    s32 idx = scriptstack_peek(sp, 2);
    Object* obj = get_obj(idx);
    if (obj == 0) {
        return 0;
    }
    Size sz;
    sub_08036BEC(obj, &sz);
    scriptstack_set(sp, 1, (s16)sz.w + 8);
    scriptstack_set(sp, 0, sz.h + 8);
    return 0;
}

u16 cmd_set_member_sprite(s32* sp) {
    s32 idx = scriptstack_peek(sp, 1);
    u16 a = scriptstack_peek(sp, 0);
    Object* obj = get_obj(idx);
    if (obj == 0) {
        return 0;
    }
    if (a < 8) {
        if (idx == -2) {
            sub_08036B34(a);
        } else {
            sub_08036A1C(obj->character, a);
        }
    }
    return 0;
}

u16 cmd_5E(s32* sp) {
    s32 a, b;
    Object* c;
    Object* d;
    a = scriptstack_peek(sp, 1);
    b = scriptstack_peek(sp, 0);
    c = get_obj(a);
    if (!c)
        return 0;
    d = get_obj(b);
    if (!d)
        return 0;
    if (a == -2)
        sub_080338D8(d->character, 0);
    else
        sub_08033868(c->character, d->character, 0);

    return 0;
}

u16 cmd_5F(s32* sp) {
    Object* a = get_obj(scriptstack_peek(sp, 0));
    if (!a)
        return 0;
    if (a->_8b >> 3 < 13)
        scriptstack_push(a->_8b & 7);
    else
        scriptstack_push(a->_bc_2);

    return 0;
}

u16 cmd_60(s32* sp) {
    s32 a = scriptstack_peek(sp, 3);
    s32 b = scriptstack_peek(sp, 2);
    s32 c = scriptstack_peek(sp, 1);
    s32 d = scriptstack_peek(sp, 0);
    Object* obj = get_obj(a);
    if (obj)
        sub_08036A90(obj->character, (s16)b, (s16)c, (s16)d);

    return 0;
}

u16 cmd_61(s32* sp) {
    Object* obj = get_obj(scriptstack_peek(sp, 0));
    if (obj)
        scriptstack_push(obj->_bc_0);

    return 0;
}

u16 cmd_62(s32* sp) {
    u32 a = scriptstack_peek(sp, 1);
    u16 b = scriptstack_peek(sp, 0);
    Object* obj = get_obj(a);

    if (obj) {
        if (b == 1)
            obj->_bf_2 = 1;
        else if (b == 0)
            obj->_bf_2 = 0;
    }

    return 0;
}

u16 cmd_63(s32* sp) {
    s32 a = scriptstack_peek(sp, 1);
    u32 b = scriptstack_peek(sp, 0);
    Object* obj = get_obj(a);

    if (obj) {
        if (b == -1) {
            obj->_c7_0 = 0;
            obj->_b8[0] = obj->_b8[1] = obj->_b8[2] = 3 - obj->_bd_1;
        } else {
            obj->_c7_0 = 1;
            obj->_b8[0] = obj->_b8[1] = obj->_b8[2] = b;
        }
    }

    return 0;
}

u16 cmd_64(s32* sp) {
    s32 a = scriptstack_peek(sp, 2);
    u16 b = scriptstack_peek(sp, 1);
    u16 c = scriptstack_peek(sp, 0);
    Object* obj = get_obj(a);

    if (obj) {
        if (b == 1)
            obj->_c7_1 = 0;
        else if (b == 0)
            obj->_c7_1 = 1;
        if (c == 1)
            obj->_c7_2 = 0;
        else if (c == 0)
            obj->_c7_2 = 1;
    }

    return 0;
}

u16 cmd_65(s32* sp) {
    u32 a = scriptstack_peek(sp, 1);
    s32 b = scriptstack_peek(sp, 0);
    Object* obj = get_obj(a);
    if (obj) {
        do {
            if (b > -5 && b < 9) {
                obj->_8e[0] = b;
                if (b > 4)
                    obj->_90[1] = sub_08036960(obj, obj->_8b) - 1;
            }
        } while (0);
    }

    return 0;
}

u16 cmd_66(s32* sp) {
    u32 a = scriptstack_peek(sp, 1);
    u16 b = scriptstack_peek(sp, 0);
    Object* obj = get_obj(a);

    if (obj) {
        if (b == 1)
            obj->_bc_3 = 1;
        else if (b == 0)
            obj->_bc_3 = 0;
    }

    return 0;
}

u16 cmd_67(s32* sp) {
    scriptstack_push(gGame._8494_5);
    return 0;
}

u16 cmd_68(s32* sp) {
    u32 a = scriptstack_peek(sp, 1);
    u16 b = scriptstack_peek(sp, 0);
    Object* obj = get_obj(a);

    if (obj) {
        switch (gGame.state_1) {
        case 2:
        case 3:
            if (gGame.cur_room == 0x1B)
                obj->_88 = 0;
            break;
        }
        sub_08030550(obj, b, 1);
        switch (gGame.state_1) {
        case 2:
        case 3:
            sub_08001B18(gUnknown_030055F4, &gGame._948c[0x16E], 0xA0);
            break;
        }
    }

    return 0;
}

u16 cmd_69(s32* sp) {
    Object* obj = get_obj(-1);

    if (!obj)
        scriptstack_push(-1);
    scriptstack_push(obj->character);

    return 0;
}

u16 cmd_6A(s32* sp) {
    Object* obj = get_obj(-1);

    if (!obj)
        scriptstack_push(-1);
    scriptstack_push(obj->_88);

    return 0;
}

u16 cmd_6B(s32* sp) {
    u32 a = scriptstack_peek(sp, 3);
    u16 b = scriptstack_peek(sp, 2) + 1;
    u16 c = scriptstack_peek(sp, 1);
    u16 d = scriptstack_peek(sp, 0);
    Object* obj = get_obj(a);

    if (obj) {
        if (a == -2) {
            obj->_87 = 3;
        }
        if (b < 9 && c < 6)
            sub_08035D40(obj, b, c, d);
    }

    return 0;
}

u16 cmd_6C(s32* sp) {
    u32 a = scriptstack_peek(sp, 1);
    u16 b = scriptstack_peek(sp, 0);
    Object* obj = get_obj(a);

    if (obj) {
        if (b == 1)
            obj->_bc_4 = 1;
        else if (b == 0)
            obj->_bc_4 = 0;
    }

    return 0;
}

u16 cmd_6D(s32* sp) {
    u32 a = scriptstack_peek(sp, 2);
    u16 b = scriptstack_peek(sp, 1);
    s16 c = scriptstack_peek(sp, 0);
    Object* obj = get_obj(a);

    if (obj && b < 13) {
        if (c == -1)
            obj->_74[b] = 0xff;
        else if (c < 13)
            obj->_74[b] = c;
        else
            obj->_74[b] = c - 1;
    }
    return 0;
}

u16 cmd_B4(s32* sp) {
    struct unk {
        u16 unk0;
        s16 unk2;
    } unkStruct;

    u32 a = scriptstack_peek(sp, 5);
    u16 b = scriptstack_peek(sp, 4);
    ++b;
    --b;  // fakematch
    s16 c = scriptstack_peek(sp, 3);
    unkStruct.unk0 = c;
    s16 d = scriptstack_peek(sp, 2);
    unkStruct.unk2 = d;
    u16 e = scriptstack_peek(sp, 1);
    u16 f = scriptstack_peek(sp, 0);
    Object* obj = get_obj(a);

    if (!obj)
        return 0;
    sub_08030550(obj, b, 1);
    unkStruct.unk0 += 8;
    unkStruct.unk2 += 8;
    obj->xpos = unkStruct.unk0 * 16;
    obj->ypos = unkStruct.unk2 * 16;
    if (e < 8)
        sub_08036A1C(obj->character, e);
    if (f < 17)
        sub_08033620(obj->character, f);

    return 0;
}

u16 cmd_load_sprite_table(s32* sp) {
    u16 a = scriptstack_peek(sp, 0);
    if (a < 5) {
        gGame._2_2 = a;
    }

    return 0;
}

u16 cmd_B7(s32* sp) {
    sub_08035170(1);
    return 0;
}

u16 cmd_B8(s32* sp) {
    Object* obj = get_obj(scriptstack_peek(sp, 3));

    if (obj) {
        cmd_6B(sp);
        if (obj->speed != 0)
            obj->_c8_2 = 1;
    }

    return 0;
}

u16 cmd_BA(s32* sp) {
    u32 a = scriptstack_peek(sp, 2);
    u16 b = scriptstack_peek(sp, 1);
    u16 c = scriptstack_peek(sp, 0);
    Object* obj = get_obj(a);

    if (obj) {
        obj->_a6 = b / 2;
        obj->_a8 = c / 2;
        if (obj->character == 0)
            obj->_a8 += 4;
        obj->_aa[0] = obj->_a6 << 4;
        obj->_aa[1] = obj->_a8 << 4;
    }

    return 0;
}

u16 cmd_BF(s32* sp) {
    sub_0802D294(gUnknown_0200DEBC);
    return 0;
}

u16 cmd_C0(s32* sp) {
    struct CmdC0Struct {
        u16 a;
        s16 b;
    } cmdC0Struct;

    u32 a = scriptstack_peek(sp, 2);
    cmdC0Struct.a = scriptstack_peek(sp, 1);
    cmdC0Struct.b = scriptstack_peek(sp, 0);
    Object* obj = get_obj(a);

    if (obj) {
        obj->xpos += cmdC0Struct.a << 4;
        obj->_b4[1] = cmdC0Struct.b << 4;
        obj->_c8_2 = 1;
    }

    return 0;
}

u16 cmd_get_talker_sprite(s32* sp) {
    Object* obj = get_obj(scriptstack_peek(sp, 0));

    if (!obj)
        scriptstack_push(-1);
    scriptstack_push(obj->_88);  // uh???

    return 0;
}

u16 cmd_C2(s32* sp) {
    struct C2Struct* c2Struct;
    s32 a = scriptstack_peek(sp, 1);
    u32 b = scriptstack_peek(sp, 0);
    Object* obj = get_obj(a);
    u32 temp;

    if (obj) {
        if (b == -1) {
            c2Struct = sub_08036D3C(obj->_88);
            obj->_c9_1 = c2Struct->_0_0;
        } else {
            obj->_c9_1 = b;
        }
    }

    return 0;
}

u16 cmd_C3(s32* sp) {
    u32 a = scriptstack_peek(sp, 1);
    u32 b = scriptstack_peek(sp, 0);
    Object* obj = get_obj(a);
    Object* obj2;

    if (obj) {
        obj2 = get_obj(b);
        if (obj2) {
            if (a == -2) {
                sub_080338D8(obj2->character, 1);
                return 0;
            }
            sub_08033868(obj->character, obj2->character, 1);
        }
    }
    return 0;
}

u16 cmd_C4(s32* sp) {
    u32 a = scriptstack_peek(sp, 1);
    u32 b = scriptstack_peek(sp, 0);
    Object* obj = get_obj(a);

    if (obj)
        sub_080261D0(obj, b, -1, -1, -1);
    return 0;
}

u16 cmd_C5(s32* sp) {
    Object* obj = get_obj_direct(0);
    u16 b = scriptstack_peek(sp, 1);
    u16 c = scriptstack_peek(sp, 0);
    u16 d;
    Object* obj2;
    Size sz;

    if (b != 0)
        return 0;
    d = sub_08002998(65);
    (u32) obj++;
    (u32) obj--;  // FAKEMATCH
    if (c == 1) {
        gGame._829b = 6;
        gGame._82b6_2 = 0;

        switch (d) {
        case 0:
            gGame._82ac = 0x7b;
            break;
        case 1:
            gGame._82ac = 0x238;
            break;
        case 2:
            gGame._82ac = 0x237;
            break;
        case 3:
            gGame._82ac = 0xd0;
            break;
        case 4:
            gGame._82ac = 0x236;
        }

        sub_08030550(obj, gGame._82ac, 1);
        sub_08033620(obj->character, 4);
        switch (d) {
        case 1:
        case 2:
        case 4:
            sub_08001B18(gUnknown_030055F4, &gGame._948c[0x16E], 0xa0);
            memclear(gUnknown_030055F4, 0xa0);
            break;
        }
        sub_08036BEC(obj, &sz);
        obj->ypos += 64;
        return 0;

    } else if (c == 0) {
        gGame._829b = 0;
        gGame._82ac = 0xFFFF;
        sub_08030550(obj, gCharStats[obj->_86].spriteNo, 0);
        sub_08036BEC(obj, &sz);
        sub_08029FC8(gGame._82b9[0xbc], gGame.cur_room, 2, &sz);
        sub_0802C8A8(&gGame._82b9[3], 0);
        switch (d) {
        case 0:
        case 3:
            obj2 = get_obj_direct(gGame._82b9[0xb7] + 4);
            sub_08033374(obj2->character, 16);
            sub_08033484(obj2->character);
            obj2->_90[1] = 0x3c;
            break;
        }
        gSomeBlend._121b8_3 = 1;
        gGame._9d08 = 0x6010000;
        gGame._9d0c = 0;
        sub_08030180();
        gSomeBlend._121b8_3 = 0;
        switch (d) {
        case 1:
        case 2:
        case 4:
            sub_08001B18(gUnknown_030055F4, &gGame._948c[0x16e], 0xa0);
            memclear(gUnknown_030055F4, 0xa0);
        }
        sub_08034FFC();
    }
    return 0;
}

u16 cmd_C6(s32* sp) {
    u16 a = scriptstack_peek(sp, 0);
    gGame._829b = 3;
    if (a == 1)
        sub_08033FEC(0);
    else
        sub_08033FEC(1);
    return 0;
}

u16 cmd_CA(s32* sp) {
    u32 a = scriptstack_peek(sp, 2);
    u32 b = scriptstack_peek(sp, 1);
    s32 c = scriptstack_peek(sp, 0);
    Object* obj = get_obj(a);
    Object* obj2;
    if (obj) {
        if (c == -2) {
            obj->_cb_1 = 0;
            return 0;
        }
        obj2 = get_obj(b);
        if (obj2) {
            sub_080337F0(obj->character, obj2->character, c);
        }
    }

    return 0;
}

s16 cmd_D2(s32* sp) {
    u32 a = scriptstack_peek(sp, 1);
    u32 b = scriptstack_peek(sp, 0);
    Object* obj = get_obj(a);

    if (obj) {
        if (b == 1)
            obj->_c8_1 = 1;
        else if (b == 0)
            obj->_c8_1 = 0;
    }
    return 0;
}

u16 cmd_D3(s32* sp) {
    u32 a = scriptstack_peek(sp, 1);
    u16 b = scriptstack_peek(sp, 0);
    Object* obj = get_obj(a);

    if (obj) {
        if (a == -2) {
            sub_08033B58(b);
            return 0;
        }
        sub_080337A8(obj->character, b);
    }

    return 0;
}

u16 cmd_D5(s32* sp) {
    u32 a = scriptstack_peek(sp, 1);
    u16 b = scriptstack_peek(sp, 0);
    Object* obj = get_obj(a);
    Object* obj2;
    Size sz;
    Size* unused = &sz;  // needed for matching

    if (obj) {
        obj2 = sub_08035138(gGame.party_count);
        sz.w = obj2->xpos >> 4;
        sz.h = obj2->ypos >> 4;
        sub_08035DFC(obj, b, &sz);
        obj->_c7_4 = obj2->_4_0;
    }
    return 0;
}

u16 cmd_D6(s32* sp) {
    Object* obj = get_obj(scriptstack_peek(sp, 0));
    if (obj)
        sub_08035298(obj);
    return 0;
}
}

extern "C" ASM_FUNC("asm/non_matching/script/cmd_D7.inc", void cmd_D7());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_D9.inc", void cmd_D9());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_DA.inc", void cmd_DA());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_E9.inc", void cmd_E9());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_F3.inc", void cmd_F3());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_F7.inc", void cmd_F7());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_FD.inc", void cmd_FD());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_FE.inc", void cmd_FE());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_96.inc", void cmd_96());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_set_fade.inc", void cmd_set_fade());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_fade_in.inc", void cmd_fade_in());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_play_fade.inc", void cmd_play_fade());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_71.inc", void cmd_71());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_72.inc", void cmd_72());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_73.inc", void cmd_73());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_set_palettes.inc", void cmd_set_palettes());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_75.inc", void cmd_75());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_76.inc", void cmd_76());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_stop_shake.inc", void cmd_stop_shake());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_play_anim_above.inc", void cmd_play_anim_above());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_79.inc", void cmd_79());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_7A.inc", void cmd_7A());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_7B.inc", void cmd_7B());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_7C.inc", void cmd_7C());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_7D.inc", void cmd_7D());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_7E.inc", void cmd_7E());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_7F.inc", void cmd_7F());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_80.inc", void cmd_80());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_81.inc", void cmd_81());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_disp_text_special.inc", void cmd_disp_text_special());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_B9.inc", void cmd_B9());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_BB.inc", void cmd_BB());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_BC.inc", void cmd_BC());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_BD.inc", void cmd_BD());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_BE.inc", void cmd_BE());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_C7.inc", void cmd_C7());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_C8.inc", void cmd_C8());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_CE.inc", void cmd_CE());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_CF.inc", void cmd_CF());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_D1.inc", void cmd_D1());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_set_logo_disp.inc", void cmd_set_logo_disp());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_F4.inc", void cmd_F4());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_disp_staffroll.inc", void cmd_disp_staffroll());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_play_sound_ext.inc", void cmd_play_sound_ext());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_play_sound.inc", void cmd_play_sound());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_84.inc", void cmd_84());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_85.inc", void cmd_85());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_86.inc", void cmd_86());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_87.inc", void cmd_87());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_88.inc", void cmd_88());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_set_bgm.inc", void cmd_set_bgm());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_set_bgm_other.inc", void cmd_set_bgm_other());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_8A.inc", void cmd_8A());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_CB.inc", void cmd_CB());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_D0.inc", void cmd_D0());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_set_volume.inc", void cmd_set_volume());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_DB.inc", void cmd_DB());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_DC.inc", void cmd_DC());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_E1.inc", void cmd_E1());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_play_sfx.inc", void cmd_play_sfx());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_init_battle.inc", void cmd_init_battle());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_8D.inc", void cmd_8D());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_8E.inc", void cmd_8E());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_8F.inc", void cmd_8F());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_90.inc", void cmd_90());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_91.inc", void cmd_91());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_set_gameover.inc", void cmd_set_gameover());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_93.inc", void cmd_93());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_open_shop.inc", void cmd_open_shop());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_open_save.inc", void cmd_open_save());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_open_naming.inc", void cmd_open_naming());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_cmp_input_name.inc", void cmd_cmp_input_name());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_open_itemguy.inc", void cmd_open_itemguy());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_open_bank.inc", void cmd_open_bank());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_A6.inc", void cmd_A6());

extern "C" s32 cmd_restart() {
    DoReset();
    return 1;
}

extern "C" ASM_FUNC("asm/non_matching/script/cmd_set_movement_property.inc", void cmd_set_movement_property());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_AC.inc", void cmd_AC());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_AD.inc", void cmd_AD());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_AE.inc", void cmd_AE());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_AF.inc", void cmd_AF());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_B0.inc", void cmd_B0());
extern "C" ASM_FUNC("asm/non_matching/script/cmd_B1.inc", void cmd_B1());
extern "C" ASM_FUNC("asm/non_matching/script/sub_08021878.inc", u8* sub_08021878(void* r0, s32* r1, u16* r2));
extern "C" ASM_FUNC("asm/non_matching/script/sub_080218B0.inc", void sub_080218B0(u32 r0, u32 r1));

extern "C" void scriptstack_set(s32 *sp, u16 offset, s32 value) {
    gGame.stack[*(sp - offset)] = value;
}

extern "C" void scriptstack_push(s32 value) {
    gGame.stack[gGame.sp] = value;
    gGame.sp++;
}

extern "C" s32 scriptstack_peek(s32* sp, u16 idx) {
    return *(sp - idx);
}
