	.syntax unified
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	adds r6, r4, #0
	ldr r7, _08036D9C
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0800289C
	cmp r4, #1
	beq _08036DAE
	cmp r4, #1
	bgt _08036DA0
	cmp r4, #0
	beq _08036DAA
	b _08036DD0
	.align 2, 0
_08036D9C: .4byte gUnknown_094383E4
_08036DA0:
	cmp r6, #2
	beq _08036DB8
	cmp r6, #3
	beq _08036DC8
	b _08036DD0
_08036DAA:
	adds r0, r7, #0
	b _08036DBA
_08036DAE:
	ldr r0, _08036DB4
	b _08036DBA
	.align 2, 0
_08036DB4: .4byte gUnknown_0994BC30
_08036DB8:
	ldr r0, _08036DC4
_08036DBA:
	adds r1, r5, #0
	bl sub_0800289C
	b _08036DD0
	.align 2, 0
_08036DC4: .4byte gUnknown_09A012B8
_08036DC8:
	ldr r0, _08036DD8
	adds r1, r5, #0
	bl sub_0800289C
_08036DD0:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08036DD8: .4byte gUnknown_09A36AA0
	.syntax divided
