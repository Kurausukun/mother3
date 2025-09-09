	.syntax unified
sub_08099A88:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	b _08099AAA
_08099A8E:
	ldr r1, [r6, #0x1c]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099B9C
_08099AAA:
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r0, r6, r3
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	ldr r1, _08099BA0
	cmp r0, r1
	ble _08099A8E
	ldr r1, [r6, #0x1c]
	movs r0, #0x9c
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099B9C
	ldr r1, [r6, #0x1c]
	movs r3, #0xbe
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099B40
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r4, r6, r3
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r4]
	ldr r4, [r1, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r2, #0
	ldrsh r5, [r4, r2]
	adds r5, r1, r5
	movs r0, #0x19
	bl sub_08073F88
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
_08099B40:
	ldr r1, [r6, #0x1c]
	adds r1, #0xb0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r6, #0x1c]
	adds r2, #0xb8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r6, r0
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r1, r6, r3
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r0, _08099BA4
	adds r4, r6, r0
	ldr r1, [r4]
	movs r0, #0x90
	bl getMonsterSkill
	bl triggerMonsterSkill
	ldr r0, _08099BA8
	ldr r1, [r4]
	bl getMonsterSkill
	bl triggerMonsterSkill
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
_08099B88:
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08099BB6
_08099B9C:
	movs r0, #0
	b _08099BDA
	.align 2, 0
_08099BA0: .4byte 0x0000031F
_08099BA4: .4byte 0x00000F94
_08099BA8: .4byte 0x000001BD
_08099BAC:
	ldr r1, [r6, #0x1c]
	movs r3, #0xbc
	lsls r3, r3, #2
	adds r1, r1, r3
	b _08099B88
_08099BB6:
	movs r3, #0xf9
	lsls r3, r3, #4
	adds r0, r6, r3
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	ldr r1, _08099BE0
	cmp r0, r1
	ble _08099BAC
	movs r0, #1
_08099BDA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08099BE0: .4byte 0x0000063F
	.syntax divided
