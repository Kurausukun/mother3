	.syntax unified
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08009CB0
	ldr r2, _08009CB4
	adds r0, r3, r2
	ldrb r2, [r0]
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _08009CA4
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08009CA4:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08009CBC
	ldr r2, _08009CB8
	b _08009CBE
	.align 2, 0
_08009CB0: .4byte gSomeBlend
_08009CB4: .4byte 0x00011D16
_08009CB8: .4byte 0x00011D0C
_08009CBC:
	ldr r2, _08009CD4
_08009CBE:
	adds r0, r3, r2
	ldr r2, [r0]
	lsls r0, r4, #5
	lsls r1, r1, #0xa
	adds r0, r0, r1
	adds r2, r2, r0
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08009CD4: .4byte 0x00011D90
	.syntax divided
