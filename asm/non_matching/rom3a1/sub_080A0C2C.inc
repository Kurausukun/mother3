	.syntax unified
sub_080A0C2C:
	push {r4, r5, r6, lr}
	sub sp, #0x3c
	adds r6, r0, #0
	adds r5, r1, #0
	add r0, sp, #4
	movs r1, #0xbf
	bl __5SoundUs
	add r0, sp, #4
	movs r1, #0
	bl play__5Soundi
	movs r0, #0xb8
	adds r1, r5, #0
	adds r2, r5, #0
	bl sub_08073198
	movs r0, #0x48
	bl setsleep
	add r0, sp, #4
	movs r1, #0
	bl clear__5Soundi
	adds r0, r6, #0
	adds r1, r5, #0
	bl onDamage__6ActionP4Unit
	bl sub_08073270
	b _080A0C88
_080A0C6A:
	ldr r1, [r6, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	mov r2, sp
	strb r3, [r2]
	ldr r4, [r1, #4]
	adds r1, r5, #0
	movs r2, #3
	movs r3, #0x64
	bl _call_via_r4
_080A0C88:
	ldr r1, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #3
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	beq _080A0C6A
	b _080A0CC6
_080A0CA8:
	ldr r1, [r6, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	mov r2, sp
	strb r3, [r2]
	ldr r4, [r1, #4]
	adds r1, r5, #0
	movs r2, #4
	movs r3, #0x64
	bl _call_via_r4
_080A0CC6:
	ldr r1, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #4
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	beq _080A0CA8
	b _080A0D04
_080A0CE6:
	ldr r1, [r6, #0x1c]
	movs r0, #0x94
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	mov r2, sp
	strb r3, [r2]
	ldr r4, [r1, #4]
	adds r1, r5, #0
	movs r2, #0x20
	movs r3, #0x64
	bl _call_via_r4
_080A0D04:
	ldr r1, [r5, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	movs r1, #0x20
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	beq _080A0CE6
	add r0, sp, #4
	movs r1, #2
	bl _._5Sound
	add sp, #0x3c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
