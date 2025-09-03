	.syntax unified
sub_08032824:
	push {r4, r5, lr}
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r0, #0xc7
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08032878
	mov r0, ip
	adds r0, #0xc9
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #3
	beq _08032878
	cmp r0, #1
	bne _0803285C
	ldr r0, _08032854
	ldr r1, _08032858
	b _08032860
	.align 2, 0
_08032854: .4byte gSomeBlend
_08032858: .4byte 0x000121A8
_0803285C:
	ldr r0, _08032880
	ldr r1, _08032884
_08032860:
	adds r0, r0, r1
	ldr r4, [r0]
	mov r0, ip
	adds r0, #0xb8
	ldrb r1, [r0]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	lsls r3, r5, #0x10
	asrs r3, r3, #0x10
	adds r0, r4, #0
	bl sub_08032888
_08032878:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08032880: .4byte gSomeBlend
_08032884: .4byte 0x000121AC
	.syntax divided
