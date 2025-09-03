	.syntax unified
sub_08071BA0:
	push {r4, r5, lr}
	sub sp, #4
	mov ip, r0
	adds r0, #0x94
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r2, _08071BF4
	mov r4, ip
	adds r4, #0x98
	ldrb r0, [r4]
	lsrs r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, ip
	adds r2, #0x96
	movs r5, #0
	ldrsh r3, [r2, r5]
	mov r2, sp
	adds r1, r1, r0
	mov r0, sp
	strh r1, [r0]
	strh r3, [r2, #2]
	mov r0, ip
	mov r1, sp
	bl sub_0806DB74
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3f
	bls _08071BEA
	movs r0, #0
	strb r0, [r4]
_08071BEA:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08071BF4: .4byte gUnknown_080C696C
	.syntax divided
