	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, [sp, #0x1c]
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsrs r6, r1, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r3, #0
	bl sub_08022F14
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r4, #0
	cmp r4, r7
	bhs _08039A68
_08039A4A:
	ldrh r0, [r5]
	adds r1, r6, #0
	mov r2, r8
	mov r3, sb
	bl sub_080088AC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #2
	cmp r4, r7
	blo _08039A4A
_08039A68:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
