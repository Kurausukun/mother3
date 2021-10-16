#include "script.h"

extern "C" {

struct Sprite {
    u8 filler[0x34];
    u32 speed;
    u8 _38[0x92];
    u8 _ca;
};

struct PartyMember {
    u8 _0[0x18];
    u32 curHP;
    s16 curPP;
    u32 maxHP;
    s16 maxPP;
};

struct struct_02016028 {
    u8 filler[0x2ca2];
    u16 _2ca2;
    u8 _2ca3[0xf517];
    u8 _121bb_1 : 4;
    u8 _121bb_10 : 1;
};
extern struct_02016028 gUnknown_02016028;

struct struct_02004860 {
    u8 _0[0x8];
    u32 dp_pocket;
    u32 dp_bank;
    u8 _10[0x210];
    u16 _220;
    u8 _222[0x522];
    u32 _744;
};
extern struct_02004860 gSave;

enum ItemType {
    Weapon,
    BodyArmor,
    Headgear,
    Armgear,
    Food,
    StatusHeal,
    Damage,
    SpecialEff,
    Key,
    UnusedKey,
};

enum EquipFlags {
    _1,
    Flint,
    Lucas,
    Duster,
    Kumatora,
    Boney,
    Salsa,
    _80,
};

struct ItemData {
    u32 id;
    ItemType type;
    u16 key_item_flags;
    u16 sell_price;
    EquipFlags equip_flags;
    s32 hp_increase;
    s32 pp_increase;
    s8 off_increase;
    s8 def_increase;
    s8 iq_increase;
    s8 spd_increase;
    s8 knd_increase;
    u8 status_protect[22];
    u8 elem_protect[5];
    u8 attack_type[5];
    u8 gen_info[40];
    u32 battle_info;
};
extern ItemData gItemData[];

extern u32 gUnknown_03005314;
extern u8 gUnknown_02005080;

s32 scriptstack_peek(s32* sp, u16 idx);
Sprite* sub_0802718C(s32);
void sub_0800AD6C();
void sub_08023EF8();
u16 sub_0801BF18();
s32 sub_08036BD8(s32);
void sub_08025620(u32, u32, u32);
void scriptstack_push(u32);
void sub_08024744();
void sub_08005BFC();
void sub_0801B5E8(u32);
void sub_08005C14();
void sub_08001B18(u32*, u32*, u32);
void sub_08013D38();
void sub_0802610C(u32);
void sub_080028BC(u32, u32);
void sub_08002938(u32, u32);
void sub_08002950(u32, u32);
u16 sub_08002970(u32);
u32 sub_080029BC(u32);
u32 sub_080029D4(u32);
void sub_080218B0(u32, u32);
void sub_080028F4(u32, u32);
u32 sub_08002998(u32);
void sub_0802A038(s32);
void sub_0802A0F8(u32, u32);
u32 sub_0802B8C4(u32);
void sub_0802AA78(u32);
void sub_08033BCC(u32);
void sub_0802B4D8();
void sub_08028040();
void sub_080029F8(u32, u32);
u32 sub_08002A30(u32);
void sub_0802AF24(u32);
void sub_0802A05C(s32);
u32 sub_0802B954(u32);
PartyMember* get_party_member(u32 idx);
void scriptstack_set(s32* sp, s32 offset, s32 value);

// verify if function name is correct
inline void scriptstack_pop() {
    (*gScript._9470)--;
    gScript.stack[gScript._9474] = gScript.stack[gScript._9474 - 1];
    gScript._9474++;
}

u16 sub_0801BEE0(u16 cmd, s32* sp) {
    u8 temp[4];

    if (cmd > 0xFF || !gScriptCmdTable[cmd]) {
        sub_0801BF18();
        return 1;
    }
    return gScriptCmdTable[cmd](sp);
}

u16 sub_0801BF18() {
    if (gScript.state_1 == 5) {
        if (gScript.state_8 == 0) {
            sub_0800AD6C();
        }
        sub_08023EF8();
    }
    return 1;
}

u16 sub_0801BF48(s32* sp) {
    if (gScript.state_1 != 5)
        return 0;

    gScript.delay = scriptstack_peek(sp, 0);
    return 1;
}

u16 sub_0801BF84(s32* sp) {
    s32 idx;
    Sprite* sprite;

    if (gScript.state_1 != 5)
        return 0;

    idx = scriptstack_peek(sp, 0);
    sprite = sub_0802718C(idx);
    if (sprite == NULL || sprite->speed == 0)
        return 0;

    scriptstack_pop();
    return 1;
}

u16 sub_0801BFFC(s32* sp) {
    u16 temp;

    temp = scriptstack_peek(sp, 0);
    switch (gScript.state_1) {
    case 0:
    case 2:
    case 3:
        sub_08025620(sub_08036BD8(0), 5, temp);
        break;
    default:
        break;
    }
    return 0;
}

u16 sub_0801C044(s32* sp) {
    if (gScript.state_8 != 0)
        scriptstack_push(1);
    else
        scriptstack_push(0);
    return 0;
}

u16 sub_0801C074(s32* sp) {
    s32 temp;

    if (gScript.state_1 != 5)
        return 0;

    temp = scriptstack_peek(sp, 0);
    if ((gUnknown_02016028._2ca2 & temp) == 0) {
        scriptstack_pop();
        return 1;
    } else {
        scriptstack_push(gUnknown_02016028._2ca2 & temp);
        return 0;
    }
}

u16 sub_0801C0FC(s32* sp) {
    s32 idx;
    Sprite* sprite;

    if (gScript.state_1 != 5)
        return 0;

    idx = scriptstack_peek(sp, 0);
    sprite = sub_0802718C(idx);
    if (sprite == 0 || (sprite->_ca << 28 < 0))
        return 0;

    scriptstack_pop();
    return 1;
}

u16 sub_0801C178() {
    if (gScript._8495 / 128 != 0) {
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

u16 sub_0801C1D0() {
    if (gScript.state_1 != 5)
        return 0;

    gScript._8494_1 = 0;
    sub_08024744();
    gScript.state_80 = 1;
    sub_08005BFC();
    sub_0801B5E8(2);
    sub_08005C14();
    gScript.state_80 = 0;
    gScript.state_20 = 1;
    if (gScript._8484 != 0) {
        gUnknown_02016028._121bb_10 = 1;
        sub_0800AD6C();
        sub_08001B18(&gScript._9488, &gUnknown_03005314, 0x400);
        gScript._0 = 6;
        sub_08013D38();
        sub_0802610C(0);
    } else {
        gScript._67c4_40 = 1;
    }
    return 0;
}

u16 sub_0801C288() {
    if (gScript.state_1 == 5)
        gScript._8494_4 = 1;
    return 0;
}

NAKED
u16 sub_0801C2B8(s32* sp) {
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	sub sp, #4\n\
	adds r5, r0, #0\n\
	ldr r7, _0801C31C @ =gScript\n\
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
_0801C31C: .4byte gScript\n\
_0801C320: .4byte 0x00009480\n\
_0801C324: .4byte 0x0000947C\n\
_0801C328: .4byte 0x0000947E\n\
_0801C32C:\n\
	mov r1, sp\n\
	movs r0, #0\n\
	strh r0, [r1]\n\
_0801C332:\n\
	ldr r1, _0801C36C @ =gScript\n\
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
_0801C36C: .4byte gScript\n\
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
	ldr r0, _0801C3AC @ =gUnknown_02016028\n\
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
_0801C3AC: .4byte gUnknown_02016028\n\
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
	ldr r0, _0801C3F8 @ =gUnknown_02016028\n\
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
_0801C3F8: .4byte gUnknown_02016028\n\
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
	ldr r0, _0801C43C @ =gScript\n\
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
_0801C43C: .4byte gScript\n\
_0801C440: .4byte 0x0000947C\n\
_0801C444: .4byte 0x0000FFFF\n\
    ");
}

u16 sub_0801C448(s32* sp) {
    u16 b;
    u16 a;
    u32 temp;

    b = scriptstack_peek(sp, 1);
    a = scriptstack_peek(sp, 0);
    if (a == 0)
        temp = 5;
    else
        temp = 4;

    switch (gScript.state_1) {
    case 0:
    case 2:
    case 3:
        sub_08025620(sub_08036BD8(0), temp, b);
        break;
    default:
        break;
    }
    return 0;
}

u16 sub_0801C4A4(s32* sp) {
    u16 flag;
    u32 value;

    flag = scriptstack_peek(sp, 1);
    value = scriptstack_peek(sp, 0) & 1;
    if (flag < 0x800)
        sub_080028BC(flag, value);
    return 0;
}

u16 sub_0801C4D8(s32* sp) {
    u16 idx;
    u32 val;

    idx = scriptstack_peek(sp, 1);
    val = scriptstack_peek(sp, 0) & 0xff;
    if (idx < 0x40)
        sub_08002938(idx, val);
    return 0;
}

u16 sub_0801C508(s32* sp) {
    u16 idx;
    u16 val;

    idx = scriptstack_peek(sp, 1);
    val = scriptstack_peek(sp, 0);
    if (idx < 0x20)
        sub_08002950(idx, val);
    return 0;
}

u16 sub_0801C534(s32* sp) {
    u16 val;
    u16 idx;

    idx = scriptstack_peek(sp, 0);
    if (idx < 0x800) {
        val = sub_08002970(idx);
        scriptstack_push(val);
    }
    return 0;
}

u16 sub_0801C560(s32* sp) {
    u16 val;
    u16 idx;

    idx = scriptstack_peek(sp, 0);
    if (idx < 0x40) {
        val = sub_080029BC(idx);
        scriptstack_push(val);
    }
    return 0;
}

u16 sub_0801C584(s32* sp) {
    u16 val;
    u16 idx;

    idx = scriptstack_peek(sp, 0);
    if (idx < 0x20) {
        val = sub_080029D4(idx);
        scriptstack_push(val);
    }
    return 0;
}

u16 sub_0801C5A8(s32* sp) {
    u16 val;
    u16 idx;
    u16 test;

    idx = scriptstack_peek(sp, 1);
    if (idx < 0x800) {
        val = sub_08002970(idx);
        test = scriptstack_peek(sp, 0);
        sub_080218B0(val, test);
    }
    return 0;
}

u16 sub_0801C5E8(s32* sp) {
    u16 val;
    u16 idx;
    u16 test;

    idx = scriptstack_peek(sp, 1);
    if (idx < 0x40) {
        val = sub_080029BC(idx);
        test = scriptstack_peek(sp, 0);
        sub_080218B0(val, test);
    }
    return 0;
}

u16 sub_0801C620(s32* sp) {
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

u16 sub_0801C658(s32* sp) {
    u16 idx;
    u16 val;

    idx = scriptstack_peek(sp, 1);
    val = scriptstack_peek(sp, 0) & 0xf;
    if (idx < 0x80) {
        sub_080028F4(idx, val);
    }
    return 0;
}

u16 sub_0801C688(s32* sp) {
    u16 idx;
    u16 val;

    idx = scriptstack_peek(sp, 0);
    if (idx < 0x80) {
        val = sub_08002998(idx);
        scriptstack_push(val);
    }
    return 0;
}

u16 sub_0801C6AC(s32* sp) {
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

u16 sub_0801C6E4(s32* sp) {
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
            gScript._67ac = idx;
            break;
        }
    }
    return 0;
}

u16 sub_0801C730(s32* sp) {
    scriptstack_push(gScript._67ac);
    return 0;
}

u16 sub_0801C74C(s32* sp) {
    s32 amt = scriptstack_peek(sp, 0);
    sub_0802A038(amt);
    return 0;
}

u16 sub_0801C760(s32* sp) {
    scriptstack_push(gSave.dp_pocket);
    return 0;
}

u16 sub_0801C774(s32* sp) {
    u16 idx;
    u32 val;

    idx = scriptstack_peek(sp, 1);
    val = scriptstack_peek(sp, 0);
    sub_0802A0F8(idx, val);
    return 0;
}

#ifdef NONMATCHING
u16 sub_0801C79C(s32* sp) {
    u16 temp;
    u16 cnt;
    u8* item;
    u16 idx;
    idx = scriptstack_peek(sp, 0);
    if (gItemData[idx].type == Key) {
        cnt = gSave._10[idx];
    } else {
        cnt = 0;
        for (u16 i = 0; i < gScript.party_count; ++i) {
            item = (u8*)get_party_member(i);
            if (*item != 0) {
                temp = sub_08001D2C(*item);
                if (temp != 0) {
                    cnt += sub_0802A3D0(item, idx);
                }
            }
        }
    }
    scriptstack_push(cnt);
    return 0;
}
#else
NAKED
u16 sub_0801C79C(s32* sp) {
    asm_unified("\n\
	push {r4, r5, r6, r7, lr}\n\
	mov r7, r8\n\
	push {r7}\n\
	movs r1, #0\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r6, r0, #0x10\n\
	ldr r1, _0801C7C8 @ =gUnknown_080E5108\n\
	movs r0, #0x6c\n\
	muls r0, r6, r0\n\
	adds r1, #4\n\
	adds r0, r0, r1\n\
	ldr r0, [r0]\n\
	cmp r0, #8\n\
	bne _0801C7D0\n\
	ldr r0, _0801C7CC @ =gSave\n\
	adds r0, #0x10\n\
	adds r0, r6, r0\n\
	ldrb r0, [r0]\n\
	b _0801C818\n\
	.align 2, 0\n\
_0801C7C8: .4byte gUnknown_080E5108\n\
_0801C7CC: .4byte gSave\n\
_0801C7D0:\n\
	movs r7, #0\n\
	movs r5, #0\n\
	ldr r0, _0801C828 @ =gScript\n\
	ldr r1, _0801C82C @ =0x00008299\n\
	adds r0, r0, r1\n\
	ldrb r1, [r0]\n\
	cmp r7, r1\n\
	bhs _0801C816\n\
	mov r8, r0\n\
_0801C7E2:\n\
	adds r0, r5, #0\n\
	bl get_party_member\n\
	adds r4, r0, #0\n\
	ldrb r0, [r4]\n\
	cmp r0, #0\n\
	beq _0801C808\n\
	bl sub_08001D2C\n\
	lsls r0, r0, #0x10\n\
	cmp r0, #0\n\
	beq _0801C808\n\
	adds r0, r4, #0\n\
	adds r1, r6, #0\n\
	bl sub_0802A3D0\n\
	adds r0, r7, r0\n\
	lsls r0, r0, #0x10\n\
	lsrs r7, r0, #0x10\n\
_0801C808:\n\
	adds r0, r5, #1\n\
	lsls r0, r0, #0x10\n\
	lsrs r5, r0, #0x10\n\
	mov r0, r8\n\
	ldrb r0, [r0]\n\
	cmp r5, r0\n\
	blo _0801C7E2\n\
_0801C816:\n\
	adds r0, r7, #0\n\
_0801C818:\n\
	bl scriptstack_push\n\
	movs r0, #0\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_0801C828: .4byte gScript\n\
_0801C82C: .4byte 0x00008299\n\
    ");
}
#endif

u16 sub_0801C830(s32* sp) {
    scriptstack_push(gScript.party_count);
    return 0;
}

#ifdef NONMATCHING
u16 sub_0801C84C(s32* sp) {
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
u16 sub_0801C84C(s32* sp) {
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

u16 sub_0801C88C(s32* sp) {
    s16 status;
    u16 idx;

    idx = scriptstack_peek(sp, 0);
    if ((u32)(idx * 0x10000 - 0x10000) >> 0x10 < 0xf) {
        status = sub_0802B8C4(idx);
        scriptstack_push(status);
    } else {
        scriptstack_push(-1);
    }
    return 0;
}

#ifdef NONMATCHING
u16 sub_0801C8C8(s32* sp) {
    s16 status;
    u16 idx;

    idx = scriptstack_peek(sp, 0);
    if (idx * 0x10000 - 0x10000 >> 0x10 < 0xf) {
        status = sub_0802B8C4(idx);
        if (status == -1) {
            sub_080296E4(idx);
        }
    }
    if (gScript.party_count > 1) {
        sub_080028BC(0x3e3, 1);
    }
    return 0;
}
#else
NAKED
u16 sub_0801C8C8(s32* sp) {
    asm_unified("\n\
	push {r4, lr}\n\
	movs r1, #0\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r4, r0, #0x10\n\
	ldr r1, _0801C914 @ =0xFFFF0000\n\
	adds r0, r0, r1\n\
	lsrs r0, r0, #0x10\n\
	cmp r0, #0xe\n\
	bhi _0801C8F6\n\
	adds r0, r4, #0\n\
	bl sub_0802B8C4\n\
	lsls r0, r0, #0x10\n\
	asrs r0, r0, #0x10\n\
	movs r1, #1\n\
	rsbs r1, r1, #0\n\
	cmp r0, r1\n\
	bne _0801C8F6\n\
	adds r0, r4, #0\n\
	bl sub_080296E4\n\
_0801C8F6:\n\
	ldr r0, _0801C918 @ =gScript\n\
	ldr r1, _0801C91C @ =0x00008299\n\
	adds r0, r0, r1\n\
	ldrb r0, [r0]\n\
	cmp r0, #1\n\
	bls _0801C90A\n\
	ldr r0, _0801C920 @ =0x000003E3\n\
	movs r1, #1\n\
	bl sub_080028BC\n\
_0801C90A:\n\
	movs r0, #0\n\
	pop {r4}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_0801C914: .4byte 0xFFFF0000\n\
_0801C918: .4byte gScript\n\
_0801C91C: .4byte 0x00008299\n\
_0801C920: .4byte 0x000003E3\n\
    ");
}
#endif

u16 sub_0801C924(s32* sp) {
    u16 mode;

    mode = scriptstack_peek(sp, 0);
    if (mode < 4) {
        sub_0802AA78(mode);
        if (sub_08002970(0x2de) || sub_08002970(0x477)) {
            sub_08033BCC(0);
            sub_0802B4D8();
        } else {
            sub_08028040();
        }
    }
    return 0;
}

#ifdef NONMATCHING
u16 sub_0801C970(s32* sp) {
    s16 status;
    u16 idx;

    idx = scriptstack_peek(sp, 0);
    if ((u32)(idx * 0x10000 - 0x10000 >> 0x10) < 0xf) {
        status = sub_0802B8C4(idx);
        if (status != -1) {
            sub_08029B18(status);
        }
    }
    if (gScript.party_count == 1) {
        sub_080028BC(0x3e3, 0);
    }
    return 0;
}
#else
NAKED
u16 sub_0801C970(s32* sp) {
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
	ldr r0, _0801C9C0 @ =gScript\n\
	ldr r1, _0801C9C4 @ =0x00008299\n\
	adds r0, r0, r1\n\
	ldrb r0, [r0]\n\
	cmp r0, #1\n\
	bne _0801C9B4\n\
	ldr r0, _0801C9C8 @ =0x000003E3\n\
	movs r1, #0\n\
	bl sub_080028BC\n\
_0801C9B4:\n\
	movs r0, #0\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_0801C9BC: .4byte 0xFFFF0000\n\
_0801C9C0: .4byte gScript\n\
_0801C9C4: .4byte 0x00008299\n\
_0801C9C8: .4byte 0x000003E3\n\
    ");
}
#endif

u16 sub_0801C9CC(s32* sp) {
    u16 clear;

    clear = scriptstack_peek(sp, 0);
    if (clear == 1)
        gScript._82b6 = 0;
    else if (clear == 0)
        gScript._82b6 = 1;
    return 0;
}

u16 sub_0801CA14(s32* sp) {
    u16 idx;
    u16 val;

    idx = scriptstack_peek(sp, 1);
    val = scriptstack_peek(sp, 0) & 1;
    if (idx < 0x400) {
        sub_080029F8(idx, val);
    }
    return 0;
}

u16 sub_0801CA48(s32* sp) {
    u16 val;
    u16 idx;

    idx = scriptstack_peek(sp, 0);
    if (idx < 0x400) {
        val = sub_08002A30(idx);
        scriptstack_push(val);
    }
    return 0;
}

u16 sub_0801CA74(s32* sp) {
    s16 idx;

    idx = scriptstack_peek(sp, 0);
    sub_0802AF24(idx);
    return 0;
}

u16 sub_0801CA8C(s32* sp) {
    u16 idx;

    idx = scriptstack_peek(sp, 0);
    gScript._82b4 = idx * 60;
    return 0;
}

u16 sub_0801CAB4(s32* sp) {
    s32 val = scriptstack_peek(sp, 0);
    sub_0802A05C(val);
    return 0;
}

u16 sub_0801CAC8(s32* sp) {
    scriptstack_push(gSave.dp_bank);
    return 0;
}

u16 sub_0801CADC(s32* sp) {
    s16 val;
    u16 idx;

    idx = scriptstack_peek(sp, 0);
    val = sub_0802B954(idx);
    scriptstack_push(val);
    return 0;
}

u16 sub_0801CAFC(s32* sp) {
    u32 val;
    u32 idx;

    if (gScript.state_8)
        idx = gScript._829b;
    else
        idx = gScript._829c;

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

#ifdef NONMATCHING
u16 sub_0801CB48(s32* sp) {
    s16 status;
    u16 idx;

    idx = scriptstack_peek(sp, 0);
    if ((u32)(idx * 0x10000 - 0x10000) >> 0x10 < 0xf) {
        status = sub_0802B8C4(idx);
        if (status == -1) {
            sub_080296E4(idx);
        }
    }
    if (gScript.party_count > 1) {
        sub_080028BC(0x3e3, 1);
    }
    return 0;
}
#else
NAKED
u16 sub_0801CB48(s32* sp) {
    asm_unified("\n\
	push {r4, lr}\n\
	movs r1, #0\n\
	bl scriptstack_peek\n\
	lsls r0, r0, #0x10\n\
	lsrs r4, r0, #0x10\n\
	ldr r1, _0801CB94 @ =0xFFFF0000\n\
	adds r0, r0, r1\n\
	lsrs r0, r0, #0x10\n\
	cmp r0, #0xe\n\
	bhi _0801CB76\n\
	adds r0, r4, #0\n\
	bl sub_0802B8C4\n\
	lsls r0, r0, #0x10\n\
	asrs r0, r0, #0x10\n\
	movs r1, #1\n\
	rsbs r1, r1, #0\n\
	cmp r0, r1\n\
	bne _0801CB76\n\
	adds r0, r4, #0\n\
	bl sub_080296E4\n\
_0801CB76:\n\
	ldr r0, _0801CB98 @ =gScript\n\
	ldr r1, _0801CB9C @ =0x00008299\n\
	adds r0, r0, r1\n\
	ldrb r0, [r0]\n\
	cmp r0, #1\n\
	bls _0801CB8A\n\
	ldr r0, _0801CBA0 @ =0x000003E3\n\
	movs r1, #1\n\
	bl sub_080028BC\n\
_0801CB8A:\n\
	movs r0, #0\n\
	pop {r4}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_0801CB94: .4byte 0xFFFF0000\n\
_0801CB98: .4byte gScript\n\
_0801CB9C: .4byte 0x00008299\n\
_0801CBA0: .4byte 0x000003E3\n\
    ");
}
#endif

struct Unk {
    u32 lo : 16;
    u32 hi : 16;
};
void sub_08029684(u32, u32, u32, Unk* u);

u16 sub_0801CBA4(s32* sp) {
    u16 a;
    u16 b;
    u16 c;
    u16 d;
    Unk u;

    a = scriptstack_peek(sp, 4);
    b = scriptstack_peek(sp, 3);
    c = scriptstack_peek(sp, 2);
    u.lo = c;
    d = scriptstack_peek(sp, 1);
    u.hi = d;
    c = scriptstack_peek(sp, 0);
    u.lo += 8;
    if (a < 5) {
        sub_08029684(a, b, c, &u);
    }
    return 0;
}

u16 sub_0801CC28(s32* sp) {
    u16 idx;

    idx = scriptstack_peek(sp, 0) & 0xFFFF;
    if (idx == 1) {
        gScript._82b8_20 = 0;
    } else if (idx == 0) {
        gScript._82b8_20 = 1;
    }
    return 0;
}

#ifdef NONMATCHING
u16 sub_0801CC70(s32* sp) {
    u16 temp;
    u16 chrNum;
    s16 chrLvl;
    s16 sprNum;
    u32 a;
    u32 b;
    u8 auStack32 [8];
    
    chrNum = scriptstack_peek(sp, 2);
    chrLvl = scriptstack_peek(sp, 1);
    sprNum = scriptstack_peek(sp, 0);
    if ((u16)(chrNum - 1) < 0xf) {
        if (chrLvl != -1) {
            sub_0805BB34(auStack32, chrNum);
            temp = sub_0802B8C4(chrNum);
            if ((s16)temp != -1) {
                a = get_party_member(temp);
                b = sub_0802B874(temp);
                sub_0802941C(a, b);
                sub_080294DC(a, b);
                sub_080295E8(a, temp);
            }
        }
        if (sprNum != -1) {
            gUnknown_02004110[chrNum]._1 = sprNum;
        }
    }
    return 0;
}
#else
NAKED
u16 sub_0801CC70(s32* sp) {
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
	bl get_party_member\n\
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
	ldr r1, _0801CD1C @ =gUnknown_02004110\n\
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
_0801CD1C: .4byte gUnknown_02004110\n\
    ");
}
#endif

NAKED
u16 sub_0801CD20(s32* sp) {
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
	ldr r1, _0801CD68 @ =gUnknown_080E5108\n\
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
_0801CD68: .4byte gUnknown_080E5108\n\
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
	bl get_party_member\n\
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

u16 sub_0801CE00(s32* sp) {
    u16 idx;
    PartyMember* pm;
    
    idx = scriptstack_peek(sp, 4);
    pm = get_party_member(idx);
    scriptstack_set(sp, 3, pm->curHP);
    scriptstack_set(sp, 2, pm->maxHP);
    scriptstack_set(sp, 1, pm->curPP);
    scriptstack_set(sp, 0, pm->maxPP);
    return 0;
}

u16 sub_0801CE48(s32* sp) {
    gSave._744 = scriptstack_peek(sp, 0);
    return 0;
}

u16 sub_0801CE68(s32* sp) {
    scriptstack_push(gSave._744);
    return 0;
}

}
