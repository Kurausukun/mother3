	.syntax unified
	push {lr}
	sub sp, #4
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sp
	strh r1, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_08011F74
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08011F58
	ldr r0, _08011F50
	ldr r1, _08011F54
	movs r2, #0x80
	lsls r2, r2, #4
	bl sub_08001B18
	b _08011F64
	.align 2, 0
_08011F50: .4byte gUnknown_02016078
_08011F54: .4byte 0x06006000
_08011F58:
	ldr r0, _08011F6C
	ldr r1, _08011F70
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r1, #1
	strh r1, [r0]
_08011F64:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08011F6C: .4byte gSomeBlend
_08011F70: .4byte 0x00002C90
	.syntax divided
