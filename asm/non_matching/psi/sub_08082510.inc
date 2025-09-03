	.syntax unified
sub_08082510:
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl __4Base
	ldr r0, _08082620
	str r0, [r5, #0x1c]
	lsls r4, r4, #3
	ldr r0, _08082624
	adds r4, r4, r0
	str r4, [r5, #0x24]
	str r6, [r5, #0x28]
	movs r0, #0
	mov r8, r0
	mov r0, r8
	strh r0, [r5, #0x2c]
	strh r0, [r5, #0x2e]
	ldrb r0, [r4, #1]
	strh r0, [r5, #0x30]
	mov r0, r8
	strh r0, [r5, #0x32]
	bl get__13BattleManager
	adds r6, r0, #0
	add r4, sp, #4
	adds r0, r4, #0
	bl __4Base
	ldr r0, _08082628
	mov sb, r0
	ldr r0, _0808262C
	str r0, [sp, #0x20]
	mov r0, r8
	strh r0, [r4, #0x20]
	ldr r0, _08082630
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08082634
	str r0, [sp, #0x20]
	ldr r0, _08082638
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0808263C
	str r0, [sp, #0x20]
	ldr r0, _08082640
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r4, sp, #4
	adds r0, r4, #0
	bl __4Base
	ldr r0, _08082644
	str r0, [sp, #0x20]
	mov r0, r8
	strh r0, [r4, #0x20]
	ldr r0, _08082648
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08082620: .4byte vt_09F83810
_08082624: .4byte gUnknown_080E1708
_08082628: .4byte _vt.3Unk
_0808262C: .4byte _vt.10RoundBegin
_08082630: .4byte gUnknown_0810C608
_08082634: .4byte _vt.13UnitTurnBegin
_08082638: .4byte gUnknown_0810C610
_0808263C: .4byte _vt.11UnitTurnEnd
_08082640: .4byte gUnknown_0810C618
_08082644: .4byte _vt.8RoundEnd
_08082648: .4byte gUnknown_0810C620
	.syntax divided
