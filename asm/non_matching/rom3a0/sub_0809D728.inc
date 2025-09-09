	.syntax unified
sub_0809D728:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0x58]
	cmp r0, #4
	bhi _0809D7CE
	lsls r0, r0, #2
	ldr r1, _0809D73C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809D73C: .4byte _0809D740
_0809D740:
	.4byte _0809D7CE
	.4byte _0809D79C
	.4byte _0809D754
	.4byte _0809D7B6
	.4byte _0809D7CE
_0809D754:
	ldr r0, [r6, #0x1c]
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r6, r4
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809D79C
	ldr r1, [r6, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	movs r1, #3
	b _0809D7AE
_0809D79C:
	ldr r1, [r6, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	movs r1, #4
_0809D7AE:
	movs r2, #0
	bl _call_via_r3
	b _0809D7CE
_0809D7B6:
	ldr r1, [r6, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r3, [r1, #4]
	movs r1, #4
	movs r2, #0
	bl _call_via_r3
_0809D7CE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
