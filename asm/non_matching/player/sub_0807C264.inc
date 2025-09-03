	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807C31E
	ldr r0, _0807C2B8
	ldrh r0, [r0, #0xa]
	cmp r0, #4
	bne _0807C2BC
	ldr r1, [r4, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r5, r1, r3
	movs r2, #0
	ldrsh r0, [r5, r2]
	adds r6, r4, r0
	adds r3, #0x80
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #1
	cmp r1, r0
	bge _0807C2AE
	adds r1, r0, #0
_0807C2AE:
	ldr r2, [r5, #4]
	adds r0, r6, #0
	bl _call_via_r2
	b _0807C306
	.align 2, 0
_0807C2B8: .4byte gEncounter
_0807C2BC:
	ldr r1, [r4, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r6, r1, r3
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r7, r4, r0
	adds r3, #0x80
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r1, [r4, #0x1c]
	movs r3, #0xd0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, r5
	bge _0807C2F6
	adds r0, r5, #0
_0807C2F6:
	movs r1, #1
	cmp r1, r0
	bge _0807C2FE
	adds r1, r0, #0
_0807C2FE:
	ldr r2, [r6, #4]
	adds r0, r7, #0
	bl _call_via_r2
_0807C306:
	movs r3, #0x86
	lsls r3, r3, #2
	adds r0, r4, r3
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	adds r1, #0x68
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
_0807C31E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
