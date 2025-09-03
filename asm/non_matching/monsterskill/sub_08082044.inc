	.syntax unified
sub_08082044:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl __6ActionP4Unit
	ldr r0, _0808206C
	str r0, [r5, #0x1c]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	ldr r1, _08082070
	adds r0, r0, r1
	str r0, [r5, #0x48]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0808206C: .4byte vt_09F83548
_08082070: .4byte gMonsterSkillData
	.syntax divided
