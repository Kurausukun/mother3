	.syntax unified
sub_08026724:
	push {lr}
	ldr r2, _08026754
	ldrb r0, [r2]
	cmp r0, #0
	bne _08026750
	ldrb r0, [r2, #5]
	cmp r0, #3
	bne _08026750
	ldr r1, [r2, #0xc]
	ldr r0, _08026758
	cmp r1, r0
	bne _08026750
	movs r0, #0x10
	ldrsh r1, [r2, r0]
	ldr r0, _0802675C
	cmp r1, r0
	bne _08026750
	movs r0, #1
	strb r0, [r2, #5]
	movs r0, #0xac
	lsls r0, r0, #1
	strh r0, [r2, #0xc]
_08026750:
	pop {r0}
	bx r0
	.align 2, 0
_08026754: .4byte gEncounter
_08026758: .4byte 0x01560155
_0802675C: .4byte 0x00000157
	.syntax divided
