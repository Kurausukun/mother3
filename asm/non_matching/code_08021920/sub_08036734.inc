	.syntax unified
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	cmp r0, r5
	beq _08036774
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, r5, #0
	bl get_obj_direct
	adds r2, r0, #0
	ldr r1, [r4]
	ldr r0, [r2]
	cmp r1, r0
	beq _08036774
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r0, r0, r1
	movs r3, #2
	ldrsh r1, [r4, r3]
	movs r3, #2
	ldrsh r2, [r2, r3]
	subs r1, r1, r2
	bl sub_0803329C
	lsrs r0, r0, #4
	b _08036776
_08036774:
	movs r0, #0
_08036776:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
