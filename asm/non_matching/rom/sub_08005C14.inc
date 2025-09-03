	.syntax unified
sub_08005C14:
	push {lr}
	ldr r1, _08005C30
	ldrh r0, [r1]
	cmp r0, #0
	beq _08005C22
	subs r0, #1
	strh r0, [r1]
_08005C22:
	ldrh r1, [r1]
	cmp r1, #0
	bne _08005C2C
	ldr r0, _08005C34
	strh r1, [r0]
_08005C2C:
	pop {r0}
	bx r0
	.align 2, 0
_08005C30: .4byte gUnknown_03004B02
_08005C34: .4byte gUnknown_03004B00
	.syntax divided
