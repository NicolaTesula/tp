/* 8014139C 0013E2DC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 801413A0 0013E2E0  7C 08 02 A6 */ mflr r0
/* 801413A4 0013E2E4  90 01 00 14 */ stw r0, 0x14(r1)
/* 801413A8 0013E2E8  7C 64 1B 78 */ mr r4, r3
/* 801413AC 0013E2EC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 801413B0 0013E2F0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 801413B4 0013E2F4  38 63 07 F0 */ addi r3, r3, 0x7f0
/* 801413B8 0013E2F8  4B EF 36 05 */ bl isEventBit__11dSv_event_cCFUs
/* 801413BC 0013E2FC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 801413C0 0013E300  7C 08 03 A6 */ mtlr r0
/* 801413C4 0013E304  38 21 00 10 */ addi r1, r1, 0x10
/* 801413C8 0013E308  4E 80 00 20 */ blr