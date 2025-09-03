	.syntax unified
sub_08016B6C:
	push {lr}
	ldr r2, _08016BA4
	ldrh r0, [r2, #0x24]
	movs r0, #0
	strh r0, [r2, #0x24]
	ldr r0, _08016BA8
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _08016BAC
	ldrb r1, [r2, #2]
	lsls r0, r1, #0x19
	cmp r0, #0
	bge _08016BA0
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #2]
	ldr r0, _08016BB0
	ldrb r0, [r0]
	cmp r0, #7
	bne _08016BA0
	bl sub_08005C14
_08016BA0:
	pop {r0}
	bx r0
	.align 2, 0
_08016BA4: .4byte gSomeBlend
_08016BA8: .4byte 0x000121BB
_08016BAC: .4byte gGame
_08016BB0: .4byte gUnknown_020051E4
	.syntax divided
