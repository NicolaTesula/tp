/* 8009AB48 00097A88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009AB4C 00097A8C  7C 08 02 A6 */	mflr r0
/* 8009AB50 00097A90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009AB54 00097A94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009AB58 00097A98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009AB5C 00097A9C  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009AB60 00097AA0  38 80 00 15 */	li r4, 0x15
/* 8009AB64 00097AA4  38 A0 00 01 */	li r5, 1
/* 8009AB68 00097AA8  4B F9 84 C9 */	bl getItem__17dSv_player_item_cCFib
/* 8009AB6C 00097AAC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8009AB70 00097AB0  20 00 00 80 */	subfic r0, r0, 0x80
/* 8009AB74 00097AB4  7C 00 00 34 */	cntlzw r0, r0
/* 8009AB78 00097AB8  54 03 D9 7E */	srwi r3, r0, 5
/* 8009AB7C 00097ABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009AB80 00097AC0  7C 08 03 A6 */	mtlr r0
/* 8009AB84 00097AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8009AB88 00097AC8  4E 80 00 20 */	blr 