	.syntax unified
sub_080B4B90:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r1, [r4, #0x1c]
	movs r0, #0xb0
	lsls r0, r0, #1
	mov r8, r0
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08073198
	movs r0, #5
	bl setsleep
	ldr r1, [r4, #0x1c]
	movs r0, #0xac
	lsls r0, r0, #2
	adds r6, r1, r0
	movs r2, #0
	ldrsh r5, [r6, r2]
	adds r5, r4, r5
	add r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r4, r4, r0
	ldr r1, [r1, #4]
	adds r0, r4, #0
	bl _call_via_r1
	bl dynaCastMonster
	adds r1, r0, #0
	ldr r2, [r6, #4]
	adds r0, r5, #0
	bl _call_via_r2
	movs r0, #0x28
	bl setsleep
	bl sub_08073270
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
