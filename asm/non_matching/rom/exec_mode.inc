	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080016E4
	ldr r0, _08005120
	ldrb r0, [r0]
	cmp r0, #0xf
	bhi _08005196
	lsls r0, r0, #2
	ldr r1, _08005124
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005120: .4byte gGame
_08005124: .4byte _08005128
_08005128:
	.4byte _08005168
	.4byte _08005170
	.4byte _08005196
	.4byte _08005196
	.4byte _08005196
	.4byte _08005196
	.4byte _08005196
	.4byte _08005196
	.4byte _08005178
	.4byte _08005196
	.4byte _08005196
	.4byte _08005196
	.4byte _08005196
	.4byte _08005180
	.4byte _08005188
	.4byte _08005190
_08005168:
	adds r0, r4, #0
	bl sub_0800B00C
	b _08005196
_08005170:
	adds r0, r4, #0
	bl sub_0800BB54
	b _08005196
_08005178:
	adds r0, r4, #0
	bl sub_08026DE0
	b _08005196
_08005180:
	adds r0, r4, #0
	bl sub_08026E3C
	b _08005196
_08005188:
	adds r0, r4, #0
	bl sub_08037DB0
	b _08005196
_08005190:
	adds r0, r4, #0
	bl mode_debug_menu
_08005196:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
