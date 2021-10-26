
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

        /*0120*/                   IMAD R6, R3, c[0x0][0x168], R0 ;

        /*0130*/                   ISETP.GE.U32.AND P0, PT, R6, c[0x0][0x168], PT ;

        /*0140*/               @P0 IADD3 R6, R6, -c[0x0][0x168], RZ ;

        /*0150*/                   ISETP.GE.U32.AND P0, PT, R6, c[0x0][0x168], PT ;

        /*0160*/               @P0 IADD3 R6, R6, -c[0x0][0x168], RZ ;

        /*0170*/              @!P1 LOP3.LUT R6, RZ, c[0x0][0x168], RZ, 0x33, !PT ;

        /*0180*/                   IADD3 R4, P0, R6, c[0x0][0x160], RZ ;

        /*0190*/                   IADD3.X R5, RZ, c[0x0][0x164], RZ, P0, !PT ;

        /*01a0*/                   LDG.E.U8.SYS R4, [R4] ;

        /*01b0*/                   IADD3 R24, P0, R0.reuse, c[0x0][0x1b0], RZ ;

        /*01c0*/                   IMAD.MOV.U32 R17, RZ, RZ, 0x18 ;

        /*01d0*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x4 ;

        /*01e0*/                   IMAD.X R25, RZ, RZ, c[0x0][0x1b4], P0 ;

        /*01f0*/                   IMAD.MOV.U32 R35, RZ, RZ, 0x8 ;

        /*0200*/                   IMAD.WIDE.U32 R14, R0, R17, c[0x0][0x190] ;

        /*0210*/                   IMAD.WIDE.U32 R16, R0, R17, c[0x0][0x1a0] ;

        /*0220*/                   IMAD.WIDE.U32 R2, R0, R35, c[0x0][0x1c0] ;

        /*0230*/                   IMAD.WIDE.U32 R6, R6, R7, c[0x0][0x170] ;

        /*0240*/                   ISETP.GT.AND P0, PT, R4, 0x2, PT ;

        /*0250*/               @P0 BRA 0xcc0 ;

        /*0260*/                   ISETP.NE.AND P0, PT, R4, RZ, PT ;

        /*0270*/              @!P0 BRA 0x970 ;

        /*0280*/                   ISETP.NE.AND P0, PT, R4, 0x1, PT ;

        /*0290*/              @!P0 BRA 0x620 ;

        /*02a0*/                   ISETP.NE.AND P0, PT, R4, 0x2, PT ;

        /*02b0*/               @P0 EXIT ;

        /*02c0*/                   LDG.E.SYS R4, [R6] ;

        /*02d0*/                   MOV R13, RZ ;

        /*02e0*/                   IMAD.IADD R15, R15, 0x1, R13 ;

        /*02f0*/                   LDG.E.64.SYS R8, [R14+0x10] ;

        /*0300*/                   IMAD.WIDE.U32 R4, R4, R35, c[0x0][0x180] ;

        /*0310*/                   LDG.E.64.SYS R10, [R4] ;

        /*0320*/                   BMOV.32.CLEAR RZ, B0 ;

        /*0330*/                   BSSY B0, 0x600 ;

        /*0340*/                   IMAD.MOV.U32 R4, RZ, RZ, 0x0 ;

        /*0350*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x7ff00000 ;

        /*0360*/                   DADD R8, R8, -R10 ;

        /*0370*/                   DSETP.GEU.AND P1, PT, R8, RZ, PT ;

        /*0380*/                   DSETP.GTU.AND P0, PT, R8, RZ, PT ;

        /*0390*/                   SEL R0, RZ, 0x1, P1 ;

        /*03a0*/                   IADD3 R6, -R0, 0x1, RZ ;

        /*03b0*/              @!P0 IMAD.MOV R6, RZ, RZ, -R0 ;

        /*03c0*/                   SHF.R.U32.HI R0, RZ, 0x1f, R6 ;

        /*03d0*/                   LOP3.LUT R7, R0, 0x1, RZ, 0x3c, !PT ;

        /*03e0*/                   ISETP.NE.AND P0, PT, R6, RZ, PT ;

        /*03f0*/                   STG.E.U8.SYS [R24], R7 ;

        /*0400*/              @!P0 BRA 0x5f0 ;

        /*0410*/                   IADD3 R17, R17, R13, RZ ;

        /*0420*/                   LDG.E.64.SYS R6, [R16+0x10] ;

        /*0430*/                   DSETP.NEU.AND P0, PT, R6, RZ, PT ;

        /*0440*/              @!P0 BRA 0x5f0 ;

        /*0450*/                   LDG.E.64.SYS R14, [R14+0x10] ;

        /*0460*/                   MUFU.RCP64H R9, R7 ;

        /*0470*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x1 ;

        /*0480*/                   BMOV.32.CLEAR RZ, B1 ;

        /*0490*/                   BSSY B1, 0x5c0 ;

        /*04a0*/                   DFMA R12, -R6, R8, 1 ;

        /*04b0*/                   DFMA R12, R12, R12, R12 ;

        /*04c0*/                   DFMA R12, R8, R12, R8 ;

        /*04d0*/                   DADD R10, R10, -R14 ;

        /*04e0*/                   DMUL R8, R10, R12 ;

        /*04f0*/                   FSETP.GTU.AND P1, PT, |R11|, 6.4490557925156731238e-37, PT ;

        /*0500*/                   DFMA R16, -R6, R8, R10 ;

        /*0510*/                   DFMA R8, R12, R16, R8 ;

        /*0520*/                   FFMA R0, RZ, R7, R9 ;

        /*0530*/                   FSETP.GT.AND P0, PT, |R0|, 4.8978884574313168671e-40, PT ;

        /*0540*/               @P0 BRA P1, 0x5b0 ;

        /*0550*/                   IMAD.MOV.U32 R12, RZ, RZ, R10 ;

        /*0560*/                   MOV R0, 0x590 ;

        /*0570*/                   IMAD.MOV.U32 R21, RZ, RZ, R11 ;

        /*0580*/                   CALL.REL.NOINC 0x38f0 ;

        /*0590*/                   IMAD.MOV.U32 R8, RZ, RZ, R10 ;

        /*05a0*/                   MOV R9, R11 ;

        /*05b0*/                   BSYNC B1 ;

        /*05c0*/                   DSETP.GT.AND P0, PT, R8, RZ, PT ;

        /*05d0*/               @P0 IMAD.MOV.U32 R4, RZ, RZ, R8 ;

        /*05e0*/               @P0 IMAD.MOV.U32 R5, RZ, RZ, R9 ;

        /*05f0*/                   BSYNC B0 ;

        /*0600*/                   STG.E.64.SYS [R2], R4 ;

        /*0610*/                   EXIT ;

        /*0620*/                   LDG.E.SYS R4, [R6] ;

        /*0630*/                   IMAD.MOV.U32 R13, RZ, RZ, RZ ;

        /*0640*/                   MOV R18, R14 ;

        /*0650*/                   IMAD.IADD R19, R15, 0x1, R13 ;

        /*0660*/                   LDG.E.64.SYS R8, [R18+0x8] ;

        /*0670*/                   IMAD.WIDE.U32 R4, R4, R35, c[0x0][0x180] ;

        /*0680*/                   LDG.E.64.SYS R10, [R4] ;

        /*0690*/                   BMOV.32.CLEAR RZ, B0 ;

        /*06a0*/                   BSSY B0, 0x950 ;

        /*06b0*/                   IMAD.MOV.U32 R4, RZ, RZ, 0x0 ;

        /*06c0*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x7ff00000 ;

        /*06d0*/                   DADD R8, R8, -R10 ;

        /*06e0*/                   DSETP.GEU.AND P1, PT, R8, RZ, PT ;

        /*06f0*/                   DSETP.GTU.AND P0, PT, R8, RZ, PT ;

        /*0700*/                   SEL R0, RZ, 0x1, P1 ;

        /*0710*/                   IADD3 R6, -R0, 0x1, RZ ;

        /*0720*/              @!P0 IMAD.MOV R6, RZ, RZ, -R0 ;

        /*0730*/                   SHF.R.U32.HI R0, RZ, 0x1f, R6 ;

        /*0740*/                   LOP3.LUT R7, R0, 0x1, RZ, 0x3c, !PT ;

        /*0750*/                   ISETP.NE.AND P0, PT, R6, RZ, PT ;

        /*0760*/                   STG.E.U8.SYS [R24], R7 ;

        /*0770*/              @!P0 BRA 0x940 ;

        /*0780*/                   IMAD.IADD R17, R17, 0x1, R13 ;

        /*0790*/                   LDG.E.64.SYS R6, [R16+0x8] ;

        /*07a0*/                   DSETP.NEU.AND P0, PT, R6, RZ, PT ;

        /*07b0*/              @!P0 BRA 0x940 ;

        /*07c0*/                   LDG.E.64.SYS R8, [R18+0x8] ;

        /*07d0*/                   MUFU.RCP64H R13, R7 ;

        /*07e0*/                   MOV R12, 0x1 ;

        /*07f0*/                   BMOV.32.CLEAR RZ, B1 ;

        /*0800*/                   BSSY B1, 0x910 ;

        /*0810*/                   DFMA R14, -R6, R12, 1 ;

        /*0820*/                   DFMA R14, R14, R14, R14 ;

        /*0830*/                   DFMA R14, R12, R14, R12 ;

        /*0840*/                   DADD R8, R10, -R8 ;

        /*0850*/                   DMUL R10, R8, R14 ;

        /*0860*/                   FSETP.GTU.AND P1, PT, |R9|, 6.4490557925156731238e-37, PT ;

        /*0870*/                   DFMA R12, -R6, R10, R8 ;

        /*0880*/                   DFMA R10, R14, R12, R10 ;

        /*0890*/                   FFMA R0, RZ, R7, R11 ;

        /*08a0*/                   FSETP.GT.AND P0, PT, |R0|, 4.8978884574313168671e-40, PT ;

        /*08b0*/               @P0 BRA P1, 0x900 ;

        /*08c0*/                   IMAD.MOV.U32 R12, RZ, RZ, R8 ;

        /*08d0*/                   MOV R0, 0x900 ;

        /*08e0*/                   IMAD.MOV.U32 R21, RZ, RZ, R9 ;

        /*08f0*/                   CALL.REL.NOINC 0x38f0 ;

        /*0900*/                   BSYNC B1 ;

        /*0910*/                   DSETP.GT.AND P0, PT, R10, RZ, PT ;

        /*0920*/               @P0 IMAD.MOV.U32 R4, RZ, RZ, R10 ;

        /*0930*/               @P0 IMAD.MOV.U32 R5, RZ, RZ, R11 ;

        /*0940*/                   BSYNC B0 ;

        /*0950*/                   STG.E.64.SYS [R2], R4 ;

        /*0960*/                   EXIT ;

        /*0970*/                   LDG.E.SYS R4, [R6] ;

        /*0980*/                   LDG.E.64.SYS R8, [R14] ;

        /*0990*/                   IMAD.WIDE.U32 R4, R4, R35, c[0x0][0x180] ;

        /*09a0*/                   LDG.E.64.SYS R10, [R4] ;

        /*09b0*/                   BMOV.32.CLEAR RZ, B0 ;

        /*09c0*/                   BSSY B0, 0xca0 ;

        /*09d0*/                   IMAD.MOV.U32 R4, RZ, RZ, 0x0 ;

        /*09e0*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x7ff00000 ;

        /*09f0*/                   DADD R8, R8, -R10 ;

        /*0a00*/                   DSETP.GEU.AND P1, PT, R8, RZ, PT ;

        /*0a10*/                   DSETP.GTU.AND P0, PT, R8, RZ, PT ;

        /*0a20*/                   SEL R0, RZ, 0x1, P1 ;

        /*0a30*/                   IADD3 R8, -R0, 0x1, RZ ;

        /*0a40*/              @!P0 IADD3 R8, -R0, RZ, RZ ;

        /*0a50*/                   SHF.R.U32.HI R0, RZ, 0x1f, R8 ;

        /*0a60*/                   LOP3.LUT R7, R0, 0x1, RZ, 0x3c, !PT ;

        /*0a70*/                   ISETP.NE.AND P0, PT, R8, RZ, PT ;

        /*0a80*/                   STG.E.U8.SYS [R24], R7 ;

        /*0a90*/              @!P0 BRA 0xc90 ;

        /*0aa0*/                   LDG.E.64.SYS R16, [R16] ;

        /*0ab0*/                   DSETP.NEU.AND P0, PT, R16, RZ, PT ;

        /*0ac0*/              @!P0 BRA 0xc90 ;

        /*0ad0*/                   LDG.E.64.SYS R14, [R14] ;

        /*0ae0*/                   MUFU.RCP64H R7, R17 ;

        /*0af0*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x1 ;

        /*0b00*/                   BMOV.32.CLEAR RZ, B1 ;

        /*0b10*/                   BSSY B1, 0xc60 ;

        /*0b20*/                   DFMA R8, -R16, R6, 1 ;

        /*0b30*/                   DFMA R8, R8, R8, R8 ;

        /*0b40*/                   DFMA R8, R6, R8, R6 ;

        /*0b50*/                   DADD R10, R10, -R14 ;

        /*0b60*/                   DMUL R6, R10, R8 ;

        /*0b70*/                   FSETP.GTU.AND P1, PT, |R11|, 6.4490557925156731238e-37, PT ;

        /*0b80*/                   DFMA R12, -R16, R6, R10 ;

        /*0b90*/                   DFMA R6, R8, R12, R6 ;

        /*0ba0*/                   FFMA R0, RZ, R17, R7 ;

        /*0bb0*/                   FSETP.GT.AND P0, PT, |R0|, 4.8978884574313168671e-40, PT ;

        /*0bc0*/               @P0 BRA P1, 0xc50 ;

        /*0bd0*/                   IMAD.MOV.U32 R12, RZ, RZ, R10 ;

        /*0be0*/                   MOV R21, R11 ;

        /*0bf0*/                   IMAD.MOV.U32 R6, RZ, RZ, R16 ;

        /*0c00*/                   MOV R0, 0xc30 ;

        /*0c10*/                   IMAD.MOV.U32 R7, RZ, RZ, R17 ;

        /*0c20*/                   CALL.REL.NOINC 0x38f0 ;

        /*0c30*/                   IMAD.MOV.U32 R6, RZ, RZ, R10 ;

        /*0c40*/                   IMAD.MOV.U32 R7, RZ, RZ, R11 ;

        /*0c50*/                   BSYNC B1 ;

        /*0c60*/                   DSETP.GT.AND P0, PT, R6, RZ, PT ;

        /*0c70*/               @P0 MOV R4, R6 ;

        /*0c80*/               @P0 IMAD.MOV.U32 R5, RZ, RZ, R7 ;

        /*0c90*/                   BSYNC B0 ;

        /*0ca0*/                   STG.E.64.SYS [R2], R4 ;

        /*0cb0*/                   EXIT ;

        /*0cc0*/                   ISETP.GT.AND P0, PT, R4, 0x4, PT ;

        /*0cd0*/               @P0 BRA 0x1de0 ;

        /*0ce0*/                   ISETP.NE.AND P0, PT, R4, 0x3, PT ;

        /*0cf0*/              @!P0 BRA 0x1560 ;

        /*0d00*/                   ISETP.NE.AND P0, PT, R4, 0x4, PT ;

        /*0d10*/               @P0 EXIT ;

        /*0d20*/                   LDG.E.SYS R4, [R6] ;

        /*0d30*/                   LDG.E.64.SYS R10, [R14+0x10] ;

        /*0d40*/                   LDG.E.64.SYS R8, [R14] ;

        /*0d50*/                   IMAD.WIDE.U32 R4, R4, R35, c[0x0][0x180] ;

        /*0d60*/                   LDG.E.64.SYS R4, [R4] ;

        /*0d70*/                   DMUL R10, R10, R10 ;

        /*0d80*/                   DFMA R10, R8, R8, R10 ;

        /*0d90*/                   DADD R10, R10, -R4 ;

        /*0da0*/                   DSETP.GEU.AND P1, PT, R10, RZ, PT ;

        /*0db0*/                   DSETP.GTU.AND P0, PT, R10, RZ, PT ;

        /*0dc0*/                   IMAD.MOV.U32 R11, RZ, RZ, RZ ;

        /*0dd0*/                   MOV R10, R16 ;

        /*0de0*/                   SEL R8, RZ, 0x1, P1 ;

        /*0df0*/                   IMAD.IADD R11, R17, 0x1, R11 ;

        /*0e00*/                   IADD3 R0, -R8, 0x1, RZ ;

        /*0e10*/              @!P0 IMAD.MOV R0, RZ, RZ, -R8 ;

        /*0e20*/                   SHF.R.U32.HI R6, RZ, 0x1f, R0 ;

        /*0e30*/                   LOP3.LUT R19, R6, 0x1, RZ, 0x3c, !PT ;

        /*0e40*/                   STG.E.U8.SYS [R24], R19 ;

        /*0e50*/                   LDG.E.64.SYS R6, [R10+0x8] ;

        /*0e60*/                   BMOV.32.CLEAR RZ, B0 ;

        /*0e70*/                   BSSY B0, 0x1510 ;

        /*0e80*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*0e90*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*0ea0*/                   DFMA R12, -R6, R6, 1 ;

        /*0eb0*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*0ec0*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*0ed0*/                   DSETP.NEU.AND P0, PT, R12, RZ, PT ;

        /*0ee0*/              @!P0 BRA 0x1500 ;

        /*0ef0*/                   LDG.E.64.SYS R18, [R16+0x10] ;

        /*0f00*/                   LDG.E.64.SYS R8, [R14+0x10] ;

        /*0f10*/                   LDG.E.64.SYS R20, [R16] ;

        /*0f20*/                   LDG.E.64.SYS R10, [R14] ;

        /*0f30*/                   MUFU.RCP64H R23, R13 ;

        /*0f40*/                   IADD3 R22, R13, 0x300402, RZ ;

        /*0f50*/                   BMOV.32.CLEAR RZ, B1 ;

        /*0f60*/                   BSSY B1, 0x1050 ;

        /*0f70*/                   FSETP.GEU.AND P0, PT, |R22|, 5.8789094863358348022e-39, PT ;

        /*0f80*/                   DFMA R24, -R12, R22, 1 ;

        /*0f90*/                   DFMA R24, R24, R24, R24 ;

        /*0fa0*/                   DFMA R24, R22, R24, R22 ;

        /*0fb0*/                   DFMA R26, -R12, R24, 1 ;

        /*0fc0*/                   DFMA R24, R24, R26, R24 ;

        /*0fd0*/                   DMUL R18, R18, R8 ;

        /*0fe0*/                   DFMA R20, R20, R10, R18 ;

        /*0ff0*/               @P0 BRA 0x1040 ;

        /*1000*/                   LOP3.LUT R18, R13, 0x7fffffff, RZ, 0xc0, !PT ;

        /*1010*/                   MOV R14, 0x1040 ;

        /*1020*/                   IADD3 R18, R18, -0x100000, RZ ;

        /*1030*/                   CALL.REL.NOINC 0x3650 ;

        /*1040*/                   BSYNC B1 ;

        /*1050*/                   ISETP.NE.AND P0, PT, R0, RZ, PT ;

        /*1060*/                   DMUL R20, R20, R24 ;

        /*1070*/              @!P0 BRA 0x14c0 ;

        /*1080*/                   DMUL R8, R8, R8 ;

        /*1090*/                   DFMA R8, R10, R10, R8 ;

        /*10a0*/                   DADD R8, -R4, R8 ;

        /*10b0*/                   DMUL R4, R20, R20 ;

        /*10c0*/                   DMUL R8, R8, R24 ;

        /*10d0*/                   DSETP.GT.AND P0, PT, R4, R8, PT ;

        /*10e0*/               @P0 BRA 0x11b0 ;

        /*10f0*/                   DSETP.NEU.AND P0, PT, R4, R8, PT ;

        /*1100*/                   MOV R6, 0x0 ;

        /*1110*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*1120*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*1130*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*1140*/               @P0 BRA 0x1500 ;

        /*1150*/                   DSETP.GT.AND P0, PT, R20, RZ, PT ;

        /*1160*/                   DADD R8, -RZ, -R20 ;

        /*1170*/              @!P0 BRA 0x1500 ;

        /*1180*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*1190*/                   MOV R9, 0x7ff00000 ;

        /*11a0*/                   BRA 0x1500 ;

        /*11b0*/                   DADD R12, -R8, R4 ;

        /*11c0*/                   BMOV.32.CLEAR RZ, B1 ;

        /*11d0*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*11e0*/                   BSSY B1, 0x1390 ;

        /*11f0*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x3fd80000 ;

        /*1200*/                   MUFU.RSQ64H R5, R13 ;

        /*1210*/                   IADD3 R4, R13, -0x3500000, RZ ;

        /*1220*/                   ISETP.GE.U32.AND P0, PT, R4, 0x7ca00000, PT ;

        /*1230*/                   DMUL R6, R4, R4 ;

        /*1240*/                   DFMA R6, R12, -R6, 1 ;

        /*1250*/                   DFMA R8, R6, R8, 0.5 ;

        /*1260*/                   DMUL R6, R4, R6 ;

        /*1270*/                   DFMA R8, R8, R6, R4 ;

        /*1280*/                   DMUL R14, R12, R8 ;

        /*1290*/                   IADD3 R11, R9, -0x100000, RZ ;

        /*12a0*/                   IMAD.MOV.U32 R10, RZ, RZ, R8 ;

        /*12b0*/                   DFMA R16, R14, -R14, R12 ;

        /*12c0*/                   DFMA R6, R16, R10, R14 ;

        /*12d0*/              @!P0 BRA 0x1380 ;

        /*12e0*/                   MOV R0, R12 ;

        /*12f0*/                   IMAD.MOV.U32 R6, RZ, RZ, R8 ;

        /*1300*/                   MOV R10, 0x1380 ;

        /*1310*/                   IMAD.MOV.U32 R9, RZ, RZ, R17 ;

        /*1320*/                   MOV R17, R15 ;

        /*1330*/                   IMAD.MOV.U32 R12, RZ, RZ, R14 ;

        /*1340*/                   IMAD.MOV.U32 R7, RZ, RZ, R13 ;

        /*1350*/                   IMAD.MOV.U32 R8, RZ, RZ, R16 ;

        /*1360*/                   IMAD.MOV.U32 R14, RZ, RZ, R4 ;

        /*1370*/                   CALL.REL.NOINC 0x3e60 ;

        /*1380*/                   BSYNC B1 ;

        /*1390*/                   DADD R4, -R20.reuse, R6.reuse ;

        /*13a0*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*13b0*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*13c0*/                   DADD R20, -R20, -R6 ;

        /*13d0*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*13e0*/                   MOV R7, 0x7ff00000 ;

        /*13f0*/                   DSETP.GEU.AND P0, PT, R4, RZ, PT ;

        /*1400*/              @!P0 BRA 0x1500 ;

        /*1410*/                   DSETP.GEU.AND P0, PT, R20, RZ, PT ;

        /*1420*/                   IMAD.MOV.U32 R8, RZ, RZ, R20 ;

        /*1430*/                   IMAD.MOV.U32 R9, RZ, RZ, R21 ;

        /*1440*/                   IMAD.MOV.U32 R6, RZ, RZ, R4 ;

        /*1450*/                   IMAD.MOV.U32 R7, RZ, RZ, R5 ;

        /*1460*/               @P0 BRA 0x1500 ;

        /*1470*/                   MOV R6, R4 ;

        /*1480*/                   IMAD.MOV.U32 R7, RZ, RZ, R5 ;

        /*1490*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*14a0*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*14b0*/                   BRA 0x1500 ;

        /*14c0*/                   DMUL R20, R20, -2 ;

        /*14d0*/                   DSETP.GTU.AND P0, PT, R20, RZ, PT ;

        /*14e0*/                   FSEL R8, R20, RZ, P0 ;

        /*14f0*/                   FSEL R9, R21, +QNAN , P0 ;

        /*1500*/                   BSYNC B0 ;

        /*1510*/                   DSETP.GEU.AND P0, PT, R6, R8, PT ;

        /*1520*/                   FSEL R4, R6, R8, !P0 ;

        /*1530*/                   FSEL R5, R7, R9, !P0 ;

        /*1540*/                   STG.E.64.SYS [R2], R4 ;

        /*1550*/                   EXIT ;

        /*1560*/                   LDG.E.SYS R4, [R6] ;

        /*1570*/                   IMAD.MOV.U32 R19, RZ, RZ, RZ ;

        /*1580*/                   IMAD.MOV.U32 R26, RZ, RZ, R14 ;

        /*1590*/                   IADD3 R27, R15, R19, RZ ;

        /*15a0*/                   LDG.E.64.SYS R10, [R26+0x10] ;

        /*15b0*/                   LDG.E.64.SYS R8, [R26+0x8] ;

        /*15c0*/                   IMAD.WIDE.U32 R4, R4, R35, c[0x0][0x180] ;

        /*15d0*/                   LDG.E.64.SYS R4, [R4] ;

        /*15e0*/                   DMUL R10, R10, R10 ;

        /*15f0*/                   DFMA R10, R8, R8, R10 ;

        /*1600*/                   DADD R10, R10, -R4 ;

        /*1610*/                   DSETP.GEU.AND P1, PT, R10, RZ, PT ;

        /*1620*/                   DSETP.GTU.AND P0, PT, R10, RZ, PT ;

        /*1630*/                   SEL R0, RZ, 0x1, P1 ;

        /*1640*/                   IADD3 R28, -R0, 0x1, RZ ;

        /*1650*/              @!P0 IMAD.MOV R28, RZ, RZ, -R0 ;

        /*1660*/                   SHF.R.U32.HI R0, RZ, 0x1f, R28 ;

        /*1670*/                   LOP3.LUT R11, R0, 0x1, RZ, 0x3c, !PT ;

        /*1680*/                   STG.E.U8.SYS [R24], R11 ;

        /*1690*/                   LDG.E.64.SYS R6, [R16] ;

        /*16a0*/                   BMOV.32.CLEAR RZ, B0 ;

        /*16b0*/                   BSSY B0, 0x1d90 ;

        /*16c0*/                   MOV R8, 0x0 ;

        /*16d0*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*16e0*/                   DFMA R12, -R6, R6, 1 ;

        /*16f0*/                   DSETP.NEU.AND P0, PT, R12, RZ, PT ;

        /*1700*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*1710*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*1720*/              @!P0 BRA 0x1d80 ;

        /*1730*/                   IMAD.IADD R25, R17, 0x1, R19 ;

        /*1740*/                   LDG.E.64.SYS R8, [R26+0x10] ;

        /*1750*/                   IMAD.MOV.U32 R24, RZ, RZ, R16 ;

        /*1760*/                   LDG.E.64.SYS R10, [R26+0x8] ;

        /*1770*/                   LDG.E.64.SYS R14, [R24+0x10] ;

        /*1780*/                   LDG.E.64.SYS R20, [R24+0x8] ;

        /*1790*/                   MUFU.RCP64H R17, R13 ;

        /*17a0*/                   IADD3 R16, R13, 0x300402, RZ ;

        /*17b0*/                   DFMA R18, -R12, R16, 1 ;

        /*17c0*/                   DFMA R18, R18, R18, R18 ;

        /*17d0*/                   FSETP.GEU.AND P1, PT, |R16|, 5.8789094863358348022e-39, PT ;

        /*17e0*/                   DFMA R18, R16, R18, R16 ;

        /*17f0*/                   DFMA R22, -R12, R18, 1 ;

        /*1800*/                   BMOV.32.CLEAR RZ, B1 ;

        /*1810*/                   BSSY B1, 0x18e0 ;

        /*1820*/                   ISETP.NE.AND P0, PT, R28, RZ, PT ;

        /*1830*/                   DFMA R18, R18, R22, R18 ;

        /*1840*/                   DMUL R14, R14, R8 ;

        /*1850*/                   DFMA R20, R20, R10, R14 ;

        /*1860*/               @P1 BRA 0x18d0 ;

        /*1870*/                   LOP3.LUT R18, R13, 0x7fffffff, RZ, 0xc0, !PT ;

        /*1880*/                   MOV R14, 0x18b0 ;

        /*1890*/                   IADD3 R18, R18, -0x100000, RZ ;

        /*18a0*/                   CALL.REL.NOINC 0x3650 ;

        /*18b0*/                   IMAD.MOV.U32 R18, RZ, RZ, R24 ;

        /*18c0*/                   MOV R19, R25 ;

        /*18d0*/                   BSYNC B1 ;

        /*18e0*/                   DMUL R20, R20, R18 ;

        /*18f0*/              @!P0 BRA 0x1d40 ;

        /*1900*/                   DMUL R8, R8, R8 ;

        /*1910*/                   DFMA R8, R10, R10, R8 ;

        /*1920*/                   DADD R8, -R4, R8 ;

        /*1930*/                   DMUL R4, R20, R20 ;

        /*1940*/                   DMUL R8, R8, R18 ;

        /*1950*/                   DSETP.GT.AND P0, PT, R4, R8, PT ;

        /*1960*/               @P0 BRA 0x1a30 ;

        /*1970*/                   DSETP.NEU.AND P0, PT, R4, R8, PT ;

        /*1980*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*1990*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*19a0*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*19b0*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*19c0*/               @P0 BRA 0x1d80 ;

        /*19d0*/                   DSETP.GT.AND P0, PT, R20, RZ, PT ;

        /*19e0*/                   DADD R8, -RZ, -R20 ;

        /*19f0*/              @!P0 BRA 0x1d80 ;

        /*1a00*/                   MOV R8, 0x0 ;

        /*1a10*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*1a20*/                   BRA 0x1d80 ;

        /*1a30*/                   DADD R12, -R8, R4 ;

        /*1a40*/                   BMOV.32.CLEAR RZ, B1 ;

        /*1a50*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*1a60*/                   BSSY B1, 0x1c10 ;

        /*1a70*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x3fd80000 ;

        /*1a80*/                   MUFU.RSQ64H R5, R13 ;

        /*1a90*/                   IADD3 R4, R13, -0x3500000, RZ ;

        /*1aa0*/                   ISETP.GE.U32.AND P0, PT, R4, 0x7ca00000, PT ;

        /*1ab0*/                   DMUL R6, R4, R4 ;

        /*1ac0*/                   DFMA R6, R12, -R6, 1 ;

        /*1ad0*/                   DFMA R8, R6, R8, 0.5 ;

        /*1ae0*/                   DMUL R6, R4, R6 ;

        /*1af0*/                   DFMA R8, R8, R6, R4 ;

        /*1b00*/                   DMUL R14, R12, R8 ;

        /*1b10*/                   IADD3 R11, R9, -0x100000, RZ ;

        /*1b20*/                   IMAD.MOV.U32 R10, RZ, RZ, R8 ;

        /*1b30*/                   DFMA R16, R14, -R14, R12 ;

        /*1b40*/                   DFMA R6, R16, R10, R14 ;

        /*1b50*/              @!P0 BRA 0x1c00 ;

        /*1b60*/                   IMAD.MOV.U32 R0, RZ, RZ, R12 ;

        /*1b70*/                   MOV R6, R8 ;

        /*1b80*/                   IMAD.MOV.U32 R12, RZ, RZ, R14 ;

        /*1b90*/                   MOV R9, R17 ;

        /*1ba0*/                   IMAD.MOV.U32 R7, RZ, RZ, R13 ;

        /*1bb0*/                   MOV R10, 0x1c00 ;

        /*1bc0*/                   IMAD.MOV.U32 R8, RZ, RZ, R16 ;

        /*1bd0*/                   IMAD.MOV.U32 R17, RZ, RZ, R15 ;

        /*1be0*/                   IMAD.MOV.U32 R14, RZ, RZ, R4 ;

        /*1bf0*/                   CALL.REL.NOINC 0x3e60 ;

        /*1c00*/                   BSYNC B1 ;

        /*1c10*/                   DADD R4, -R20, R6 ;

        /*1c20*/                   MOV R8, 0x0 ;

        /*1c30*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*1c40*/                   DADD R20, -R20, -R6 ;

        /*1c50*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*1c60*/                   DSETP.GEU.AND P0, PT, R4, RZ, PT ;

        /*1c70*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*1c80*/              @!P0 BRA 0x1d80 ;

        /*1c90*/                   DSETP.GEU.AND P0, PT, R20, RZ, PT ;

        /*1ca0*/                   MOV R8, R20 ;

        /*1cb0*/                   IMAD.MOV.U32 R9, RZ, RZ, R21 ;

        /*1cc0*/                   IMAD.MOV.U32 R6, RZ, RZ, R4 ;

        /*1cd0*/                   IMAD.MOV.U32 R7, RZ, RZ, R5 ;

        /*1ce0*/               @P0 BRA 0x1d80 ;

        /*1cf0*/                   MOV R6, R4 ;

        /*1d00*/                   IMAD.MOV.U32 R7, RZ, RZ, R5 ;

        /*1d10*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*1d20*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*1d30*/                   BRA 0x1d80 ;

        /*1d40*/                   DMUL R20, R20, -2 ;

        /*1d50*/                   DSETP.GTU.AND P0, PT, R20, RZ, PT ;

        /*1d60*/                   FSEL R8, R20, RZ, P0 ;

        /*1d70*/                   FSEL R9, R21, +QNAN , P0 ;

        /*1d80*/                   BSYNC B0 ;

        /*1d90*/                   DSETP.GEU.AND P0, PT, R6, R8, PT ;

        /*1da0*/                   FSEL R4, R6, R8, !P0 ;

        /*1db0*/                   FSEL R5, R7, R9, !P0 ;

        /*1dc0*/                   STG.E.64.SYS [R2], R4 ;

        /*1dd0*/                   EXIT ;

        /*1de0*/                   ISETP.NE.AND P0, PT, R4, 0x5, PT ;

        /*1df0*/              @!P0 BRA 0x2e10 ;

        /*1e00*/                   ISETP.NE.AND P0, PT, R4, 0x6, PT ;

        /*1e10*/               @P0 EXIT ;

        /*1e20*/                   LDG.E.SYS R34, [R6] ;

        /*1e30*/                   LDG.E.64.SYS R36, [R14+0x8] ;

        /*1e40*/                   LDG.E.64.SYS R30, [R14+0x10] ;

        /*1e50*/                   LDG.E.64.SYS R32, [R14] ;

        /*1e60*/                   IMAD.WIDE.U32 R34, R34, R35, c[0x0][0x180] ;

        /*1e70*/                   LDG.E.64.SYS R26, [R34+0x20] ;

        /*1e80*/                   LDG.E.64.SYS R18, [R34+0x18] ;

        /*1e90*/                   LDG.E.64.SYS R28, [R34+0x8] ;

        /*1ea0*/                   LDG.E.64.SYS R20, [R34] ;

        /*1eb0*/                   LDG.E.64.SYS R22, [R34+0x38] ;

        /*1ec0*/                   LDG.E.64.SYS R10, [R34+0x28] ;

        /*1ed0*/                   LDG.E.64.SYS R12, [R34+0x30] ;

        /*1ee0*/                   LDG.E.64.SYS R4, [R34+0x10] ;

        /*1ef0*/                   LDG.E.64.SYS R8, [R34+0x40] ;

        /*1f00*/                   LDG.E.64.SYS R6, [R34+0x48] ;

        /*1f10*/                   DMUL R40, R30, R26 ;

        /*1f20*/                   DMUL R38, R36, R18 ;

        /*1f30*/                   DFMA R40, R36, R28, R40 ;

        /*1f40*/                   DFMA R38, R32, R20, R38 ;

        /*1f50*/                   DADD R40, R40, R22 ;

        /*1f60*/                   DFMA R38, R30, R10, R38 ;

        /*1f70*/                   DMUL R40, R36, R40 ;

        /*1f80*/                   DADD R38, R38, R12 ;

        /*1f90*/                   DFMA R36, R30, R4, R8 ;

        /*1fa0*/                   DFMA R38, R32, R38, R40 ;

        /*1fb0*/                   DFMA R36, R30, R36, R38 ;

        /*1fc0*/                   DADD R36, R36, R6 ;

        /*1fd0*/                   DSETP.GEU.AND P1, PT, R36, RZ, PT ;

        /*1fe0*/                   DSETP.GTU.AND P0, PT, R36, RZ, PT ;

        /*1ff0*/                   SEL R30, RZ, 0x1, P1 ;

        /*2000*/                   IADD3 R0, -R30, 0x1, RZ ;

        /*2010*/              @!P0 IADD3 R0, -R30, RZ, RZ ;

        /*2020*/                   SHF.R.U32.HI R30, RZ, 0x1f, R0 ;

        /*2030*/                   LOP3.LUT R49, R30, 0x1, RZ, 0x3c, !PT ;

        /*2040*/                   STG.E.U8.SYS [R24], R49 ;

        /*2050*/                   LDG.E.64.SYS R40, [R14+0x8] ;

        /*2060*/                   LDG.E.64.SYS R30, [R16+0x10] ;

        /*2070*/                   LDG.E.64.SYS R36, [R14] ;

        /*2080*/                   LDG.E.64.SYS R38, [R14+0x10] ;

        /*2090*/                   LDG.E.64.SYS R32, [R16+0x8] ;

        /*20a0*/                   LDG.E.64.SYS R34, [R16] ;

        /*20b0*/                   DADD R46, R28, R28 ;

        /*20c0*/                   BMOV.32.CLEAR RZ, B0 ;

        /*20d0*/                   BSSY B0, 0x2dc0 ;

        /*20e0*/                   DMUL R46, R40, R46 ;

        /*20f0*/                   DMUL R44, R26, R30 ;

        /*2100*/                   DFMA R46, R18, R36, R46 ;

        /*2110*/                   DMUL R24, R26, R38 ;

        /*2120*/                   DFMA R44, R28, R32, R44 ;

        /*2130*/                   DFMA R28, R28, R40, R24 ;

        /*2140*/                   DADD R14, R46, R24 ;

        /*2150*/                   DADD R24, R4, R4 ;

        /*2160*/                   DMUL R24, R38, R24 ;

        /*2170*/                   DMUL R42, R18, R32 ;

        /*2180*/                   DFMA R26, R26, R40, R24 ;

        /*2190*/                   DMUL R24, R18, R40 ;

        /*21a0*/                   DADD R18, R20, R20 ;

        /*21b0*/                   DFMA R18, R18, R36, R24 ;

        /*21c0*/                   DFMA R42, R20, R34, R42 ;

        /*21d0*/                   DFMA R20, R20, R36, R24 ;

        /*21e0*/                   DFMA R18, R10, R38, R18 ;

        /*21f0*/                   DADD R28, R22, R28 ;

        /*2200*/                   DADD R22, R22, R14 ;

        /*2210*/                   DADD R14, R12, R20 ;

        /*2220*/                   DADD R18, R12, R18 ;

        /*2230*/                   DMUL R12, R4, R38 ;

        /*2240*/                   DMUL R44, R32, R44 ;

        /*2250*/                   DMUL R4, R4, R30 ;

        /*2260*/                   DFMA R12, R10, R36, R12 ;

        /*2270*/                   DFMA R16, R34, R42, R44 ;

        /*2280*/                   DFMA R4, R10, R34, R4 ;

        /*2290*/                   DMUL R40, R40, R28 ;

        /*22a0*/                   DMUL R22, R32, R22 ;

        /*22b0*/                   DFMA R26, R10, R36, R26 ;

        /*22c0*/                   DADD R10, R8, R12 ;

        /*22d0*/                   DFMA R12, R30, R4, R16 ;

        /*22e0*/                   DADD R26, R8, R26 ;

        /*22f0*/                   DFMA R14, R36, R14, R40 ;

        /*2300*/                   DFMA R18, R34, R18, R22 ;

        /*2310*/                   DSETP.GE.AND P0, PT, |R12|, c[0x2][0x0], PT ;

        /*2320*/                   DFMA R10, R38, R10, R14 ;

        /*2330*/                   DFMA R4, R30, R26, R18 ;

        /*2340*/                   DADD R6, R6, R10 ;

        /*2350*/                   DMUL R4, R4, 0.5 ;

        /*2360*/              @!P0 BRA 0x2940 ;

        /*2370*/                   MUFU.RCP64H R9, R13 ;

        /*2380*/                   IADD3 R8, R13, 0x300402, RZ ;

        /*2390*/                   BMOV.32.CLEAR RZ, B1 ;

        /*23a0*/                   BSSY B1, 0x24a0 ;

        /*23b0*/                   ISETP.NE.AND P0, PT, R0, RZ, PT ;

        /*23c0*/                   FSETP.GEU.AND P1, PT, |R8|, 5.8789094863358348022e-39, PT ;

        /*23d0*/                   DFMA R10, -R12, R8, 1 ;

        /*23e0*/                   DFMA R10, R10, R10, R10 ;

        /*23f0*/                   DFMA R10, R8, R10, R8 ;

        /*2400*/                   DFMA R14, -R12, R10, 1 ;

        /*2410*/                   DFMA R10, R10, R14, R10 ;

        /*2420*/               @P1 BRA 0x2490 ;

        /*2430*/                   LOP3.LUT R18, R13, 0x7fffffff, RZ, 0xc0, !PT ;

        /*2440*/                   MOV R14, 0x2470 ;

        /*2450*/                   IADD3 R18, R18, -0x100000, RZ ;

        /*2460*/                   CALL.REL.NOINC 0x3650 ;

        /*2470*/                   IMAD.MOV.U32 R10, RZ, RZ, R24 ;

        /*2480*/                   IMAD.MOV.U32 R11, RZ, RZ, R25 ;

        /*2490*/                   BSYNC B1 ;

        /*24a0*/                   DMUL R4, R4, R10 ;

        /*24b0*/              @!P0 BRA 0x28d0 ;

        /*24c0*/                   DMUL R6, R6, R10 ;

        /*24d0*/                   DMUL R8, R4, R4 ;

        /*24e0*/                   DSETP.GT.AND P0, PT, R8, R6, PT ;

        /*24f0*/               @P0 BRA 0x25c0 ;

        /*2500*/                   DSETP.NEU.AND P0, PT, R8, R6, PT ;

        /*2510*/                   IMAD.MOV.U32 R10, RZ, RZ, 0x0 ;

        /*2520*/                   MOV R11, 0x7ff00000 ;

        /*2530*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*2540*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*2550*/               @P0 BRA 0x2db0 ;

        /*2560*/                   DSETP.GT.AND P0, PT, R4, RZ, PT ;

        /*2570*/                   DADD R8, -RZ, -R4 ;

        /*2580*/              @!P0 BRA 0x2db0 ;

        /*2590*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*25a0*/                   MOV R9, 0x7ff00000 ;

        /*25b0*/                   BRA 0x2db0 ;

        /*25c0*/                   DADD R14, -R6, R8 ;

        /*25d0*/                   BMOV.32.CLEAR RZ, B1 ;

        /*25e0*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*25f0*/                   BSSY B1, 0x27a0 ;

        /*2600*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x3fd80000 ;

        /*2610*/                   MUFU.RSQ64H R11, R15 ;

        /*2620*/                   IADD3 R10, R15, -0x3500000, RZ ;

        /*2630*/                   ISETP.GE.U32.AND P0, PT, R10, 0x7ca00000, PT ;

        /*2640*/                   DMUL R6, R10, R10 ;

        /*2650*/                   DFMA R6, R14, -R6, 1 ;

        /*2660*/                   DFMA R8, R6, R8, 0.5 ;

        /*2670*/                   DMUL R6, R10, R6 ;

        /*2680*/                   DFMA R8, R8, R6, R10 ;

        /*2690*/                   DMUL R16, R14, R8 ;

        /*26a0*/                   IADD3 R13, R9, -0x100000, RZ ;

        /*26b0*/                   IMAD.MOV.U32 R12, RZ, RZ, R8 ;

        /*26c0*/                   DFMA R18, R16, -R16, R14 ;

        /*26d0*/                   DFMA R6, R18, R12, R16 ;

        /*26e0*/              @!P0 BRA 0x2790 ;

        /*26f0*/                   IMAD.MOV.U32 R0, RZ, RZ, R14 ;

        /*2700*/                   MOV R6, R8 ;

        /*2710*/                   IMAD.MOV.U32 R14, RZ, RZ, R10 ;

        /*2720*/                   MOV R9, R19 ;

        /*2730*/                   IMAD.MOV.U32 R7, RZ, RZ, R15 ;

        /*2740*/                   MOV R10, 0x2790 ;

        /*2750*/                   IMAD.MOV.U32 R8, RZ, RZ, R18 ;

        /*2760*/                   IMAD.MOV.U32 R12, RZ, RZ, R16 ;

        /*2770*/                   IMAD.MOV.U32 R11, RZ, RZ, R13 ;

        /*2780*/                   CALL.REL.NOINC 0x3e60 ;

        /*2790*/                   BSYNC B1 ;

        /*27a0*/                   DADD R12, -R4, R6 ;

        /*27b0*/                   MOV R8, 0x0 ;

        /*27c0*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*27d0*/                   DADD R4, -R4, -R6 ;

        /*27e0*/                   IMAD.MOV.U32 R10, RZ, RZ, 0x0 ;

        /*27f0*/                   IMAD.MOV.U32 R11, RZ, RZ, 0x7ff00000 ;

        /*2800*/                   DSETP.GEU.AND P0, PT, R12, RZ, PT ;

        /*2810*/              @!P0 BRA 0x2db0 ;

        /*2820*/                   DSETP.GEU.AND P0, PT, R4, RZ, PT ;

        /*2830*/                   MOV R8, R4 ;

        /*2840*/                   IMAD.MOV.U32 R9, RZ, RZ, R5 ;

        /*2850*/                   IMAD.MOV.U32 R10, RZ, RZ, R12 ;

        /*2860*/                   IMAD.MOV.U32 R11, RZ, RZ, R13 ;

        /*2870*/               @P0 BRA 0x2db0 ;

        /*2880*/                   MOV R10, R12 ;

        /*2890*/                   IMAD.MOV.U32 R11, RZ, RZ, R13 ;

        /*28a0*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*28b0*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*28c0*/                   BRA 0x2db0 ;

        /*28d0*/                   DMUL R4, R4, -2 ;

        /*28e0*/                   MOV R10, 0x0 ;

        /*28f0*/                   IMAD.MOV.U32 R11, RZ, RZ, 0x7ff00000 ;

        /*2900*/                   DSETP.GTU.AND P0, PT, R4, RZ, PT ;

        /*2910*/                   FSEL R8, R4, RZ, P0 ;

        /*2920*/                   FSEL R9, R5, +QNAN , P0 ;

        /*2930*/                   BRA 0x2db0 ;

        /*2940*/                   ISETP.NE.AND P0, PT, R0, RZ, PT ;

        /*2950*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*2960*/                   MOV R10, 0x0 ;

        /*2970*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*2980*/                   IMAD.MOV.U32 R11, RZ, RZ, 0x7ff00000 ;

        /*2990*/              @!P0 BRA 0x2db0 ;

        /*29a0*/                   DMUL R4, R4, c[0x2][0x8] ;

        /*29b0*/                   DMUL R8, R6, c[0x2][0x8] ;

        /*29c0*/                   DMUL R6, R4, R4 ;

        /*29d0*/                   DSETP.GT.AND P0, PT, R6, R8, PT ;

        /*29e0*/               @P0 BRA 0x2ab0 ;

        /*29f0*/                   DSETP.NEU.AND P0, PT, R6, R8, PT ;

        /*2a00*/                   IMAD.MOV.U32 R10, RZ, RZ, 0x0 ;

        /*2a10*/                   MOV R8, 0x0 ;

        /*2a20*/                   IMAD.MOV.U32 R11, RZ, RZ, 0x7ff00000 ;

        /*2a30*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*2a40*/               @P0 BRA 0x2db0 ;

        /*2a50*/                   DSETP.GT.AND P0, PT, R4, RZ, PT ;

        /*2a60*/                   DADD R8, -RZ, -R4 ;

        /*2a70*/              @!P0 BRA 0x2db0 ;

        /*2a80*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*2a90*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*2aa0*/                   BRA 0x2db0 ;

        /*2ab0*/                   DADD R8, R6, -R8 ;

        /*2ac0*/                   MOV R12, 0x0 ;

        /*2ad0*/                   IMAD.MOV.U32 R13, RZ, RZ, 0x3fd80000 ;

        /*2ae0*/                   BMOV.32.CLEAR RZ, B1 ;

        /*2af0*/                   BSSY B1, 0x2ca0 ;

        /*2b00*/                   MUFU.RSQ64H R11, R9 ;

        /*2b10*/                   IADD3 R10, R9, -0x3500000, RZ ;

        /*2b20*/                   ISETP.GE.U32.AND P0, PT, R10, 0x7ca00000, PT ;

        /*2b30*/                   DMUL R6, R10, R10 ;

        /*2b40*/                   DFMA R6, R8, -R6, 1 ;

        /*2b50*/                   DFMA R12, R6, R12, 0.5 ;

        /*2b60*/                   DMUL R6, R10, R6 ;

        /*2b70*/                   DFMA R6, R12, R6, R10 ;

        /*2b80*/                   DMUL R12, R8, R6 ;

        /*2b90*/                   IADD3 R19, R7, -0x100000, RZ ;

        /*2ba0*/                   IMAD.MOV.U32 R18, RZ, RZ, R6 ;

        /*2bb0*/                   DFMA R14, R12, -R12, R8 ;

        /*2bc0*/                   DFMA R16, R14, R18, R12 ;

        /*2bd0*/              @!P0 BRA 0x2c90 ;

        /*2be0*/                   IMAD.MOV.U32 R0, RZ, RZ, R8 ;

        /*2bf0*/                   MOV R7, R9 ;

        /*2c00*/                   IMAD.MOV.U32 R8, RZ, RZ, R14 ;

        /*2c10*/                   MOV R14, R10 ;

        /*2c20*/                   IMAD.MOV.U32 R9, RZ, RZ, R15 ;

        /*2c30*/                   MOV R10, 0x2c70 ;

        /*2c40*/                   IMAD.MOV.U32 R17, RZ, RZ, R13 ;

        /*2c50*/                   IMAD.MOV.U32 R11, RZ, RZ, R19 ;

        /*2c60*/                   CALL.REL.NOINC 0x3e60 ;

        /*2c70*/                   IMAD.MOV.U32 R16, RZ, RZ, R6 ;

        /*2c80*/                   IMAD.MOV.U32 R17, RZ, RZ, R7 ;

        /*2c90*/                   BSYNC B1 ;

        /*2ca0*/                   DADD R6, -R4, R16 ;

        /*2cb0*/                   MOV R8, 0x0 ;

        /*2cc0*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*2cd0*/                   DADD R4, -R4, -R16 ;

        /*2ce0*/                   IMAD.MOV.U32 R10, RZ, RZ, 0x0 ;

        /*2cf0*/                   IMAD.MOV.U32 R11, RZ, RZ, 0x7ff00000 ;

        /*2d00*/                   DSETP.GEU.AND P0, PT, R6, RZ, PT ;

        /*2d10*/              @!P0 BRA 0x2db0 ;

        /*2d20*/                   DSETP.GEU.AND P0, PT, R4, RZ, PT ;

        /*2d30*/                   MOV R10, R6 ;

        /*2d40*/                   IMAD.MOV.U32 R11, RZ, RZ, R7 ;

        /*2d50*/                   IMAD.MOV.U32 R8, RZ, RZ, R4 ;

        /*2d60*/                   IMAD.MOV.U32 R9, RZ, RZ, R5 ;

        /*2d70*/              @!P0 MOV R10, R6 ;

        /*2d80*/              @!P0 IMAD.MOV.U32 R11, RZ, RZ, R7 ;

        /*2d90*/              @!P0 IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*2da0*/              @!P0 IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*2db0*/                   BSYNC B0 ;

        /*2dc0*/                   DSETP.GEU.AND P0, PT, R10, R8, PT ;

        /*2dd0*/                   FSEL R4, R10, R8, !P0 ;

        /*2de0*/                   FSEL R5, R11, R9, !P0 ;

        /*2df0*/                   STG.E.64.SYS [R2], R4 ;

        /*2e00*/                   EXIT ;

        /*2e10*/                   LDG.E.SYS R4, [R6] ;

        /*2e20*/                   LDG.E.64.SYS R10, [R14+0x8] ;

        /*2e30*/                   LDG.E.64.SYS R8, [R14] ;

        /*2e40*/                   IMAD.WIDE.U32 R4, R4, R35, c[0x0][0x180] ;

        /*2e50*/                   LDG.E.64.SYS R4, [R4] ;

        /*2e60*/                   DMUL R10, R10, R10 ;

        /*2e70*/                   DFMA R10, R8, R8, R10 ;

        /*2e80*/                   DADD R10, R10, -R4 ;

        /*2e90*/                   DSETP.GEU.AND P1, PT, R10, RZ, PT ;

        /*2ea0*/                   DSETP.GTU.AND P0, PT, R10, RZ, PT ;

        /*2eb0*/                   IMAD.MOV.U32 R11, RZ, RZ, RZ ;

        /*2ec0*/                   IMAD.MOV.U32 R10, RZ, RZ, R16 ;

        /*2ed0*/                   SEL R8, RZ, 0x1, P1 ;

        /*2ee0*/                   IMAD.IADD R11, R17, 0x1, R11 ;

        /*2ef0*/                   IADD3 R0, -R8, 0x1, RZ ;

        /*2f00*/              @!P0 IADD3 R0, -R8, RZ, RZ ;

        /*2f10*/                   SHF.R.U32.HI R6, RZ, 0x1f, R0 ;

        /*2f20*/                   LOP3.LUT R19, R6, 0x1, RZ, 0x3c, !PT ;

        /*2f30*/                   STG.E.U8.SYS [R24], R19 ;

        /*2f40*/                   LDG.E.64.SYS R6, [R10+0x10] ;

        /*2f50*/                   BMOV.32.CLEAR RZ, B0 ;

        /*2f60*/                   BSSY B0, 0x3600 ;

        /*2f70*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*2f80*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*2f90*/                   DFMA R12, -R6, R6, 1 ;

        /*2fa0*/                   MOV R6, 0x0 ;

        /*2fb0*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*2fc0*/                   DSETP.NEU.AND P0, PT, R12, RZ, PT ;

        /*2fd0*/              @!P0 BRA 0x35f0 ;

        /*2fe0*/                   LDG.E.64.SYS R18, [R16+0x8] ;

        /*2ff0*/                   LDG.E.64.SYS R8, [R14+0x8] ;

        /*3000*/                   LDG.E.64.SYS R20, [R16] ;

        /*3010*/                   LDG.E.64.SYS R10, [R14] ;

        /*3020*/                   MUFU.RCP64H R23, R13 ;

        /*3030*/                   IADD3 R22, R13, 0x300402, RZ ;

        /*3040*/                   BMOV.32.CLEAR RZ, B1 ;

        /*3050*/                   BSSY B1, 0x3140 ;

        /*3060*/                   FSETP.GEU.AND P0, PT, |R22|, 5.8789094863358348022e-39, PT ;

        /*3070*/                   DFMA R24, -R12, R22, 1 ;

        /*3080*/                   DFMA R24, R24, R24, R24 ;

        /*3090*/                   DFMA R24, R22, R24, R22 ;

        /*30a0*/                   DFMA R26, -R12, R24, 1 ;

        /*30b0*/                   DFMA R24, R24, R26, R24 ;

        /*30c0*/                   DMUL R18, R18, R8 ;

        /*30d0*/                   DFMA R20, R20, R10, R18 ;

        /*30e0*/               @P0 BRA 0x3130 ;

        /*30f0*/                   LOP3.LUT R18, R13, 0x7fffffff, RZ, 0xc0, !PT ;

        /*3100*/                   MOV R14, 0x3130 ;

        /*3110*/                   IADD3 R18, R18, -0x100000, RZ ;

        /*3120*/                   CALL.REL.NOINC 0x3650 ;

        /*3130*/                   BSYNC B1 ;

        /*3140*/                   ISETP.NE.AND P0, PT, R0, RZ, PT ;

        /*3150*/                   DMUL R20, R20, R24 ;

        /*3160*/              @!P0 BRA 0x35b0 ;

        /*3170*/                   DMUL R8, R8, R8 ;

        /*3180*/                   DFMA R8, R10, R10, R8 ;

        /*3190*/                   DADD R8, -R4, R8 ;

        /*31a0*/                   DMUL R4, R20, R20 ;

        /*31b0*/                   DMUL R8, R8, R24 ;

        /*31c0*/                   DSETP.GT.AND P0, PT, R4, R8, PT ;

        /*31d0*/               @P0 BRA 0x32a0 ;

        /*31e0*/                   DSETP.NEU.AND P0, PT, R4, R8, PT ;

        /*31f0*/                   MOV R6, 0x0 ;

        /*3200*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*3210*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*3220*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*3230*/               @P0 BRA 0x35f0 ;

        /*3240*/                   DSETP.GT.AND P0, PT, R20, RZ, PT ;

        /*3250*/                   DADD R8, -RZ, -R20 ;

        /*3260*/              @!P0 BRA 0x35f0 ;

        /*3270*/                   MOV R8, 0x0 ;

        /*3280*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*3290*/                   BRA 0x35f0 ;

        /*32a0*/                   DADD R12, -R8, R4 ;

        /*32b0*/                   BMOV.32.CLEAR RZ, B1 ;

        /*32c0*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*32d0*/                   BSSY B1, 0x3480 ;

        /*32e0*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x3fd80000 ;

        /*32f0*/                   MUFU.RSQ64H R5, R13 ;

        /*3300*/                   IADD3 R4, R13, -0x3500000, RZ ;

        /*3310*/                   ISETP.GE.U32.AND P0, PT, R4, 0x7ca00000, PT ;

        /*3320*/                   DMUL R6, R4, R4 ;

        /*3330*/                   DFMA R6, R12, -R6, 1 ;

        /*3340*/                   DFMA R8, R6, R8, 0.5 ;

        /*3350*/                   DMUL R6, R4, R6 ;

        /*3360*/                   DFMA R8, R8, R6, R4 ;

        /*3370*/                   DMUL R14, R12, R8 ;

        /*3380*/                   IADD3 R11, R9, -0x100000, RZ ;

        /*3390*/                   MOV R10, R8 ;

        /*33a0*/                   DFMA R16, R14, -R14, R12 ;

        /*33b0*/                   DFMA R6, R16, R10, R14 ;

        /*33c0*/              @!P0 BRA 0x3470 ;

        /*33d0*/                   IMAD.MOV.U32 R0, RZ, RZ, R12 ;

        /*33e0*/                   MOV R10, 0x3470 ;

        /*33f0*/                   IMAD.MOV.U32 R6, RZ, RZ, R8 ;

        /*3400*/                   MOV R8, R16 ;

        /*3410*/                   IMAD.MOV.U32 R9, RZ, RZ, R17 ;

        /*3420*/                   IMAD.MOV.U32 R12, RZ, RZ, R14 ;

        /*3430*/                   MOV R14, R4 ;

        /*3440*/                   IMAD.MOV.U32 R7, RZ, RZ, R13 ;

        /*3450*/                   IMAD.MOV.U32 R17, RZ, RZ, R15 ;

        /*3460*/                   CALL.REL.NOINC 0x3e60 ;

        /*3470*/                   BSYNC B1 ;

        /*3480*/                   DADD R4, -R20, R6 ;

        /*3490*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*34a0*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*34b0*/                   DADD R20, -R20, -R6 ;

        /*34c0*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*34d0*/                   MOV R7, 0x7ff00000 ;

        /*34e0*/                   DSETP.GEU.AND P0, PT, R4, RZ, PT ;

        /*34f0*/              @!P0 BRA 0x35f0 ;

        /*3500*/                   DSETP.GEU.AND P0, PT, R20, RZ, PT ;

        /*3510*/                   IMAD.MOV.U32 R8, RZ, RZ, R20 ;

        /*3520*/                   MOV R7, R5 ;

        /*3530*/                   IMAD.MOV.U32 R9, RZ, RZ, R21 ;

        /*3540*/                   IMAD.MOV.U32 R6, RZ, RZ, R4 ;

        /*3550*/               @P0 BRA 0x35f0 ;

        /*3560*/                   IMAD.MOV.U32 R6, RZ, RZ, R4 ;

        /*3570*/                   MOV R9, 0x7ff00000 ;

        /*3580*/                   IMAD.MOV.U32 R7, RZ, RZ, R5 ;

        /*3590*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*35a0*/                   BRA 0x35f0 ;

        /*35b0*/                   DMUL R20, R20, -2 ;

        /*35c0*/                   DSETP.GTU.AND P0, PT, R20, RZ, PT ;

        /*35d0*/                   FSEL R8, R20, RZ, P0 ;

        /*35e0*/                   FSEL R9, R21, +QNAN , P0 ;

        /*35f0*/                   BSYNC B0 ;

        /*3600*/                   DSETP.GEU.AND P0, PT, R6, R8, PT ;

        /*3610*/                   FSEL R4, R6, R8, !P0 ;

        /*3620*/                   FSEL R5, R7, R9, !P0 ;

        /*3630*/                   STG.E.64.SYS [R2], R4 ;

        /*3640*/                   EXIT ;

        /*3650*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*3660*/                   DSETP.GTU.AND P1, PT, |R12|, +INF , PT ;

        /*3670*/                   BMOV.32.CLEAR RZ, B2 ;

        /*3680*/                   BSSY B2, 0x38b0 ;

        /*3690*/               @P1 BRA 0x3880 ;

        /*36a0*/                   LOP3.LUT R19, R13, 0x7fffffff, RZ, 0xc0, !PT ;

        /*36b0*/                   IADD3 R15, R19, -0x1, RZ ;

        /*36c0*/                   ISETP.GE.U32.AND P1, PT, R15, 0x7fefffff, PT ;

        /*36d0*/               @P1 LOP3.LUT R17, R13, 0x7ff00000, RZ, 0x3c, !PT ;

        /*36e0*/               @P1 IMAD.MOV.U32 R16, RZ, RZ, RZ ;

        /*36f0*/               @P1 BRA 0x38a0 ;

        /*3700*/                   ISETP.GE.U32.AND P1, PT, R19, 0x1000001, PT ;

        /*3710*/              @!P1 BRA 0x37f0 ;

        /*3720*/                   IADD3 R17, R13, -0x3fe00000, RZ ;

        /*3730*/                   IMAD.MOV.U32 R16, RZ, RZ, R12 ;

        /*3740*/                   MUFU.RCP64H R19, R17 ;

        /*3750*/                   DFMA R22, -R16, R18, 1 ;

        /*3760*/                   DFMA R22, R22, R22, R22 ;

        /*3770*/                   DFMA R22, R18, R22, R18 ;

        /*3780*/                   DFMA R18, -R16, R22, 1 ;

        /*3790*/                   DFMA R18, R22, R18, R22 ;

        /*37a0*/                   DMUL R18, R18, 2.2250738585072013831e-308 ;

        /*37b0*/                   DFMA R12, -R12, R18, 1 ;

        /*37c0*/                   DFMA R12, R12, R12, R12 ;

        /*37d0*/                   DFMA R16, R18, R12, R18 ;

        /*37e0*/                   BRA 0x38a0 ;

        /*37f0*/                   DMUL R12, R12, 8.11296384146066816958e+31 ;

        /*3800*/                   MUFU.RCP64H R19, R13 ;

        /*3810*/                   DFMA R16, -R12, R18, 1 ;

        /*3820*/                   DFMA R16, R16, R16, R16 ;

        /*3830*/                   DFMA R16, R18, R16, R18 ;

        /*3840*/                   DFMA R18, -R12, R16, 1 ;

        /*3850*/                   DFMA R16, R16, R18, R16 ;

        /*3860*/                   DMUL R16, R16, 8.11296384146066816958e+31 ;

        /*3870*/                   BRA 0x38a0 ;

        /*3880*/                   LOP3.LUT R17, R13, 0x80000, RZ, 0xfc, !PT ;

        /*3890*/                   IMAD.MOV.U32 R16, RZ, RZ, R12 ;

        /*38a0*/                   BSYNC B2 ;

        /*38b0*/                   IMAD.MOV.U32 R15, RZ, RZ, 0x0 ;

        /*38c0*/                   MOV R24, R16 ;

        /*38d0*/                   IMAD.MOV.U32 R25, RZ, RZ, R17 ;

        /*38e0*/                   RET.REL.NODEC R14 0x0 ;

        /*38f0*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*3900*/                   LOP3.LUT R8, R7, 0x40000000, RZ, 0xc0, !PT ;

        /*3910*/                   IMAD.MOV.U32 R20, RZ, RZ, 0x5ff00000 ;

        /*3920*/                   MOV R10, RZ ;

        /*3930*/                   IMAD.MOV.U32 R16, RZ, RZ, 0x1 ;

        /*3940*/                   ISETP.GE.U32.AND P0, PT, R8, 0x40000000, PT ;

        /*3950*/                   BMOV.32.CLEAR RZ, B2 ;

        /*3960*/                   LOP3.LUT R22, R21, 0x7f800000, RZ, 0xc0, !PT ;

        /*3970*/                   BSSY B2, 0x3e30 ;

        /*3980*/                   SEL R11, R20, 0x1ff00000, !P0 ;

        /*3990*/                   ISETP.GE.U32.AND P0, PT, R22, 0x3e800000, PT ;

        /*39a0*/                   DMUL R14, R6, R10 ;

        /*39b0*/                   SEL R13, R20, 0x1ff00000, !P0 ;

        /*39c0*/                   MUFU.RCP64H R17, R15 ;

        /*39d0*/                   DFMA R8, -R14, R16, 1 ;

        /*39e0*/                   DFMA R18, R8, R8, R8 ;

        /*39f0*/                   IMAD.MOV.U32 R8, RZ, RZ, R12 ;

        /*3a00*/                   MOV R12, RZ ;

        /*3a10*/                   IMAD.MOV.U32 R9, RZ, RZ, R21 ;

        /*3a20*/                   DFMA R18, R16, R18, R16 ;

        /*3a30*/                   DMUL R12, R8, R12 ;

        /*3a40*/                   DMUL R16, R12, R18 ;

        /*3a50*/                   DFMA R12, -R14, R16, R12 ;

        /*3a60*/                   DFMA R16, R18, R12, R16 ;

        /*3a70*/                   DSETP.GT.AND P0, PT, |R16|, RZ, PT ;

        /*3a80*/              @!P0 BRA 0x3d50 ;

        /*3a90*/                   ISETP.GT.U32.AND P0, PT, R22, 0x3e7fffff, PT ;

        /*3aa0*/                   IMAD.MOV.U32 R12, RZ, RZ, RZ ;

        /*3ab0*/                   DMUL R14, R10, R16 ;

        /*3ac0*/                   SEL R13, R20, 0x1ff00000, P0 ;

        /*3ad0*/                   DMUL R16, R16, R12 ;

        /*3ae0*/                   DMUL R14, R12, R14 ;

        /*3af0*/                   DMUL R10, R10, R16 ;

        /*3b00*/                   DFMA R12, R6, R14, -R8 ;

        /*3b10*/                   DFMA R16, R6, R10, -R8 ;

        /*3b20*/                   DSETP.GT.AND P0, PT, |R12|, |R16|, PT ;

        /*3b30*/                   FSEL R13, R11, R15, P0 ;

        /*3b40*/                   FSEL R10, R10, R14, P0 ;

        /*3b50*/                   FSETP.GTU.AND P1, PT, |R13|, 1.469367938527859385e-39, PT ;

        /*3b60*/                   IMAD.MOV.U32 R11, RZ, RZ, R13 ;

        /*3b70*/               @P1 BRA 0x3e20 ;

        /*3b80*/                   IMAD.MOV.U32 R14, RZ, RZ, 0x58500000 ;

        /*3b90*/                   FSETP.GEU.AND P0, PT, |R9|, 1.5046327690525280102e-36, PT ;

        /*3ba0*/                   IMAD.MOV.U32 R11, RZ, RZ, R13 ;

        /*3bb0*/                   LOP3.LUT R12, R10, 0xfffffffe, RZ, 0xc0, !PT ;

        /*3bc0*/                   SEL R15, R14, 0x3ff00000, !P0 ;

        /*3bd0*/                   MOV R14, RZ ;

        /*3be0*/                   LOP3.LUT R10, R10, 0x1, RZ, 0xfc, !PT ;

        /*3bf0*/                   DMUL R6, R6, R14 ;

        /*3c00*/                   DMUL R8, R8, R14 ;

        /*3c10*/                   DFMA R14, R12, R6, -R8 ;

        /*3c20*/                   DFMA R16, R10, R6, -R8 ;

        /*3c30*/                   DSETP.GT.AND P0, PT, |R14|, |R16|, PT ;

        /*3c40*/                   FSEL R17, R10, R12, P0 ;

        /*3c50*/                   IADD3 R14, P1, R17.reuse, 0x1, RZ ;

        /*3c60*/                   LOP3.LUT R10, R17.reuse, 0x1, RZ, 0xc0, !PT ;

        /*3c70*/                   IADD3 R12, P2, R17, -0x1, RZ ;

        /*3c80*/                   IMAD.X R15, RZ, RZ, R13, P1 ;

        /*3c90*/                   ISETP.NE.U32.AND P0, PT, R10, 0x1, PT ;

        /*3ca0*/                   IADD3.X R11, R13, -0x1, RZ, P2, !PT ;

        /*3cb0*/                   FSEL R14, R17, R14, P0 ;

        /*3cc0*/                   FSEL R15, R13, R15, P0 ;

        /*3cd0*/                   FSEL R12, R12, R17, P0 ;

        /*3ce0*/                   FSEL R13, R11, R13, P0 ;

        /*3cf0*/                   DFMA R10, R6, R14, -R8 ;

        /*3d00*/                   DFMA R6, R6, R12, -R8 ;

        /*3d10*/                   DSETP.GT.AND P0, PT, |R10|, |R6|, PT ;

        /*3d20*/                   FSEL R10, R12, R14, P0 ;

        /*3d30*/                   FSEL R11, R13, R15, P0 ;

        /*3d40*/                   BRA 0x3e20 ;

        /*3d50*/                   DSETP.NEU.AND P0, PT, R16, RZ, PT ;

        /*3d60*/              @!P0 BRA 0x3e10 ;

        /*3d70*/                   MUFU.RCP64H R11, R7 ;

        /*3d80*/                   IMAD.MOV.U32 R10, RZ, RZ, RZ ;

        /*3d90*/                   DSETP.GT.AND P1, PT, |R10|, RZ, PT ;

        /*3da0*/              @!P1 DSETP.NEU.AND P0, PT, |R6|, +INF , PT ;

        /*3db0*/              @!P1 FSEL R13, R7, R11, P0 ;

        /*3dc0*/              @!P1 FSEL R6, R6, R10, P0 ;

        /*3dd0*/              @!P1 IMAD.MOV.U32 R11, RZ, RZ, R13 ;

        /*3de0*/              @!P1 MOV R10, R6 ;

        /*3df0*/                   DMUL R10, R8, R10 ;

        /*3e00*/                   BRA 0x3e20 ;

        /*3e10*/                   DMUL R10, R8, R6 ;

        /*3e20*/                   BSYNC B2 ;

        /*3e30*/                   IMAD.MOV.U32 R6, RZ, RZ, R0 ;

        /*3e40*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x0 ;

        /*3e50*/                   RET.REL.NODEC R6 0x0 ;

        /*3e60*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*3e70*/                   ISETP.GE.U32.AND P0, PT, R14, -0x3400000, PT ;

        /*3e80*/                   BMOV.32.CLEAR RZ, B2 ;

        /*3e90*/                   BSSY B2, 0x4110 ;

        /*3ea0*/                   IMAD.MOV.U32 R15, RZ, RZ, R7 ;

        /*3eb0*/                   MOV R14, R0 ;

        /*3ec0*/                   IMAD.MOV.U32 R7, RZ, RZ, R11 ;

        /*3ed0*/                   IMAD.MOV.U32 R13, RZ, RZ, R17 ;

        /*3ee0*/              @!P0 BRA 0x3f70 ;

        /*3ef0*/                   DFMA.RM R6, R8, R6, R12 ;

        /*3f00*/                   IADD3 R12, P0, R6, 0x1, RZ ;

        /*3f10*/                   IADD3.X R13, RZ, R7, RZ, P0, !PT ;

        /*3f20*/                   DFMA.RP R8, -R6, R12, R14 ;

        /*3f30*/                   DSETP.GT.AND P0, PT, R8, RZ, PT ;

        /*3f40*/                   FSEL R6, R12, R6, P0 ;

        /*3f50*/                   FSEL R7, R13, R7, P0 ;

        /*3f60*/                   BRA 0x4100 ;

        /*3f70*/                   DSETP.NE.AND P0, PT, R14, RZ, PT ;

        /*3f80*/              @!P0 BRA 0x40f0 ;

        /*3f90*/                   ISETP.GE.AND P0, PT, R15, RZ, PT ;

        /*3fa0*/              @!P0 IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*3fb0*/              @!P0 IMAD.MOV.U32 R7, RZ, RZ, -0x80000 ;

        /*3fc0*/              @!P0 BRA 0x4100 ;

        /*3fd0*/                   ISETP.GT.AND P0, PT, R15, 0x7fefffff, PT ;

        /*3fe0*/               @P0 BRA 0x40f0 ;

        /*3ff0*/                   DMUL R6, R14, 8.11296384146066816958e+31 ;

        /*4000*/                   IMAD.MOV.U32 R8, RZ, RZ, RZ ;

        /*4010*/                   MOV R14, 0x0 ;

        /*4020*/                   IMAD.MOV.U32 R15, RZ, RZ, 0x3fd80000 ;

        /*4030*/                   MUFU.RSQ64H R9, R7 ;

        /*4040*/                   DMUL R12, R8, R8 ;

        /*4050*/                   DFMA R12, R6, -R12, 1 ;

        /*4060*/                   DFMA R14, R12, R14, 0.5 ;

        /*4070*/                   DMUL R12, R8, R12 ;

        /*4080*/                   DFMA R12, R14, R12, R8 ;

        /*4090*/                   DMUL R8, R6, R12 ;

        /*40a0*/                   IADD3 R13, R13, -0x100000, RZ ;

        /*40b0*/                   DFMA R14, R8, -R8, R6 ;

        /*40c0*/                   DFMA R6, R12, R14, R8 ;

        /*40d0*/                   IADD3 R7, R7, -0x3500000, RZ ;

        /*40e0*/                   BRA 0x4100 ;

        /*40f0*/                   DADD R6, R14, R14 ;

        /*4100*/                   BSYNC B2 ;

        /*4110*/                   IMAD.MOV.U32 R11, RZ, RZ, 0x0 ;

        /*4120*/                   RET.REL.NODEC R10 0x0 ;

        /*4130*/                   BRA 0x4130;

        /*4140*/                   NOP;

        /*4150*/                   NOP;

        /*4160*/                   NOP;

        /*4170*/                   NOP;

		..........



Fatbin ptx code:
================
arch = sm_70
code version = [7,4]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
