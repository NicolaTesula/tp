/* 800FBE04 000F8D44  94 21 FF B0 */ stwu r1, -0x50(r1)
/* 800FBE08 000F8D48  7C 08 02 A6 */ mflr r0
/* 800FBE0C 000F8D4C  90 01 00 54 */ stw r0, 0x54(r1)
/* 800FBE10 000F8D50  93 E1 00 4C */ stw r31, 0x4c(r1)
/* 800FBE14 000F8D54  93 C1 00 48 */ stw r30, 0x48(r1)
/* 800FBE18 000F8D58  7C 7F 1B 78 */ mr r31, r3
/* 800FBE1C 000F8D5C  38 61 00 18 */ addi r3, r1, 0x18
/* 800FBE20 000F8D60  38 9F 34 EC */ addi r4, r31, 0x34ec
/* 800FBE24 000F8D64  38 BF 04 D0 */ addi r5, r31, 0x4d0
/* 800FBE28 000F8D68  48 16 AD 0D */ bl __mi__4cXyzCFRC3Vec
/* 800FBE2C 000F8D6C  C0 41 00 18 */ lfs f2, 0x18(r1)
/* 800FBE30 000F8D70  D0 41 00 30 */ stfs f2, 0x30(r1)
/* 800FBE34 000F8D74  C0 01 00 1C */ lfs f0, 0x1c(r1)
/* 800FBE38 000F8D78  D0 01 00 34 */ stfs f0, 0x34(r1)
/* 800FBE3C 000F8D7C  C0 21 00 20 */ lfs f1, 0x20(r1)
/* 800FBE40 000F8D80  D0 21 00 38 */ stfs f1, 0x38(r1)
/* 800FBE44 000F8D84  D0 41 00 0C */ stfs f2, 0xc(r1)
/* 800FBE48 000F8D88  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800FBE4C 000F8D8C  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 800FBE50 000F8D90  D0 21 00 14 */ stfs f1, 0x14(r1)
/* 800FBE54 000F8D94  38 61 00 0C */ addi r3, r1, 0xc
/* 800FBE58 000F8D98  48 24 B2 E1 */ bl PSVECSquareMag
/* 800FBE5C 000F8D9C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800FBE60 000F8DA0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FBE64 000F8DA4  40 81 00 58 */ ble lbl_800FBEBC
/* 800FBE68 000F8DA8  FC 00 08 34 */ frsqrte f0, f1
/* 800FBE6C 000F8DAC  C8 82 92 E8 */ lfd f4, lbl_80452CE8-_SDA2_BASE_(r2)
/* 800FBE70 000F8DB0  FC 44 00 32 */ fmul f2, f4, f0
/* 800FBE74 000F8DB4  C8 62 92 F0 */ lfd f3, lbl_80452CF0-_SDA2_BASE_(r2)
/* 800FBE78 000F8DB8  FC 00 00 32 */ fmul f0, f0, f0
/* 800FBE7C 000F8DBC  FC 01 00 32 */ fmul f0, f1, f0
/* 800FBE80 000F8DC0  FC 03 00 28 */ fsub f0, f3, f0
/* 800FBE84 000F8DC4  FC 02 00 32 */ fmul f0, f2, f0
/* 800FBE88 000F8DC8  FC 44 00 32 */ fmul f2, f4, f0
/* 800FBE8C 000F8DCC  FC 00 00 32 */ fmul f0, f0, f0
/* 800FBE90 000F8DD0  FC 01 00 32 */ fmul f0, f1, f0
/* 800FBE94 000F8DD4  FC 03 00 28 */ fsub f0, f3, f0
/* 800FBE98 000F8DD8  FC 02 00 32 */ fmul f0, f2, f0
/* 800FBE9C 000F8DDC  FC 44 00 32 */ fmul f2, f4, f0
/* 800FBEA0 000F8DE0  FC 00 00 32 */ fmul f0, f0, f0
/* 800FBEA4 000F8DE4  FC 01 00 32 */ fmul f0, f1, f0
/* 800FBEA8 000F8DE8  FC 03 00 28 */ fsub f0, f3, f0
/* 800FBEAC 000F8DEC  FC 02 00 32 */ fmul f0, f2, f0
/* 800FBEB0 000F8DF0  FC 21 00 32 */ fmul f1, f1, f0
/* 800FBEB4 000F8DF4  FC 20 08 18 */ frsp f1, f1
/* 800FBEB8 000F8DF8  48 00 00 88 */ b lbl_800FBF40
lbl_800FBEBC:
/* 800FBEBC 000F8DFC  C8 02 92 F8 */ lfd f0, lbl_80452CF8-_SDA2_BASE_(r2)
/* 800FBEC0 000F8E00  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FBEC4 000F8E04  40 80 00 10 */ bge lbl_800FBED4
/* 800FBEC8 000F8E08  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 800FBECC 000F8E0C  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 800FBED0 000F8E10  48 00 00 70 */ b lbl_800FBF40
lbl_800FBED4:
/* 800FBED4 000F8E14  D0 21 00 08 */ stfs f1, 8(r1)
/* 800FBED8 000F8E18  80 81 00 08 */ lwz r4, 8(r1)
/* 800FBEDC 000F8E1C  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 800FBEE0 000F8E20  3C 00 7F 80 */ lis r0, 0x7f80
/* 800FBEE4 000F8E24  7C 03 00 00 */ cmpw r3, r0
/* 800FBEE8 000F8E28  41 82 00 14 */ beq lbl_800FBEFC
/* 800FBEEC 000F8E2C  40 80 00 40 */ bge lbl_800FBF2C
/* 800FBEF0 000F8E30  2C 03 00 00 */ cmpwi r3, 0
/* 800FBEF4 000F8E34  41 82 00 20 */ beq lbl_800FBF14
/* 800FBEF8 000F8E38  48 00 00 34 */ b lbl_800FBF2C
lbl_800FBEFC:
/* 800FBEFC 000F8E3C  54 80 02 7F */ clrlwi. r0, r4, 9
/* 800FBF00 000F8E40  41 82 00 0C */ beq lbl_800FBF0C
/* 800FBF04 000F8E44  38 00 00 01 */ li r0, 1
/* 800FBF08 000F8E48  48 00 00 28 */ b lbl_800FBF30
lbl_800FBF0C:
/* 800FBF0C 000F8E4C  38 00 00 02 */ li r0, 2
/* 800FBF10 000F8E50  48 00 00 20 */ b lbl_800FBF30
lbl_800FBF14:
/* 800FBF14 000F8E54  54 80 02 7F */ clrlwi. r0, r4, 9
/* 800FBF18 000F8E58  41 82 00 0C */ beq lbl_800FBF24
/* 800FBF1C 000F8E5C  38 00 00 05 */ li r0, 5
/* 800FBF20 000F8E60  48 00 00 10 */ b lbl_800FBF30
lbl_800FBF24:
/* 800FBF24 000F8E64  38 00 00 03 */ li r0, 3
/* 800FBF28 000F8E68  48 00 00 08 */ b lbl_800FBF30
lbl_800FBF2C:
/* 800FBF2C 000F8E6C  38 00 00 04 */ li r0, 4
lbl_800FBF30:
/* 800FBF30 000F8E70  2C 00 00 01 */ cmpwi r0, 1
/* 800FBF34 000F8E74  40 82 00 0C */ bne lbl_800FBF40
/* 800FBF38 000F8E78  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 800FBF3C 000F8E7C  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_800FBF40:
/* 800FBF40 000F8E80  C0 42 93 78 */ lfs f2, lbl_80452D78-_SDA2_BASE_(r2)
/* 800FBF44 000F8E84  C0 1F 18 E4 */ lfs f0, 0x18e4(r31)
/* 800FBF48 000F8E88  EC 02 00 2A */ fadds f0, f2, f0
/* 800FBF4C 000F8E8C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FBF50 000F8E90  40 81 00 0C */ ble lbl_800FBF5C
/* 800FBF54 000F8E94  38 60 00 00 */ li r3, 0
/* 800FBF58 000F8E98  48 00 01 68 */ b lbl_800FC0C0
lbl_800FBF5C:
/* 800FBF5C 000F8E9C  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800FBF60 000F8EA0  38 83 9A 20 */ addi r4, r3, lbl_80439A20@l
/* 800FBF64 000F8EA4  A8 1F 30 6E */ lha r0, 0x306e(r31)
/* 800FBF68 000F8EA8  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FBF6C 000F8EAC  7C 64 02 14 */ add r3, r4, r0
/* 800FBF70 000F8EB0  C0 03 00 04 */ lfs f0, 4(r3)
/* 800FBF74 000F8EB4  C0 3F 34 F4 */ lfs f1, 0x34f4(r31)
/* 800FBF78 000F8EB8  C0 42 93 2C */ lfs f2, lbl_80452D2C-_SDA2_BASE_(r2)
/* 800FBF7C 000F8EBC  EC 02 00 32 */ fmuls f0, f2, f0
/* 800FBF80 000F8EC0  EC 81 00 28 */ fsubs f4, f1, f0
/* 800FBF84 000F8EC4  C0 22 93 30 */ lfs f1, lbl_80452D30-_SDA2_BASE_(r2)
/* 800FBF88 000F8EC8  C0 1F 34 F0 */ lfs f0, 0x34f0(r31)
/* 800FBF8C 000F8ECC  EC 61 00 2A */ fadds f3, f1, f0
/* 800FBF90 000F8ED0  7C 04 04 2E */ lfsx f0, r4, r0
/* 800FBF94 000F8ED4  C0 3F 34 EC */ lfs f1, 0x34ec(r31)
/* 800FBF98 000F8ED8  EC 02 00 32 */ fmuls f0, f2, f0
/* 800FBF9C 000F8EDC  EC 01 00 28 */ fsubs f0, f1, f0
/* 800FBFA0 000F8EE0  D0 01 00 24 */ stfs f0, 0x24(r1)
/* 800FBFA4 000F8EE4  D0 61 00 28 */ stfs f3, 0x28(r1)
/* 800FBFA8 000F8EE8  D0 81 00 2C */ stfs f4, 0x2c(r1)
/* 800FBFAC 000F8EEC  38 7F 1D 08 */ addi r3, r31, 0x1d08
/* 800FBFB0 000F8EF0  38 81 00 24 */ addi r4, r1, 0x24
/* 800FBFB4 000F8EF4  48 16 BD 75 */ bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800FBFB8 000F8EF8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800FBFBC 000F8EFC  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800FBFC0 000F8F00  3B C3 0F 38 */ addi r30, r3, 0xf38
/* 800FBFC4 000F8F04  7F C3 F3 78 */ mr r3, r30
/* 800FBFC8 000F8F08  38 9F 1D 08 */ addi r4, r31, 0x1d08
/* 800FBFCC 000F8F0C  4B F7 84 D5 */ bl cBgS_NS_GroundCross
/* 800FBFD0 000F8F10  D0 21 00 28 */ stfs f1, 0x28(r1)
/* 800FBFD4 000F8F14  FC 20 08 18 */ frsp f1, f1
/* 800FBFD8 000F8F18  C0 1F 34 F0 */ lfs f0, 0x34f0(r31)
/* 800FBFDC 000F8F1C  EC 01 00 28 */ fsubs f0, f1, f0
/* 800FBFE0 000F8F20  FC 00 02 10 */ fabs f0, f0
/* 800FBFE4 000F8F24  FC 20 00 18 */ frsp f1, f0
/* 800FBFE8 000F8F28  C0 0D 81 10 */ lfs f0, lbl_80450690-_SDA_BASE_(r13)
/* 800FBFEC 000F8F2C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FBFF0 000F8F30  40 81 00 0C */ ble lbl_800FBFFC
/* 800FBFF4 000F8F34  38 60 00 00 */ li r3, 0
/* 800FBFF8 000F8F38  48 00 00 C8 */ b lbl_800FC0C0
lbl_800FBFFC:
/* 800FBFFC 000F8F3C  7F C3 F3 78 */ mr r3, r30
/* 800FC000 000F8F40  38 9F 1D 1C */ addi r4, r31, 0x1d1c
/* 800FC004 000F8F44  4B F7 8E ED */ bl dBgS_NS_GetGroundCode
/* 800FC008 000F8F48  2C 03 00 06 */ cmpwi r3, 6
/* 800FC00C 000F8F4C  40 82 00 10 */ bne lbl_800FC01C
/* 800FC010 000F8F50  7F E3 FB 78 */ mr r3, r31
/* 800FC014 000F8F54  4B FF EA 69 */ bl daAlink_c_NS_procHangStartInit
/* 800FC018 000F8F58  48 00 00 A8 */ b lbl_800FC0C0
lbl_800FC01C:
/* 800FC01C 000F8F5C  7F E3 FB 78 */ mr r3, r31
/* 800FC020 000F8F60  38 80 00 5B */ li r4, 0x5b
/* 800FC024 000F8F64  4B FC 5F 49 */ bl daAlink_c_NS_commonProcInit
/* 800FC028 000F8F68  7F E3 FB 78 */ mr r3, r31
/* 800FC02C 000F8F6C  38 80 00 93 */ li r4, 0x93
/* 800FC030 000F8F70  3C A0 80 39 */ lis r5, lbl_8038E164@ha
/* 800FC034 000F8F74  38 A5 E1 64 */ addi r5, r5, lbl_8038E164@l
/* 800FC038 000F8F78  38 A5 00 14 */ addi r5, r5, 0x14
/* 800FC03C 000F8F7C  4B FB 10 B9 */ bl daAlink_c_NS_setSingleAnimeParam
/* 800FC040 000F8F80  7F E3 FB 78 */ mr r3, r31
/* 800FC044 000F8F84  4B FE 3B E5 */ bl daAlink_c_NS_setBowHangAnime
/* 800FC048 000F8F88  C0 01 00 24 */ lfs f0, 0x24(r1)
/* 800FC04C 000F8F8C  D0 1F 04 D0 */ stfs f0, 0x4d0(r31)
/* 800FC050 000F8F90  C0 01 00 28 */ lfs f0, 0x28(r1)
/* 800FC054 000F8F94  D0 1F 04 D4 */ stfs f0, 0x4d4(r31)
/* 800FC058 000F8F98  C0 01 00 2C */ lfs f0, 0x2c(r1)
/* 800FC05C 000F8F9C  D0 1F 04 D8 */ stfs f0, 0x4d8(r31)
/* 800FC060 000F8FA0  A8 7F 30 6E */ lha r3, 0x306e(r31)
/* 800FC064 000F8FA4  3C 63 00 01 */ addis r3, r3, 1
/* 800FC068 000F8FA8  38 03 80 00 */ addi r0, r3, -32768
/* 800FC06C 000F8FAC  B0 1F 04 E6 */ sth r0, 0x4e6(r31)
/* 800FC070 000F8FB0  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800FC074 000F8FB4  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 800FC078 000F8FB8  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800FC07C 000F8FBC  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 800FC080 000F8FC0  D0 1F 04 FC */ stfs f0, 0x4fc(r31)
/* 800FC084 000F8FC4  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800FC088 000F8FC8  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800FC08C 000F8FCC  80 03 5F 18 */ lwz r0, 0x5f18(r3)
/* 800FC090 000F8FD0  60 00 01 00 */ ori r0, r0, 0x100
/* 800FC094 000F8FD4  90 03 5F 18 */ stw r0, 0x5f18(r3)
/* 800FC098 000F8FD8  7F E3 FB 78 */ mr r3, r31
/* 800FC09C 000F8FDC  3C 80 00 01 */ lis r4, 0x0001000A@ha
/* 800FC0A0 000F8FE0  38 84 00 0A */ addi r4, r4, 0x0001000A@l
/* 800FC0A4 000F8FE4  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 800FC0A8 000F8FE8  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800FC0AC 000F8FEC  7D 89 03 A6 */ mtctr r12
/* 800FC0B0 000F8FF0  4E 80 04 21 */ bctrl
/* 800FC0B4 000F8FF4  7F E3 FB 78 */ mr r3, r31
/* 800FC0B8 000F8FF8  4B FF E6 2D */ bl daAlink_c_NS_setHangGroundY
/* 800FC0BC 000F8FFC  38 60 00 01 */ li r3, 1
lbl_800FC0C0:
/* 800FC0C0 000F9000  83 E1 00 4C */ lwz r31, 0x4c(r1)
/* 800FC0C4 000F9004  83 C1 00 48 */ lwz r30, 0x48(r1)
/* 800FC0C8 000F9008  80 01 00 54 */ lwz r0, 0x54(r1)
/* 800FC0CC 000F900C  7C 08 03 A6 */ mtlr r0
/* 800FC0D0 000F9010  38 21 00 50 */ addi r1, r1, 0x50
/* 800FC0D4 000F9014  4E 80 00 20 */ blr