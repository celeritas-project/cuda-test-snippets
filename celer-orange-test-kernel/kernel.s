
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

        /*0120*/                   IMAD R14, R3, c[0x0][0x168], R0 ;

        /*0130*/                   ISETP.GE.U32.AND P0, PT, R14, c[0x0][0x168], PT ;

        /*0140*/               @P0 IADD3 R14, R14, -c[0x0][0x168], RZ ;

        /*0150*/                   ISETP.GE.U32.AND P0, PT, R14, c[0x0][0x168], PT ;

        /*0160*/               @P0 IADD3 R14, R14, -c[0x0][0x168], RZ ;

        /*0170*/              @!P1 LOP3.LUT R14, RZ, c[0x0][0x168], RZ, 0x33, !PT ;

        /*0180*/                   IADD3 R4, P0, R14, c[0x0][0x160], RZ ;

        /*0190*/                   IADD3.X R5, RZ, c[0x0][0x164], RZ, P0, !PT ;

        /*01a0*/                   LDG.E.U8.SYS R4, [R4] ;

        /*01b0*/                   IADD3 R40, P0, R0.reuse, c[0x0][0x1b0], RZ ;

        /*01c0*/                   IMAD.MOV.U32 R33, RZ, RZ, 0x18 ;

        /*01d0*/                   BMOV.32.CLEAR RZ, B0 ;

        /*01e0*/                   IMAD.MOV.U32 R15, RZ, RZ, 0x4 ;

        /*01f0*/                   BSSY B0, 0x2180 ;

        /*0200*/                   IMAD.X R41, RZ, RZ, c[0x0][0x1b4], P0 ;

        /*0210*/                   IMAD.MOV.U32 R13, RZ, RZ, 0x8 ;

        /*0220*/                   IMAD.WIDE.U32 R36, R0, R33, c[0x0][0x190] ;

        /*0230*/                   IMAD.WIDE.U32 R32, R0, R33, c[0x0][0x1a0] ;

        /*0240*/                   IMAD.WIDE.U32 R2, R0, R13, c[0x0][0x1c0] ;

        /*0250*/                   IMAD.WIDE.U32 R14, R14, R15, c[0x0][0x170] ;

        /*0260*/                   ISETP.GT.AND P0, PT, R4, 0x3, PT ;

        /*0270*/               @P0 BRA 0x1170 ;

        /*0280*/                   ISETP.NE.AND P0, PT, R4, 0x1, PT ;

        /*0290*/              @!P0 BRA 0xe40 ;

        /*02a0*/                   ISETP.NE.AND P0, PT, R4, 0x2, PT ;

        /*02b0*/              @!P0 BRA 0xb10 ;

        /*02c0*/                   ISETP.NE.AND P0, PT, R4, 0x3, PT ;

        /*02d0*/               @P0 BRA 0x2170 ;

        /*02e0*/                   LDG.E.SYS R12, [R14] ;

        /*02f0*/                   LDG.E.64.SYS R6, [R36+0x10] ;

        /*0300*/                   LDG.E.64.SYS R4, [R36+0x8] ;

        /*0310*/                   IMAD.WIDE.U32 R12, R12, R13, c[0x0][0x180] ;

        /*0320*/                   LDG.E.64.SYS R12, [R12] ;

        /*0330*/                   DMUL R6, R6, R6 ;

        /*0340*/                   DFMA R6, R4, R4, R6 ;

        /*0350*/                   DADD R6, R6, -R12 ;

        /*0360*/                   DSETP.GEU.AND P1, PT, R6, RZ, PT ;

        /*0370*/                   DSETP.GTU.AND P0, PT, R6, RZ, PT ;

        /*0380*/                   SEL R0, RZ, 0x1, P1 ;

        /*0390*/                   IADD3 R24, -R0, 0x1, RZ ;

        /*03a0*/              @!P0 IADD3 R24, -R0, RZ, RZ ;

        /*03b0*/                   SHF.R.U32.HI R0, RZ, 0x1f, R24 ;

        /*03c0*/                   LOP3.LUT R9, R0, 0x1, RZ, 0x3c, !PT ;

        /*03d0*/                   STG.E.U8.SYS [R40], R9 ;

        /*03e0*/                   LDG.E.64.SYS R4, [R32] ;

        /*03f0*/                   BMOV.32.CLEAR RZ, B1 ;

        /*0400*/                   BSSY B1, 0xac0 ;

        /*0410*/                   IMAD.MOV.U32 R16, RZ, RZ, 0x0 ;

        /*0420*/                   IMAD.MOV.U32 R17, RZ, RZ, 0x7ff00000 ;

        /*0430*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*0440*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*0450*/                   DFMA R4, -R4, R4, 1 ;

        /*0460*/                   DSETP.NEU.AND P0, PT, R4, RZ, PT ;

        /*0470*/              @!P0 BRA 0xab0 ;

        /*0480*/                   LDG.E.64.SYS R6, [R32+0x10] ;

        /*0490*/                   LDG.E.64.SYS R14, [R36+0x10] ;

        /*04a0*/                   LDG.E.64.SYS R20, [R32+0x8] ;

        /*04b0*/                   LDG.E.64.SYS R18, [R36+0x8] ;

        /*04c0*/                   MUFU.RCP64H R9, R5 ;

        /*04d0*/                   IADD3 R8, R5, 0x300402, RZ ;

        /*04e0*/                   BMOV.32.CLEAR RZ, B2 ;

        /*04f0*/                   BSSY B2, 0x5f0 ;

        /*0500*/                   ISETP.NE.AND P1, PT, R24, RZ, PT ;

        /*0510*/                   FSETP.GEU.AND P0, PT, |R8|, 5.8789094863358348022e-39, PT ;

        /*0520*/                   DFMA R10, -R4, R8, 1 ;

        /*0530*/                   DFMA R10, R10, R10, R10 ;

        /*0540*/                   DFMA R10, R8, R10, R8 ;

        /*0550*/                   DFMA R22, -R4, R10, 1 ;

        /*0560*/                   DFMA R10, R10, R22, R10 ;

        /*0570*/                   DMUL R6, R6, R14 ;

        /*0580*/                   DFMA R20, R20, R18, R6 ;

        /*0590*/               @P0 BRA 0x5e0 ;

        /*05a0*/                   LOP3.LUT R8, R5, 0x7fffffff, RZ, 0xc0, !PT ;

        /*05b0*/                   MOV R0, 0x5e0 ;

        /*05c0*/                   IADD3 R8, R8, -0x100000, RZ ;

        /*05d0*/                   CALL.REL.NOINC 0x3510 ;

        /*05e0*/                   BSYNC B2 ;

        /*05f0*/                   DMUL R4, R20, R10 ;

        /*0600*/              @!P1 BRA 0xa70 ;

        /*0610*/                   DMUL R14, R14, R14 ;

        /*0620*/                   DMUL R6, R4, R4 ;

        /*0630*/                   DFMA R14, R18, R18, R14 ;

        /*0640*/                   DADD R14, -R12, R14 ;

        /*0650*/                   DMUL R14, R14, R10 ;

        /*0660*/                   DSETP.GT.AND P0, PT, R6, R14, PT ;

        /*0670*/               @P0 BRA 0x740 ;

        /*0680*/                   DSETP.NEU.AND P0, PT, R6, R14, PT ;

        /*0690*/                   MOV R16, 0x0 ;

        /*06a0*/                   IMAD.MOV.U32 R17, RZ, RZ, 0x7ff00000 ;

        /*06b0*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*06c0*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*06d0*/               @P0 BRA 0xab0 ;

        /*06e0*/                   DSETP.GT.AND P0, PT, R4, RZ, PT ;

        /*06f0*/                   DADD R6, -RZ, -R4 ;

        /*0700*/              @!P0 BRA 0xab0 ;

        /*0710*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*0720*/                   MOV R7, 0x7ff00000 ;

        /*0730*/                   BRA 0xab0 ;

        /*0740*/                   DADD R14, -R14, R6 ;

        /*0750*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*0760*/                   BMOV.32.CLEAR RZ, B2 ;

        /*0770*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x3fd80000 ;

        /*0780*/                   BSSY B2, 0x940 ;

        /*0790*/                   MUFU.RSQ64H R13, R15 ;

        /*07a0*/                   IADD3 R12, R15, -0x3500000, RZ ;

        /*07b0*/                   ISETP.GE.U32.AND P0, PT, R12, 0x7ca00000, PT ;

        /*07c0*/                   DMUL R6, R12, R12 ;

        /*07d0*/                   DFMA R6, R14, -R6, 1 ;

        /*07e0*/                   DFMA R8, R6, R8, 0.5 ;

        /*07f0*/                   DMUL R6, R12, R6 ;

        /*0800*/                   DFMA R10, R8, R6, R12 ;

        /*0810*/                   DMUL R16, R14, R10 ;

        /*0820*/                   IADD3 R9, R11, -0x100000, RZ ;

        /*0830*/                   IMAD.MOV.U32 R8, RZ, RZ, R10 ;

        /*0840*/                   DFMA R18, R16, -R16, R14 ;

        /*0850*/                   DFMA R6, R18, R8, R16 ;

        /*0860*/              @!P0 BRA 0x930 ;

        /*0870*/                   MOV R6, R14 ;

        /*0880*/                   IMAD.MOV.U32 R8, RZ, RZ, R10 ;

        /*0890*/                   MOV R0, 0x910 ;

        /*08a0*/                   IMAD.MOV.U32 R7, RZ, RZ, R15 ;

        /*08b0*/                   MOV R15, R17 ;

        /*08c0*/                   IMAD.MOV.U32 R14, RZ, RZ, R16 ;

        /*08d0*/                   IMAD.MOV.U32 R10, RZ, RZ, R18 ;

        /*08e0*/                   IMAD.MOV.U32 R11, RZ, RZ, R19 ;

        /*08f0*/                   IMAD.MOV.U32 R16, RZ, RZ, R12 ;

        /*0900*/                   CALL.REL.NOINC 0x3d50 ;

        /*0910*/                   IMAD.MOV.U32 R6, RZ, RZ, R16 ;

        /*0920*/                   IMAD.MOV.U32 R7, RZ, RZ, R17 ;

        /*0930*/                   BSYNC B2 ;

        /*0940*/                   DADD R8, -R4.reuse, R6.reuse ;

        /*0950*/                   IMAD.MOV.U32 R16, RZ, RZ, 0x0 ;

        /*0960*/                   IMAD.MOV.U32 R17, RZ, RZ, 0x7ff00000 ;

        /*0970*/                   DADD R4, -R4, -R6 ;

        /*0980*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*0990*/                   MOV R7, 0x7ff00000 ;

        /*09a0*/                   DSETP.GEU.AND P0, PT, R8, RZ, PT ;

        /*09b0*/              @!P0 BRA 0xab0 ;

        /*09c0*/                   DSETP.GEU.AND P0, PT, R4, RZ, PT ;

        /*09d0*/                   IMAD.MOV.U32 R6, RZ, RZ, R4 ;

        /*09e0*/                   MOV R16, R8 ;

        /*09f0*/                   IMAD.MOV.U32 R7, RZ, RZ, R5 ;

        /*0a00*/                   IMAD.MOV.U32 R17, RZ, RZ, R9 ;

        /*0a10*/               @P0 BRA 0xab0 ;

        /*0a20*/                   IMAD.MOV.U32 R16, RZ, RZ, R8 ;

        /*0a30*/                   MOV R7, 0x7ff00000 ;

        /*0a40*/                   IMAD.MOV.U32 R17, RZ, RZ, R9 ;

        /*0a50*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*0a60*/                   BRA 0xab0 ;

        /*0a70*/                   DMUL R4, R4, -2 ;

        /*0a80*/                   DSETP.GTU.AND P0, PT, R4, RZ, PT ;

        /*0a90*/                   FSEL R6, R4, RZ, P0 ;

        /*0aa0*/                   FSEL R7, R5, +QNAN , P0 ;

        /*0ab0*/                   BSYNC B1 ;

        /*0ac0*/                   DSETP.GEU.AND P0, PT, R16, R6, PT ;

        /*0ad0*/                   FSEL R4, R16, R6, !P0 ;

        /*0ae0*/                   FSEL R5, R17, R7, !P0 ;

        /*0af0*/                   STG.E.64.SYS [R2], R4 ;

        /*0b00*/                   EXIT ;

        /*0b10*/                   LDG.E.SYS R4, [R14] ;

        /*0b20*/                   LDG.E.64.SYS R6, [R36+0x10] ;

        /*0b30*/                   IMAD.WIDE.U32 R4, R4, R13, c[0x0][0x180] ;

        /*0b40*/                   LDG.E.64.SYS R8, [R4] ;

        /*0b50*/                   BMOV.32.CLEAR RZ, B1 ;

        /*0b60*/                   BSSY B1, 0xe20 ;

        /*0b70*/                   IMAD.MOV.U32 R4, RZ, RZ, 0x0 ;

        /*0b80*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x7ff00000 ;

        /*0b90*/                   DADD R6, R6, -R8 ;

        /*0ba0*/                   DSETP.GEU.AND P1, PT, R6, RZ, PT ;

        /*0bb0*/                   DSETP.GTU.AND P0, PT, R6, RZ, PT ;

        /*0bc0*/                   SEL R0, RZ, 0x1, P1 ;

        /*0bd0*/                   IADD3 R6, -R0, 0x1, RZ ;

        /*0be0*/              @!P0 IMAD.MOV R6, RZ, RZ, -R0 ;

        /*0bf0*/                   SHF.R.U32.HI R0, RZ, 0x1f, R6 ;

        /*0c00*/                   LOP3.LUT R7, R0, 0x1, RZ, 0x3c, !PT ;

        /*0c10*/                   ISETP.NE.AND P0, PT, R6, RZ, PT ;

        /*0c20*/                   STG.E.U8.SYS [R40], R7 ;

        /*0c30*/              @!P0 BRA 0xe10 ;

        /*0c40*/                   LDG.E.64.SYS R32, [R32+0x10] ;

        /*0c50*/                   DSETP.NEU.AND P0, PT, R32, RZ, PT ;

        /*0c60*/              @!P0 BRA 0xe10 ;

        /*0c70*/                   LDG.E.64.SYS R36, [R36+0x10] ;

        /*0c80*/                   MUFU.RCP64H R7, R33 ;

        /*0c90*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x1 ;

        /*0ca0*/                   BMOV.32.CLEAR RZ, B2 ;

        /*0cb0*/                   BSSY B2, 0xde0 ;

        /*0cc0*/                   DFMA R10, -R32, R6, 1 ;

        /*0cd0*/                   DFMA R10, R10, R10, R10 ;

        /*0ce0*/                   DFMA R10, R6, R10, R6 ;

        /*0cf0*/                   DADD R8, R8, -R36 ;

        /*0d00*/                   DMUL R6, R8, R10 ;

        /*0d10*/                   FSETP.GTU.AND P1, PT, |R9|, 6.4490557925156731238e-37, PT ;

        /*0d20*/                   DFMA R12, -R32, R6, R8 ;

        /*0d30*/                   DFMA R6, R10, R12, R6 ;

        /*0d40*/                   FFMA R0, RZ, R33, R7 ;

        /*0d50*/                   FSETP.GT.AND P0, PT, |R0|, 4.8978884574313168671e-40, PT ;

        /*0d60*/               @P0 BRA P1, 0xdd0 ;

        /*0d70*/                   MOV R12, R8 ;

        /*0d80*/                   IMAD.MOV.U32 R21, RZ, RZ, R9 ;

        /*0d90*/                   MOV R0, 0xdb0 ;

        /*0da0*/                   CALL.REL.NOINC 0x37c0 ;

        /*0db0*/                   IMAD.MOV.U32 R6, RZ, RZ, R12 ;

        /*0dc0*/                   IMAD.MOV.U32 R7, RZ, RZ, R13 ;

        /*0dd0*/                   BSYNC B2 ;

        /*0de0*/                   DSETP.GT.AND P0, PT, R6, RZ, PT ;

        /*0df0*/               @P0 IMAD.MOV.U32 R4, RZ, RZ, R6 ;

        /*0e00*/               @P0 MOV R5, R7 ;

        /*0e10*/                   BSYNC B1 ;

        /*0e20*/                   STG.E.64.SYS [R2], R4 ;

        /*0e30*/                   EXIT ;

        /*0e40*/                   LDG.E.SYS R4, [R14] ;

        /*0e50*/                   LDG.E.64.SYS R6, [R36+0x8] ;

        /*0e60*/                   IMAD.WIDE.U32 R4, R4, R13, c[0x0][0x180] ;

        /*0e70*/                   LDG.E.64.SYS R8, [R4] ;

        /*0e80*/                   BMOV.32.CLEAR RZ, B1 ;

        /*0e90*/                   BSSY B1, 0x1150 ;

        /*0ea0*/                   IMAD.MOV.U32 R4, RZ, RZ, 0x0 ;

        /*0eb0*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x7ff00000 ;

        /*0ec0*/                   DADD R6, R6, -R8 ;

        /*0ed0*/                   DSETP.GEU.AND P1, PT, R6, RZ, PT ;

        /*0ee0*/                   DSETP.GTU.AND P0, PT, R6, RZ, PT ;

        /*0ef0*/                   SEL R0, RZ, 0x1, P1 ;

        /*0f00*/                   IADD3 R6, -R0, 0x1, RZ ;

        /*0f10*/              @!P0 IMAD.MOV R6, RZ, RZ, -R0 ;

        /*0f20*/                   SHF.R.U32.HI R0, RZ, 0x1f, R6 ;

        /*0f30*/                   LOP3.LUT R7, R0, 0x1, RZ, 0x3c, !PT ;

        /*0f40*/                   ISETP.NE.AND P0, PT, R6, RZ, PT ;

        /*0f50*/                   STG.E.U8.SYS [R40], R7 ;

        /*0f60*/              @!P0 BRA 0x1140 ;

        /*0f70*/                   LDG.E.64.SYS R32, [R32+0x8] ;

        /*0f80*/                   DSETP.NEU.AND P0, PT, R32, RZ, PT ;

        /*0f90*/              @!P0 BRA 0x1140 ;

        /*0fa0*/                   LDG.E.64.SYS R36, [R36+0x8] ;

        /*0fb0*/                   MUFU.RCP64H R7, R33 ;

        /*0fc0*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x1 ;

        /*0fd0*/                   BMOV.32.CLEAR RZ, B2 ;

        /*0fe0*/                   BSSY B2, 0x1110 ;

        /*0ff0*/                   DFMA R10, -R32, R6, 1 ;

        /*1000*/                   DFMA R10, R10, R10, R10 ;

        /*1010*/                   DFMA R10, R6, R10, R6 ;

        /*1020*/                   DADD R8, R8, -R36 ;

        /*1030*/                   DMUL R6, R8, R10 ;

        /*1040*/                   FSETP.GTU.AND P1, PT, |R9|, 6.4490557925156731238e-37, PT ;

        /*1050*/                   DFMA R12, -R32, R6, R8 ;

        /*1060*/                   DFMA R6, R10, R12, R6 ;

        /*1070*/                   FFMA R0, RZ, R33, R7 ;

        /*1080*/                   FSETP.GT.AND P0, PT, |R0|, 4.8978884574313168671e-40, PT ;

        /*1090*/               @P0 BRA P1, 0x1100 ;

        /*10a0*/                   MOV R12, R8 ;

        /*10b0*/                   IMAD.MOV.U32 R21, RZ, RZ, R9 ;

        /*10c0*/                   MOV R0, 0x10e0 ;

        /*10d0*/                   CALL.REL.NOINC 0x37c0 ;

        /*10e0*/                   IMAD.MOV.U32 R6, RZ, RZ, R12 ;

        /*10f0*/                   IMAD.MOV.U32 R7, RZ, RZ, R13 ;

        /*1100*/                   BSYNC B2 ;

        /*1110*/                   DSETP.GT.AND P0, PT, R6, RZ, PT ;

        /*1120*/               @P0 IMAD.MOV.U32 R4, RZ, RZ, R6 ;

        /*1130*/               @P0 MOV R5, R7 ;

        /*1140*/                   BSYNC B1 ;

        /*1150*/                   STG.E.64.SYS [R2], R4 ;

        /*1160*/                   EXIT ;

        /*1170*/                   ISETP.NE.AND P0, PT, R4, 0x4, PT ;

        /*1180*/              @!P0 BRA 0x2ce0 ;

        /*1190*/                   ISETP.NE.AND P0, PT, R4, 0x5, PT ;

        /*11a0*/              @!P0 BRA 0x24b0 ;

        /*11b0*/                   ISETP.NE.AND P0, PT, R4, 0x6, PT ;

        /*11c0*/               @P0 BRA 0x2170 ;

        /*11d0*/                   LDG.E.SYS R26, [R14] ;

        /*11e0*/                   LDG.E.64.SYS R24, [R36+0x8] ;

        /*11f0*/                   LDG.E.64.SYS R20, [R36+0x10] ;

        /*1200*/                   LDG.E.64.SYS R22, [R36] ;

        /*1210*/                   IMAD.WIDE.U32 R26, R26, R13, c[0x0][0x180] ;

        /*1220*/                   LDG.E.64.SYS R30, [R26+0x20] ;

        /*1230*/                   LDG.E.64.SYS R4, [R26+0x18] ;

        /*1240*/                   LDG.E.64.SYS R38, [R26+0x8] ;

        /*1250*/                   LDG.E.64.SYS R6, [R26] ;

        /*1260*/                   LDG.E.64.SYS R8, [R26+0x38] ;

        /*1270*/                   LDG.E.64.SYS R10, [R26+0x28] ;

        /*1280*/                   LDG.E.64.SYS R12, [R26+0x30] ;

        /*1290*/                   LDG.E.64.SYS R14, [R26+0x10] ;

        /*12a0*/                   LDG.E.64.SYS R16, [R26+0x40] ;

        /*12b0*/                   LDG.E.64.SYS R18, [R26+0x48] ;

        /*12c0*/                   DMUL R34, R20, R30 ;

        /*12d0*/                   DMUL R28, R24, R4 ;

        /*12e0*/                   DFMA R34, R24, R38, R34 ;

        /*12f0*/                   DFMA R28, R22, R6, R28 ;

        /*1300*/                   DADD R34, R34, R8 ;

        /*1310*/                   DFMA R28, R20, R10, R28 ;

        /*1320*/                   DMUL R34, R24, R34 ;

        /*1330*/                   DADD R28, R28, R12 ;

        /*1340*/                   DFMA R24, R20, R14, R16 ;

        /*1350*/                   DFMA R28, R22, R28, R34 ;

        /*1360*/                   DFMA R24, R20, R24, R28 ;

        /*1370*/                   DADD R24, R24, R18 ;

        /*1380*/                   DSETP.GEU.AND P1, PT, R24, RZ, PT ;

        /*1390*/                   DSETP.GTU.AND P0, PT, R24, RZ, PT ;

        /*13a0*/                   SEL R20, RZ, 0x1, P1 ;

        /*13b0*/                   IADD3 R0, -R20, 0x1, RZ ;

        /*13c0*/              @!P0 IMAD.MOV R0, RZ, RZ, -R20 ;

        /*13d0*/                   SHF.R.U32.HI R20, RZ, 0x1f, R0 ;

        /*13e0*/                   LOP3.LUT R21, R20, 0x1, RZ, 0x3c, !PT ;

        /*13f0*/                   STG.E.U8.SYS [R40], R21 ;

        /*1400*/                   LDG.E.64.SYS R22, [R32+0x8] ;

        /*1410*/                   LDG.E.64.SYS R24, [R32] ;

        /*1420*/                   LDG.E.64.SYS R20, [R32+0x10] ;

        /*1430*/                   LDG.E.64.SYS R28, [R36+0x8] ;

        /*1440*/                   LDG.E.64.SYS R26, [R36] ;

        /*1450*/                   LDG.E.64.SYS R34, [R36+0x10] ;

        /*1460*/                   BMOV.32.CLEAR RZ, B1 ;

        /*1470*/                   BSSY B1, 0x2120 ;

        /*1480*/                   DMUL R44, R4, R22 ;

        /*1490*/                   DMUL R42, R30, R20 ;

        /*14a0*/                   DFMA R32, R38, R22, R42 ;

        /*14b0*/                   DADD R42, R38, R38 ;

        /*14c0*/                   DFMA R40, R6, R24, R44 ;

        /*14d0*/                   DMUL R44, R22, R32 ;

        /*14e0*/                   DMUL R42, R28, R42 ;

        /*14f0*/                   DFMA R32, R24, R40, R44 ;

        /*1500*/                   DFMA R42, R4, R26, R42 ;

        /*1510*/                   DMUL R40, R30, R34 ;

        /*1520*/                   DFMA R38, R38, R28, R40 ;

        /*1530*/                   DADD R36, R42, R40 ;

        /*1540*/                   DADD R40, R14, R14 ;

        /*1550*/                   DMUL R40, R34, R40 ;

        /*1560*/                   DFMA R30, R30, R28, R40 ;

        /*1570*/                   DMUL R40, R4, R28 ;

        /*1580*/                   DADD R4, R6, R6 ;

        /*1590*/                   DFMA R4, R4, R26, R40 ;

        /*15a0*/                   DADD R38, R8, R38 ;

        /*15b0*/                   DADD R36, R8, R36 ;

        /*15c0*/                   DFMA R4, R10, R34, R4 ;

        /*15d0*/                   DMUL R8, R14, R34 ;

        /*15e0*/                   DMUL R14, R14, R20 ;

        /*15f0*/                   DFMA R6, R6, R26, R40 ;

        /*1600*/                   DADD R4, R12, R4 ;

        /*1610*/                   DMUL R36, R22, R36 ;

        /*1620*/                   DFMA R14, R10, R24, R14 ;

        /*1630*/                   DMUL R28, R28, R38 ;

        /*1640*/                   DADD R6, R12, R6 ;

        /*1650*/                   DFMA R8, R10, R26, R8 ;

        /*1660*/                   DFMA R30, R10, R26, R30 ;

        /*1670*/                   DFMA R36, R24, R4, R36 ;

        /*1680*/                   DFMA R4, R20, R14, R32 ;

        /*1690*/                   DADD R8, R16, R8 ;

        /*16a0*/                   DADD R30, R16, R30 ;

        /*16b0*/                   DFMA R6, R26, R6, R28 ;

        /*16c0*/                   DSETP.GE.AND P0, PT, |R4|, c[0x2][0x0], PT ;

        /*16d0*/                   DFMA R6, R34, R8, R6 ;

        /*16e0*/                   DFMA R12, R20, R30, R36 ;

        /*16f0*/                   DADD R18, R18, R6 ;

        /*1700*/                   DMUL R12, R12, 0.5 ;

        /*1710*/              @!P0 BRA 0x1d10 ;

        /*1720*/                   MUFU.RCP64H R7, R5 ;

        /*1730*/                   IADD3 R6, R5, 0x300402, RZ ;

        /*1740*/                   BMOV.32.CLEAR RZ, B2 ;

        /*1750*/                   BSSY B2, 0x1850 ;

        /*1760*/                   ISETP.NE.AND P1, PT, R0, RZ, PT ;

        /*1770*/                   FSETP.GEU.AND P0, PT, |R6|, 5.8789094863358348022e-39, PT ;

        /*1780*/                   DFMA R8, -R4, R6, 1 ;

        /*1790*/                   DFMA R8, R8, R8, R8 ;

        /*17a0*/                   DFMA R8, R6, R8, R6 ;

        /*17b0*/                   DFMA R10, -R4, R8, 1 ;

        /*17c0*/                   DFMA R8, R8, R10, R8 ;

        /*17d0*/               @P0 BRA 0x1840 ;

        /*17e0*/                   LOP3.LUT R8, R5, 0x7fffffff, RZ, 0xc0, !PT ;

        /*17f0*/                   MOV R0, 0x1820 ;

        /*1800*/                   IADD3 R8, R8, -0x100000, RZ ;

        /*1810*/                   CALL.REL.NOINC 0x3510 ;

        /*1820*/                   IMAD.MOV.U32 R8, RZ, RZ, R10 ;

        /*1830*/                   IMAD.MOV.U32 R9, RZ, RZ, R11 ;

        /*1840*/                   BSYNC B2 ;

        /*1850*/                   DMUL R12, R12, R8 ;

        /*1860*/              @!P1 BRA 0x1ca0 ;

        /*1870*/                   DMUL R8, R18, R8 ;

        /*1880*/                   DMUL R4, R12, R12 ;

        /*1890*/                   DSETP.GT.AND P0, PT, R4, R8, PT ;

        /*18a0*/               @P0 BRA 0x1970 ;

        /*18b0*/                   DSETP.NEU.AND P0, PT, R4, R8, PT ;

        /*18c0*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*18d0*/                   MOV R9, 0x7ff00000 ;

        /*18e0*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*18f0*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*1900*/               @P0 BRA 0x2110 ;

        /*1910*/                   DSETP.GT.AND P0, PT, R12, RZ, PT ;

        /*1920*/                   DADD R6, -RZ, -R12 ;

        /*1930*/              @!P0 BRA 0x2110 ;

        /*1940*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*1950*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*1960*/                   BRA 0x2110 ;

        /*1970*/                   DADD R10, -R8, R4 ;

        /*1980*/                   BMOV.32.CLEAR RZ, B2 ;

        /*1990*/                   MOV R8, 0x0 ;

        /*19a0*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x3fd80000 ;

        /*19b0*/                   BSSY B2, 0x1b70 ;

        /*19c0*/                   MUFU.RSQ64H R5, R11 ;

        /*19d0*/                   IADD3 R4, R11, -0x3500000, RZ ;

        /*19e0*/                   ISETP.GE.U32.AND P0, PT, R4, 0x7ca00000, PT ;

        /*19f0*/                   DMUL R6, R4, R4 ;

        /*1a00*/                   DFMA R6, R10, -R6, 1 ;

        /*1a10*/                   DFMA R8, R6, R8, 0.5 ;

        /*1a20*/                   DMUL R6, R4, R6 ;

        /*1a30*/                   DFMA R14, R8, R6, R4 ;

        /*1a40*/                   DMUL R16, R10, R14 ;

        /*1a50*/                   IADD3 R9, R15, -0x100000, RZ ;

        /*1a60*/                   IMAD.MOV.U32 R8, RZ, RZ, R14 ;

        /*1a70*/                   DFMA R18, R16, -R16, R10 ;

        /*1a80*/                   DFMA R6, R18, R8, R16 ;

        /*1a90*/              @!P0 BRA 0x1b60 ;

        /*1aa0*/                   IMAD.MOV.U32 R8, RZ, RZ, R14 ;

        /*1ab0*/                   MOV R7, R11 ;

        /*1ac0*/                   IMAD.MOV.U32 R6, RZ, RZ, R10 ;

        /*1ad0*/                   MOV R0, 0x1b40 ;

        /*1ae0*/                   IMAD.MOV.U32 R14, RZ, RZ, R16 ;

        /*1af0*/                   MOV R16, R4 ;

        /*1b00*/                   IMAD.MOV.U32 R10, RZ, RZ, R18 ;

        /*1b10*/                   IMAD.MOV.U32 R11, RZ, RZ, R19 ;

        /*1b20*/                   IMAD.MOV.U32 R15, RZ, RZ, R17 ;

        /*1b30*/                   CALL.REL.NOINC 0x3d50 ;

        /*1b40*/                   IMAD.MOV.U32 R6, RZ, RZ, R16 ;

        /*1b50*/                   IMAD.MOV.U32 R7, RZ, RZ, R17 ;

        /*1b60*/                   BSYNC B2 ;

        /*1b70*/                   DADD R4, -R12, R6 ;

        /*1b80*/                   MOV R8, 0x0 ;

        /*1b90*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*1ba0*/                   DADD R12, -R12, -R6 ;

        /*1bb0*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*1bc0*/                   DSETP.GEU.AND P0, PT, R4, RZ, PT ;

        /*1bd0*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*1be0*/              @!P0 BRA 0x2110 ;

        /*1bf0*/                   DSETP.GEU.AND P0, PT, R12, RZ, PT ;

        /*1c00*/                   IMAD.MOV.U32 R6, RZ, RZ, R12 ;

        /*1c10*/                   MOV R9, R5 ;

        /*1c20*/                   IMAD.MOV.U32 R7, RZ, RZ, R13 ;

        /*1c30*/                   IMAD.MOV.U32 R8, RZ, RZ, R4 ;

        /*1c40*/               @P0 BRA 0x2110 ;

        /*1c50*/                   IMAD.MOV.U32 R8, RZ, RZ, R4 ;

        /*1c60*/                   IMAD.MOV.U32 R9, RZ, RZ, R5 ;

        /*1c70*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*1c80*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*1c90*/                   BRA 0x2110 ;

        /*1ca0*/                   DMUL R12, R12, -2 ;

        /*1cb0*/                   MOV R8, 0x0 ;

        /*1cc0*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*1cd0*/                   DSETP.GTU.AND P0, PT, R12, RZ, PT ;

        /*1ce0*/                   FSEL R6, R12, RZ, P0 ;

        /*1cf0*/                   FSEL R7, R13, +QNAN , P0 ;

        /*1d00*/                   BRA 0x2110 ;

        /*1d10*/                   ISETP.NE.AND P0, PT, R0, RZ, PT ;

        /*1d20*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*1d30*/                   MOV R9, 0x7ff00000 ;

        /*1d40*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*1d50*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*1d60*/              @!P0 BRA 0x2110 ;

        /*1d70*/                   DMUL R4, R12, c[0x2][0x8] ;

        /*1d80*/                   DMUL R18, R18, c[0x2][0x8] ;

        /*1d90*/                   DMUL R6, R4, R4 ;

        /*1da0*/                   DSETP.GT.AND P0, PT, R6, R18, PT ;

        /*1db0*/               @P0 BRA 0x1e80 ;

        /*1dc0*/                   DSETP.NEU.AND P0, PT, R6, R18, PT ;

        /*1dd0*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*1de0*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*1df0*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*1e00*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*1e10*/               @P0 BRA 0x2110 ;

        /*1e20*/                   DSETP.GT.AND P0, PT, R4, RZ, PT ;

        /*1e30*/                   DADD R6, -RZ, -R4 ;

        /*1e40*/              @!P0 BRA 0x2110 ;

        /*1e50*/                   MOV R6, 0x0 ;

        /*1e60*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*1e70*/                   BRA 0x2110 ;

        /*1e80*/                   DADD R6, R6, -R18 ;

        /*1e90*/                   IMAD.MOV.U32 R10, RZ, RZ, 0x0 ;

        /*1ea0*/                   BMOV.32.CLEAR RZ, B2 ;

        /*1eb0*/                   IMAD.MOV.U32 R11, RZ, RZ, 0x3fd80000 ;

        /*1ec0*/                   BSSY B2, 0x2000 ;

        /*1ed0*/                   MUFU.RSQ64H R13, R7 ;

        /*1ee0*/                   IADD3 R12, R7, -0x3500000, RZ ;

        /*1ef0*/                   ISETP.GE.U32.AND P0, PT, R12, 0x7ca00000, PT ;

        /*1f00*/                   DMUL R8, R12, R12 ;

        /*1f10*/                   DFMA R8, R6, -R8, 1 ;

        /*1f20*/                   DFMA R10, R8, R10, 0.5 ;

        /*1f30*/                   DMUL R8, R12, R8 ;

        /*1f40*/                   DFMA R8, R10, R8, R12 ;

        /*1f50*/                   DMUL R14, R6, R8 ;

        /*1f60*/                   IADD3 R19, R9, -0x100000, RZ ;

        /*1f70*/                   IMAD.MOV.U32 R18, RZ, RZ, R8 ;

        /*1f80*/                   DFMA R10, R14, -R14, R6 ;

        /*1f90*/                   DFMA R16, R10, R18, R14 ;

        /*1fa0*/              @!P0 BRA 0x1ff0 ;

        /*1fb0*/                   MOV R16, R12 ;

        /*1fc0*/                   IMAD.MOV.U32 R9, RZ, RZ, R19 ;

        /*1fd0*/                   MOV R0, 0x1ff0 ;

        /*1fe0*/                   CALL.REL.NOINC 0x3d50 ;

        /*1ff0*/                   BSYNC B2 ;

        /*2000*/                   DADD R10, -R4.reuse, R16.reuse ;

        /*2010*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*2020*/                   MOV R9, 0x7ff00000 ;

        /*2030*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*2040*/                   DADD R4, -R4, -R16 ;

        /*2050*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*2060*/                   DSETP.GEU.AND P0, PT, R10, RZ, PT ;

        /*2070*/              @!P0 BRA 0x2110 ;

        /*2080*/                   DSETP.GEU.AND P0, PT, R4, RZ, PT ;

        /*2090*/                   IMAD.MOV.U32 R8, RZ, RZ, R10 ;

        /*20a0*/                   IMAD.MOV.U32 R9, RZ, RZ, R11 ;

        /*20b0*/                   IMAD.MOV.U32 R6, RZ, RZ, R4 ;

        /*20c0*/                   IMAD.MOV.U32 R7, RZ, RZ, R5 ;

        /*20d0*/              @!P0 MOV R8, R10 ;

        /*20e0*/              @!P0 IMAD.MOV.U32 R9, RZ, RZ, R11 ;

        /*20f0*/              @!P0 IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*2100*/              @!P0 IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*2110*/                   BSYNC B1 ;

        /*2120*/                   DSETP.GEU.AND P0, PT, R8, R6, PT ;

        /*2130*/                   FSEL R4, R8, R6, !P0 ;

        /*2140*/                   FSEL R5, R9, R7, !P0 ;

        /*2150*/                   STG.E.64.SYS [R2], R4 ;

        /*2160*/                   EXIT ;

        /*2170*/                   BSYNC B0 ;

        /*2180*/                   LDG.E.SYS R4, [R14] ;

        /*2190*/                   LDG.E.64.SYS R6, [R36] ;

        /*21a0*/                   IMAD.WIDE.U32 R4, R4, R13, c[0x0][0x180] ;

        /*21b0*/                   LDG.E.64.SYS R8, [R4] ;

        /*21c0*/                   BMOV.32.CLEAR RZ, B0 ;

        /*21d0*/                   BSSY B0, 0x2490 ;

        /*21e0*/                   MOV R4, 0x0 ;

        /*21f0*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x7ff00000 ;

        /*2200*/                   DADD R6, R6, -R8 ;

        /*2210*/                   DSETP.GEU.AND P1, PT, R6, RZ, PT ;

        /*2220*/                   DSETP.GTU.AND P0, PT, R6, RZ, PT ;

        /*2230*/                   SEL R0, RZ, 0x1, P1 ;

        /*2240*/                   IADD3 R6, -R0, 0x1, RZ ;

        /*2250*/              @!P0 IMAD.MOV R6, RZ, RZ, -R0 ;

        /*2260*/                   SHF.R.U32.HI R0, RZ, 0x1f, R6 ;

        /*2270*/                   LOP3.LUT R7, R0, 0x1, RZ, 0x3c, !PT ;

        /*2280*/                   ISETP.NE.AND P0, PT, R6, RZ, PT ;

        /*2290*/                   STG.E.U8.SYS [R40], R7 ;

        /*22a0*/              @!P0 BRA 0x2480 ;

        /*22b0*/                   LDG.E.64.SYS R32, [R32] ;

        /*22c0*/                   DSETP.NEU.AND P0, PT, R32, RZ, PT ;

        /*22d0*/              @!P0 BRA 0x2480 ;

        /*22e0*/                   LDG.E.64.SYS R36, [R36] ;

        /*22f0*/                   MUFU.RCP64H R7, R33 ;

        /*2300*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x1 ;

        /*2310*/                   BMOV.32.CLEAR RZ, B1 ;

        /*2320*/                   BSSY B1, 0x2450 ;

        /*2330*/                   DFMA R10, -R32, R6, 1 ;

        /*2340*/                   DFMA R10, R10, R10, R10 ;

        /*2350*/                   DFMA R10, R6, R10, R6 ;

        /*2360*/                   DADD R8, R8, -R36 ;

        /*2370*/                   DMUL R6, R8, R10 ;

        /*2380*/                   FSETP.GTU.AND P1, PT, |R9|, 6.4490557925156731238e-37, PT ;

        /*2390*/                   DFMA R12, -R32, R6, R8 ;

        /*23a0*/                   DFMA R6, R10, R12, R6 ;

        /*23b0*/                   FFMA R0, RZ, R33, R7 ;

        /*23c0*/                   FSETP.GT.AND P0, PT, |R0|, 4.8978884574313168671e-40, PT ;

        /*23d0*/               @P0 BRA P1, 0x2440 ;

        /*23e0*/                   IMAD.MOV.U32 R12, RZ, RZ, R8 ;

        /*23f0*/                   MOV R0, 0x2420 ;

        /*2400*/                   IMAD.MOV.U32 R21, RZ, RZ, R9 ;

        /*2410*/                   CALL.REL.NOINC 0x37c0 ;

        /*2420*/                   MOV R6, R12 ;

        /*2430*/                   IMAD.MOV.U32 R7, RZ, RZ, R13 ;

        /*2440*/                   BSYNC B1 ;

        /*2450*/                   DSETP.GT.AND P0, PT, R6, RZ, PT ;

        /*2460*/               @P0 IMAD.MOV.U32 R4, RZ, RZ, R6 ;

        /*2470*/               @P0 IMAD.MOV.U32 R5, RZ, RZ, R7 ;

        /*2480*/                   BSYNC B0 ;

        /*2490*/                   STG.E.64.SYS [R2], R4 ;

        /*24a0*/                   EXIT ;

        /*24b0*/                   LDG.E.SYS R12, [R14] ;

        /*24c0*/                   LDG.E.64.SYS R6, [R36+0x8] ;

        /*24d0*/                   LDG.E.64.SYS R4, [R36] ;

        /*24e0*/                   IMAD.WIDE.U32 R12, R12, R13, c[0x0][0x180] ;

        /*24f0*/                   LDG.E.64.SYS R12, [R12] ;

        /*2500*/                   DMUL R6, R6, R6 ;

        /*2510*/                   DFMA R6, R4, R4, R6 ;

        /*2520*/                   DADD R6, R6, -R12 ;

        /*2530*/                   DSETP.GEU.AND P1, PT, R6, RZ, PT ;

        /*2540*/                   DSETP.GTU.AND P0, PT, R6, RZ, PT ;

        /*2550*/                   SEL R0, RZ, 0x1, P1 ;

        /*2560*/                   IADD3 R24, -R0, 0x1, RZ ;

        /*2570*/              @!P0 IMAD.MOV R24, RZ, RZ, -R0 ;

        /*2580*/                   SHF.R.U32.HI R0, RZ, 0x1f, R24 ;

        /*2590*/                   LOP3.LUT R9, R0, 0x1, RZ, 0x3c, !PT ;

        /*25a0*/                   STG.E.U8.SYS [R40], R9 ;

        /*25b0*/                   LDG.E.64.SYS R4, [R32+0x10] ;

        /*25c0*/                   BMOV.32.CLEAR RZ, B1 ;

        /*25d0*/                   BSSY B1, 0x2c90 ;

        /*25e0*/                   MOV R16, 0x0 ;

        /*25f0*/                   IMAD.MOV.U32 R17, RZ, RZ, 0x7ff00000 ;

        /*2600*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*2610*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*2620*/                   DFMA R4, -R4, R4, 1 ;

        /*2630*/                   DSETP.NEU.AND P0, PT, R4, RZ, PT ;

        /*2640*/              @!P0 BRA 0x2c80 ;

        /*2650*/                   LDG.E.64.SYS R6, [R32+0x8] ;

        /*2660*/                   LDG.E.64.SYS R14, [R36+0x8] ;

        /*2670*/                   LDG.E.64.SYS R20, [R32] ;

        /*2680*/                   LDG.E.64.SYS R18, [R36] ;

        /*2690*/                   MUFU.RCP64H R9, R5 ;

        /*26a0*/                   IADD3 R8, R5, 0x300402, RZ ;

        /*26b0*/                   BMOV.32.CLEAR RZ, B2 ;

        /*26c0*/                   BSSY B2, 0x27c0 ;

        /*26d0*/                   ISETP.NE.AND P1, PT, R24, RZ, PT ;

        /*26e0*/                   FSETP.GEU.AND P0, PT, |R8|, 5.8789094863358348022e-39, PT ;

        /*26f0*/                   DFMA R10, -R4, R8, 1 ;

        /*2700*/                   DFMA R10, R10, R10, R10 ;

        /*2710*/                   DFMA R10, R8, R10, R8 ;

        /*2720*/                   DFMA R22, -R4, R10, 1 ;

        /*2730*/                   DFMA R10, R10, R22, R10 ;

        /*2740*/                   DMUL R6, R6, R14 ;

        /*2750*/                   DFMA R20, R20, R18, R6 ;

        /*2760*/               @P0 BRA 0x27b0 ;

        /*2770*/                   LOP3.LUT R8, R5, 0x7fffffff, RZ, 0xc0, !PT ;

        /*2780*/                   MOV R0, 0x27b0 ;

        /*2790*/                   IADD3 R8, R8, -0x100000, RZ ;

        /*27a0*/                   CALL.REL.NOINC 0x3510 ;

        /*27b0*/                   BSYNC B2 ;

        /*27c0*/                   DMUL R4, R20, R10 ;

        /*27d0*/              @!P1 BRA 0x2c40 ;

        /*27e0*/                   DMUL R14, R14, R14 ;

        /*27f0*/                   DMUL R6, R4, R4 ;

        /*2800*/                   DFMA R14, R18, R18, R14 ;

        /*2810*/                   DADD R14, -R12, R14 ;

        /*2820*/                   DMUL R14, R14, R10 ;

        /*2830*/                   DSETP.GT.AND P0, PT, R6, R14, PT ;

        /*2840*/               @P0 BRA 0x2910 ;

        /*2850*/                   DSETP.NEU.AND P0, PT, R6, R14, PT ;

        /*2860*/                   IMAD.MOV.U32 R16, RZ, RZ, 0x0 ;

        /*2870*/                   MOV R17, 0x7ff00000 ;

        /*2880*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*2890*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*28a0*/               @P0 BRA 0x2c80 ;

        /*28b0*/                   DSETP.GT.AND P0, PT, R4, RZ, PT ;

        /*28c0*/                   DADD R6, -RZ, -R4 ;

        /*28d0*/              @!P0 BRA 0x2c80 ;

        /*28e0*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*28f0*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*2900*/                   BRA 0x2c80 ;

        /*2910*/                   DADD R14, -R14, R6 ;

        /*2920*/                   MOV R8, 0x0 ;

        /*2930*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x3fd80000 ;

        /*2940*/                   BMOV.32.CLEAR RZ, B2 ;

        /*2950*/                   BSSY B2, 0x2b10 ;

        /*2960*/                   MUFU.RSQ64H R13, R15 ;

        /*2970*/                   IADD3 R12, R15, -0x3500000, RZ ;

        /*2980*/                   ISETP.GE.U32.AND P0, PT, R12, 0x7ca00000, PT ;

        /*2990*/                   DMUL R6, R12, R12 ;

        /*29a0*/                   DFMA R6, R14, -R6, 1 ;

        /*29b0*/                   DFMA R8, R6, R8, 0.5 ;

        /*29c0*/                   DMUL R6, R12, R6 ;

        /*29d0*/                   DFMA R10, R8, R6, R12 ;

        /*29e0*/                   DMUL R16, R14, R10 ;

        /*29f0*/                   IADD3 R9, R11, -0x100000, RZ ;

        /*2a00*/                   IMAD.MOV.U32 R8, RZ, RZ, R10 ;

        /*2a10*/                   DFMA R18, R16, -R16, R14 ;

        /*2a20*/                   DFMA R6, R18, R8, R16 ;

        /*2a30*/              @!P0 BRA 0x2b00 ;

        /*2a40*/                   MOV R6, R14 ;

        /*2a50*/                   IMAD.MOV.U32 R8, RZ, RZ, R10 ;

        /*2a60*/                   MOV R14, R16 ;

        /*2a70*/                   IMAD.MOV.U32 R7, RZ, RZ, R15 ;

        /*2a80*/                   MOV R0, 0x2ae0 ;

        /*2a90*/                   IMAD.MOV.U32 R10, RZ, RZ, R18 ;

        /*2aa0*/                   IMAD.MOV.U32 R11, RZ, RZ, R19 ;

        /*2ab0*/                   IMAD.MOV.U32 R15, RZ, RZ, R17 ;

        /*2ac0*/                   IMAD.MOV.U32 R16, RZ, RZ, R12 ;

        /*2ad0*/                   CALL.REL.NOINC 0x3d50 ;

        /*2ae0*/                   IMAD.MOV.U32 R6, RZ, RZ, R16 ;

        /*2af0*/                   MOV R7, R17 ;

        /*2b00*/                   BSYNC B2 ;

        /*2b10*/                   DADD R8, -R4.reuse, R6.reuse ;

        /*2b20*/                   IMAD.MOV.U32 R16, RZ, RZ, 0x0 ;

        /*2b30*/                   MOV R17, 0x7ff00000 ;

        /*2b40*/                   DADD R4, -R4, -R6 ;

        /*2b50*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*2b60*/                   DSETP.GEU.AND P0, PT, R8, RZ, PT ;

        /*2b70*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*2b80*/              @!P0 BRA 0x2c80 ;

        /*2b90*/                   DSETP.GEU.AND P0, PT, R4, RZ, PT ;

        /*2ba0*/                   IMAD.MOV.U32 R6, RZ, RZ, R4 ;

        /*2bb0*/                   MOV R17, R9 ;

        /*2bc0*/                   IMAD.MOV.U32 R7, RZ, RZ, R5 ;

        /*2bd0*/                   IMAD.MOV.U32 R16, RZ, RZ, R8 ;

        /*2be0*/               @P0 BRA 0x2c80 ;

        /*2bf0*/                   IMAD.MOV.U32 R16, RZ, RZ, R8 ;

        /*2c00*/                   MOV R7, 0x7ff00000 ;

        /*2c10*/                   IMAD.MOV.U32 R17, RZ, RZ, R9 ;

        /*2c20*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*2c30*/                   BRA 0x2c80 ;

        /*2c40*/                   DMUL R4, R4, -2 ;

        /*2c50*/                   DSETP.GTU.AND P0, PT, R4, RZ, PT ;

        /*2c60*/                   FSEL R6, R4, RZ, P0 ;

        /*2c70*/                   FSEL R7, R5, +QNAN , P0 ;

        /*2c80*/                   BSYNC B1 ;

        /*2c90*/                   DSETP.GEU.AND P0, PT, R16, R6, PT ;

        /*2ca0*/                   FSEL R4, R16, R6, !P0 ;

        /*2cb0*/                   FSEL R5, R17, R7, !P0 ;

        /*2cc0*/                   STG.E.64.SYS [R2], R4 ;

        /*2cd0*/                   EXIT ;

        /*2ce0*/                   LDG.E.SYS R12, [R14] ;

        /*2cf0*/                   LDG.E.64.SYS R6, [R36+0x10] ;

        /*2d00*/                   LDG.E.64.SYS R4, [R36] ;

        /*2d10*/                   IMAD.WIDE.U32 R12, R12, R13, c[0x0][0x180] ;

        /*2d20*/                   LDG.E.64.SYS R12, [R12] ;

        /*2d30*/                   DMUL R6, R6, R6 ;

        /*2d40*/                   DFMA R6, R4, R4, R6 ;

        /*2d50*/                   DADD R6, R6, -R12 ;

        /*2d60*/                   DSETP.GEU.AND P1, PT, R6, RZ, PT ;

        /*2d70*/                   DSETP.GTU.AND P0, PT, R6, RZ, PT ;

        /*2d80*/                   SEL R0, RZ, 0x1, P1 ;

        /*2d90*/                   IADD3 R24, -R0, 0x1, RZ ;

        /*2da0*/              @!P0 IMAD.MOV R24, RZ, RZ, -R0 ;

        /*2db0*/                   SHF.R.U32.HI R0, RZ, 0x1f, R24 ;

        /*2dc0*/                   LOP3.LUT R9, R0, 0x1, RZ, 0x3c, !PT ;

        /*2dd0*/                   STG.E.U8.SYS [R40], R9 ;

        /*2de0*/                   LDG.E.64.SYS R4, [R32+0x8] ;

        /*2df0*/                   BMOV.32.CLEAR RZ, B1 ;

        /*2e00*/                   BSSY B1, 0x34c0 ;

        /*2e10*/                   IMAD.MOV.U32 R16, RZ, RZ, 0x0 ;

        /*2e20*/                   MOV R6, 0x0 ;

        /*2e30*/                   IMAD.MOV.U32 R17, RZ, RZ, 0x7ff00000 ;

        /*2e40*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*2e50*/                   DFMA R4, -R4, R4, 1 ;

        /*2e60*/                   DSETP.NEU.AND P0, PT, R4, RZ, PT ;

        /*2e70*/              @!P0 BRA 0x34b0 ;

        /*2e80*/                   LDG.E.64.SYS R6, [R32+0x10] ;

        /*2e90*/                   LDG.E.64.SYS R14, [R36+0x10] ;

        /*2ea0*/                   LDG.E.64.SYS R20, [R32] ;

        /*2eb0*/                   LDG.E.64.SYS R18, [R36] ;

        /*2ec0*/                   MUFU.RCP64H R9, R5 ;

        /*2ed0*/                   IADD3 R8, R5, 0x300402, RZ ;

        /*2ee0*/                   BMOV.32.CLEAR RZ, B2 ;

        /*2ef0*/                   BSSY B2, 0x2ff0 ;

        /*2f00*/                   ISETP.NE.AND P1, PT, R24, RZ, PT ;

        /*2f10*/                   FSETP.GEU.AND P0, PT, |R8|, 5.8789094863358348022e-39, PT ;

        /*2f20*/                   DFMA R10, -R4, R8, 1 ;

        /*2f30*/                   DFMA R10, R10, R10, R10 ;

        /*2f40*/                   DFMA R10, R8, R10, R8 ;

        /*2f50*/                   DFMA R22, -R4, R10, 1 ;

        /*2f60*/                   DFMA R10, R10, R22, R10 ;

        /*2f70*/                   DMUL R6, R6, R14 ;

        /*2f80*/                   DFMA R20, R20, R18, R6 ;

        /*2f90*/               @P0 BRA 0x2fe0 ;

        /*2fa0*/                   LOP3.LUT R8, R5, 0x7fffffff, RZ, 0xc0, !PT ;

        /*2fb0*/                   MOV R0, 0x2fe0 ;

        /*2fc0*/                   IADD3 R8, R8, -0x100000, RZ ;

        /*2fd0*/                   CALL.REL.NOINC 0x3510 ;

        /*2fe0*/                   BSYNC B2 ;

        /*2ff0*/                   DMUL R4, R20, R10 ;

        /*3000*/              @!P1 BRA 0x3470 ;

        /*3010*/                   DMUL R14, R14, R14 ;

        /*3020*/                   DMUL R6, R4, R4 ;

        /*3030*/                   DFMA R14, R18, R18, R14 ;

        /*3040*/                   DADD R14, -R12, R14 ;

        /*3050*/                   DMUL R14, R14, R10 ;

        /*3060*/                   DSETP.GT.AND P0, PT, R6, R14, PT ;

        /*3070*/               @P0 BRA 0x3140 ;

        /*3080*/                   DSETP.NEU.AND P0, PT, R6, R14, PT ;

        /*3090*/                   IMAD.MOV.U32 R16, RZ, RZ, 0x0 ;

        /*30a0*/                   MOV R6, 0x0 ;

        /*30b0*/                   IMAD.MOV.U32 R17, RZ, RZ, 0x7ff00000 ;

        /*30c0*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*30d0*/               @P0 BRA 0x34b0 ;

        /*30e0*/                   DSETP.GT.AND P0, PT, R4, RZ, PT ;

        /*30f0*/                   DADD R6, -RZ, -R4 ;

        /*3100*/              @!P0 BRA 0x34b0 ;

        /*3110*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*3120*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*3130*/                   BRA 0x34b0 ;

        /*3140*/                   DADD R14, -R14, R6 ;

        /*3150*/                   MOV R8, 0x0 ;

        /*3160*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x3fd80000 ;

        /*3170*/                   BMOV.32.CLEAR RZ, B2 ;

        /*3180*/                   BSSY B2, 0x3340 ;

        /*3190*/                   MUFU.RSQ64H R13, R15 ;

        /*31a0*/                   IADD3 R12, R15, -0x3500000, RZ ;

        /*31b0*/                   ISETP.GE.U32.AND P0, PT, R12, 0x7ca00000, PT ;

        /*31c0*/                   DMUL R6, R12, R12 ;

        /*31d0*/                   DFMA R6, R14, -R6, 1 ;

        /*31e0*/                   DFMA R8, R6, R8, 0.5 ;

        /*31f0*/                   DMUL R6, R12, R6 ;

        /*3200*/                   DFMA R10, R8, R6, R12 ;

        /*3210*/                   DMUL R16, R14, R10 ;

        /*3220*/                   IADD3 R9, R11, -0x100000, RZ ;

        /*3230*/                   IMAD.MOV.U32 R8, RZ, RZ, R10 ;

        /*3240*/                   DFMA R18, R16, -R16, R14 ;

        /*3250*/                   DFMA R6, R18, R8, R16 ;

        /*3260*/              @!P0 BRA 0x3330 ;

        /*3270*/                   MOV R6, R14 ;

        /*3280*/                   IMAD.MOV.U32 R8, RZ, RZ, R10 ;

        /*3290*/                   MOV R14, R16 ;

        /*32a0*/                   IMAD.MOV.U32 R7, RZ, RZ, R15 ;

        /*32b0*/                   MOV R0, 0x3310 ;

        /*32c0*/                   IMAD.MOV.U32 R10, RZ, RZ, R18 ;

        /*32d0*/                   IMAD.MOV.U32 R11, RZ, RZ, R19 ;

        /*32e0*/                   IMAD.MOV.U32 R15, RZ, RZ, R17 ;

        /*32f0*/                   IMAD.MOV.U32 R16, RZ, RZ, R12 ;

        /*3300*/                   CALL.REL.NOINC 0x3d50 ;

        /*3310*/                   IMAD.MOV.U32 R6, RZ, RZ, R16 ;

        /*3320*/                   MOV R7, R17 ;

        /*3330*/                   BSYNC B2 ;

        /*3340*/                   DADD R8, -R4.reuse, R6.reuse ;

        /*3350*/                   IMAD.MOV.U32 R16, RZ, RZ, 0x0 ;

        /*3360*/                   MOV R17, 0x7ff00000 ;

        /*3370*/                   DADD R4, -R4, -R6 ;

        /*3380*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*3390*/                   DSETP.GEU.AND P0, PT, R8, RZ, PT ;

        /*33a0*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*33b0*/              @!P0 BRA 0x34b0 ;

        /*33c0*/                   DSETP.GEU.AND P0, PT, R4, RZ, PT ;

        /*33d0*/                   IMAD.MOV.U32 R6, RZ, RZ, R4 ;

        /*33e0*/                   MOV R17, R9 ;

        /*33f0*/                   IMAD.MOV.U32 R7, RZ, RZ, R5 ;

        /*3400*/                   IMAD.MOV.U32 R16, RZ, RZ, R8 ;

        /*3410*/               @P0 BRA 0x34b0 ;

        /*3420*/                   IMAD.MOV.U32 R16, RZ, RZ, R8 ;

        /*3430*/                   MOV R7, 0x7ff00000 ;

        /*3440*/                   IMAD.MOV.U32 R17, RZ, RZ, R9 ;

        /*3450*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*3460*/                   BRA 0x34b0 ;

        /*3470*/                   DMUL R4, R4, -2 ;

        /*3480*/                   DSETP.GTU.AND P0, PT, R4, RZ, PT ;

        /*3490*/                   FSEL R6, R4, RZ, P0 ;

        /*34a0*/                   FSEL R7, R5, +QNAN , P0 ;

        /*34b0*/                   BSYNC B1 ;

        /*34c0*/                   DSETP.GEU.AND P0, PT, R16, R6, PT ;

        /*34d0*/                   FSEL R4, R16, R6, !P0 ;

        /*34e0*/                   FSEL R5, R17, R7, !P0 ;

        /*34f0*/                   STG.E.64.SYS [R2], R4 ;

        /*3500*/                   EXIT ;

        /*3510*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*3520*/                   DSETP.GTU.AND P0, PT, |R4|, +INF , PT ;

        /*3530*/                   BMOV.32.CLEAR RZ, B3 ;

        /*3540*/                   BSSY B3, 0x3770 ;

        /*3550*/               @P0 BRA 0x3740 ;

        /*3560*/                   LOP3.LUT R9, R5, 0x7fffffff, RZ, 0xc0, !PT ;

        /*3570*/                   IADD3 R6, R9, -0x1, RZ ;

        /*3580*/                   ISETP.GE.U32.AND P0, PT, R6, 0x7fefffff, PT ;

        /*3590*/               @P0 LOP3.LUT R7, R5, 0x7ff00000, RZ, 0x3c, !PT ;

        /*35a0*/               @P0 IMAD.MOV.U32 R6, RZ, RZ, RZ ;

        /*35b0*/               @P0 BRA 0x3760 ;

        /*35c0*/                   ISETP.GE.U32.AND P0, PT, R9, 0x1000001, PT ;

        /*35d0*/              @!P0 BRA 0x36b0 ;

        /*35e0*/                   IADD3 R7, R5, -0x3fe00000, RZ ;

        /*35f0*/                   IMAD.MOV.U32 R6, RZ, RZ, R4 ;

        /*3600*/                   MUFU.RCP64H R9, R7 ;

        /*3610*/                   DFMA R10, -R6, R8, 1 ;

        /*3620*/                   DFMA R10, R10, R10, R10 ;

        /*3630*/                   DFMA R10, R8, R10, R8 ;

        /*3640*/                   DFMA R8, -R6, R10, 1 ;

        /*3650*/                   DFMA R8, R10, R8, R10 ;

        /*3660*/                   DMUL R8, R8, 2.2250738585072013831e-308 ;

        /*3670*/                   DFMA R4, -R4, R8, 1 ;

        /*3680*/                   DFMA R4, R4, R4, R4 ;

        /*3690*/                   DFMA R6, R8, R4, R8 ;

        /*36a0*/                   BRA 0x3760 ;

        /*36b0*/                   DMUL R4, R4, 8.11296384146066816958e+31 ;

        /*36c0*/                   MUFU.RCP64H R9, R5 ;

        /*36d0*/                   DFMA R6, -R4, R8, 1 ;

        /*36e0*/                   DFMA R6, R6, R6, R6 ;

        /*36f0*/                   DFMA R6, R8, R6, R8 ;

        /*3700*/                   DFMA R8, -R4, R6, 1 ;

        /*3710*/                   DFMA R6, R6, R8, R6 ;

        /*3720*/                   DMUL R6, R6, 8.11296384146066816958e+31 ;

        /*3730*/                   BRA 0x3760 ;

        /*3740*/                   LOP3.LUT R7, R5, 0x80000, RZ, 0xfc, !PT ;

        /*3750*/                   IMAD.MOV.U32 R6, RZ, RZ, R4 ;

        /*3760*/                   BSYNC B3 ;

        /*3770*/                   IMAD.MOV.U32 R4, RZ, RZ, R0 ;

        /*3780*/                   MOV R10, R6 ;

        /*3790*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x0 ;

        /*37a0*/                   IMAD.MOV.U32 R11, RZ, RZ, R7 ;

        /*37b0*/                   RET.REL.NODEC R4 0x0 ;

        /*37c0*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*37d0*/                   LOP3.LUT R6, R33, 0x40000000, RZ, 0xc0, !PT ;

        /*37e0*/                   IMAD.MOV.U32 R7, RZ, RZ, R33 ;

        /*37f0*/                   MOV R20, 0x5ff00000 ;

        /*3800*/                   IMAD.MOV.U32 R10, RZ, RZ, RZ ;

        /*3810*/                   ISETP.GE.U32.AND P0, PT, R6, 0x40000000, PT ;

        /*3820*/                   IMAD.MOV.U32 R6, RZ, RZ, R32 ;

        /*3830*/                   MOV R16, 0x1 ;

        /*3840*/                   BMOV.32.CLEAR RZ, B3 ;

        /*3850*/                   SEL R11, R20, 0x1ff00000, !P0 ;

        /*3860*/                   BSSY B3, 0x3d20 ;

        /*3870*/                   LOP3.LUT R22, R21, 0x7f800000, RZ, 0xc0, !PT ;

        /*3880*/                   DMUL R14, R6, R10 ;

        /*3890*/                   ISETP.GE.U32.AND P0, PT, R22, 0x3e800000, PT ;

        /*38a0*/                   SEL R13, R20, 0x1ff00000, !P0 ;

        /*38b0*/                   MUFU.RCP64H R17, R15 ;

        /*38c0*/                   DFMA R8, -R14, R16, 1 ;

        /*38d0*/                   DFMA R18, R8, R8, R8 ;

        /*38e0*/                   IMAD.MOV.U32 R8, RZ, RZ, R12 ;

        /*38f0*/                   IMAD.MOV.U32 R9, RZ, RZ, R21 ;

        /*3900*/                   IMAD.MOV.U32 R12, RZ, RZ, RZ ;

        /*3910*/                   DFMA R18, R16, R18, R16 ;

        /*3920*/                   DMUL R12, R8, R12 ;

        /*3930*/                   DMUL R16, R12, R18 ;

        /*3940*/                   DFMA R12, -R14, R16, R12 ;

        /*3950*/                   DFMA R16, R18, R12, R16 ;

        /*3960*/                   DSETP.GT.AND P0, PT, |R16|, RZ, PT ;

        /*3970*/              @!P0 BRA 0x3c40 ;

        /*3980*/                   ISETP.GT.U32.AND P0, PT, R22, 0x3e7fffff, PT ;

        /*3990*/                   DMUL R14, R10, R16 ;

        /*39a0*/                   MOV R12, RZ ;

        /*39b0*/                   SEL R13, R20, 0x1ff00000, P0 ;

        /*39c0*/                   DMUL R16, R16, R12 ;

        /*39d0*/                   DMUL R12, R12, R14 ;

        /*39e0*/                   DMUL R16, R10, R16 ;

        /*39f0*/                   DFMA R10, R6, R12, -R8 ;

        /*3a00*/                   DFMA R14, R6, R16, -R8 ;

        /*3a10*/                   DSETP.GT.AND P0, PT, |R10|, |R14|, PT ;

        /*3a20*/                   FSEL R11, R17, R13, P0 ;

        /*3a30*/                   FSEL R12, R16, R12, P0 ;

        /*3a40*/                   FSETP.GTU.AND P1, PT, |R11|, 1.469367938527859385e-39, PT ;

        /*3a50*/                   IMAD.MOV.U32 R13, RZ, RZ, R11 ;

        /*3a60*/               @P1 BRA 0x3d10 ;

        /*3a70*/                   IMAD.MOV.U32 R14, RZ, RZ, 0x58500000 ;

        /*3a80*/                   FSETP.GEU.AND P0, PT, |R9|, 1.5046327690525280102e-36, PT ;

        /*3a90*/                   LOP3.LUT R10, R12, 0xfffffffe, RZ, 0xc0, !PT ;

        /*3aa0*/                   SEL R15, R14, 0x3ff00000, !P0 ;

        /*3ab0*/                   IMAD.MOV.U32 R14, RZ, RZ, RZ ;

        /*3ac0*/                   LOP3.LUT R12, R12, 0x1, RZ, 0xfc, !PT ;

        /*3ad0*/                   MOV R13, R11 ;

        /*3ae0*/                   DMUL R6, R6, R14 ;

        /*3af0*/                   DMUL R8, R8, R14 ;

        /*3b00*/                   DFMA R14, R10, R6, -R8 ;

        /*3b10*/                   DFMA R16, R12, R6, -R8 ;

        /*3b20*/                   DSETP.GT.AND P0, PT, |R14|, |R16|, PT ;

        /*3b30*/                   FSEL R15, R12, R10, P0 ;

        /*3b40*/                   IADD3 R12, P1, R15.reuse, 0x1, RZ ;

        /*3b50*/                   LOP3.LUT R10, R15.reuse, 0x1, RZ, 0xc0, !PT ;

        /*3b60*/                   IADD3 R14, P2, R15, -0x1, RZ ;

        /*3b70*/                   IMAD.X R13, RZ, RZ, R11, P1 ;

        /*3b80*/                   ISETP.NE.U32.AND P0, PT, R10, 0x1, PT ;

        /*3b90*/                   IADD3.X R10, R11, -0x1, RZ, P2, !PT ;

        /*3ba0*/                   FSEL R12, R15, R12, P0 ;

        /*3bb0*/                   FSEL R13, R11, R13, P0 ;

        /*3bc0*/                   FSEL R14, R14, R15, P0 ;

        /*3bd0*/                   FSEL R15, R10, R11, P0 ;

        /*3be0*/                   DFMA R10, R6, R12, -R8 ;

        /*3bf0*/                   DFMA R6, R6, R14, -R8 ;

        /*3c00*/                   DSETP.GT.AND P0, PT, |R10|, |R6|, PT ;

        /*3c10*/                   FSEL R12, R14, R12, P0 ;

        /*3c20*/                   FSEL R13, R15, R13, P0 ;

        /*3c30*/                   BRA 0x3d10 ;

        /*3c40*/                   DSETP.NEU.AND P0, PT, R16, RZ, PT ;

        /*3c50*/              @!P0 BRA 0x3d00 ;

        /*3c60*/                   MUFU.RCP64H R13, R7 ;

        /*3c70*/                   IMAD.MOV.U32 R12, RZ, RZ, RZ ;

        /*3c80*/                   DSETP.GT.AND P1, PT, |R12|, RZ, PT ;

        /*3c90*/              @!P1 DSETP.NEU.AND P0, PT, |R6|, +INF , PT ;

        /*3ca0*/              @!P1 FSEL R6, R6, R12, P0 ;

        /*3cb0*/              @!P1 FSEL R11, R7, R13, P0 ;

        /*3cc0*/              @!P1 IMAD.MOV.U32 R12, RZ, RZ, R6 ;

        /*3cd0*/              @!P1 MOV R13, R11 ;

        /*3ce0*/                   DMUL R12, R8, R12 ;

        /*3cf0*/                   BRA 0x3d10 ;

        /*3d00*/                   DMUL R12, R8, R6 ;

        /*3d10*/                   BSYNC B3 ;

        /*3d20*/                   IMAD.MOV.U32 R6, RZ, RZ, R0 ;

        /*3d30*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x0 ;

        /*3d40*/                   RET.REL.NODEC R6 0x0 ;

        /*3d50*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*3d60*/                   ISETP.GE.U32.AND P0, PT, R16, -0x3400000, PT ;

        /*3d70*/                   BMOV.32.CLEAR RZ, B3 ;

        /*3d80*/                   BSSY B3, 0x3fe0 ;

        /*3d90*/                   IMAD.MOV.U32 R16, RZ, RZ, R6 ;

        /*3da0*/                   MOV R17, R7 ;

        /*3db0*/              @!P0 BRA 0x3e40 ;

        /*3dc0*/                   DFMA.RM R6, R10, R8, R14 ;

        /*3dd0*/                   IADD3 R10, P0, R6, 0x1, RZ ;

        /*3de0*/                   IMAD.X R11, RZ, RZ, R7, P0 ;

        /*3df0*/                   DFMA.RP R8, -R6, R10, R16 ;

        /*3e00*/                   DSETP.GT.AND P0, PT, R8, RZ, PT ;

        /*3e10*/                   FSEL R6, R10, R6, P0 ;

        /*3e20*/                   FSEL R7, R11, R7, P0 ;

        /*3e30*/                   BRA 0x3fd0 ;

        /*3e40*/                   DSETP.NE.AND P0, PT, R16, RZ, PT ;

        /*3e50*/              @!P0 BRA 0x3fc0 ;

        /*3e60*/                   ISETP.GE.AND P0, PT, R17, RZ, PT ;

        /*3e70*/              @!P0 IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*3e80*/              @!P0 IMAD.MOV.U32 R7, RZ, RZ, -0x80000 ;

        /*3e90*/              @!P0 BRA 0x3fd0 ;

        /*3ea0*/                   ISETP.GT.AND P0, PT, R17, 0x7fefffff, PT ;

        /*3eb0*/               @P0 BRA 0x3fc0 ;

        /*3ec0*/                   DMUL R6, R16, 8.11296384146066816958e+31 ;

        /*3ed0*/                   MOV R8, RZ ;

        /*3ee0*/                   IMAD.MOV.U32 R14, RZ, RZ, 0x0 ;

        /*3ef0*/                   IMAD.MOV.U32 R15, RZ, RZ, 0x3fd80000 ;

        /*3f00*/                   MUFU.RSQ64H R9, R7 ;

        /*3f10*/                   DMUL R10, R8, R8 ;

        /*3f20*/                   DFMA R10, R6, -R10, 1 ;

        /*3f30*/                   DFMA R14, R10, R14, 0.5 ;

        /*3f40*/                   DMUL R10, R8, R10 ;

        /*3f50*/                   DFMA R10, R14, R10, R8 ;

        /*3f60*/                   DMUL R8, R6, R10 ;

        /*3f70*/                   IADD3 R11, R11, -0x100000, RZ ;

        /*3f80*/                   DFMA R14, R8, -R8, R6 ;

        /*3f90*/                   DFMA R6, R10, R14, R8 ;

        /*3fa0*/                   IADD3 R7, R7, -0x3500000, RZ ;

        /*3fb0*/                   BRA 0x3fd0 ;

        /*3fc0*/                   DADD R6, R16, R16 ;

        /*3fd0*/                   BSYNC B3 ;

        /*3fe0*/                   IMAD.MOV.U32 R16, RZ, RZ, R6 ;

        /*3ff0*/                   MOV R17, R7 ;

        /*4000*/                   IMAD.MOV.U32 R6, RZ, RZ, R0 ;

        /*4010*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x0 ;

        /*4020*/                   RET.REL.NODEC R6 0x0 ;

        /*4030*/                   BRA 0x4030;

        /*4040*/                   NOP;

        /*4050*/                   NOP;

        /*4060*/                   NOP;

        /*4070*/                   NOP;

		..........



Fatbin ptx code:
================
arch = sm_70
code version = [7,4]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
