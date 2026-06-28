    .syntax unified
sub_0807335C:
	push {r4, r5, r6, lr}
	sub sp, #0x38
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _0807343C
	bl sub_08074614
	cmp r0, #0
	beq _0807338C
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	adds r1, #0x90
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080733A6
_0807338C:
	mov r0, sp
	adds r1, r6, #0
	bl __5SoundUs
	mov r0, sp
	movs r1, #0
	bl play__5Soundi
	mov r0, sp
	movs r1, #2
	bl _._5Sound
	b _0807343C
_080733A6:
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #2
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	movs r5, #0x96
	lsls r5, r5, #2
	b _080733D6
_080733CE:
	adds r4, r0, #0
	movs r0, #1
	bl setsleep
_080733D6:
	subs r5, #1
	cmp r5, #0
	ble _08073408
	bl sub_08074614
	ldr r2, [r0, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	movs r1, #2
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r0, r1, #0
	cmp r4, #1
	beq _080733CE
	cmp r1, #1
	bne _080733CE
_08073408:
	mov r0, sp
	adds r1, r6, #0
	bl __5SoundUs
	mov r0, sp
	movs r1, #0
	bl play__5Soundi
	bl sub_08074614
	ldr r1, [r0, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	mov r0, sp
	bl setTempo__5Soundi
	mov r0, sp
	movs r1, #2
	bl _._5Sound
_0807343C:
	add sp, #0x38
	pop {r4, r5, r6}
	pop {r0}
	bx r0
    .syntax divided
