	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	adds r7, r1, #0
	adds r6, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, _08021C00
	cmp sb, r0
	beq _08021C04
	adds r0, #1
	cmp sb, r0
	beq _08021CC0
	b _08021D88
	.align 2, 0
_08021C00: .4byte 0x0000FF09
_08021C04:
	movs r2, #1
	rsbs r2, r2, #0
	mov r0, sp
	movs r1, #0x44
	bl sub_08001B54
	adds r4, r7, #0
	mov r5, sp
	movs r0, #0x42
	add r0, sp
	mov r8, r0
	movs r1, #0xff
	lsls r1, r1, #8
	mov sl, r1
_08021C20:
	ldrh r2, [r4]
	adds r1, r2, #0
	ldr r3, _08021C5C
	cmp r1, r3
	beq _08021C6C
	cmp r1, sl
	beq _08021C6C
	ldr r0, _08021C60
	cmp r1, r0
	beq _08021C6C
	adds r0, #2
	cmp r1, r0
	beq _08021C6C
	subs r0, #4
	cmp r1, r0
	bls _08021C64
	ldrh r0, [r4]
	adds r1, r4, #2
	adds r2, r5, #0
	bl sub_08021B64
	adds r5, r0, #0
	ldrh r0, [r4]
	bl sub_08022ED0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #2
	adds r4, r4, r0
	b _08021C20
	.align 2, 0
_08021C5C: .4byte 0x0000FFFF
_08021C60: .4byte 0x0000FF01
_08021C64:
	strh r2, [r5]
	adds r4, #2
	adds r5, #2
	b _08021C20
_08021C6C:
	mov r0, sp
	mov r1, r8
	bl sub_08023054
	lsls r1, r0, #0x10
	ldr r0, _08021CB0
	ldrb r0, [r0]
	cmp r0, #4
	beq _08021C80
	b _08021D88
_08021C80:
	lsrs r1, r1, #0x11
	movs r0, #0x78
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r3, _08021CB4
	ldr r4, _08021CB8
	adds r0, r3, r4
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x10
	cmp r2, r0
	bls _08021CA6
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08021CA6:
	rsbs r1, r2, #0
	ldr r2, _08021CBC
	adds r0, r3, r2
	strh r1, [r0]
	b _08021D88
	.align 2, 0
_08021CB0: .4byte gGame
_08021CB4: .4byte gSomeBlend
_08021CB8: .4byte 0x00005398
_08021CBC: .4byte 0x000053A6
_08021CC0:
	movs r2, #1
	rsbs r2, r2, #0
	mov r0, sp
	movs r1, #0x44
	bl sub_08001B54
	adds r4, r7, #0
	mov r5, sp
	movs r3, #0x42
	add r3, sp
	mov r8, r3
	movs r0, #0xff
	lsls r0, r0, #8
	mov sl, r0
_08021CDC:
	ldrh r2, [r4]
	adds r1, r2, #0
	ldr r3, _08021D18
	cmp r1, r3
	beq _08021D28
	cmp r1, sl
	beq _08021D28
	ldr r0, _08021D1C
	cmp r1, r0
	beq _08021D28
	adds r0, #2
	cmp r1, r0
	beq _08021D28
	subs r0, #4
	cmp r1, r0
	bls _08021D20
	ldrh r0, [r4]
	adds r1, r4, #2
	adds r2, r5, #0
	bl sub_08021B64
	adds r5, r0, #0
	ldrh r0, [r4]
	bl sub_08022ED0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	adds r0, #2
	adds r4, r4, r0
	b _08021CDC
	.align 2, 0
_08021D18: .4byte 0x0000FFFF
_08021D1C: .4byte 0x0000FF01
_08021D20:
	strh r2, [r5]
	adds r4, #2
	adds r5, #2
	b _08021CDC
_08021D28:
	mov r0, sp
	mov r1, r8
	bl sub_08023054
	lsls r1, r0, #0x10
	ldr r0, _08021D7C
	ldrb r0, [r0]
	cmp r0, #4
	bne _08021D88
	lsrs r1, r1, #0x11
	movs r0, #0x78
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _08021D80
	ldr r4, _08021D84
	adds r0, r0, r4
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x12
	movs r4, #0xa0
	lsls r4, r4, #0xc
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	cmp r2, r0
	bls _08021D66
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08021D66:
	cmp r2, #0
	beq _08021DB0
	movs r1, #0xfe
	lsls r1, r1, #4
	adds r0, r1, #0
	strh r0, [r6]
	adds r6, #2
	strh r2, [r6]
	adds r6, #2
	b _08021DB0
	.align 2, 0
_08021D7C: .4byte gGame
_08021D80: .4byte gSomeBlend
_08021D84: .4byte 0x00005398
_08021D88:
	mov r2, sb
	strh r2, [r6]
	adds r6, #2
	mov r0, sb
	bl sub_08022ED0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r1, #0
	cmp r1, r2
	bhs _08021DB0
_08021D9E:
	ldrh r0, [r7]
	strh r0, [r6]
	adds r7, #2
	adds r6, #2
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	blo _08021D9E
_08021DB0:
	adds r0, r6, #0
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
