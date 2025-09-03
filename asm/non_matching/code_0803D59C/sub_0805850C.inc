	.syntax unified
	push {lr}
	bl sub_08058644
	bl clear_gfx
	bl sub_08058C54
	ldr r0, _08058530
	ldrh r0, [r0]
	cmp r0, #0
	bne _08058526
	bl sub_08058538
_08058526:
	ldr r1, _08058534
	movs r0, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08058530: .4byte gUnknown_02004850
_08058534: .4byte gUnknown_03004B00
	.syntax divided
