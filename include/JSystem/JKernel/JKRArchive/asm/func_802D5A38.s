/* becomeCurrent__10JKRArchiveFPCc __ct__10JKRArchiveFlQ210JKRArchive10EMountMode::becomeCurrent(char const *) */
/* missing reference */
/* 802D5A38 002D2978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D5A3C 002D297C  7C 08 02 A6 */	mflr r0
/* 802D5A40 002D2980  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D5A44 002D2984  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D5A48 002D2988  7C 7F 1B 78 */	mr r31, r3
/* 802D5A4C 002D298C  88 04 00 00 */	lbz r0, 0(r4)
/* 802D5A50 002D2990  2C 00 00 2F */	cmpwi r0, 0x2f
/* 802D5A54 002D2994  40 82 00 24 */	bne lbl_802D5A78
/* 802D5A58 002D2998  8C 04 00 01 */	lbzu r0, 1(r4)
/* 802D5A5C 002D299C  7C 00 07 75 */	extsb. r0, r0
/* 802D5A60 002D29A0  40 82 00 08 */	bne lbl_802D5A68
/* 802D5A64 002D29A4  38 80 00 00 */	li r4, 0
lbl_802D5A68:
/* 802D5A68 002D29A8  7F E3 FB 78 */	mr r3, r31
/* 802D5A6C 002D29AC  38 A0 00 00 */	li r5, 0
/* 802D5A70 002D29B0  48 00 09 AD */	bl findDirectory__10JKRArchiveCFPCcUl
/* 802D5A74 002D29B4  48 00 00 0C */	b lbl_802D5A80
lbl_802D5A78:
/* 802D5A78 002D29B8  80 AD 8E A0 */	lwz r5, lbl_80451420-_SDA_BASE_(r13)
/* 802D5A7C 002D29BC  48 00 09 A1 */	bl findDirectory__10JKRArchiveCFPCcUl
lbl_802D5A80:
/* 802D5A80 002D29C0  30 03 FF FF */	addic r0, r3, -1
/* 802D5A84 002D29C4  7C 80 19 10 */	subfe r4, r0, r3
/* 802D5A88 002D29C8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802D5A8C 002D29CC  41 82 00 1C */	beq lbl_802D5AA8
/* 802D5A90 002D29D0  93 ED 8E 98 */	stw r31, lbl_80451418-_SDA_BASE_(r13)
/* 802D5A94 002D29D4  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 802D5A98 002D29D8  7C 00 18 50 */	subf r0, r0, r3
/* 802D5A9C 002D29DC  7C 00 26 70 */	srawi r0, r0, 4
/* 802D5AA0 002D29E0  7C 00 01 94 */	addze r0, r0
/* 802D5AA4 002D29E4  90 0D 8E A0 */	stw r0, lbl_80451420-_SDA_BASE_(r13)
lbl_802D5AA8:
/* 802D5AA8 002D29E8  7C 83 23 78 */	mr r3, r4
/* 802D5AAC 002D29EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D5AB0 002D29F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D5AB4 002D29F4  7C 08 03 A6 */	mtlr r0
/* 802D5AB8 002D29F8  38 21 00 10 */	addi r1, r1, 0x10
/* 802D5ABC 002D29FC  4E 80 00 20 */	blr