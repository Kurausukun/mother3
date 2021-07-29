#include "script.h"

extern "C" {

struct Sprite {
    u8 filler[0x34];
    u32 speed;
    u8 _38[0x92];
    u8 _ca;
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
    u32 _8;
    u8 _9[0x220 - 0xc];
    u16 _220;
};
extern struct_02004860 gUnknown_02004860;

// struct struct_02004860 {
//     u8 _0[0x8];
//     u8 _8;
// };
// extern struct_02004860 gUnk_02004860;

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
u32 sub_08002970(u32);
u32 sub_080029BC(u32);
u32 sub_080029D4(u32);
void sub_080218B0(u32, u32);
void sub_080028F4(u32, u32);
u32 sub_08002998(u32);
void sub_0802A038(s32);
void sub_0802A0F8(u32, u32);

// verify if function name is correct
inline void scriptstack_push() {
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
    if ((gScript.state_1) == 5) {
        if ((gScript.state_8) == 0) {
            sub_0800AD6C();
        }
        sub_08023EF8();
    }
    return 1;
}

u16 sub_0801BF48(s32* sp) {
    if ((gScript.state_1) != 5)
        return 0;

    gScript.delay = scriptstack_peek(sp, 0);
    return 1;
}

u16 sub_0801BF84(s32* sp) {
    s32 idx;
    Sprite* sprite;

    if ((gScript.state_1) != 5)
        return 0;

    idx = scriptstack_peek(sp, 0);
    sprite = sub_0802718C(idx);
    if (sprite == NULL || sprite->speed == 0)
        return 0;

    scriptstack_push();
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
        scriptstack_push();
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
    if ((sprite == 0) || (sprite->_ca << 28 < 0))
        return 0;

    scriptstack_push();
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
            gUnknown_02004860._220 = idx;
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
    scriptstack_push(gUnknown_02004860._8);
    return 0;
}

u16 sub_0801C774(s32* sp) {
    u16 idx;
    u32 val;

    idx = scriptstack_peek(sp,1);
    val = scriptstack_peek(sp,0);
    sub_0802A0F8(idx, val);
    return 0;
}

}
