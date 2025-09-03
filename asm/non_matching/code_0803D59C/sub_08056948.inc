	.syntax unified
	push {lr}
	bl snd_vsync
	movs r0, #0
	bl sub_080569BC
	ldr r0, _08056994
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08056974
	ldr r0, _08056998
	movs r1, #0xc4
	lsls r1, r1, #6
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08056974
	movs r0, #1
	bl sub_080569BC
_08056974:
	ldr r0, _0805699C
	ldrh r0, [r0]
	cmp r0, #0
	beq _08056980
	bl snd_main
_08056980:
	ldr r2, _080569A0
	movs r0, #0
	strh r0, [r2]
	ldr r1, _080569A4
	movs r0, #1
	strh r0, [r1]
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08056994: .4byte gUnknown_02015DA0
_08056998: .4byte gSomeBlend
_0805699C: .4byte gUnknown_03004B00
_080569A0: .4byte 0x04000208
_080569A4: .4byte gUnknown_03007FF8
	.syntax divided
