
Fatbin elf code:
================
arch = sm_70
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_70
		Function : _Z14sa_test_kernelN14celeritas_test11SATestInputE
	.headerflags    @"EF_CUDA_SM70 EF_CUDA_PTX_SM(EF_CUDA_SM70)"
        /*0000*/                   IMAD.MOV.U32 R1, RZ, RZ, c[0x0][0x28] ;

        /*0010*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*0020*/                   S2R R0, SR_CTAID.X ;

        /*0030*/                   S2R R3, SR_TID.X ;

        /*0040*/                   IMAD R0, R0, c[0x0][0x0], R3 ;

        /*0050*/                   ISETP.GE.U32.AND P0, PT, R0, c[0x0][0x198], PT ;

        /*0060*/               @P0 EXIT ;

        /*0070*/                   I2F.U32.RP R4, c[0x0][0x168] ;

        /*0080*/                   IMAD.MOV.U32 R2, RZ, RZ, RZ ;

        /*0090*/                   ISETP.NE.U32.AND P1, PT, RZ, c[0x0][0x168], PT ;

        /*00a0*/                   MUFU.RCP R4, R4 ;

        /*00b0*/                   IADD3 R5, R4, 0xffffffe, RZ ;

        /*00c0*/                   F2I.FTZ.U32.TRUNC.NTZ R3, R5 ;

        /*00d0*/                   IMAD.MOV R7, RZ, RZ, -R3 ;

        /*00e0*/                   IMAD R7, R7, c[0x0][0x168], RZ ;

        /*00f0*/                   IMAD.WIDE.U32 R2, R3, R7, R2 ;

        /*0100*/                   IMAD.WIDE.U32 R2, R3, R0, RZ ;

        /*0110*/                   IMAD.MOV R3, RZ, RZ, -R3 ;

        /*0120*/                   IMAD R18, R3, c[0x0][0x168], R0 ;

        /*0130*/                   ISETP.GE.U32.AND P0, PT, R18, c[0x0][0x168], PT ;

        /*0140*/               @P0 IADD3 R18, R18, -c[0x0][0x168], RZ ;

        /*0150*/                   ISETP.GE.U32.AND P0, PT, R18, c[0x0][0x168], PT ;

        /*0160*/               @P0 IADD3 R18, R18, -c[0x0][0x168], RZ ;

        /*0170*/              @!P1 LOP3.LUT R18, RZ, c[0x0][0x168], RZ, 0x33, !PT ;

        /*0180*/                   IADD3 R6, P0, R18, c[0x0][0x160], RZ ;

        /*0190*/                   IADD3.X R7, RZ, c[0x0][0x164], RZ, P0, !PT ;

        /*01a0*/                   LDG.E.S8.SYS R6, [R6] ;

        /*01b0*/                   IADD3 R34, P0, R0.reuse, c[0x0][0x1b0], RZ ;

        /*01c0*/                   IMAD.MOV.U32 R41, RZ, RZ, 0x18 ;

        /*01d0*/                   IMAD.MOV.U32 R19, RZ, RZ, 0x4 ;

        /*01e0*/                   IMAD.X R35, RZ, RZ, c[0x0][0x1b4], P0 ;

        /*01f0*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x8 ;

        /*0200*/                   IMAD.WIDE.U32 R38, R0, R41, c[0x0][0x190] ;

        /*0210*/                   IMAD.WIDE.U32 R40, R0, R41, c[0x0][0x1a0] ;

        /*0220*/                   IMAD.WIDE.U32 R2, R0, R5, c[0x0][0x1c0] ;

        /*0230*/                   IMAD.WIDE.U32 R18, R18, R19, c[0x0][0x170] ;

        /*0240*/                   ISETP.GT.AND P0, PT, R6, 0x2, PT ;

        /*0250*/               @P0 BRA 0xdb0 ;

        /*0260*/                   LOP3.LUT R6, R6, 0xff, RZ, 0xc0, !PT ;

        /*0270*/                   ISETP.NE.AND P0, PT, R6, RZ, PT ;

        /*0280*/              @!P0 BRA 0xa90 ;

        /*0290*/                   PRMT R4, R6, 0x9910, RZ ;

        /*02a0*/                   ISETP.NE.AND P0, PT, R4, 0x1, PT ;

        /*02b0*/              @!P0 BRA 0x6b0 ;

        /*02c0*/                   ISETP.NE.AND P0, PT, R4, 0x2, PT ;

        /*02d0*/               @P0 EXIT ;

        /*02e0*/                   LDG.E.SYS R4, [R18] ;

        /*02f0*/                   MOV R6, c[0x0][0x190] ;

        /*0300*/                   IMAD.MOV.U32 R7, RZ, RZ, c[0x0][0x194] ;

        /*0310*/                   IMAD.MOV.U32 R13, RZ, RZ, RZ ;

        /*0320*/                   IMAD.WIDE.U32 R6, R0, 0x18, R6 ;

        /*0330*/                   IMAD.IADD R7, R7, 0x1, R13 ;

        /*0340*/                   LDG.E.64.SYS R8, [R6+0x10] ;

        /*0350*/                   IMAD.WIDE.U32 R4, R4, R5, c[0x0][0x180] ;

        /*0360*/                   LDG.E.64.SYS R4, [R4] ;

        /*0370*/                   BMOV.32.CLEAR RZ, B0 ;

        /*0380*/                   BSSY B0, 0x690 ;

        /*0390*/                   DADD R8, R8, -R4 ;

        /*03a0*/                   DSETP.GTU.AND P1, PT, R8, RZ, PT ;

        /*03b0*/                   DSETP.GEU.AND P0, PT, R8, RZ, PT ;

        /*03c0*/                   SEL R10, RZ, 0x1, !P1 ;

        /*03d0*/                   SEL R11, RZ, 0x1, P0 ;

        /*03e0*/                   IMAD.IADD R10, R10, 0x1, -R11 ;

        /*03f0*/                   SHF.R.U32.HI R10, RZ, 0x1f, R10 ;

        /*0400*/                   LOP3.LUT R11, R10, 0x1, RZ, 0x3c, !PT ;

        /*0410*/                   DSETP.GTU.XOR P0, PT, R8, RZ, !P0 ;

        /*0420*/                   STG.E.U8.SYS [R34], R11 ;

        /*0430*/              @!P0 BRA 0x660 ;

        /*0440*/                   MOV R8, c[0x0][0x1a0] ;

        /*0450*/                   IMAD.MOV.U32 R9, RZ, RZ, c[0x0][0x1a4] ;

        /*0460*/                   IMAD.WIDE.U32 R8, R0, 0x18, R8 ;

        /*0470*/                   IMAD.IADD R9, R13, 0x1, R9 ;

        /*0480*/                   LDG.E.64.SYS R8, [R8+0x10] ;

        /*0490*/                   DSETP.NEU.AND P0, PT, R8, RZ, PT ;

        /*04a0*/              @!P0 BRA 0x660 ;

        /*04b0*/                   LDG.E.64.SYS R6, [R6+0x10] ;

        /*04c0*/                   MUFU.RCP64H R11, R9 ;

        /*04d0*/                   IMAD.MOV.U32 R10, RZ, RZ, 0x1 ;

        /*04e0*/                   BMOV.32.CLEAR RZ, B1 ;

        /*04f0*/                   BSSY B1, 0x640 ;

        /*0500*/                   DFMA R12, -R8, R10, 1 ;

        /*0510*/                   DFMA R12, R12, R12, R12 ;

        /*0520*/                   DFMA R12, R10, R12, R10 ;

        /*0530*/                   DADD R4, R4, -R6 ;

        /*0540*/                   DMUL R10, R4, R12 ;

        /*0550*/                   FSETP.GTU.AND P1, PT, |R5|, 6.4490557925156731238e-37, PT ;

        /*0560*/                   DFMA R14, -R8, R10, R4 ;

        /*0570*/                   DFMA R10, R12, R14, R10 ;

        /*0580*/                   FFMA R0, RZ, R9, R11 ;

        /*0590*/                   FSETP.GT.AND P0, PT, |R0|, 4.8978884574313168671e-40, PT ;

        /*05a0*/               @P0 BRA P1, 0x630 ;

        /*05b0*/                   IMAD.MOV.U32 R10, RZ, RZ, R4 ;

        /*05c0*/                   MOV R19, R5 ;

        /*05d0*/                   IMAD.MOV.U32 R4, RZ, RZ, R8 ;

        /*05e0*/                   MOV R0, 0x610 ;

        /*05f0*/                   IMAD.MOV.U32 R5, RZ, RZ, R9 ;

        /*0600*/                   CALL.REL.NOINC 0x3990 ;

        /*0610*/                   IMAD.MOV.U32 R10, RZ, RZ, R6 ;

        /*0620*/                   IMAD.MOV.U32 R11, RZ, RZ, R7 ;

        /*0630*/                   BSYNC B1 ;

        /*0640*/                   DSETP.GT.AND P0, PT, R10, RZ, PT ;

        /*0650*/               @P0 BRA 0x680 ;

        /*0660*/                   MOV R10, 0x0 ;

        /*0670*/                   IMAD.MOV.U32 R11, RZ, RZ, 0x7ff00000 ;

        /*0680*/                   BSYNC B0 ;

        /*0690*/                   STG.E.64.SYS [R2], R10 ;

        /*06a0*/                   EXIT ;

        /*06b0*/                   LDG.E.SYS R4, [R18] ;

        /*06c0*/                   IMAD.MOV.U32 R6, RZ, RZ, c[0x0][0x190] ;

        /*06d0*/                   IMAD.MOV.U32 R7, RZ, RZ, c[0x0][0x194] ;

        /*06e0*/                   IMAD.MOV.U32 R11, RZ, RZ, RZ ;

        /*06f0*/                   IMAD.WIDE.U32 R6, R0, 0x18, R6 ;

        /*0700*/                   IMAD.MOV.U32 R14, RZ, RZ, R6 ;

        /*0710*/                   IADD3 R15, R7, R11, RZ ;

        /*0720*/                   LDG.E.64.SYS R6, [R14+0x8] ;

        /*0730*/                   IMAD.WIDE.U32 R4, R4, R5, c[0x0][0x180] ;

        /*0740*/                   LDG.E.64.SYS R4, [R4] ;

        /*0750*/                   BMOV.32.CLEAR RZ, B0 ;

        /*0760*/                   BSSY B0, 0xa70 ;

        /*0770*/                   DADD R6, R6, -R4 ;

        /*0780*/                   DSETP.GTU.AND P1, PT, R6, RZ, PT ;

        /*0790*/                   DSETP.GEU.AND P0, PT, R6, RZ, PT ;

        /*07a0*/                   SEL R8, RZ, 0x1, !P1 ;

        /*07b0*/                   SEL R9, RZ, 0x1, P0 ;

        /*07c0*/                   IMAD.IADD R8, R8, 0x1, -R9 ;

        /*07d0*/                   SHF.R.U32.HI R8, RZ, 0x1f, R8 ;

        /*07e0*/                   LOP3.LUT R9, R8, 0x1, RZ, 0x3c, !PT ;

        /*07f0*/                   DSETP.GTU.XOR P0, PT, R6, RZ, !P0 ;

        /*0800*/                   STG.E.U8.SYS [R34], R9 ;

        /*0810*/              @!P0 BRA 0xa40 ;

        /*0820*/                   IMAD.MOV.U32 R6, RZ, RZ, c[0x0][0x1a0] ;

        /*0830*/                   IMAD.MOV.U32 R7, RZ, RZ, c[0x0][0x1a4] ;

        /*0840*/                   IMAD.WIDE.U32 R6, R0, 0x18, R6 ;

        /*0850*/                   IADD3 R7, R11, R7, RZ ;

        /*0860*/                   LDG.E.64.SYS R6, [R6+0x8] ;

        /*0870*/                   DSETP.NEU.AND P0, PT, R6, RZ, PT ;

        /*0880*/              @!P0 BRA 0xa40 ;

        /*0890*/                   LDG.E.64.SYS R8, [R14+0x8] ;

        /*08a0*/                   MUFU.RCP64H R11, R7 ;

        /*08b0*/                   IMAD.MOV.U32 R10, RZ, RZ, 0x1 ;

        /*08c0*/                   BMOV.32.CLEAR RZ, B1 ;

        /*08d0*/                   BSSY B1, 0xa20 ;

        /*08e0*/                   DFMA R12, -R6, R10, 1 ;

        /*08f0*/                   DFMA R12, R12, R12, R12 ;

        /*0900*/                   DFMA R12, R10, R12, R10 ;

        /*0910*/                   DADD R8, R4, -R8 ;

        /*0920*/                   DMUL R4, R8, R12 ;

        /*0930*/                   FSETP.GTU.AND P1, PT, |R9|, 6.4490557925156731238e-37, PT ;

        /*0940*/                   DFMA R10, -R6, R4, R8 ;

        /*0950*/                   DFMA R4, R12, R10, R4 ;

        /*0960*/                   FFMA R0, RZ, R7, R5 ;

        /*0970*/                   FSETP.GT.AND P0, PT, |R0|, 4.8978884574313168671e-40, PT ;

        /*0980*/               @P0 BRA P1, 0xa10 ;

        /*0990*/                   IMAD.MOV.U32 R10, RZ, RZ, R8 ;

        /*09a0*/                   MOV R5, R7 ;

        /*09b0*/                   IMAD.MOV.U32 R19, RZ, RZ, R9 ;

        /*09c0*/                   MOV R0, 0x9f0 ;

        /*09d0*/                   IMAD.MOV.U32 R4, RZ, RZ, R6 ;

        /*09e0*/                   CALL.REL.NOINC 0x3990 ;

        /*09f0*/                   IMAD.MOV.U32 R4, RZ, RZ, R6 ;

        /*0a00*/                   IMAD.MOV.U32 R5, RZ, RZ, R7 ;

        /*0a10*/                   BSYNC B1 ;

        /*0a20*/                   DSETP.GT.AND P0, PT, R4, RZ, PT ;

        /*0a30*/               @P0 BRA 0xa60 ;

        /*0a40*/                   IMAD.MOV.U32 R4, RZ, RZ, 0x0 ;

        /*0a50*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x7ff00000 ;

        /*0a60*/                   BSYNC B0 ;

        /*0a70*/                   STG.E.64.SYS [R2], R4 ;

        /*0a80*/                   EXIT ;

        /*0a90*/                   LDG.E.SYS R4, [R18] ;

        /*0aa0*/                   LDG.E.64.SYS R6, [R38] ;

        /*0ab0*/                   IMAD.WIDE.U32 R4, R4, R5, c[0x0][0x180] ;

        /*0ac0*/                   LDG.E.64.SYS R4, [R4] ;

        /*0ad0*/                   BMOV.32.CLEAR RZ, B0 ;

        /*0ae0*/                   BSSY B0, 0xd90 ;

        /*0af0*/                   DADD R6, R6, -R4 ;

        /*0b00*/                   DSETP.GTU.AND P1, PT, R6, RZ, PT ;

        /*0b10*/                   DSETP.GEU.AND P0, PT, R6, RZ, PT ;

        /*0b20*/                   SEL R0, RZ, 0x1, !P1 ;

        /*0b30*/                   SEL R9, RZ, 0x1, P0 ;

        /*0b40*/                   IADD3 R0, R0, -R9, RZ ;

        /*0b50*/                   SHF.R.U32.HI R0, RZ, 0x1f, R0 ;

        /*0b60*/                   LOP3.LUT R9, R0, 0x1, RZ, 0x3c, !PT ;

        /*0b70*/                   DSETP.GTU.XOR P0, PT, R6, RZ, !P0 ;

        /*0b80*/                   STG.E.U8.SYS [R34], R9 ;

        /*0b90*/              @!P0 BRA 0xd60 ;

        /*0ba0*/                   LDG.E.64.SYS R40, [R40] ;

        /*0bb0*/                   DSETP.NEU.AND P0, PT, R40, RZ, PT ;

        /*0bc0*/              @!P0 BRA 0xd60 ;

        /*0bd0*/                   LDG.E.64.SYS R38, [R38] ;

        /*0be0*/                   MUFU.RCP64H R7, R41 ;

        /*0bf0*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x1 ;

        /*0c00*/                   BMOV.32.CLEAR RZ, B1 ;

        /*0c10*/                   BSSY B1, 0xd40 ;

        /*0c20*/                   DFMA R8, -R40, R6, 1 ;

        /*0c30*/                   DFMA R8, R8, R8, R8 ;

        /*0c40*/                   DFMA R8, R6, R8, R6 ;

        /*0c50*/                   DADD R4, R4, -R38 ;

        /*0c60*/                   DMUL R6, R4, R8 ;

        /*0c70*/                   FSETP.GTU.AND P1, PT, |R5|, 6.4490557925156731238e-37, PT ;

        /*0c80*/                   DFMA R10, -R40, R6, R4 ;

        /*0c90*/                   DFMA R6, R8, R10, R6 ;

        /*0ca0*/                   FFMA R0, RZ, R41, R7 ;

        /*0cb0*/                   FSETP.GT.AND P0, PT, |R0|, 4.8978884574313168671e-40, PT ;

        /*0cc0*/               @P0 BRA P1, 0xd30 ;

        /*0cd0*/                   IMAD.MOV.U32 R10, RZ, RZ, R4 ;

        /*0ce0*/                   MOV R0, 0xd30 ;

        /*0cf0*/                   IMAD.MOV.U32 R19, RZ, RZ, R5 ;

        /*0d00*/                   MOV R5, R41 ;

        /*0d10*/                   IMAD.MOV.U32 R4, RZ, RZ, R40 ;

        /*0d20*/                   CALL.REL.NOINC 0x3990 ;

        /*0d30*/                   BSYNC B1 ;

        /*0d40*/                   DSETP.GT.AND P0, PT, R6, RZ, PT ;

        /*0d50*/               @P0 BRA 0xd80 ;

        /*0d60*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*0d70*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*0d80*/                   BSYNC B0 ;

        /*0d90*/                   STG.E.64.SYS [R2], R6 ;

        /*0da0*/                   EXIT ;

        /*0db0*/                   ISETP.GT.AND P0, PT, R6, 0x4, PT ;

        /*0dc0*/               @P0 BRA 0x1f10 ;

        /*0dd0*/                   LOP3.LUT R6, R6, 0xff, RZ, 0xc0, !PT ;

        /*0de0*/                   PRMT R4, R6, 0x9910, RZ ;

        /*0df0*/                   ISETP.NE.AND P0, PT, R4, 0x3, PT ;

        /*0e00*/              @!P0 BRA 0x16a0 ;

        /*0e10*/                   ISETP.NE.AND P0, PT, R4, 0x4, PT ;

        /*0e20*/               @P0 EXIT ;

        /*0e30*/                   LDG.E.SYS R12, [R18] ;

        /*0e40*/                   LDG.E.64.SYS R6, [R38+0x10] ;

        /*0e50*/                   IMAD.WIDE.U32 R12, R12, R5, c[0x0][0x180] ;

        /*0e60*/                   LDG.E.64.SYS R4, [R38] ;

        /*0e70*/                   LDG.E.64.SYS R12, [R12] ;

        /*0e80*/                   DMUL R6, R6, R6 ;

        /*0e90*/                   IMAD.MOV.U32 R9, RZ, RZ, RZ ;

        /*0ea0*/                   DFMA R4, R4, R4, R6 ;

        /*0eb0*/                   DADD R4, R4, -R12 ;

        /*0ec0*/                   DSETP.GTU.AND P1, PT, R4, RZ, PT ;

        /*0ed0*/                   DSETP.GEU.AND P0, PT, R4, RZ, PT ;

        /*0ee0*/                   SEL R6, RZ, 0x1, !P1 ;

        /*0ef0*/                   SEL R7, RZ, 0x1, P0 ;

        /*0f00*/                   IMAD.IADD R8, R6, 0x1, -R7 ;

        /*0f10*/                   MOV R7, c[0x0][0x1a4] ;

        /*0f20*/                   IMAD.MOV.U32 R6, RZ, RZ, c[0x0][0x1a0] ;

        /*0f30*/                   SHF.R.U32.HI R8, RZ, 0x1f, R8 ;

        /*0f40*/                   IMAD.WIDE.U32 R6, R0, 0x18, R6 ;

        /*0f50*/                   LOP3.LUT R11, R8, 0x1, RZ, 0x3c, !PT ;

        /*0f60*/                   IMAD.IADD R9, R9, 0x1, R7 ;

        /*0f70*/                   IMAD.MOV.U32 R8, RZ, RZ, R6 ;

        /*0f80*/                   STG.E.U8.SYS [R34], R11 ;

        /*0f90*/                   LDG.E.64.SYS R6, [R8+0x8] ;

        /*0fa0*/                   BMOV.32.CLEAR RZ, B0 ;

        /*0fb0*/                   BSSY B0, 0x1650 ;

        /*0fc0*/                   IMAD.MOV.U32 R14, RZ, RZ, 0x0 ;

        /*0fd0*/                   MOV R15, 0x7ff00000 ;

        /*0fe0*/                   DFMA R6, -R6, R6, 1 ;

        /*0ff0*/                   DSETP.NEU.AND P1, PT, R6, RZ, PT ;

        /*1000*/              @!P1 BRA 0x1620 ;

        /*1010*/                   LDG.E.64.SYS R8, [R40+0x10] ;

        /*1020*/                   LDG.E.64.SYS R16, [R38+0x10] ;

        /*1030*/                   LDG.E.64.SYS R20, [R40] ;

        /*1040*/                   LDG.E.64.SYS R18, [R38] ;

        /*1050*/                   MUFU.RCP64H R11, R7 ;

        /*1060*/                   IADD3 R10, R7, 0x300402, RZ ;

        /*1070*/                   DSETP.GTU.XOR P0, PT, R4, RZ, !P0 ;

        /*1080*/                   BMOV.32.CLEAR RZ, B1 ;

        /*1090*/                   BSSY B1, 0x11c0 ;

        /*10a0*/                   FSETP.GEU.AND P1, PT, |R10|, 5.8789094863358348022e-39, PT ;

        /*10b0*/                   DFMA R22, -R6, R10, 1 ;

        /*10c0*/                   DFMA R22, R22, R22, R22 ;

        /*10d0*/                   DFMA R22, R10, R22, R10 ;

        /*10e0*/                   DFMA R4, -R6, R22, 1 ;

        /*10f0*/                   DFMA R22, R22, R4, R22 ;

        /*1100*/                   DMUL R8, R8, R16 ;

        /*1110*/                   DFMA R20, R20, R18, R8 ;

        /*1120*/               @P1 BRA 0x11b0 ;

        /*1130*/                   LOP3.LUT R8, R7, 0x7fffffff, RZ, 0xc0, !PT ;

        /*1140*/                   IMAD.MOV.U32 R4, RZ, RZ, R6 ;

        /*1150*/                   MOV R0, 0x1190 ;

        /*1160*/                   IMAD.MOV.U32 R5, RZ, RZ, R7 ;

        /*1170*/                   IADD3 R8, R8, -0x100000, RZ ;

        /*1180*/                   CALL.REL.NOINC 0x3690 ;

        /*1190*/                   IMAD.MOV.U32 R22, RZ, RZ, R8 ;

        /*11a0*/                   IMAD.MOV.U32 R23, RZ, RZ, R9 ;

        /*11b0*/                   BSYNC B1 ;

        /*11c0*/                   DMUL R4, R20, R22 ;

        /*11d0*/              @!P0 DMUL R6, R4, -2 ;

        /*11e0*/              @!P0 DSETP.GTU.AND P1, PT, R6, RZ, PT ;

        /*11f0*/              @!P0 FSEL R6, R6, RZ, P1 ;

        /*1200*/              @!P0 FSEL R7, R7, +QNAN , P1 ;

        /*1210*/              @!P0 BRA 0x1640 ;

        /*1220*/                   DMUL R16, R16, R16 ;

        /*1230*/                   DMUL R6, R4, R4 ;

        /*1240*/                   DFMA R16, R18, R18, R16 ;

        /*1250*/                   DADD R16, -R12, R16 ;

        /*1260*/                   DMUL R16, R16, R22 ;

        /*1270*/                   DSETP.GT.AND P0, PT, R6, R16, PT ;

        /*1280*/               @P0 BRA 0x1340 ;

        /*1290*/                   DSETP.NEU.AND P0, PT, R6, R16, PT ;

        /*12a0*/               @P0 BRA 0x1310 ;

        /*12b0*/                   DSETP.GT.AND P0, PT, R4, RZ, PT ;

        /*12c0*/                   DADD R6, -RZ, -R4 ;

        /*12d0*/              @!P0 BRA 0x1640 ;

        /*12e0*/                   MOV R6, 0x0 ;

        /*12f0*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*1300*/                   BRA 0x1640 ;

        /*1310*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*1320*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*1330*/                   BRA 0x1640 ;

        /*1340*/                   DADD R16, -R16, R6 ;

        /*1350*/                   IMAD.MOV.U32 R10, RZ, RZ, 0x0 ;

        /*1360*/                   MOV R11, 0x3fd80000 ;

        /*1370*/                   BMOV.32.CLEAR RZ, B1 ;

        /*1380*/                   BSSY B1, 0x1530 ;

        /*1390*/                   MUFU.RSQ64H R7, R17 ;

        /*13a0*/                   IADD3 R6, R17, -0x3500000, RZ ;

        /*13b0*/                   ISETP.GE.U32.AND P0, PT, R6, 0x7ca00000, PT ;

        /*13c0*/                   DMUL R8, R6, R6 ;

        /*13d0*/                   DFMA R8, R16, -R8, 1 ;

        /*13e0*/                   DFMA R10, R8, R10, 0.5 ;

        /*13f0*/                   DMUL R8, R6, R8 ;

        /*1400*/                   DFMA R10, R10, R8, R6 ;

        /*1410*/                   DMUL R18, R16, R10 ;

        /*1420*/                   IADD3 R13, R11, -0x100000, RZ ;

        /*1430*/                   IMAD.MOV.U32 R12, RZ, RZ, R10 ;

        /*1440*/                   DFMA R20, R18, -R18, R16 ;

        /*1450*/                   DFMA R8, R20, R12, R18 ;

        /*1460*/              @!P0 BRA 0x1520 ;

        /*1470*/                   IMAD.MOV.U32 R0, RZ, RZ, R10 ;

        /*1480*/                   MOV R8, 0x1500 ;

        /*1490*/                   IMAD.MOV.U32 R10, RZ, RZ, R16 ;

        /*14a0*/                   MOV R16, R20 ;

        /*14b0*/                   IMAD.MOV.U32 R11, RZ, RZ, R17 ;

        /*14c0*/                   IMAD.MOV.U32 R17, RZ, RZ, R21 ;

        /*14d0*/                   IMAD.MOV.U32 R20, RZ, RZ, R6 ;

        /*14e0*/                   IMAD.MOV.U32 R21, RZ, RZ, R13 ;

        /*14f0*/                   CALL.REL.NOINC 0x3f20 ;

        /*1500*/                   IMAD.MOV.U32 R8, RZ, RZ, R16 ;

        /*1510*/                   MOV R9, R17 ;

        /*1520*/                   BSYNC B1 ;

        /*1530*/                   DADD R10, -R4, R8 ;

        /*1540*/                   DADD R4, -R4, -R8 ;

        /*1550*/                   DSETP.GEU.AND P0, PT, R10, RZ, PT ;

        /*1560*/              @!P0 BRA 0x15f0 ;

        /*1570*/                   IMAD.MOV.U32 R6, RZ, RZ, R4 ;

        /*1580*/                   IMAD.MOV.U32 R7, RZ, RZ, R5 ;

        /*1590*/                   IMAD.MOV.U32 R14, RZ, RZ, R10 ;

        /*15a0*/                   IMAD.MOV.U32 R15, RZ, RZ, R11 ;

        /*15b0*/                   DSETP.GEU.AND P0, PT, R6, RZ, PT ;

        /*15c0*/              @!P0 MOV R6, 0x0 ;

        /*15d0*/              @!P0 IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*15e0*/                   BRA 0x1640 ;

        /*15f0*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*1600*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*1610*/                   BRA 0x1640 ;

        /*1620*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*1630*/                   MOV R7, 0x7ff00000 ;

        /*1640*/                   BSYNC B0 ;

        /*1650*/                   DSETP.GEU.AND P0, PT, R14, R6, PT ;

        /*1660*/                   FSEL R4, R14, R6, !P0 ;

        /*1670*/                   FSEL R5, R15, R7, !P0 ;

        /*1680*/                   STG.E.64.SYS [R2], R4 ;

        /*1690*/                   EXIT ;

        /*16a0*/                   LDG.E.SYS R14, [R18] ;

        /*16b0*/                   IMAD.MOV.U32 R6, RZ, RZ, c[0x0][0x190] ;

        /*16c0*/                   IMAD.MOV.U32 R7, RZ, RZ, c[0x0][0x194] ;

        /*16d0*/                   IMAD.MOV.U32 R27, RZ, RZ, RZ ;

        /*16e0*/                   IMAD.WIDE.U32 R6, R0, 0x18, R6 ;

        /*16f0*/                   IMAD.IADD R7, R7, 0x1, R27 ;

        /*1700*/                   LDG.E.64.SYS R8, [R6+0x10] ;

        /*1710*/                   IMAD.WIDE.U32 R14, R14, R5, c[0x0][0x180] ;

        /*1720*/                   LDG.E.64.SYS R4, [R6+0x8] ;

        /*1730*/                   LDG.E.64.SYS R14, [R14] ;

        /*1740*/                   DMUL R8, R8, R8 ;

        /*1750*/                   DFMA R8, R4, R4, R8 ;

        /*1760*/                   DADD R8, R8, -R14 ;

        /*1770*/                   DSETP.GTU.AND P1, PT, R8, RZ, PT ;

        /*1780*/                   DSETP.GEU.AND P0, PT, R8, RZ, PT ;

        /*1790*/                   SEL R4, RZ, 0x1, !P1 ;

        /*17a0*/                   SEL R5, RZ, 0x1, P0 ;

        /*17b0*/                   IADD3 R4, R4, -R5, RZ ;

        /*17c0*/                   SHF.R.U32.HI R4, RZ, 0x1f, R4 ;

        /*17d0*/                   LOP3.LUT R11, R4, 0x1, RZ, 0x3c, !PT ;

        /*17e0*/                   STG.E.U8.SYS [R34], R11 ;

        /*17f0*/                   LDG.E.64.SYS R4, [R40] ;

        /*1800*/                   BMOV.32.CLEAR RZ, B0 ;

        /*1810*/                   BSSY B0, 0x1ec0 ;

        /*1820*/                   IMAD.MOV.U32 R12, RZ, RZ, 0x0 ;

        /*1830*/                   IMAD.MOV.U32 R13, RZ, RZ, 0x7ff00000 ;

        /*1840*/                   DFMA R4, -R4, R4, 1 ;

        /*1850*/                   DSETP.NEU.AND P1, PT, R4, RZ, PT ;

        /*1860*/              @!P1 BRA 0x1e90 ;

        /*1870*/                   MOV R11, c[0x0][0x1a4] ;

        /*1880*/                   IMAD.MOV.U32 R10, RZ, RZ, c[0x0][0x1a0] ;

        /*1890*/                   LDG.E.64.SYS R16, [R6+0x10] ;

        /*18a0*/                   IMAD.WIDE.U32 R10, R0, 0x18, R10 ;

        /*18b0*/                   LDG.E.64.SYS R18, [R6+0x8] ;

        /*18c0*/                   IMAD.IADD R27, R27, 0x1, R11 ;

        /*18d0*/                   IMAD.MOV.U32 R26, RZ, RZ, R10 ;

        /*18e0*/                   LDG.E.64.SYS R10, [R26+0x10] ;

        /*18f0*/                   LDG.E.64.SYS R20, [R26+0x8] ;

        /*1900*/                   MUFU.RCP64H R23, R5 ;

        /*1910*/                   IADD3 R22, R5, 0x300402, RZ ;

        /*1920*/                   DFMA R24, -R4, R22, 1 ;

        /*1930*/                   DFMA R24, R24, R24, R24 ;

        /*1940*/                   FSETP.GEU.AND P1, PT, |R22|, 5.8789094863358348022e-39, PT ;

        /*1950*/                   DFMA R24, R22, R24, R22 ;

        /*1960*/                   DSETP.GTU.XOR P0, PT, R8, RZ, !P0 ;

        /*1970*/                   DFMA R8, -R4, R24, 1 ;

        /*1980*/                   BMOV.32.CLEAR RZ, B1 ;

        /*1990*/                   BSSY B1, 0x1a30 ;

        /*19a0*/                   DFMA R8, R24, R8, R24 ;

        /*19b0*/                   DMUL R10, R10, R16 ;

        /*19c0*/                   DFMA R20, R20, R18, R10 ;

        /*19d0*/               @P1 BRA 0x1a20 ;

        /*19e0*/                   LOP3.LUT R8, R5, 0x7fffffff, RZ, 0xc0, !PT ;

        /*19f0*/                   MOV R0, 0x1a20 ;

        /*1a00*/                   IADD3 R8, R8, -0x100000, RZ ;

        /*1a10*/                   CALL.REL.NOINC 0x3690 ;

        /*1a20*/                   BSYNC B1 ;

        /*1a30*/                   DMUL R4, R20, R8 ;

        /*1a40*/              @!P0 DMUL R6, R4, -2 ;

        /*1a50*/              @!P0 DSETP.GTU.AND P1, PT, R6, RZ, PT ;

        /*1a60*/              @!P0 FSEL R6, R6, RZ, P1 ;

        /*1a70*/              @!P0 FSEL R7, R7, +QNAN , P1 ;

        /*1a80*/              @!P0 BRA 0x1eb0 ;

        /*1a90*/                   DMUL R16, R16, R16 ;

        /*1aa0*/                   DMUL R6, R4, R4 ;

        /*1ab0*/                   DFMA R16, R18, R18, R16 ;

        /*1ac0*/                   DADD R16, -R14, R16 ;

        /*1ad0*/                   DMUL R16, R16, R8 ;

        /*1ae0*/                   DSETP.GT.AND P0, PT, R6, R16, PT ;

        /*1af0*/               @P0 BRA 0x1bb0 ;

        /*1b00*/                   DSETP.NEU.AND P0, PT, R6, R16, PT ;

        /*1b10*/               @P0 BRA 0x1b80 ;

        /*1b20*/                   DSETP.GT.AND P0, PT, R4, RZ, PT ;

        /*1b30*/                   DADD R6, -RZ, -R4 ;

        /*1b40*/              @!P0 BRA 0x1eb0 ;

        /*1b50*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*1b60*/                   MOV R7, 0x7ff00000 ;

        /*1b70*/                   BRA 0x1eb0 ;

        /*1b80*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*1b90*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*1ba0*/                   BRA 0x1eb0 ;

        /*1bb0*/                   DADD R16, -R16, R6 ;

        /*1bc0*/                   IMAD.MOV.U32 R10, RZ, RZ, 0x0 ;

        /*1bd0*/                   MOV R11, 0x3fd80000 ;

        /*1be0*/                   BMOV.32.CLEAR RZ, B1 ;

        /*1bf0*/                   BSSY B1, 0x1da0 ;

        /*1c00*/                   MUFU.RSQ64H R7, R17 ;

        /*1c10*/                   IADD3 R6, R17, -0x3500000, RZ ;

        /*1c20*/                   ISETP.GE.U32.AND P0, PT, R6, 0x7ca00000, PT ;

        /*1c30*/                   DMUL R8, R6, R6 ;

        /*1c40*/                   DFMA R8, R16, -R8, 1 ;

        /*1c50*/                   DFMA R10, R8, R10, 0.5 ;

        /*1c60*/                   DMUL R8, R6, R8 ;

        /*1c70*/                   DFMA R10, R10, R8, R6 ;

        /*1c80*/                   DMUL R18, R16, R10 ;

        /*1c90*/                   IADD3 R15, R11, -0x100000, RZ ;

        /*1ca0*/                   IMAD.MOV.U32 R14, RZ, RZ, R10 ;

        /*1cb0*/                   DFMA R20, R18, -R18, R16 ;

        /*1cc0*/                   DFMA R8, R20, R14, R18 ;

        /*1cd0*/              @!P0 BRA 0x1d90 ;

        /*1ce0*/                   IMAD.MOV.U32 R0, RZ, RZ, R10 ;

        /*1cf0*/                   MOV R11, R17 ;

        /*1d00*/                   IMAD.MOV.U32 R10, RZ, RZ, R16 ;

        /*1d10*/                   MOV R8, 0x1d70 ;

        /*1d20*/                   IMAD.MOV.U32 R16, RZ, RZ, R20 ;

        /*1d30*/                   IMAD.MOV.U32 R17, RZ, RZ, R21 ;

        /*1d40*/                   MOV R21, R15 ;

        /*1d50*/                   IMAD.MOV.U32 R20, RZ, RZ, R6 ;

        /*1d60*/                   CALL.REL.NOINC 0x3f20 ;

        /*1d70*/                   IMAD.MOV.U32 R8, RZ, RZ, R16 ;

        /*1d80*/                   IMAD.MOV.U32 R9, RZ, RZ, R17 ;

        /*1d90*/                   BSYNC B1 ;

        /*1da0*/                   DADD R10, -R4, R8 ;

        /*1db0*/                   DADD R4, -R4, -R8 ;

        /*1dc0*/                   DSETP.GEU.AND P0, PT, R10, RZ, PT ;

        /*1dd0*/              @!P0 BRA 0x1e60 ;

        /*1de0*/                   IMAD.MOV.U32 R6, RZ, RZ, R4 ;

        /*1df0*/                   MOV R7, R5 ;

        /*1e00*/                   IMAD.MOV.U32 R12, RZ, RZ, R10 ;

        /*1e10*/                   IMAD.MOV.U32 R13, RZ, RZ, R11 ;

        /*1e20*/                   DSETP.GEU.AND P0, PT, R6, RZ, PT ;

        /*1e30*/              @!P0 IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*1e40*/              @!P0 MOV R7, 0x7ff00000 ;

        /*1e50*/                   BRA 0x1eb0 ;

        /*1e60*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*1e70*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*1e80*/                   BRA 0x1eb0 ;

        /*1e90*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*1ea0*/                   MOV R7, 0x7ff00000 ;

        /*1eb0*/                   BSYNC B0 ;

        /*1ec0*/                   DSETP.GEU.AND P0, PT, R12, R6, PT ;

        /*1ed0*/                   FSEL R4, R12, R6, !P0 ;

        /*1ee0*/                   FSEL R5, R13, R7, !P0 ;

        /*1ef0*/                   STG.E.64.SYS [R2], R4 ;

        /*1f00*/                   EXIT ;

        /*1f10*/                   LOP3.LUT R6, R6, 0xff, RZ, 0xc0, !PT ;

        /*1f20*/                   PRMT R4, R6, 0x9910, RZ ;

        /*1f30*/                   ISETP.NE.AND P0, PT, R4, 0x5, PT ;

        /*1f40*/              @!P0 BRA 0x2e20 ;

        /*1f50*/                   ISETP.NE.AND P0, PT, R4, 0x6, PT ;

        /*1f60*/               @P0 EXIT ;

        /*1f70*/                   LDG.E.SYS R26, [R18] ;

        /*1f80*/                   LDG.E.64.SYS R16, [R38+0x8] ;

        /*1f90*/                   LDG.E.64.SYS R8, [R38] ;

        /*1fa0*/                   IMAD.WIDE.U32 R26, R26, R5, c[0x0][0x180] ;

        /*1fb0*/                   LDG.E.64.SYS R4, [R38+0x10] ;

        /*1fc0*/                   LDG.E.64.SYS R32, [R26+0x20] ;

        /*1fd0*/                   LDG.E.64.SYS R14, [R26+0x18] ;

        /*1fe0*/                   LDG.E.64.SYS R42, [R26+0x8] ;

        /*1ff0*/                   LDG.E.64.SYS R10, [R26] ;

        /*2000*/                   LDG.E.64.SYS R24, [R26+0x38] ;

        /*2010*/                   LDG.E.64.SYS R20, [R26+0x28] ;

        /*2020*/                   LDG.E.64.SYS R22, [R26+0x30] ;

        /*2030*/                   LDG.E.64.SYS R12, [R26+0x10] ;

        /*2040*/                   LDG.E.64.SYS R18, [R26+0x40] ;

        /*2050*/                   LDG.E.64.SYS R6, [R26+0x48] ;

        /*2060*/                   DMUL R30, R4, R32 ;

        /*2070*/                   DMUL R28, R16, R14 ;

        /*2080*/                   DFMA R30, R16, R42, R30 ;

        /*2090*/                   DFMA R28, R8, R10, R28 ;

        /*20a0*/                   DADD R30, R30, R24 ;

        /*20b0*/                   DFMA R28, R4, R20, R28 ;

        /*20c0*/                   DMUL R30, R16, R30 ;

        /*20d0*/                   DADD R28, R28, R22 ;

        /*20e0*/                   DFMA R16, R4, R12, R18 ;

        /*20f0*/                   DFMA R28, R8, R28, R30 ;

        /*2100*/                   DFMA R4, R4, R16, R28 ;

        /*2110*/                   DADD R4, R4, R6 ;

        /*2120*/                   DSETP.GTU.AND P1, PT, R4, RZ, PT ;

        /*2130*/                   DSETP.GEU.AND P0, PT, R4, RZ, PT ;

        /*2140*/                   SEL R0, RZ, 0x1, !P1 ;

        /*2150*/                   SEL R9, RZ, 0x1, P0 ;

        /*2160*/                   IMAD.IADD R0, R0, 0x1, -R9 ;

        /*2170*/                   SHF.R.U32.HI R0, RZ, 0x1f, R0 ;

        /*2180*/                   LOP3.LUT R0, R0, 0x1, RZ, 0x3c, !PT ;

        /*2190*/                   STG.E.U8.SYS [R34], R0 ;

        /*21a0*/                   LDG.E.64.SYS R8, [R40+0x10] ;

        /*21b0*/                   LDG.E.64.SYS R16, [R40+0x8] ;

        /*21c0*/                   LDG.E.64.SYS R26, [R40] ;

        /*21d0*/                   LDG.E.64.SYS R30, [R38+0x8] ;

        /*21e0*/                   LDG.E.64.SYS R28, [R38] ;

        /*21f0*/                   LDG.E.64.SYS R36, [R38+0x10] ;

        /*2200*/                   DSETP.GTU.XOR P0, PT, R4, RZ, !P0 ;

        /*2210*/                   BMOV.32.CLEAR RZ, B0 ;

        /*2220*/                   BSSY B0, 0x2dd0 ;

        /*2230*/                   DMUL R34, R32, R8 ;

        /*2240*/                   DMUL R44, R14, R16 ;

        /*2250*/                   DFMA R34, R42, R16, R34 ;

        /*2260*/                   DFMA R44, R10, R26, R44 ;

        /*2270*/                   DMUL R34, R16, R34 ;

        /*2280*/                   DFMA R34, R26, R44, R34 ;

        /*2290*/                   DADD R44, R42, R42 ;

        /*22a0*/                   DMUL R44, R30, R44 ;

        /*22b0*/                   DMUL R40, R32, R36 ;

        /*22c0*/                   DFMA R44, R14, R28, R44 ;

        /*22d0*/                   DFMA R42, R42, R30, R40 ;

        /*22e0*/                   DADD R38, R44, R40 ;

        /*22f0*/                   DADD R40, R12, R12 ;

        /*2300*/                   DMUL R40, R36, R40 ;

        /*2310*/                   DFMA R32, R32, R30, R40 ;

        /*2320*/                   DMUL R40, R14, R30 ;

        /*2330*/                   DADD R14, R10, R10 ;

        /*2340*/                   DFMA R14, R14, R28, R40 ;

        /*2350*/                   DFMA R10, R10, R28, R40 ;

        /*2360*/                   DFMA R14, R20, R36, R14 ;

        /*2370*/                   DADD R10, R22, R10 ;

        /*2380*/                   DADD R14, R22, R14 ;

        /*2390*/                   DMUL R22, R12, R36 ;

        /*23a0*/                   DMUL R12, R12, R8 ;

        /*23b0*/                   DADD R42, R24, R42 ;

        /*23c0*/                   DADD R38, R24, R38 ;

        /*23d0*/                   DFMA R12, R20, R26, R12 ;

        /*23e0*/                   DMUL R30, R30, R42 ;

        /*23f0*/                   DMUL R38, R16, R38 ;

        /*2400*/                   DFMA R22, R20, R28, R22 ;

        /*2410*/                   DFMA R32, R20, R28, R32 ;

        /*2420*/                   DFMA R34, R8, R12, R34 ;

        /*2430*/                   DADD R22, R18, R22 ;

        /*2440*/                   DADD R32, R18, R32 ;

        /*2450*/                   DFMA R10, R28, R10, R30 ;

        /*2460*/                   DFMA R14, R26, R14, R38 ;

        /*2470*/                   DSETP.GE.AND P1, PT, |R34|, c[0x2][0x0], PT ;

        /*2480*/                   DFMA R10, R36, R22, R10 ;

        /*2490*/                   DFMA R14, R8, R32, R14 ;

        /*24a0*/                   DADD R12, R6, R10 ;

        /*24b0*/                   DMUL R14, R14, 0.5 ;

        /*24c0*/              @!P1 BRA 0x2a10 ;

        /*24d0*/                   MUFU.RCP64H R5, R35 ;

        /*24e0*/                   IADD3 R4, R35, 0x300402, RZ ;

        /*24f0*/                   BMOV.32.CLEAR RZ, B1 ;

        /*2500*/                   BSSY B1, 0x25f0 ;

        /*2510*/                   FSETP.GEU.AND P1, PT, |R4|, 5.8789094863358348022e-39, PT ;

        /*2520*/                   DFMA R6, -R34, R4, 1 ;

        /*2530*/                   DFMA R6, R6, R6, R6 ;

        /*2540*/                   DFMA R6, R4, R6, R4 ;

        /*2550*/                   DFMA R8, -R34, R6, 1 ;

        /*2560*/                   DFMA R8, R6, R8, R6 ;

        /*2570*/               @P1 BRA 0x25e0 ;

        /*2580*/                   LOP3.LUT R8, R35, 0x7fffffff, RZ, 0xc0, !PT ;

        /*2590*/                   IMAD.MOV.U32 R4, RZ, RZ, R34 ;

        /*25a0*/                   MOV R0, 0x25e0 ;

        /*25b0*/                   IMAD.MOV.U32 R5, RZ, RZ, R35 ;

        /*25c0*/                   IADD3 R8, R8, -0x100000, RZ ;

        /*25d0*/                   CALL.REL.NOINC 0x3690 ;

        /*25e0*/                   BSYNC B1 ;

        /*25f0*/                   DMUL R14, R14, R8 ;

        /*2600*/              @!P0 DMUL R4, R14, -2 ;

        /*2610*/              @!P0 DSETP.GTU.AND P1, PT, R4, RZ, PT ;

        /*2620*/              @!P0 FSEL R6, R4, RZ, P1 ;

        /*2630*/              @!P0 FSEL R7, R5, +QNAN , P1 ;

        /*2640*/              @!P0 IMAD.MOV.U32 R5, RZ, RZ, 0x7ff00000 ;

        /*2650*/              @!P0 MOV R4, 0x0 ;

        /*2660*/              @!P0 BRA 0x2dc0 ;

        /*2670*/                   DMUL R8, R12, R8 ;

        /*2680*/                   DMUL R4, R14, R14 ;

        /*2690*/                   DSETP.GT.AND P0, PT, R4, R8, PT ;

        /*26a0*/               @P0 BRA 0x2780 ;

        /*26b0*/                   DSETP.NEU.AND P0, PT, R4, R8, PT ;

        /*26c0*/                   IMAD.MOV.U32 R4, RZ, RZ, 0x0 ;

        /*26d0*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x7ff00000 ;

        /*26e0*/               @P0 BRA 0x2750 ;

        /*26f0*/                   DSETP.GT.AND P0, PT, R14, RZ, PT ;

        /*2700*/                   DADD R6, -RZ, -R14 ;

        /*2710*/              @!P0 BRA 0x2dc0 ;

        /*2720*/                   MOV R6, 0x0 ;

        /*2730*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*2740*/                   BRA 0x2dc0 ;

        /*2750*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*2760*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*2770*/                   BRA 0x2dc0 ;

        /*2780*/                   DADD R10, -R8, R4 ;

        /*2790*/                   MOV R8, 0x0 ;

        /*27a0*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x3fd80000 ;

        /*27b0*/                   BMOV.32.CLEAR RZ, B1 ;

        /*27c0*/                   BSSY B1, 0x2930 ;

        /*27d0*/                   MUFU.RSQ64H R5, R11 ;

        /*27e0*/                   IADD3 R4, R11, -0x3500000, RZ ;

        /*27f0*/                   ISETP.GE.U32.AND P0, PT, R4, 0x7ca00000, PT ;

        /*2800*/                   DMUL R6, R4, R4 ;

        /*2810*/                   DFMA R6, R10, -R6, 1 ;

        /*2820*/                   DFMA R8, R6, R8, 0.5 ;

        /*2830*/                   DMUL R6, R4, R6 ;

        /*2840*/                   DFMA R12, R8, R6, R4 ;

        /*2850*/                   DMUL R18, R10, R12 ;

        /*2860*/                   IADD3 R9, R13, -0x100000, RZ ;

        /*2870*/                   IMAD.MOV.U32 R8, RZ, RZ, R12 ;

        /*2880*/                   DFMA R16, R18, -R18, R10 ;

        /*2890*/                   DFMA R6, R16, R8, R18 ;

        /*28a0*/              @!P0 BRA 0x2920 ;

        /*28b0*/                   IMAD.MOV.U32 R0, RZ, RZ, R12 ;

        /*28c0*/                   MOV R20, R4 ;

        /*28d0*/                   IMAD.MOV.U32 R21, RZ, RZ, R9 ;

        /*28e0*/                   MOV R8, 0x2900 ;

        /*28f0*/                   CALL.REL.NOINC 0x3f20 ;

        /*2900*/                   IMAD.MOV.U32 R6, RZ, RZ, R16 ;

        /*2910*/                   IMAD.MOV.U32 R7, RZ, RZ, R17 ;

        /*2920*/                   BSYNC B1 ;

        /*2930*/                   DADD R4, -R14, R6 ;

        /*2940*/                   DADD R14, -R14, -R6 ;

        /*2950*/                   MOV R6, 0x0 ;

        /*2960*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*2970*/                   DSETP.GEU.AND P0, PT, R4, RZ, PT ;

        /*2980*/              @!P0 BRA 0x29e0 ;

        /*2990*/                   DSETP.GEU.AND P0, PT, R14, RZ, PT ;

        /*29a0*/              @!P0 BRA 0x2dc0 ;

        /*29b0*/                   IMAD.MOV.U32 R6, RZ, RZ, R14 ;

        /*29c0*/                   IMAD.MOV.U32 R7, RZ, RZ, R15 ;

        /*29d0*/                   BRA 0x2dc0 ;

        /*29e0*/                   MOV R4, 0x0 ;

        /*29f0*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x7ff00000 ;

        /*2a00*/                   BRA 0x2dc0 ;

        /*2a10*/                   IMAD.MOV.U32 R4, RZ, RZ, 0x0 ;

        /*2a20*/                   MOV R6, 0x0 ;

        /*2a30*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x7ff00000 ;

        /*2a40*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*2a50*/              @!P0 BRA 0x2dc0 ;

        /*2a60*/                   DMUL R6, R14, c[0x2][0x8] ;

        /*2a70*/                   DMUL R12, R12, c[0x2][0x8] ;

        /*2a80*/                   DMUL R8, R6, R6 ;

        /*2a90*/                   DSETP.GT.AND P0, PT, R8, R12, PT ;

        /*2aa0*/               @P0 BRA 0x2b60 ;

        /*2ab0*/                   DSETP.NEU.AND P0, PT, R8, R12, PT ;

        /*2ac0*/               @P0 BRA 0x2b30 ;

        /*2ad0*/                   DSETP.GT.AND P0, PT, R6, RZ, PT ;

        /*2ae0*/                   DADD R6, -RZ, -R6 ;

        /*2af0*/              @!P0 BRA 0x2dc0 ;

        /*2b00*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*2b10*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*2b20*/                   BRA 0x2dc0 ;

        /*2b30*/                   MOV R6, 0x0 ;

        /*2b40*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*2b50*/                   BRA 0x2dc0 ;

        /*2b60*/                   DADD R10, R8, -R12 ;

        /*2b70*/                   IMAD.MOV.U32 R14, RZ, RZ, 0x0 ;

        /*2b80*/                   BMOV.32.CLEAR RZ, B1 ;

        /*2b90*/                   IMAD.MOV.U32 R15, RZ, RZ, 0x3fd80000 ;

        /*2ba0*/                   BSSY B1, 0x2d00 ;

        /*2bb0*/                   MUFU.RSQ64H R9, R11 ;

        /*2bc0*/                   IADD3 R8, R11, -0x3500000, RZ ;

        /*2bd0*/                   ISETP.GE.U32.AND P0, PT, R8, 0x7ca00000, PT ;

        /*2be0*/                   DMUL R12, R8, R8 ;

        /*2bf0*/                   DFMA R12, R10, -R12, 1 ;

        /*2c00*/                   DFMA R14, R12, R14, 0.5 ;

        /*2c10*/                   DMUL R12, R8, R12 ;

        /*2c20*/                   DFMA R12, R14, R12, R8 ;

        /*2c30*/                   DMUL R18, R10, R12 ;

        /*2c40*/                   IADD3 R21, R13, -0x100000, RZ ;

        /*2c50*/                   MOV R20, R12 ;

        /*2c60*/                   DFMA R16, R18, -R18, R10 ;

        /*2c70*/                   DFMA R14, R16, R20, R18 ;

        /*2c80*/              @!P0 BRA 0x2cf0 ;

        /*2c90*/                   IMAD.MOV.U32 R20, RZ, RZ, R8 ;

        /*2ca0*/                   MOV R8, 0x2cd0 ;

        /*2cb0*/                   IMAD.MOV.U32 R0, RZ, RZ, R12 ;

        /*2cc0*/                   CALL.REL.NOINC 0x3f20 ;

        /*2cd0*/                   IMAD.MOV.U32 R14, RZ, RZ, R16 ;

        /*2ce0*/                   MOV R15, R17 ;

        /*2cf0*/                   BSYNC B1 ;

        /*2d00*/                   DADD R8, -R6, R14 ;

        /*2d10*/                   DADD R6, -R6, -R14 ;

        /*2d20*/                   DSETP.GEU.AND P0, PT, R8, RZ, PT ;

        /*2d30*/              @!P0 BRA 0x2da0 ;

        /*2d40*/                   DSETP.GEU.AND P0, PT, R6, RZ, PT ;

        /*2d50*/                   IMAD.MOV.U32 R4, RZ, RZ, R8 ;

        /*2d60*/                   IMAD.MOV.U32 R5, RZ, RZ, R9 ;

        /*2d70*/              @!P0 IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*2d80*/              @!P0 MOV R7, 0x7ff00000 ;

        /*2d90*/                   BRA 0x2dc0 ;

        /*2da0*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*2db0*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*2dc0*/                   BSYNC B0 ;

        /*2dd0*/                   DSETP.GEU.AND P0, PT, R4, R6, PT ;

        /*2de0*/                   FSEL R4, R4, R6, !P0 ;

        /*2df0*/                   FSEL R5, R5, R7, !P0 ;

        /*2e00*/                   STG.E.64.SYS [R2], R4 ;

        /*2e10*/                   EXIT ;

        /*2e20*/                   LDG.E.SYS R12, [R18] ;

        /*2e30*/                   LDG.E.64.SYS R6, [R38+0x8] ;

        /*2e40*/                   IMAD.WIDE.U32 R12, R12, R5, c[0x0][0x180] ;

        /*2e50*/                   LDG.E.64.SYS R4, [R38] ;

        /*2e60*/                   LDG.E.64.SYS R12, [R12] ;

        /*2e70*/                   DMUL R6, R6, R6 ;

        /*2e80*/                   IMAD.MOV.U32 R9, RZ, RZ, RZ ;

        /*2e90*/                   DFMA R4, R4, R4, R6 ;

        /*2ea0*/                   DADD R4, R4, -R12 ;

        /*2eb0*/                   DSETP.GTU.AND P1, PT, R4, RZ, PT ;

        /*2ec0*/                   DSETP.GEU.AND P0, PT, R4, RZ, PT ;

        /*2ed0*/                   SEL R6, RZ, 0x1, !P1 ;

        /*2ee0*/                   SEL R7, RZ, 0x1, P0 ;

        /*2ef0*/                   IMAD.IADD R8, R6, 0x1, -R7 ;

        /*2f00*/                   MOV R6, c[0x0][0x1a0] ;

        /*2f10*/                   IMAD.MOV.U32 R7, RZ, RZ, c[0x0][0x1a4] ;

        /*2f20*/                   SHF.R.U32.HI R8, RZ, 0x1f, R8 ;

        /*2f30*/                   IMAD.WIDE.U32 R6, R0, 0x18, R6 ;

        /*2f40*/                   LOP3.LUT R11, R8, 0x1, RZ, 0x3c, !PT ;

        /*2f50*/                   IMAD.IADD R9, R9, 0x1, R7 ;

        /*2f60*/                   MOV R8, R6 ;

        /*2f70*/                   STG.E.U8.SYS [R34], R11 ;

        /*2f80*/                   LDG.E.64.SYS R6, [R8+0x10] ;

        /*2f90*/                   BMOV.32.CLEAR RZ, B0 ;

        /*2fa0*/                   BSSY B0, 0x3640 ;

        /*2fb0*/                   IMAD.MOV.U32 R14, RZ, RZ, 0x0 ;

        /*2fc0*/                   IMAD.MOV.U32 R15, RZ, RZ, 0x7ff00000 ;

        /*2fd0*/                   DFMA R6, -R6, R6, 1 ;

        /*2fe0*/                   DSETP.NEU.AND P1, PT, R6, RZ, PT ;

        /*2ff0*/              @!P1 BRA 0x3610 ;

        /*3000*/                   LDG.E.64.SYS R8, [R40+0x8] ;

        /*3010*/                   LDG.E.64.SYS R16, [R38+0x8] ;

        /*3020*/                   LDG.E.64.SYS R20, [R40] ;

        /*3030*/                   LDG.E.64.SYS R18, [R38] ;

        /*3040*/                   MUFU.RCP64H R11, R7 ;

        /*3050*/                   IADD3 R10, R7, 0x300402, RZ ;

        /*3060*/                   DSETP.GTU.XOR P0, PT, R4, RZ, !P0 ;

        /*3070*/                   BMOV.32.CLEAR RZ, B1 ;

        /*3080*/                   BSSY B1, 0x31b0 ;

        /*3090*/                   FSETP.GEU.AND P1, PT, |R10|, 5.8789094863358348022e-39, PT ;

        /*30a0*/                   DFMA R22, -R6, R10, 1 ;

        /*30b0*/                   DFMA R22, R22, R22, R22 ;

        /*30c0*/                   DFMA R22, R10, R22, R10 ;

        /*30d0*/                   DFMA R4, -R6, R22, 1 ;

        /*30e0*/                   DFMA R22, R22, R4, R22 ;

        /*30f0*/                   DMUL R8, R8, R16 ;

        /*3100*/                   DFMA R20, R20, R18, R8 ;

        /*3110*/               @P1 BRA 0x31a0 ;

        /*3120*/                   LOP3.LUT R8, R7, 0x7fffffff, RZ, 0xc0, !PT ;

        /*3130*/                   IMAD.MOV.U32 R4, RZ, RZ, R6 ;

        /*3140*/                   MOV R5, R7 ;

        /*3150*/                   IADD3 R8, R8, -0x100000, RZ ;

        /*3160*/                   MOV R0, 0x3180 ;

        /*3170*/                   CALL.REL.NOINC 0x3690 ;

        /*3180*/                   IMAD.MOV.U32 R22, RZ, RZ, R8 ;

        /*3190*/                   IMAD.MOV.U32 R23, RZ, RZ, R9 ;

        /*31a0*/                   BSYNC B1 ;

        /*31b0*/                   DMUL R4, R20, R22 ;

        /*31c0*/              @!P0 DMUL R6, R4, -2 ;

        /*31d0*/              @!P0 DSETP.GTU.AND P1, PT, R6, RZ, PT ;

        /*31e0*/              @!P0 FSEL R6, R6, RZ, P1 ;

        /*31f0*/              @!P0 FSEL R7, R7, +QNAN , P1 ;

        /*3200*/              @!P0 BRA 0x3630 ;

        /*3210*/                   DMUL R16, R16, R16 ;

        /*3220*/                   DMUL R6, R4, R4 ;

        /*3230*/                   DFMA R16, R18, R18, R16 ;

        /*3240*/                   DADD R16, -R12, R16 ;

        /*3250*/                   DMUL R16, R16, R22 ;

        /*3260*/                   DSETP.GT.AND P0, PT, R6, R16, PT ;

        /*3270*/               @P0 BRA 0x3330 ;

        /*3280*/                   DSETP.NEU.AND P0, PT, R6, R16, PT ;

        /*3290*/               @P0 BRA 0x3300 ;

        /*32a0*/                   DSETP.GT.AND P0, PT, R4, RZ, PT ;

        /*32b0*/                   DADD R6, -RZ, -R4 ;

        /*32c0*/              @!P0 BRA 0x3630 ;

        /*32d0*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*32e0*/                   MOV R7, 0x7ff00000 ;

        /*32f0*/                   BRA 0x3630 ;

        /*3300*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*3310*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*3320*/                   BRA 0x3630 ;

        /*3330*/                   DADD R16, -R16, R6 ;

        /*3340*/                   IMAD.MOV.U32 R10, RZ, RZ, 0x0 ;

        /*3350*/                   MOV R11, 0x3fd80000 ;

        /*3360*/                   BMOV.32.CLEAR RZ, B1 ;

        /*3370*/                   BSSY B1, 0x3520 ;

        /*3380*/                   MUFU.RSQ64H R7, R17 ;

        /*3390*/                   IADD3 R6, R17, -0x3500000, RZ ;

        /*33a0*/                   ISETP.GE.U32.AND P0, PT, R6, 0x7ca00000, PT ;

        /*33b0*/                   DMUL R8, R6, R6 ;

        /*33c0*/                   DFMA R8, R16, -R8, 1 ;

        /*33d0*/                   DFMA R10, R8, R10, 0.5 ;

        /*33e0*/                   DMUL R8, R6, R8 ;

        /*33f0*/                   DFMA R10, R10, R8, R6 ;

        /*3400*/                   DMUL R18, R16, R10 ;

        /*3410*/                   IADD3 R13, R11, -0x100000, RZ ;

        /*3420*/                   IMAD.MOV.U32 R12, RZ, RZ, R10 ;

        /*3430*/                   DFMA R20, R18, -R18, R16 ;

        /*3440*/                   DFMA R8, R20, R12, R18 ;

        /*3450*/              @!P0 BRA 0x3510 ;

        /*3460*/                   IMAD.MOV.U32 R0, RZ, RZ, R10 ;

        /*3470*/                   MOV R11, R17 ;

        /*3480*/                   IMAD.MOV.U32 R10, RZ, RZ, R16 ;

        /*3490*/                   MOV R8, 0x34f0 ;

        /*34a0*/                   IMAD.MOV.U32 R16, RZ, RZ, R20 ;

        /*34b0*/                   IMAD.MOV.U32 R17, RZ, RZ, R21 ;

        /*34c0*/                   MOV R21, R13 ;

        /*34d0*/                   IMAD.MOV.U32 R20, RZ, RZ, R6 ;

        /*34e0*/                   CALL.REL.NOINC 0x3f20 ;

        /*34f0*/                   IMAD.MOV.U32 R8, RZ, RZ, R16 ;

        /*3500*/                   IMAD.MOV.U32 R9, RZ, RZ, R17 ;

        /*3510*/                   BSYNC B1 ;

        /*3520*/                   DADD R10, -R4, R8 ;

        /*3530*/                   DADD R4, -R4, -R8 ;

        /*3540*/                   DSETP.GEU.AND P0, PT, R10, RZ, PT ;

        /*3550*/              @!P0 BRA 0x35e0 ;

        /*3560*/                   IMAD.MOV.U32 R6, RZ, RZ, R4 ;

        /*3570*/                   MOV R7, R5 ;

        /*3580*/                   IMAD.MOV.U32 R14, RZ, RZ, R10 ;

        /*3590*/                   IMAD.MOV.U32 R15, RZ, RZ, R11 ;

        /*35a0*/                   DSETP.GEU.AND P0, PT, R6, RZ, PT ;

        /*35b0*/              @!P0 IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*35c0*/              @!P0 MOV R7, 0x7ff00000 ;

        /*35d0*/                   BRA 0x3630 ;

        /*35e0*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*35f0*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*3600*/                   BRA 0x3630 ;

        /*3610*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*3620*/                   MOV R7, 0x7ff00000 ;

        /*3630*/                   BSYNC B0 ;

        /*3640*/                   DSETP.GEU.AND P0, PT, R14, R6, PT ;

        /*3650*/                   FSEL R4, R14, R6, !P0 ;

        /*3660*/                   FSEL R5, R15, R7, !P0 ;

        /*3670*/                   STG.E.64.SYS [R2], R4 ;

        /*3680*/                   EXIT ;

        /*3690*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*36a0*/                   DSETP.GTU.AND P1, PT, |R4|, +INF , PT ;

        /*36b0*/                   BMOV.32.CLEAR RZ, B2 ;

        /*36c0*/                   BSSY B2, 0x3940 ;

        /*36d0*/                   BMOV.32.CLEAR RZ, B3 ;

        /*36e0*/                   BSSY B3, 0x3790 ;

        /*36f0*/               @P1 BREAK B3 ;

        /*3700*/               @P1 BRA 0x3910 ;

        /*3710*/                   LOP3.LUT R9, R5, 0x7fffffff, RZ, 0xc0, !PT ;

        /*3720*/                   IADD3 R6, R9, -0x1, RZ ;

        /*3730*/                   ISETP.GE.U32.AND P1, PT, R6, 0x7fefffff, PT ;

        /*3740*/               @P1 BREAK B3 ;

        /*3750*/               @P1 LOP3.LUT R7, R5, 0x7ff00000, RZ, 0x3c, !PT ;

        /*3760*/               @P1 IMAD.MOV.U32 R6, RZ, RZ, RZ ;

        /*3770*/               @P1 BRA 0x3930 ;

        /*3780*/                   BSYNC B3 ;

        /*3790*/                   ISETP.GE.U32.AND P1, PT, R9, 0x1000001, PT ;

        /*37a0*/              @!P1 BRA 0x3880 ;

        /*37b0*/                   IADD3 R7, R5, -0x3fe00000, RZ ;

        /*37c0*/                   IMAD.MOV.U32 R6, RZ, RZ, R4 ;

        /*37d0*/                   MUFU.RCP64H R9, R7 ;

        /*37e0*/                   DFMA R10, -R6, R8, 1 ;

        /*37f0*/                   DFMA R10, R10, R10, R10 ;

        /*3800*/                   DFMA R10, R8, R10, R8 ;

        /*3810*/                   DFMA R8, -R6, R10, 1 ;

        /*3820*/                   DFMA R8, R10, R8, R10 ;

        /*3830*/                   DMUL R8, R8, 2.2250738585072013831e-308 ;

        /*3840*/                   DFMA R4, -R4, R8, 1 ;

        /*3850*/                   DFMA R4, R4, R4, R4 ;

        /*3860*/                   DFMA R6, R8, R4, R8 ;

        /*3870*/                   BRA 0x3930 ;

        /*3880*/                   DMUL R4, R4, 8.11296384146066816958e+31 ;

        /*3890*/                   MUFU.RCP64H R9, R5 ;

        /*38a0*/                   DFMA R6, -R4, R8, 1 ;

        /*38b0*/                   DFMA R6, R6, R6, R6 ;

        /*38c0*/                   DFMA R6, R8, R6, R8 ;

        /*38d0*/                   DFMA R8, -R4, R6, 1 ;

        /*38e0*/                   DFMA R6, R6, R8, R6 ;

        /*38f0*/                   DMUL R6, R6, 8.11296384146066816958e+31 ;

        /*3900*/                   BRA 0x3930 ;

        /*3910*/                   LOP3.LUT R7, R5, 0x80000, RZ, 0xfc, !PT ;

        /*3920*/                   IMAD.MOV.U32 R6, RZ, RZ, R4 ;

        /*3930*/                   BSYNC B2 ;

        /*3940*/                   IMAD.MOV.U32 R4, RZ, RZ, R0 ;

        /*3950*/                   MOV R8, R6 ;

        /*3960*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x0 ;

        /*3970*/                   IMAD.MOV.U32 R9, RZ, RZ, R7 ;

        /*3980*/                   RET.REL.NODEC R4 0x0 ;

        /*3990*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*39a0*/                   LOP3.LUT R6, R5, 0x40000000, RZ, 0xc0, !PT ;

        /*39b0*/                   IMAD.MOV.U32 R8, RZ, RZ, RZ ;

        /*39c0*/                   MOV R18, 0x5ff00000 ;

        /*39d0*/                   IMAD.MOV.U32 R14, RZ, RZ, 0x1 ;

        /*39e0*/                   ISETP.GE.U32.AND P0, PT, R6, 0x40000000, PT ;

        /*39f0*/                   BMOV.32.CLEAR RZ, B2 ;

        /*3a00*/                   LOP3.LUT R20, R19, 0x7f800000, RZ, 0xc0, !PT ;

        /*3a10*/                   BSSY B2, 0x3ed0 ;

        /*3a20*/                   SEL R9, R18, 0x1ff00000, !P0 ;

        /*3a30*/                   ISETP.GE.U32.AND P0, PT, R20, 0x3e800000, PT ;

        /*3a40*/                   DMUL R12, R4, R8 ;

        /*3a50*/                   SEL R11, R18, 0x1ff00000, !P0 ;

        /*3a60*/                   MUFU.RCP64H R15, R13 ;

        /*3a70*/                   DFMA R6, -R12, R14, 1 ;

        /*3a80*/                   DFMA R16, R6, R6, R6 ;

        /*3a90*/                   IMAD.MOV.U32 R6, RZ, RZ, R10 ;

        /*3aa0*/                   MOV R7, R19 ;

        /*3ab0*/                   IMAD.MOV.U32 R10, RZ, RZ, RZ ;

        /*3ac0*/                   DFMA R16, R14, R16, R14 ;

        /*3ad0*/                   DMUL R10, R6, R10 ;

        /*3ae0*/                   DMUL R14, R10, R16 ;

        /*3af0*/                   DFMA R10, -R12, R14, R10 ;

        /*3b00*/                   DFMA R14, R16, R10, R14 ;

        /*3b10*/                   DSETP.GT.AND P0, PT, |R14|, RZ, PT ;

        /*3b20*/              @!P0 BRA 0x3df0 ;

        /*3b30*/                   ISETP.GT.U32.AND P0, PT, R20, 0x3e7fffff, PT ;

        /*3b40*/                   IMAD.MOV.U32 R10, RZ, RZ, RZ ;

        /*3b50*/                   DMUL R12, R8, R14 ;

        /*3b60*/                   SEL R11, R18, 0x1ff00000, P0 ;

        /*3b70*/                   DMUL R14, R14, R10 ;

        /*3b80*/                   DMUL R12, R10, R12 ;

        /*3b90*/                   DMUL R8, R8, R14 ;

        /*3ba0*/                   DFMA R10, R4, R12, -R6 ;

        /*3bb0*/                   DFMA R14, R4, R8, -R6 ;

        /*3bc0*/                   DSETP.GT.AND P0, PT, |R10|, |R14|, PT ;

        /*3bd0*/                   FSEL R11, R9, R13, P0 ;

        /*3be0*/                   FSEL R8, R8, R12, P0 ;

        /*3bf0*/                   FSETP.GTU.AND P1, PT, |R11|, 1.469367938527859385e-39, PT ;

        /*3c00*/                   IMAD.MOV.U32 R9, RZ, RZ, R11 ;

        /*3c10*/               @P1 BRA 0x3ec0 ;

        /*3c20*/                   FSETP.GEU.AND P0, PT, |R7|, 1.5046327690525280102e-36, PT ;

        /*3c30*/                   IMAD.MOV.U32 R9, RZ, RZ, R11 ;

        /*3c40*/                   MOV R12, 0x58500000 ;

        /*3c50*/                   LOP3.LUT R10, R8, 0xfffffffe, RZ, 0xc0, !PT ;

        /*3c60*/                   SEL R13, R12, 0x3ff00000, !P0 ;

        /*3c70*/                   IMAD.MOV.U32 R12, RZ, RZ, RZ ;

        /*3c80*/                   LOP3.LUT R8, R8, 0x1, RZ, 0xfc, !PT ;

        /*3c90*/                   DMUL R4, R4, R12 ;

        /*3ca0*/                   DMUL R6, R6, R12 ;

        /*3cb0*/                   DFMA R12, R10, R4, -R6 ;

        /*3cc0*/                   DFMA R14, R8, R4, -R6 ;

        /*3cd0*/                   DSETP.GT.AND P0, PT, |R12|, |R14|, PT ;

        /*3ce0*/                   FSEL R15, R8, R10, P0 ;

        /*3cf0*/                   IADD3 R12, P1, R15.reuse, 0x1, RZ ;

        /*3d00*/                   LOP3.LUT R8, R15.reuse, 0x1, RZ, 0xc0, !PT ;

        /*3d10*/                   IADD3 R10, P2, R15, -0x1, RZ ;

        /*3d20*/                   IMAD.X R13, RZ, RZ, R11, P1 ;

        /*3d30*/                   ISETP.NE.U32.AND P0, PT, R8, 0x1, PT ;

        /*3d40*/                   IADD3.X R9, R11, -0x1, RZ, P2, !PT ;

        /*3d50*/                   FSEL R12, R15, R12, P0 ;

        /*3d60*/                   FSEL R13, R11, R13, P0 ;

        /*3d70*/                   FSEL R10, R10, R15, P0 ;

        /*3d80*/                   FSEL R11, R9, R11, P0 ;

        /*3d90*/                   DFMA R8, R4, R12, -R6 ;

        /*3da0*/                   DFMA R4, R4, R10, -R6 ;

        /*3db0*/                   DSETP.GT.AND P0, PT, |R8|, |R4|, PT ;

        /*3dc0*/                   FSEL R8, R10, R12, P0 ;

        /*3dd0*/                   FSEL R9, R11, R13, P0 ;

        /*3de0*/                   BRA 0x3ec0 ;

        /*3df0*/                   DSETP.NEU.AND P0, PT, R14, RZ, PT ;

        /*3e00*/              @!P0 BRA 0x3eb0 ;

        /*3e10*/                   MUFU.RCP64H R9, R5 ;

        /*3e20*/                   MOV R8, RZ ;

        /*3e30*/                   DSETP.GT.AND P1, PT, |R8|, RZ, PT ;

        /*3e40*/              @!P1 DSETP.NEU.AND P0, PT, |R4|, +INF , PT ;

        /*3e50*/              @!P1 FSEL R4, R4, R8, P0 ;

        /*3e60*/              @!P1 FSEL R11, R5, R9, P0 ;

        /*3e70*/              @!P1 IMAD.MOV.U32 R8, RZ, RZ, R4 ;

        /*3e80*/              @!P1 IMAD.MOV.U32 R9, RZ, RZ, R11 ;

        /*3e90*/                   DMUL R8, R6, R8 ;

        /*3ea0*/                   BRA 0x3ec0 ;

        /*3eb0*/                   DMUL R8, R6, R4 ;

        /*3ec0*/                   BSYNC B2 ;

        /*3ed0*/                   IMAD.MOV.U32 R4, RZ, RZ, R0 ;

        /*3ee0*/                   MOV R7, R9 ;

        /*3ef0*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x0 ;

        /*3f00*/                   IMAD.MOV.U32 R6, RZ, RZ, R8 ;

        /*3f10*/                   RET.REL.NODEC R4 0x0 ;

        /*3f20*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*3f30*/                   ISETP.GE.U32.AND P0, PT, R20, -0x3400000, PT ;

        /*3f40*/                   BMOV.32.CLEAR RZ, B2 ;

        /*3f50*/                   BSSY B2, 0x41a0 ;

        /*3f60*/                   IMAD.MOV.U32 R20, RZ, RZ, R0 ;

        /*3f70*/              @!P0 BRA 0x4000 ;

        /*3f80*/                   DFMA.RM R16, R16, R20, R18 ;

        /*3f90*/                   IADD3 R18, P0, R16, 0x1, RZ ;

        /*3fa0*/                   IADD3.X R19, RZ, R17, RZ, P0, !PT ;

        /*3fb0*/                   DFMA.RP R10, -R16, R18, R10 ;

        /*3fc0*/                   DSETP.GT.AND P0, PT, R10, RZ, PT ;

        /*3fd0*/                   FSEL R16, R18, R16, P0 ;

        /*3fe0*/                   FSEL R17, R19, R17, P0 ;

        /*3ff0*/                   BRA 0x4190 ;

        /*4000*/                   DSETP.NE.AND P0, PT, R10, RZ, PT ;

        /*4010*/              @!P0 BRA 0x4180 ;

        /*4020*/                   ISETP.GE.AND P0, PT, R11, RZ, PT ;

        /*4030*/              @!P0 IMAD.MOV.U32 R16, RZ, RZ, 0x0 ;

        /*4040*/              @!P0 IMAD.MOV.U32 R17, RZ, RZ, -0x80000 ;

        /*4050*/              @!P0 BRA 0x4190 ;

        /*4060*/                   ISETP.GT.AND P0, PT, R11, 0x7fefffff, PT ;

        /*4070*/               @P0 BRA 0x4180 ;

        /*4080*/                   DMUL R10, R10, 8.11296384146066816958e+31 ;

        /*4090*/                   IMAD.MOV.U32 R16, RZ, RZ, RZ ;

        /*40a0*/                   MOV R20, 0x0 ;

        /*40b0*/                   IMAD.MOV.U32 R21, RZ, RZ, 0x3fd80000 ;

        /*40c0*/                   MUFU.RSQ64H R17, R11 ;

        /*40d0*/                   DMUL R18, R16, R16 ;

        /*40e0*/                   DFMA R18, R10, -R18, 1 ;

        /*40f0*/                   DFMA R20, R18, R20, 0.5 ;

        /*4100*/                   DMUL R18, R16, R18 ;

        /*4110*/                   DFMA R18, R20, R18, R16 ;

        /*4120*/                   DMUL R16, R10, R18 ;

        /*4130*/                   IADD3 R19, R19, -0x100000, RZ ;

        /*4140*/                   DFMA R20, R16, -R16, R10 ;

        /*4150*/                   DFMA R16, R18, R20, R16 ;

        /*4160*/                   IADD3 R17, R17, -0x3500000, RZ ;

        /*4170*/                   BRA 0x4190 ;

        /*4180*/                   DADD R16, R10, R10 ;

        /*4190*/                   BSYNC B2 ;

        /*41a0*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x0 ;

        /*41b0*/                   RET.REL.NODEC R8 0x0 ;

        /*41c0*/                   BRA 0x41c0;

        /*41d0*/                   NOP;

        /*41e0*/                   NOP;

        /*41f0*/                   NOP;

		............................................................



Fatbin ptx code:
================
arch = sm_70
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
