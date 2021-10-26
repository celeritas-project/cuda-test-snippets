
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

        /*01d0*/                   BMOV.32.CLEAR RZ, B0 ;

        /*01e0*/                   IMAD.MOV.U32 R19, RZ, RZ, 0x4 ;

        /*01f0*/                   BSSY B0, 0x2880 ;

        /*0200*/                   IMAD.X R35, RZ, RZ, c[0x0][0x1b4], P0 ;

        /*0210*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x8 ;

        /*0220*/                   IMAD.WIDE.U32 R38, R0, R41, c[0x0][0x190] ;

        /*0230*/                   IMAD.WIDE.U32 R40, R0, R41, c[0x0][0x1a0] ;

        /*0240*/                   IMAD.WIDE.U32 R2, R0, R5, c[0x0][0x1c0] ;

        /*0250*/                   IMAD.WIDE.U32 R18, R18, R19, c[0x0][0x170] ;

        /*0260*/                   ISETP.GT.AND P0, PT, R6, 0x3, PT ;

        /*0270*/               @P0 BRA 0x16a0 ;

        /*0280*/                   ISETP.GT.AND P0, PT, R6, 0x1, PT ;

        /*0290*/               @P0 BRA 0x9f0 ;

        /*02a0*/                   LOP3.LUT R6, R6, 0xff, RZ, 0xc0, !PT ;

        /*02b0*/                   ISETP.NE.AND P0, PT, R6, RZ, PT ;

        /*02c0*/              @!P0 BRA 0x6d0 ;

        /*02d0*/                   PRMT R4, R6, 0x9910, RZ ;

        /*02e0*/                   ISETP.NE.AND P0, PT, R4, 0x1, PT ;

        /*02f0*/               @P0 BRA 0x2870 ;

        /*0300*/                   LDG.E.SYS R4, [R18] ;

        /*0310*/                   MOV R6, c[0x0][0x190] ;

        /*0320*/                   IMAD.MOV.U32 R7, RZ, RZ, c[0x0][0x194] ;

        /*0330*/                   IMAD.MOV.U32 R13, RZ, RZ, RZ ;

        /*0340*/                   IMAD.WIDE.U32 R6, R0, 0x18, R6 ;

        /*0350*/                   IMAD.IADD R7, R7, 0x1, R13 ;

        /*0360*/                   LDG.E.64.SYS R8, [R6+0x8] ;

        /*0370*/                   IMAD.WIDE.U32 R4, R4, R5, c[0x0][0x180] ;

        /*0380*/                   LDG.E.64.SYS R4, [R4] ;

        /*0390*/                   BMOV.32.CLEAR RZ, B1 ;

        /*03a0*/                   BSSY B1, 0x6b0 ;

        /*03b0*/                   DADD R8, R8, -R4 ;

        /*03c0*/                   DSETP.GTU.AND P1, PT, R8, RZ, PT ;

        /*03d0*/                   DSETP.GEU.AND P0, PT, R8, RZ, PT ;

        /*03e0*/                   SEL R10, RZ, 0x1, !P1 ;

        /*03f0*/                   SEL R11, RZ, 0x1, P0 ;

        /*0400*/                   IMAD.IADD R10, R10, 0x1, -R11 ;

        /*0410*/                   SHF.R.U32.HI R10, RZ, 0x1f, R10 ;

        /*0420*/                   LOP3.LUT R11, R10, 0x1, RZ, 0x3c, !PT ;

        /*0430*/                   DSETP.GTU.XOR P0, PT, R8, RZ, !P0 ;

        /*0440*/                   STG.E.U8.SYS [R34], R11 ;

        /*0450*/              @!P0 BRA 0x680 ;

        /*0460*/                   MOV R8, c[0x0][0x1a0] ;

        /*0470*/                   IMAD.MOV.U32 R9, RZ, RZ, c[0x0][0x1a4] ;

        /*0480*/                   IMAD.WIDE.U32 R8, R0, 0x18, R8 ;

        /*0490*/                   IMAD.IADD R9, R13, 0x1, R9 ;

        /*04a0*/                   LDG.E.64.SYS R8, [R8+0x8] ;

        /*04b0*/                   DSETP.NEU.AND P0, PT, R8, RZ, PT ;

        /*04c0*/              @!P0 BRA 0x680 ;

        /*04d0*/                   LDG.E.64.SYS R6, [R6+0x8] ;

        /*04e0*/                   MUFU.RCP64H R11, R9 ;

        /*04f0*/                   IMAD.MOV.U32 R10, RZ, RZ, 0x1 ;

        /*0500*/                   BMOV.32.CLEAR RZ, B2 ;

        /*0510*/                   BSSY B2, 0x660 ;

        /*0520*/                   DFMA R12, -R8, R10, 1 ;

        /*0530*/                   DFMA R12, R12, R12, R12 ;

        /*0540*/                   DFMA R12, R10, R12, R10 ;

        /*0550*/                   DADD R4, R4, -R6 ;

        /*0560*/                   DMUL R10, R4, R12 ;

        /*0570*/                   FSETP.GTU.AND P1, PT, |R5|, 6.4490557925156731238e-37, PT ;

        /*0580*/                   DFMA R14, -R8, R10, R4 ;

        /*0590*/                   DFMA R10, R12, R14, R10 ;

        /*05a0*/                   FFMA R0, RZ, R9, R11 ;

        /*05b0*/                   FSETP.GT.AND P0, PT, |R0|, 4.8978884574313168671e-40, PT ;

        /*05c0*/               @P0 BRA P1, 0x650 ;

        /*05d0*/                   IMAD.MOV.U32 R10, RZ, RZ, R4 ;

        /*05e0*/                   MOV R19, R5 ;

        /*05f0*/                   IMAD.MOV.U32 R4, RZ, RZ, R8 ;

        /*0600*/                   MOV R0, 0x630 ;

        /*0610*/                   IMAD.MOV.U32 R5, RZ, RZ, R9 ;

        /*0620*/                   CALL.REL.NOINC 0x3a50 ;

        /*0630*/                   IMAD.MOV.U32 R10, RZ, RZ, R6 ;

        /*0640*/                   IMAD.MOV.U32 R11, RZ, RZ, R7 ;

        /*0650*/                   BSYNC B2 ;

        /*0660*/                   DSETP.GT.AND P0, PT, R10, RZ, PT ;

        /*0670*/               @P0 BRA 0x6a0 ;

        /*0680*/                   MOV R10, 0x0 ;

        /*0690*/                   IMAD.MOV.U32 R11, RZ, RZ, 0x7ff00000 ;

        /*06a0*/                   BSYNC B1 ;

        /*06b0*/                   STG.E.64.SYS [R2], R10 ;

        /*06c0*/                   EXIT ;

        /*06d0*/                   LDG.E.SYS R4, [R18] ;

        /*06e0*/                   LDG.E.64.SYS R6, [R38] ;

        /*06f0*/                   IMAD.WIDE.U32 R4, R4, R5, c[0x0][0x180] ;

        /*0700*/                   LDG.E.64.SYS R4, [R4] ;

        /*0710*/                   BMOV.32.CLEAR RZ, B1 ;

        /*0720*/                   BSSY B1, 0x9d0 ;

        /*0730*/                   DADD R6, R6, -R4 ;

        /*0740*/                   DSETP.GTU.AND P1, PT, R6, RZ, PT ;

        /*0750*/                   DSETP.GEU.AND P0, PT, R6, RZ, PT ;

        /*0760*/                   SEL R0, RZ, 0x1, !P1 ;

        /*0770*/                   SEL R9, RZ, 0x1, P0 ;

        /*0780*/                   IMAD.IADD R0, R0, 0x1, -R9 ;

        /*0790*/                   SHF.R.U32.HI R0, RZ, 0x1f, R0 ;

        /*07a0*/                   LOP3.LUT R9, R0, 0x1, RZ, 0x3c, !PT ;

        /*07b0*/                   DSETP.GTU.XOR P0, PT, R6, RZ, !P0 ;

        /*07c0*/                   STG.E.U8.SYS [R34], R9 ;

        /*07d0*/              @!P0 BRA 0x9a0 ;

        /*07e0*/                   LDG.E.64.SYS R40, [R40] ;

        /*07f0*/                   DSETP.NEU.AND P0, PT, R40, RZ, PT ;

        /*0800*/              @!P0 BRA 0x9a0 ;

        /*0810*/                   LDG.E.64.SYS R38, [R38] ;

        /*0820*/                   MUFU.RCP64H R7, R41 ;

        /*0830*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x1 ;

        /*0840*/                   BMOV.32.CLEAR RZ, B2 ;

        /*0850*/                   BSSY B2, 0x980 ;

        /*0860*/                   DFMA R8, -R40, R6, 1 ;

        /*0870*/                   DFMA R8, R8, R8, R8 ;

        /*0880*/                   DFMA R8, R6, R8, R6 ;

        /*0890*/                   DADD R4, R4, -R38 ;

        /*08a0*/                   DMUL R6, R4, R8 ;

        /*08b0*/                   FSETP.GTU.AND P1, PT, |R5|, 6.4490557925156731238e-37, PT ;

        /*08c0*/                   DFMA R10, -R40, R6, R4 ;

        /*08d0*/                   DFMA R6, R8, R10, R6 ;

        /*08e0*/                   FFMA R0, RZ, R41, R7 ;

        /*08f0*/                   FSETP.GT.AND P0, PT, |R0|, 4.8978884574313168671e-40, PT ;

        /*0900*/               @P0 BRA P1, 0x970 ;

        /*0910*/                   IMAD.MOV.U32 R10, RZ, RZ, R4 ;

        /*0920*/                   MOV R19, R5 ;

        /*0930*/                   IMAD.MOV.U32 R4, RZ, RZ, R40 ;

        /*0940*/                   MOV R0, 0x970 ;

        /*0950*/                   IMAD.MOV.U32 R5, RZ, RZ, R41 ;

        /*0960*/                   CALL.REL.NOINC 0x3a50 ;

        /*0970*/                   BSYNC B2 ;

        /*0980*/                   DSETP.GT.AND P0, PT, R6, RZ, PT ;

        /*0990*/               @P0 BRA 0x9c0 ;

        /*09a0*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*09b0*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*09c0*/                   BSYNC B1 ;

        /*09d0*/                   STG.E.64.SYS [R2], R6 ;

        /*09e0*/                   EXIT ;

        /*09f0*/                   LOP3.LUT R6, R6, 0xff, RZ, 0xc0, !PT ;

        /*0a00*/                   PRMT R4, R6, 0x9910, RZ ;

        /*0a10*/                   ISETP.NE.AND P0, PT, R4, 0x2, PT ;

        /*0a20*/              @!P0 BRA 0x12c0 ;

        /*0a30*/                   ISETP.NE.AND P0, PT, R4, 0x3, PT ;

        /*0a40*/               @P0 BRA 0x2870 ;

        /*0a50*/                   LDG.E.SYS R14, [R18] ;

        /*0a60*/                   MOV R6, c[0x0][0x190] ;

        /*0a70*/                   IMAD.MOV.U32 R7, RZ, RZ, c[0x0][0x194] ;

        /*0a80*/                   IMAD.MOV.U32 R27, RZ, RZ, RZ ;

        /*0a90*/                   IMAD.WIDE.U32 R6, R0, 0x18, R6 ;

        /*0aa0*/                   IMAD.IADD R7, R7, 0x1, R27 ;

        /*0ab0*/                   LDG.E.64.SYS R8, [R6+0x10] ;

        /*0ac0*/                   IMAD.WIDE.U32 R14, R14, R5, c[0x0][0x180] ;

        /*0ad0*/                   LDG.E.64.SYS R4, [R6+0x8] ;

        /*0ae0*/                   LDG.E.64.SYS R14, [R14] ;

        /*0af0*/                   DMUL R8, R8, R8 ;

        /*0b00*/                   DFMA R8, R4, R4, R8 ;

        /*0b10*/                   DADD R8, R8, -R14 ;

        /*0b20*/                   DSETP.GTU.AND P1, PT, R8, RZ, PT ;

        /*0b30*/                   DSETP.GEU.AND P0, PT, R8, RZ, PT ;

        /*0b40*/                   SEL R4, RZ, 0x1, !P1 ;

        /*0b50*/                   SEL R5, RZ, 0x1, P0 ;

        /*0b60*/                   IMAD.IADD R4, R4, 0x1, -R5 ;

        /*0b70*/                   SHF.R.U32.HI R4, RZ, 0x1f, R4 ;

        /*0b80*/                   LOP3.LUT R11, R4, 0x1, RZ, 0x3c, !PT ;

        /*0b90*/                   STG.E.U8.SYS [R34], R11 ;

        /*0ba0*/                   LDG.E.64.SYS R4, [R40] ;

        /*0bb0*/                   BMOV.32.CLEAR RZ, B1 ;

        /*0bc0*/                   BSSY B1, 0x1270 ;

        /*0bd0*/                   MOV R12, 0x0 ;

        /*0be0*/                   IMAD.MOV.U32 R13, RZ, RZ, 0x7ff00000 ;

        /*0bf0*/                   DFMA R4, -R4, R4, 1 ;

        /*0c00*/                   DSETP.NEU.AND P1, PT, R4, RZ, PT ;

        /*0c10*/              @!P1 BRA 0x1240 ;

        /*0c20*/                   IMAD.MOV.U32 R10, RZ, RZ, c[0x0][0x1a0] ;

        /*0c30*/                   LDG.E.64.SYS R16, [R6+0x10] ;

        /*0c40*/                   IMAD.MOV.U32 R11, RZ, RZ, c[0x0][0x1a4] ;

        /*0c50*/                   LDG.E.64.SYS R18, [R6+0x8] ;

        /*0c60*/                   IMAD.WIDE.U32 R10, R0, 0x18, R10 ;

        /*0c70*/                   IMAD.IADD R27, R27, 0x1, R11 ;

        /*0c80*/                   MOV R26, R10 ;

        /*0c90*/                   LDG.E.64.SYS R10, [R26+0x10] ;

        /*0ca0*/                   LDG.E.64.SYS R20, [R26+0x8] ;

        /*0cb0*/                   MUFU.RCP64H R23, R5 ;

        /*0cc0*/                   IADD3 R22, R5, 0x300402, RZ ;

        /*0cd0*/                   DFMA R24, -R4, R22, 1 ;

        /*0ce0*/                   DFMA R24, R24, R24, R24 ;

        /*0cf0*/                   FSETP.GEU.AND P1, PT, |R22|, 5.8789094863358348022e-39, PT ;

        /*0d00*/                   DFMA R24, R22, R24, R22 ;

        /*0d10*/                   DSETP.GTU.XOR P0, PT, R8, RZ, !P0 ;

        /*0d20*/                   DFMA R8, -R4, R24, 1 ;

        /*0d30*/                   BMOV.32.CLEAR RZ, B2 ;

        /*0d40*/                   BSSY B2, 0xde0 ;

        /*0d50*/                   DFMA R8, R24, R8, R24 ;

        /*0d60*/                   DMUL R10, R10, R16 ;

        /*0d70*/                   DFMA R20, R20, R18, R10 ;

        /*0d80*/               @P1 BRA 0xdd0 ;

        /*0d90*/                   LOP3.LUT R8, R5, 0x7fffffff, RZ, 0xc0, !PT ;

        /*0da0*/                   MOV R0, 0xdd0 ;

        /*0db0*/                   IADD3 R8, R8, -0x100000, RZ ;

        /*0dc0*/                   CALL.REL.NOINC 0x3750 ;

        /*0dd0*/                   BSYNC B2 ;

        /*0de0*/                   DMUL R4, R20, R8 ;

        /*0df0*/              @!P0 DMUL R6, R4, -2 ;

        /*0e00*/              @!P0 DSETP.GTU.AND P1, PT, R6, RZ, PT ;

        /*0e10*/              @!P0 FSEL R6, R6, RZ, P1 ;

        /*0e20*/              @!P0 FSEL R7, R7, +QNAN , P1 ;

        /*0e30*/              @!P0 BRA 0x1260 ;

        /*0e40*/                   DMUL R16, R16, R16 ;

        /*0e50*/                   DMUL R6, R4, R4 ;

        /*0e60*/                   DFMA R16, R18, R18, R16 ;

        /*0e70*/                   DADD R16, -R14, R16 ;

        /*0e80*/                   DMUL R16, R16, R8 ;

        /*0e90*/                   DSETP.GT.AND P0, PT, R6, R16, PT ;

        /*0ea0*/               @P0 BRA 0xf60 ;

        /*0eb0*/                   DSETP.NEU.AND P0, PT, R6, R16, PT ;

        /*0ec0*/               @P0 BRA 0xf30 ;

        /*0ed0*/                   DSETP.GT.AND P0, PT, R4, RZ, PT ;

        /*0ee0*/                   DADD R6, -RZ, -R4 ;

        /*0ef0*/              @!P0 BRA 0x1260 ;

        /*0f00*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*0f10*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*0f20*/                   BRA 0x1260 ;

        /*0f30*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*0f40*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*0f50*/                   BRA 0x1260 ;

        /*0f60*/                   DADD R16, -R16, R6 ;

        /*0f70*/                   MOV R10, 0x0 ;

        /*0f80*/                   IMAD.MOV.U32 R11, RZ, RZ, 0x3fd80000 ;

        /*0f90*/                   BMOV.32.CLEAR RZ, B2 ;

        /*0fa0*/                   BSSY B2, 0x1150 ;

        /*0fb0*/                   MUFU.RSQ64H R7, R17 ;

        /*0fc0*/                   IADD3 R6, R17, -0x3500000, RZ ;

        /*0fd0*/                   ISETP.GE.U32.AND P0, PT, R6, 0x7ca00000, PT ;

        /*0fe0*/                   DMUL R8, R6, R6 ;

        /*0ff0*/                   DFMA R8, R16, -R8, 1 ;

        /*1000*/                   DFMA R10, R8, R10, 0.5 ;

        /*1010*/                   DMUL R8, R6, R8 ;

        /*1020*/                   DFMA R10, R10, R8, R6 ;

        /*1030*/                   DMUL R18, R16, R10 ;

        /*1040*/                   IADD3 R15, R11, -0x100000, RZ ;

        /*1050*/                   IMAD.MOV.U32 R14, RZ, RZ, R10 ;

        /*1060*/                   DFMA R20, R18, -R18, R16 ;

        /*1070*/                   DFMA R8, R20, R14, R18 ;

        /*1080*/              @!P0 BRA 0x1140 ;

        /*1090*/                   IMAD.MOV.U32 R0, RZ, RZ, R10 ;

        /*10a0*/                   MOV R11, R17 ;

        /*10b0*/                   IMAD.MOV.U32 R10, RZ, RZ, R16 ;

        /*10c0*/                   MOV R8, 0x1120 ;

        /*10d0*/                   IMAD.MOV.U32 R16, RZ, RZ, R20 ;

        /*10e0*/                   IMAD.MOV.U32 R17, RZ, RZ, R21 ;

        /*10f0*/                   IMAD.MOV.U32 R20, RZ, RZ, R6 ;

        /*1100*/                   IMAD.MOV.U32 R21, RZ, RZ, R15 ;

        /*1110*/                   CALL.REL.NOINC 0x3fe0 ;

        /*1120*/                   MOV R8, R16 ;

        /*1130*/                   IMAD.MOV.U32 R9, RZ, RZ, R17 ;

        /*1140*/                   BSYNC B2 ;

        /*1150*/                   DADD R10, -R4, R8 ;

        /*1160*/                   DADD R4, -R4, -R8 ;

        /*1170*/                   DSETP.GEU.AND P0, PT, R10, RZ, PT ;

        /*1180*/              @!P0 BRA 0x1210 ;

        /*1190*/                   IMAD.MOV.U32 R6, RZ, RZ, R4 ;

        /*11a0*/                   MOV R13, R11 ;

        /*11b0*/                   IMAD.MOV.U32 R7, RZ, RZ, R5 ;

        /*11c0*/                   IMAD.MOV.U32 R12, RZ, RZ, R10 ;

        /*11d0*/                   DSETP.GEU.AND P0, PT, R6, RZ, PT ;

        /*11e0*/              @!P0 IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*11f0*/              @!P0 IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*1200*/                   BRA 0x1260 ;

        /*1210*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*1220*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*1230*/                   BRA 0x1260 ;

        /*1240*/                   MOV R6, 0x0 ;

        /*1250*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*1260*/                   BSYNC B1 ;

        /*1270*/                   DSETP.GEU.AND P0, PT, R12, R6, PT ;

        /*1280*/                   FSEL R4, R12, R6, !P0 ;

        /*1290*/                   FSEL R5, R13, R7, !P0 ;

        /*12a0*/                   STG.E.64.SYS [R2], R4 ;

        /*12b0*/                   EXIT ;

        /*12c0*/                   LDG.E.SYS R4, [R18] ;

        /*12d0*/                   IMAD.MOV.U32 R6, RZ, RZ, c[0x0][0x190] ;

        /*12e0*/                   IMAD.MOV.U32 R7, RZ, RZ, c[0x0][0x194] ;

        /*12f0*/                   IMAD.MOV.U32 R11, RZ, RZ, RZ ;

        /*1300*/                   IMAD.WIDE.U32 R6, R0, 0x18, R6 ;

        /*1310*/                   IMAD.MOV.U32 R14, RZ, RZ, R6 ;

        /*1320*/                   IADD3 R15, R7, R11, RZ ;

        /*1330*/                   LDG.E.64.SYS R6, [R14+0x10] ;

        /*1340*/                   IMAD.WIDE.U32 R4, R4, R5, c[0x0][0x180] ;

        /*1350*/                   LDG.E.64.SYS R4, [R4] ;

        /*1360*/                   BMOV.32.CLEAR RZ, B1 ;

        /*1370*/                   BSSY B1, 0x1680 ;

        /*1380*/                   DADD R6, R6, -R4 ;

        /*1390*/                   DSETP.GTU.AND P1, PT, R6, RZ, PT ;

        /*13a0*/                   DSETP.GEU.AND P0, PT, R6, RZ, PT ;

        /*13b0*/                   SEL R8, RZ, 0x1, !P1 ;

        /*13c0*/                   SEL R9, RZ, 0x1, P0 ;

        /*13d0*/                   IMAD.IADD R8, R8, 0x1, -R9 ;

        /*13e0*/                   SHF.R.U32.HI R8, RZ, 0x1f, R8 ;

        /*13f0*/                   LOP3.LUT R9, R8, 0x1, RZ, 0x3c, !PT ;

        /*1400*/                   DSETP.GTU.XOR P0, PT, R6, RZ, !P0 ;

        /*1410*/                   STG.E.U8.SYS [R34], R9 ;

        /*1420*/              @!P0 BRA 0x1650 ;

        /*1430*/                   IMAD.MOV.U32 R6, RZ, RZ, c[0x0][0x1a0] ;

        /*1440*/                   IMAD.MOV.U32 R7, RZ, RZ, c[0x0][0x1a4] ;

        /*1450*/                   IMAD.WIDE.U32 R6, R0, 0x18, R6 ;

        /*1460*/                   IADD3 R7, R11, R7, RZ ;

        /*1470*/                   LDG.E.64.SYS R6, [R6+0x10] ;

        /*1480*/                   DSETP.NEU.AND P0, PT, R6, RZ, PT ;

        /*1490*/              @!P0 BRA 0x1650 ;

        /*14a0*/                   LDG.E.64.SYS R8, [R14+0x10] ;

        /*14b0*/                   MUFU.RCP64H R11, R7 ;

        /*14c0*/                   IMAD.MOV.U32 R10, RZ, RZ, 0x1 ;

        /*14d0*/                   BMOV.32.CLEAR RZ, B2 ;

        /*14e0*/                   BSSY B2, 0x1630 ;

        /*14f0*/                   DFMA R12, -R6, R10, 1 ;

        /*1500*/                   DFMA R12, R12, R12, R12 ;

        /*1510*/                   DFMA R12, R10, R12, R10 ;

        /*1520*/                   DADD R8, R4, -R8 ;

        /*1530*/                   DMUL R4, R8, R12 ;

        /*1540*/                   FSETP.GTU.AND P1, PT, |R9|, 6.4490557925156731238e-37, PT ;

        /*1550*/                   DFMA R10, -R6, R4, R8 ;

        /*1560*/                   DFMA R4, R12, R10, R4 ;

        /*1570*/                   FFMA R0, RZ, R7, R5 ;

        /*1580*/                   FSETP.GT.AND P0, PT, |R0|, 4.8978884574313168671e-40, PT ;

        /*1590*/               @P0 BRA P1, 0x1620 ;

        /*15a0*/                   IMAD.MOV.U32 R10, RZ, RZ, R8 ;

        /*15b0*/                   MOV R5, R7 ;

        /*15c0*/                   IMAD.MOV.U32 R19, RZ, RZ, R9 ;

        /*15d0*/                   MOV R0, 0x1600 ;

        /*15e0*/                   IMAD.MOV.U32 R4, RZ, RZ, R6 ;

        /*15f0*/                   CALL.REL.NOINC 0x3a50 ;

        /*1600*/                   IMAD.MOV.U32 R4, RZ, RZ, R6 ;

        /*1610*/                   IMAD.MOV.U32 R5, RZ, RZ, R7 ;

        /*1620*/                   BSYNC B2 ;

        /*1630*/                   DSETP.GT.AND P0, PT, R4, RZ, PT ;

        /*1640*/               @P0 BRA 0x1670 ;

        /*1650*/                   IMAD.MOV.U32 R4, RZ, RZ, 0x0 ;

        /*1660*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x7ff00000 ;

        /*1670*/                   BSYNC B1 ;

        /*1680*/                   STG.E.64.SYS [R2], R4 ;

        /*1690*/                   EXIT ;

        /*16a0*/                   ISETP.GT.AND P0, PT, R6, 0x5, PT ;

        /*16b0*/               @P0 BRA 0x2800 ;

        /*16c0*/                   LOP3.LUT R6, R6, 0xff, RZ, 0xc0, !PT ;

        /*16d0*/                   PRMT R4, R6, 0x9910, RZ ;

        /*16e0*/                   ISETP.NE.AND P0, PT, R4, 0x4, PT ;

        /*16f0*/              @!P0 BRA 0x1f90 ;

        /*1700*/                   ISETP.NE.AND P0, PT, R4, 0x5, PT ;

        /*1710*/               @P0 BRA 0x2870 ;

        /*1720*/                   LDG.E.SYS R12, [R18] ;

        /*1730*/                   LDG.E.64.SYS R6, [R38+0x8] ;

        /*1740*/                   IMAD.WIDE.U32 R12, R12, R5, c[0x0][0x180] ;

        /*1750*/                   LDG.E.64.SYS R4, [R38] ;

        /*1760*/                   LDG.E.64.SYS R12, [R12] ;

        /*1770*/                   DMUL R6, R6, R6 ;

        /*1780*/                   IMAD.MOV.U32 R9, RZ, RZ, RZ ;

        /*1790*/                   DFMA R4, R4, R4, R6 ;

        /*17a0*/                   DADD R4, R4, -R12 ;

        /*17b0*/                   DSETP.GTU.AND P1, PT, R4, RZ, PT ;

        /*17c0*/                   DSETP.GEU.AND P0, PT, R4, RZ, PT ;

        /*17d0*/                   SEL R6, RZ, 0x1, !P1 ;

        /*17e0*/                   SEL R7, RZ, 0x1, P0 ;

        /*17f0*/                   IADD3 R8, R6, -R7, RZ ;

        /*1800*/                   IMAD.MOV.U32 R6, RZ, RZ, c[0x0][0x1a0] ;

        /*1810*/                   IMAD.MOV.U32 R7, RZ, RZ, c[0x0][0x1a4] ;

        /*1820*/                   SHF.R.U32.HI R8, RZ, 0x1f, R8 ;

        /*1830*/                   IMAD.WIDE.U32 R6, R0, 0x18, R6 ;

        /*1840*/                   LOP3.LUT R11, R8, 0x1, RZ, 0x3c, !PT ;

        /*1850*/                   IMAD.IADD R9, R9, 0x1, R7 ;

        /*1860*/                   MOV R8, R6 ;

        /*1870*/                   STG.E.U8.SYS [R34], R11 ;

        /*1880*/                   LDG.E.64.SYS R6, [R8+0x10] ;

        /*1890*/                   BMOV.32.CLEAR RZ, B1 ;

        /*18a0*/                   BSSY B1, 0x1f40 ;

        /*18b0*/                   IMAD.MOV.U32 R14, RZ, RZ, 0x0 ;

        /*18c0*/                   IMAD.MOV.U32 R15, RZ, RZ, 0x7ff00000 ;

        /*18d0*/                   DFMA R6, -R6, R6, 1 ;

        /*18e0*/                   DSETP.NEU.AND P1, PT, R6, RZ, PT ;

        /*18f0*/              @!P1 BRA 0x1f10 ;

        /*1900*/                   LDG.E.64.SYS R8, [R40+0x8] ;

        /*1910*/                   LDG.E.64.SYS R16, [R38+0x8] ;

        /*1920*/                   LDG.E.64.SYS R20, [R40] ;

        /*1930*/                   LDG.E.64.SYS R18, [R38] ;

        /*1940*/                   MUFU.RCP64H R11, R7 ;

        /*1950*/                   IADD3 R10, R7, 0x300402, RZ ;

        /*1960*/                   DSETP.GTU.XOR P0, PT, R4, RZ, !P0 ;

        /*1970*/                   BMOV.32.CLEAR RZ, B2 ;

        /*1980*/                   BSSY B2, 0x1ab0 ;

        /*1990*/                   FSETP.GEU.AND P1, PT, |R10|, 5.8789094863358348022e-39, PT ;

        /*19a0*/                   DFMA R22, -R6, R10, 1 ;

        /*19b0*/                   DFMA R22, R22, R22, R22 ;

        /*19c0*/                   DFMA R22, R10, R22, R10 ;

        /*19d0*/                   DFMA R4, -R6, R22, 1 ;

        /*19e0*/                   DFMA R22, R22, R4, R22 ;

        /*19f0*/                   DMUL R8, R8, R16 ;

        /*1a00*/                   DFMA R20, R20, R18, R8 ;

        /*1a10*/               @P1 BRA 0x1aa0 ;

        /*1a20*/                   LOP3.LUT R8, R7, 0x7fffffff, RZ, 0xc0, !PT ;

        /*1a30*/                   IMAD.MOV.U32 R4, RZ, RZ, R6 ;

        /*1a40*/                   MOV R0, 0x1a80 ;

        /*1a50*/                   IMAD.MOV.U32 R5, RZ, RZ, R7 ;

        /*1a60*/                   IADD3 R8, R8, -0x100000, RZ ;

        /*1a70*/                   CALL.REL.NOINC 0x3750 ;

        /*1a80*/                   MOV R22, R8 ;

        /*1a90*/                   IMAD.MOV.U32 R23, RZ, RZ, R9 ;

        /*1aa0*/                   BSYNC B2 ;

        /*1ab0*/                   DMUL R4, R20, R22 ;

        /*1ac0*/              @!P0 DMUL R6, R4, -2 ;

        /*1ad0*/              @!P0 DSETP.GTU.AND P1, PT, R6, RZ, PT ;

        /*1ae0*/              @!P0 FSEL R6, R6, RZ, P1 ;

        /*1af0*/              @!P0 FSEL R7, R7, +QNAN , P1 ;

        /*1b00*/              @!P0 BRA 0x1f30 ;

        /*1b10*/                   DMUL R16, R16, R16 ;

        /*1b20*/                   DMUL R6, R4, R4 ;

        /*1b30*/                   DFMA R16, R18, R18, R16 ;

        /*1b40*/                   DADD R16, -R12, R16 ;

        /*1b50*/                   DMUL R16, R16, R22 ;

        /*1b60*/                   DSETP.GT.AND P0, PT, R6, R16, PT ;

        /*1b70*/               @P0 BRA 0x1c30 ;

        /*1b80*/                   DSETP.NEU.AND P0, PT, R6, R16, PT ;

        /*1b90*/               @P0 BRA 0x1c00 ;

        /*1ba0*/                   DSETP.GT.AND P0, PT, R4, RZ, PT ;

        /*1bb0*/                   DADD R6, -RZ, -R4 ;

        /*1bc0*/              @!P0 BRA 0x1f30 ;

        /*1bd0*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*1be0*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*1bf0*/                   BRA 0x1f30 ;

        /*1c00*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*1c10*/                   MOV R7, 0x7ff00000 ;

        /*1c20*/                   BRA 0x1f30 ;

        /*1c30*/                   DADD R16, -R16, R6 ;

        /*1c40*/                   IMAD.MOV.U32 R10, RZ, RZ, 0x0 ;

        /*1c50*/                   BMOV.32.CLEAR RZ, B2 ;

        /*1c60*/                   IMAD.MOV.U32 R11, RZ, RZ, 0x3fd80000 ;

        /*1c70*/                   BSSY B2, 0x1e20 ;

        /*1c80*/                   MUFU.RSQ64H R7, R17 ;

        /*1c90*/                   IADD3 R6, R17, -0x3500000, RZ ;

        /*1ca0*/                   ISETP.GE.U32.AND P0, PT, R6, 0x7ca00000, PT ;

        /*1cb0*/                   DMUL R8, R6, R6 ;

        /*1cc0*/                   DFMA R8, R16, -R8, 1 ;

        /*1cd0*/                   DFMA R10, R8, R10, 0.5 ;

        /*1ce0*/                   DMUL R8, R6, R8 ;

        /*1cf0*/                   DFMA R10, R10, R8, R6 ;

        /*1d00*/                   DMUL R18, R16, R10 ;

        /*1d10*/                   IADD3 R13, R11, -0x100000, RZ ;

        /*1d20*/                   IMAD.MOV.U32 R12, RZ, RZ, R10 ;

        /*1d30*/                   DFMA R20, R18, -R18, R16 ;

        /*1d40*/                   DFMA R8, R20, R12, R18 ;

        /*1d50*/              @!P0 BRA 0x1e10 ;

        /*1d60*/                   IMAD.MOV.U32 R0, RZ, RZ, R10 ;

        /*1d70*/                   MOV R10, R16 ;

        /*1d80*/                   IMAD.MOV.U32 R11, RZ, RZ, R17 ;

        /*1d90*/                   MOV R8, 0x1df0 ;

        /*1da0*/                   IMAD.MOV.U32 R16, RZ, RZ, R20 ;

        /*1db0*/                   IMAD.MOV.U32 R17, RZ, RZ, R21 ;

        /*1dc0*/                   MOV R21, R13 ;

        /*1dd0*/                   IMAD.MOV.U32 R20, RZ, RZ, R6 ;

        /*1de0*/                   CALL.REL.NOINC 0x3fe0 ;

        /*1df0*/                   IMAD.MOV.U32 R8, RZ, RZ, R16 ;

        /*1e00*/                   IMAD.MOV.U32 R9, RZ, RZ, R17 ;

        /*1e10*/                   BSYNC B2 ;

        /*1e20*/                   DADD R10, -R4, R8 ;

        /*1e30*/                   DADD R4, -R4, -R8 ;

        /*1e40*/                   DSETP.GEU.AND P0, PT, R10, RZ, PT ;

        /*1e50*/              @!P0 BRA 0x1ee0 ;

        /*1e60*/                   IMAD.MOV.U32 R6, RZ, RZ, R4 ;

        /*1e70*/                   MOV R14, R10 ;

        /*1e80*/                   IMAD.MOV.U32 R7, RZ, RZ, R5 ;

        /*1e90*/                   IMAD.MOV.U32 R15, RZ, RZ, R11 ;

        /*1ea0*/                   DSETP.GEU.AND P0, PT, R6, RZ, PT ;

        /*1eb0*/              @!P0 IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*1ec0*/              @!P0 IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*1ed0*/                   BRA 0x1f30 ;

        /*1ee0*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*1ef0*/                   MOV R7, 0x7ff00000 ;

        /*1f00*/                   BRA 0x1f30 ;

        /*1f10*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*1f20*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*1f30*/                   BSYNC B1 ;

        /*1f40*/                   DSETP.GEU.AND P0, PT, R14, R6, PT ;

        /*1f50*/                   FSEL R4, R14, R6, !P0 ;

        /*1f60*/                   FSEL R5, R15, R7, !P0 ;

        /*1f70*/                   STG.E.64.SYS [R2], R4 ;

        /*1f80*/                   EXIT ;

        /*1f90*/                   LDG.E.SYS R12, [R18] ;

        /*1fa0*/                   LDG.E.64.SYS R6, [R38+0x10] ;

        /*1fb0*/                   IMAD.WIDE.U32 R12, R12, R5, c[0x0][0x180] ;

        /*1fc0*/                   LDG.E.64.SYS R4, [R38] ;

        /*1fd0*/                   LDG.E.64.SYS R12, [R12] ;

        /*1fe0*/                   DMUL R6, R6, R6 ;

        /*1ff0*/                   IMAD.MOV.U32 R9, RZ, RZ, RZ ;

        /*2000*/                   DFMA R4, R4, R4, R6 ;

        /*2010*/                   DADD R4, R4, -R12 ;

        /*2020*/                   DSETP.GTU.AND P1, PT, R4, RZ, PT ;

        /*2030*/                   DSETP.GEU.AND P0, PT, R4, RZ, PT ;

        /*2040*/                   SEL R6, RZ, 0x1, !P1 ;

        /*2050*/                   SEL R7, RZ, 0x1, P0 ;

        /*2060*/                   IMAD.IADD R8, R6, 0x1, -R7 ;

        /*2070*/                   MOV R7, c[0x0][0x1a4] ;

        /*2080*/                   IMAD.MOV.U32 R6, RZ, RZ, c[0x0][0x1a0] ;

        /*2090*/                   SHF.R.U32.HI R8, RZ, 0x1f, R8 ;

        /*20a0*/                   IMAD.WIDE.U32 R6, R0, 0x18, R6 ;

        /*20b0*/                   LOP3.LUT R11, R8, 0x1, RZ, 0x3c, !PT ;

        /*20c0*/                   IMAD.IADD R9, R9, 0x1, R7 ;

        /*20d0*/                   IMAD.MOV.U32 R8, RZ, RZ, R6 ;

        /*20e0*/                   STG.E.U8.SYS [R34], R11 ;

        /*20f0*/                   LDG.E.64.SYS R6, [R8+0x8] ;

        /*2100*/                   BMOV.32.CLEAR RZ, B1 ;

        /*2110*/                   BSSY B1, 0x27b0 ;

        /*2120*/                   IMAD.MOV.U32 R14, RZ, RZ, 0x0 ;

        /*2130*/                   MOV R15, 0x7ff00000 ;

        /*2140*/                   DFMA R6, -R6, R6, 1 ;

        /*2150*/                   DSETP.NEU.AND P1, PT, R6, RZ, PT ;

        /*2160*/              @!P1 BRA 0x2780 ;

        /*2170*/                   LDG.E.64.SYS R8, [R40+0x10] ;

        /*2180*/                   LDG.E.64.SYS R16, [R38+0x10] ;

        /*2190*/                   LDG.E.64.SYS R20, [R40] ;

        /*21a0*/                   LDG.E.64.SYS R18, [R38] ;

        /*21b0*/                   MUFU.RCP64H R11, R7 ;

        /*21c0*/                   IADD3 R10, R7, 0x300402, RZ ;

        /*21d0*/                   DSETP.GTU.XOR P0, PT, R4, RZ, !P0 ;

        /*21e0*/                   BMOV.32.CLEAR RZ, B2 ;

        /*21f0*/                   BSSY B2, 0x2320 ;

        /*2200*/                   FSETP.GEU.AND P1, PT, |R10|, 5.8789094863358348022e-39, PT ;

        /*2210*/                   DFMA R22, -R6, R10, 1 ;

        /*2220*/                   DFMA R22, R22, R22, R22 ;

        /*2230*/                   DFMA R22, R10, R22, R10 ;

        /*2240*/                   DFMA R4, -R6, R22, 1 ;

        /*2250*/                   DFMA R22, R22, R4, R22 ;

        /*2260*/                   DMUL R8, R8, R16 ;

        /*2270*/                   DFMA R20, R20, R18, R8 ;

        /*2280*/               @P1 BRA 0x2310 ;

        /*2290*/                   LOP3.LUT R8, R7, 0x7fffffff, RZ, 0xc0, !PT ;

        /*22a0*/                   IMAD.MOV.U32 R4, RZ, RZ, R6 ;

        /*22b0*/                   MOV R0, 0x22f0 ;

        /*22c0*/                   IMAD.MOV.U32 R5, RZ, RZ, R7 ;

        /*22d0*/                   IADD3 R8, R8, -0x100000, RZ ;

        /*22e0*/                   CALL.REL.NOINC 0x3750 ;

        /*22f0*/                   IMAD.MOV.U32 R22, RZ, RZ, R8 ;

        /*2300*/                   MOV R23, R9 ;

        /*2310*/                   BSYNC B2 ;

        /*2320*/                   DMUL R4, R20, R22 ;

        /*2330*/              @!P0 DMUL R6, R4, -2 ;

        /*2340*/              @!P0 DSETP.GTU.AND P1, PT, R6, RZ, PT ;

        /*2350*/              @!P0 FSEL R6, R6, RZ, P1 ;

        /*2360*/              @!P0 FSEL R7, R7, +QNAN , P1 ;

        /*2370*/              @!P0 BRA 0x27a0 ;

        /*2380*/                   DMUL R16, R16, R16 ;

        /*2390*/                   DMUL R6, R4, R4 ;

        /*23a0*/                   DFMA R16, R18, R18, R16 ;

        /*23b0*/                   DADD R16, -R12, R16 ;

        /*23c0*/                   DMUL R16, R16, R22 ;

        /*23d0*/                   DSETP.GT.AND P0, PT, R6, R16, PT ;

        /*23e0*/               @P0 BRA 0x24a0 ;

        /*23f0*/                   DSETP.NEU.AND P0, PT, R6, R16, PT ;

        /*2400*/               @P0 BRA 0x2470 ;

        /*2410*/                   DSETP.GT.AND P0, PT, R4, RZ, PT ;

        /*2420*/                   DADD R6, -RZ, -R4 ;

        /*2430*/              @!P0 BRA 0x27a0 ;

        /*2440*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*2450*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*2460*/                   BRA 0x27a0 ;

        /*2470*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*2480*/                   MOV R7, 0x7ff00000 ;

        /*2490*/                   BRA 0x27a0 ;

        /*24a0*/                   DADD R16, -R16, R6 ;

        /*24b0*/                   IMAD.MOV.U32 R10, RZ, RZ, 0x0 ;

        /*24c0*/                   BMOV.32.CLEAR RZ, B2 ;

        /*24d0*/                   IMAD.MOV.U32 R11, RZ, RZ, 0x3fd80000 ;

        /*24e0*/                   BSSY B2, 0x2690 ;

        /*24f0*/                   MUFU.RSQ64H R7, R17 ;

        /*2500*/                   IADD3 R6, R17, -0x3500000, RZ ;

        /*2510*/                   ISETP.GE.U32.AND P0, PT, R6, 0x7ca00000, PT ;

        /*2520*/                   DMUL R8, R6, R6 ;

        /*2530*/                   DFMA R8, R16, -R8, 1 ;

        /*2540*/                   DFMA R10, R8, R10, 0.5 ;

        /*2550*/                   DMUL R8, R6, R8 ;

        /*2560*/                   DFMA R10, R10, R8, R6 ;

        /*2570*/                   DMUL R18, R16, R10 ;

        /*2580*/                   IADD3 R13, R11, -0x100000, RZ ;

        /*2590*/                   IMAD.MOV.U32 R12, RZ, RZ, R10 ;

        /*25a0*/                   DFMA R20, R18, -R18, R16 ;

        /*25b0*/                   DFMA R8, R20, R12, R18 ;

        /*25c0*/              @!P0 BRA 0x2680 ;

        /*25d0*/                   MOV R0, R10 ;

        /*25e0*/                   IMAD.MOV.U32 R10, RZ, RZ, R16 ;

        /*25f0*/                   MOV R8, 0x2660 ;

        /*2600*/                   IMAD.MOV.U32 R11, RZ, RZ, R17 ;

        /*2610*/                   MOV R17, R21 ;

        /*2620*/                   IMAD.MOV.U32 R16, RZ, RZ, R20 ;

        /*2630*/                   IMAD.MOV.U32 R20, RZ, RZ, R6 ;

        /*2640*/                   IMAD.MOV.U32 R21, RZ, RZ, R13 ;

        /*2650*/                   CALL.REL.NOINC 0x3fe0 ;

        /*2660*/                   IMAD.MOV.U32 R8, RZ, RZ, R16 ;

        /*2670*/                   MOV R9, R17 ;

        /*2680*/                   BSYNC B2 ;

        /*2690*/                   DADD R10, -R4, R8 ;

        /*26a0*/                   DADD R4, -R4, -R8 ;

        /*26b0*/                   DSETP.GEU.AND P0, PT, R10, RZ, PT ;

        /*26c0*/              @!P0 BRA 0x2750 ;

        /*26d0*/                   IMAD.MOV.U32 R6, RZ, RZ, R4 ;

        /*26e0*/                   MOV R15, R11 ;

        /*26f0*/                   IMAD.MOV.U32 R7, RZ, RZ, R5 ;

        /*2700*/                   IMAD.MOV.U32 R14, RZ, RZ, R10 ;

        /*2710*/                   DSETP.GEU.AND P0, PT, R6, RZ, PT ;

        /*2720*/              @!P0 IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*2730*/              @!P0 IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*2740*/                   BRA 0x27a0 ;

        /*2750*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*2760*/                   MOV R7, 0x7ff00000 ;

        /*2770*/                   BRA 0x27a0 ;

        /*2780*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*2790*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*27a0*/                   BSYNC B1 ;

        /*27b0*/                   DSETP.GEU.AND P0, PT, R14, R6, PT ;

        /*27c0*/                   FSEL R4, R14, R6, !P0 ;

        /*27d0*/                   FSEL R5, R15, R7, !P0 ;

        /*27e0*/                   STG.E.64.SYS [R2], R4 ;

        /*27f0*/                   EXIT ;

        /*2800*/                   LOP3.LUT R6, R6, 0xff, RZ, 0xc0, !PT ;

        /*2810*/                   PRMT R0, R6, 0x9910, RZ ;

        /*2820*/                   ISETP.NE.AND P0, PT, R0, 0x6, PT ;

        /*2830*/              @!P0 BRA 0x28a0 ;

        /*2840*/                   ISETP.NE.AND P0, PT, R0, 0x7, PT ;

        /*2850*/               @P0 BRA 0x2870 ;

        /*2860*/                   BPT.TRAP 0x1 ;

        /*2870*/                   BSYNC B0 ;

        /*2880*/                   BPT.TRAP 0x1 ;

        /*2890*/                   EXIT ;

        /*28a0*/                   LDG.E.SYS R26, [R18] ;

        /*28b0*/                   LDG.E.64.SYS R16, [R38+0x8] ;

        /*28c0*/                   LDG.E.64.SYS R8, [R38] ;

        /*28d0*/                   IMAD.WIDE.U32 R26, R26, R5, c[0x0][0x180] ;

        /*28e0*/                   LDG.E.64.SYS R4, [R38+0x10] ;

        /*28f0*/                   LDG.E.64.SYS R32, [R26+0x20] ;

        /*2900*/                   LDG.E.64.SYS R14, [R26+0x18] ;

        /*2910*/                   LDG.E.64.SYS R42, [R26+0x8] ;

        /*2920*/                   LDG.E.64.SYS R10, [R26] ;

        /*2930*/                   LDG.E.64.SYS R24, [R26+0x38] ;

        /*2940*/                   LDG.E.64.SYS R20, [R26+0x28] ;

        /*2950*/                   LDG.E.64.SYS R22, [R26+0x30] ;

        /*2960*/                   LDG.E.64.SYS R12, [R26+0x10] ;

        /*2970*/                   LDG.E.64.SYS R18, [R26+0x40] ;

        /*2980*/                   LDG.E.64.SYS R6, [R26+0x48] ;

        /*2990*/                   DMUL R30, R4, R32 ;

        /*29a0*/                   DMUL R28, R16, R14 ;

        /*29b0*/                   DFMA R30, R16, R42, R30 ;

        /*29c0*/                   DFMA R28, R8, R10, R28 ;

        /*29d0*/                   DADD R30, R30, R24 ;

        /*29e0*/                   DFMA R28, R4, R20, R28 ;

        /*29f0*/                   DMUL R30, R16, R30 ;

        /*2a00*/                   DADD R28, R28, R22 ;

        /*2a10*/                   DFMA R16, R4, R12, R18 ;

        /*2a20*/                   DFMA R28, R8, R28, R30 ;

        /*2a30*/                   DFMA R4, R4, R16, R28 ;

        /*2a40*/                   DADD R4, R4, R6 ;

        /*2a50*/                   DSETP.GTU.AND P1, PT, R4, RZ, PT ;

        /*2a60*/                   DSETP.GEU.AND P0, PT, R4, RZ, PT ;

        /*2a70*/                   SEL R0, RZ, 0x1, !P1 ;

        /*2a80*/                   SEL R9, RZ, 0x1, P0 ;

        /*2a90*/                   IMAD.IADD R0, R0, 0x1, -R9 ;

        /*2aa0*/                   SHF.R.U32.HI R0, RZ, 0x1f, R0 ;

        /*2ab0*/                   LOP3.LUT R0, R0, 0x1, RZ, 0x3c, !PT ;

        /*2ac0*/                   STG.E.U8.SYS [R34], R0 ;

        /*2ad0*/                   LDG.E.64.SYS R8, [R40+0x10] ;

        /*2ae0*/                   LDG.E.64.SYS R16, [R40+0x8] ;

        /*2af0*/                   LDG.E.64.SYS R26, [R40] ;

        /*2b00*/                   LDG.E.64.SYS R30, [R38+0x8] ;

        /*2b10*/                   LDG.E.64.SYS R28, [R38] ;

        /*2b20*/                   LDG.E.64.SYS R36, [R38+0x10] ;

        /*2b30*/                   DSETP.GTU.XOR P0, PT, R4, RZ, !P0 ;

        /*2b40*/                   BMOV.32.CLEAR RZ, B1 ;

        /*2b50*/                   BSSY B1, 0x3700 ;

        /*2b60*/                   DMUL R34, R32, R8 ;

        /*2b70*/                   DMUL R44, R14, R16 ;

        /*2b80*/                   DFMA R34, R42, R16, R34 ;

        /*2b90*/                   DFMA R44, R10, R26, R44 ;

        /*2ba0*/                   DMUL R34, R16, R34 ;

        /*2bb0*/                   DFMA R34, R26, R44, R34 ;

        /*2bc0*/                   DADD R44, R42, R42 ;

        /*2bd0*/                   DMUL R44, R30, R44 ;

        /*2be0*/                   DMUL R40, R32, R36 ;

        /*2bf0*/                   DFMA R44, R14, R28, R44 ;

        /*2c00*/                   DFMA R42, R42, R30, R40 ;

        /*2c10*/                   DADD R38, R44, R40 ;

        /*2c20*/                   DADD R40, R12, R12 ;

        /*2c30*/                   DMUL R40, R36, R40 ;

        /*2c40*/                   DFMA R32, R32, R30, R40 ;

        /*2c50*/                   DMUL R40, R14, R30 ;

        /*2c60*/                   DADD R14, R10, R10 ;

        /*2c70*/                   DFMA R14, R14, R28, R40 ;

        /*2c80*/                   DFMA R10, R10, R28, R40 ;

        /*2c90*/                   DFMA R14, R20, R36, R14 ;

        /*2ca0*/                   DADD R10, R22, R10 ;

        /*2cb0*/                   DADD R14, R22, R14 ;

        /*2cc0*/                   DMUL R22, R12, R36 ;

        /*2cd0*/                   DMUL R12, R12, R8 ;

        /*2ce0*/                   DADD R42, R24, R42 ;

        /*2cf0*/                   DADD R38, R24, R38 ;

        /*2d00*/                   DFMA R12, R20, R26, R12 ;

        /*2d10*/                   DMUL R30, R30, R42 ;

        /*2d20*/                   DMUL R38, R16, R38 ;

        /*2d30*/                   DFMA R22, R20, R28, R22 ;

        /*2d40*/                   DFMA R32, R20, R28, R32 ;

        /*2d50*/                   DFMA R34, R8, R12, R34 ;

        /*2d60*/                   DADD R22, R18, R22 ;

        /*2d70*/                   DADD R32, R18, R32 ;

        /*2d80*/                   DFMA R10, R28, R10, R30 ;

        /*2d90*/                   DFMA R14, R26, R14, R38 ;

        /*2da0*/                   DSETP.GE.AND P1, PT, |R34|, c[0x2][0x0], PT ;

        /*2db0*/                   DFMA R10, R36, R22, R10 ;

        /*2dc0*/                   DFMA R14, R8, R32, R14 ;

        /*2dd0*/                   DADD R12, R6, R10 ;

        /*2de0*/                   DMUL R14, R14, 0.5 ;

        /*2df0*/              @!P1 BRA 0x3340 ;

        /*2e00*/                   MUFU.RCP64H R5, R35 ;

        /*2e10*/                   IADD3 R4, R35, 0x300402, RZ ;

        /*2e20*/                   BMOV.32.CLEAR RZ, B2 ;

        /*2e30*/                   BSSY B2, 0x2f20 ;

        /*2e40*/                   FSETP.GEU.AND P1, PT, |R4|, 5.8789094863358348022e-39, PT ;

        /*2e50*/                   DFMA R6, -R34, R4, 1 ;

        /*2e60*/                   DFMA R6, R6, R6, R6 ;

        /*2e70*/                   DFMA R6, R4, R6, R4 ;

        /*2e80*/                   DFMA R8, -R34, R6, 1 ;

        /*2e90*/                   DFMA R8, R6, R8, R6 ;

        /*2ea0*/               @P1 BRA 0x2f10 ;

        /*2eb0*/                   LOP3.LUT R8, R35, 0x7fffffff, RZ, 0xc0, !PT ;

        /*2ec0*/                   IMAD.MOV.U32 R5, RZ, RZ, R35 ;

        /*2ed0*/                   MOV R4, R34 ;

        /*2ee0*/                   IADD3 R8, R8, -0x100000, RZ ;

        /*2ef0*/                   MOV R0, 0x2f10 ;

        /*2f00*/                   CALL.REL.NOINC 0x3750 ;

        /*2f10*/                   BSYNC B2 ;

        /*2f20*/                   DMUL R14, R14, R8 ;

        /*2f30*/              @!P0 DMUL R4, R14, -2 ;

        /*2f40*/              @!P0 DSETP.GTU.AND P1, PT, R4, RZ, PT ;

        /*2f50*/              @!P0 FSEL R6, R4, RZ, P1 ;

        /*2f60*/              @!P0 IMAD.MOV.U32 R4, RZ, RZ, 0x0 ;

        /*2f70*/              @!P0 FSEL R7, R5, +QNAN , P1 ;

        /*2f80*/              @!P0 IMAD.MOV.U32 R5, RZ, RZ, 0x7ff00000 ;

        /*2f90*/              @!P0 BRA 0x36f0 ;

        /*2fa0*/                   DMUL R8, R12, R8 ;

        /*2fb0*/                   DMUL R4, R14, R14 ;

        /*2fc0*/                   DSETP.GT.AND P0, PT, R4, R8, PT ;

        /*2fd0*/               @P0 BRA 0x30b0 ;

        /*2fe0*/                   DSETP.NEU.AND P0, PT, R4, R8, PT ;

        /*2ff0*/                   MOV R4, 0x0 ;

        /*3000*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x7ff00000 ;

        /*3010*/               @P0 BRA 0x3080 ;

        /*3020*/                   DSETP.GT.AND P0, PT, R14, RZ, PT ;

        /*3030*/                   DADD R6, -RZ, -R14 ;

        /*3040*/              @!P0 BRA 0x36f0 ;

        /*3050*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*3060*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*3070*/                   BRA 0x36f0 ;

        /*3080*/                   MOV R6, 0x0 ;

        /*3090*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*30a0*/                   BRA 0x36f0 ;

        /*30b0*/                   DADD R10, -R8, R4 ;

        /*30c0*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*30d0*/                   BMOV.32.CLEAR RZ, B2 ;

        /*30e0*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x3fd80000 ;

        /*30f0*/                   BSSY B2, 0x3260 ;

        /*3100*/                   MUFU.RSQ64H R5, R11 ;

        /*3110*/                   IADD3 R4, R11, -0x3500000, RZ ;

        /*3120*/                   ISETP.GE.U32.AND P0, PT, R4, 0x7ca00000, PT ;

        /*3130*/                   DMUL R6, R4, R4 ;

        /*3140*/                   DFMA R6, R10, -R6, 1 ;

        /*3150*/                   DFMA R8, R6, R8, 0.5 ;

        /*3160*/                   DMUL R6, R4, R6 ;

        /*3170*/                   DFMA R12, R8, R6, R4 ;

        /*3180*/                   DMUL R18, R10, R12 ;

        /*3190*/                   IADD3 R9, R13, -0x100000, RZ ;

        /*31a0*/                   MOV R8, R12 ;

        /*31b0*/                   DFMA R16, R18, -R18, R10 ;

        /*31c0*/                   DFMA R6, R16, R8, R18 ;

        /*31d0*/              @!P0 BRA 0x3250 ;

        /*31e0*/                   IMAD.MOV.U32 R0, RZ, RZ, R12 ;

        /*31f0*/                   MOV R8, 0x3230 ;

        /*3200*/                   IMAD.MOV.U32 R20, RZ, RZ, R4 ;

        /*3210*/                   IMAD.MOV.U32 R21, RZ, RZ, R9 ;

        /*3220*/                   CALL.REL.NOINC 0x3fe0 ;

        /*3230*/                   MOV R6, R16 ;

        /*3240*/                   IMAD.MOV.U32 R7, RZ, RZ, R17 ;

        /*3250*/                   BSYNC B2 ;

        /*3260*/                   DADD R4, -R14, R6 ;

        /*3270*/                   DADD R14, -R14, -R6 ;

        /*3280*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*3290*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*32a0*/                   DSETP.GEU.AND P0, PT, R4, RZ, PT ;

        /*32b0*/              @!P0 BRA 0x3310 ;

        /*32c0*/                   DSETP.GEU.AND P0, PT, R14, RZ, PT ;

        /*32d0*/              @!P0 BRA 0x36f0 ;

        /*32e0*/                   MOV R6, R14 ;

        /*32f0*/                   IMAD.MOV.U32 R7, RZ, RZ, R15 ;

        /*3300*/                   BRA 0x36f0 ;

        /*3310*/                   IMAD.MOV.U32 R4, RZ, RZ, 0x0 ;

        /*3320*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x7ff00000 ;

        /*3330*/                   BRA 0x36f0 ;

        /*3340*/                   MOV R4, 0x0 ;

        /*3350*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x7ff00000 ;

        /*3360*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*3370*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*3380*/              @!P0 BRA 0x36f0 ;

        /*3390*/                   DMUL R6, R14, c[0x2][0x8] ;

        /*33a0*/                   DMUL R12, R12, c[0x2][0x8] ;

        /*33b0*/                   DMUL R8, R6, R6 ;

        /*33c0*/                   DSETP.GT.AND P0, PT, R8, R12, PT ;

        /*33d0*/               @P0 BRA 0x3490 ;

        /*33e0*/                   DSETP.NEU.AND P0, PT, R8, R12, PT ;

        /*33f0*/               @P0 BRA 0x3460 ;

        /*3400*/                   DSETP.GT.AND P0, PT, R6, RZ, PT ;

        /*3410*/                   DADD R6, -RZ, -R6 ;

        /*3420*/              @!P0 BRA 0x36f0 ;

        /*3430*/                   MOV R6, 0x0 ;

        /*3440*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*3450*/                   BRA 0x36f0 ;

        /*3460*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*3470*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*3480*/                   BRA 0x36f0 ;

        /*3490*/                   DADD R10, R8, -R12 ;

        /*34a0*/                   MOV R14, 0x0 ;

        /*34b0*/                   IMAD.MOV.U32 R15, RZ, RZ, 0x3fd80000 ;

        /*34c0*/                   BMOV.32.CLEAR RZ, B2 ;

        /*34d0*/                   BSSY B2, 0x3630 ;

        /*34e0*/                   MUFU.RSQ64H R9, R11 ;

        /*34f0*/                   IADD3 R8, R11, -0x3500000, RZ ;

        /*3500*/                   ISETP.GE.U32.AND P0, PT, R8, 0x7ca00000, PT ;

        /*3510*/                   DMUL R12, R8, R8 ;

        /*3520*/                   DFMA R12, R10, -R12, 1 ;

        /*3530*/                   DFMA R14, R12, R14, 0.5 ;

        /*3540*/                   DMUL R12, R8, R12 ;

        /*3550*/                   DFMA R12, R14, R12, R8 ;

        /*3560*/                   DMUL R18, R10, R12 ;

        /*3570*/                   IADD3 R21, R13, -0x100000, RZ ;

        /*3580*/                   IMAD.MOV.U32 R20, RZ, RZ, R12 ;

        /*3590*/                   DFMA R16, R18, -R18, R10 ;

        /*35a0*/                   DFMA R14, R16, R20, R18 ;

        /*35b0*/              @!P0 BRA 0x3620 ;

        /*35c0*/                   MOV R20, R8 ;

        /*35d0*/                   IMAD.MOV.U32 R0, RZ, RZ, R12 ;

        /*35e0*/                   MOV R8, 0x3600 ;

        /*35f0*/                   CALL.REL.NOINC 0x3fe0 ;

        /*3600*/                   IMAD.MOV.U32 R14, RZ, RZ, R16 ;

        /*3610*/                   IMAD.MOV.U32 R15, RZ, RZ, R17 ;

        /*3620*/                   BSYNC B2 ;

        /*3630*/                   DADD R8, -R6, R14 ;

        /*3640*/                   DADD R6, -R6, -R14 ;

        /*3650*/                   DSETP.GEU.AND P0, PT, R8, RZ, PT ;

        /*3660*/              @!P0 BRA 0x36d0 ;

        /*3670*/                   DSETP.GEU.AND P0, PT, R6, RZ, PT ;

        /*3680*/                   IMAD.MOV.U32 R4, RZ, RZ, R8 ;

        /*3690*/                   MOV R5, R9 ;

        /*36a0*/              @!P0 IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*36b0*/              @!P0 IMAD.MOV.U32 R7, RZ, RZ, 0x7ff00000 ;

        /*36c0*/                   BRA 0x36f0 ;

        /*36d0*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x0 ;

        /*36e0*/                   MOV R7, 0x7ff00000 ;

        /*36f0*/                   BSYNC B1 ;

        /*3700*/                   DSETP.GEU.AND P0, PT, R4, R6, PT ;

        /*3710*/                   FSEL R4, R4, R6, !P0 ;

        /*3720*/                   FSEL R5, R5, R7, !P0 ;

        /*3730*/                   STG.E.64.SYS [R2], R4 ;

        /*3740*/                   EXIT ;

        /*3750*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*3760*/                   DSETP.GTU.AND P1, PT, |R4|, +INF , PT ;

        /*3770*/                   BMOV.32.CLEAR RZ, B3 ;

        /*3780*/                   BSSY B3, 0x3a00 ;

        /*3790*/                   BMOV.32.CLEAR RZ, B4 ;

        /*37a0*/                   BSSY B4, 0x3850 ;

        /*37b0*/               @P1 BREAK B4 ;

        /*37c0*/               @P1 BRA 0x39d0 ;

        /*37d0*/                   LOP3.LUT R9, R5, 0x7fffffff, RZ, 0xc0, !PT ;

        /*37e0*/                   IADD3 R6, R9, -0x1, RZ ;

        /*37f0*/                   ISETP.GE.U32.AND P1, PT, R6, 0x7fefffff, PT ;

        /*3800*/               @P1 BREAK B4 ;

        /*3810*/               @P1 LOP3.LUT R7, R5, 0x7ff00000, RZ, 0x3c, !PT ;

        /*3820*/               @P1 IMAD.MOV.U32 R6, RZ, RZ, RZ ;

        /*3830*/               @P1 BRA 0x39f0 ;

        /*3840*/                   BSYNC B4 ;

        /*3850*/                   ISETP.GE.U32.AND P1, PT, R9, 0x1000001, PT ;

        /*3860*/              @!P1 BRA 0x3940 ;

        /*3870*/                   IADD3 R7, R5, -0x3fe00000, RZ ;

        /*3880*/                   IMAD.MOV.U32 R6, RZ, RZ, R4 ;

        /*3890*/                   MUFU.RCP64H R9, R7 ;

        /*38a0*/                   DFMA R10, -R6, R8, 1 ;

        /*38b0*/                   DFMA R10, R10, R10, R10 ;

        /*38c0*/                   DFMA R10, R8, R10, R8 ;

        /*38d0*/                   DFMA R8, -R6, R10, 1 ;

        /*38e0*/                   DFMA R8, R10, R8, R10 ;

        /*38f0*/                   DMUL R8, R8, 2.2250738585072013831e-308 ;

        /*3900*/                   DFMA R4, -R4, R8, 1 ;

        /*3910*/                   DFMA R4, R4, R4, R4 ;

        /*3920*/                   DFMA R6, R8, R4, R8 ;

        /*3930*/                   BRA 0x39f0 ;

        /*3940*/                   DMUL R4, R4, 8.11296384146066816958e+31 ;

        /*3950*/                   MUFU.RCP64H R9, R5 ;

        /*3960*/                   DFMA R6, -R4, R8, 1 ;

        /*3970*/                   DFMA R6, R6, R6, R6 ;

        /*3980*/                   DFMA R6, R8, R6, R8 ;

        /*3990*/                   DFMA R8, -R4, R6, 1 ;

        /*39a0*/                   DFMA R6, R6, R8, R6 ;

        /*39b0*/                   DMUL R6, R6, 8.11296384146066816958e+31 ;

        /*39c0*/                   BRA 0x39f0 ;

        /*39d0*/                   LOP3.LUT R7, R5, 0x80000, RZ, 0xfc, !PT ;

        /*39e0*/                   IMAD.MOV.U32 R6, RZ, RZ, R4 ;

        /*39f0*/                   BSYNC B3 ;

        /*3a00*/                   IMAD.MOV.U32 R4, RZ, RZ, R0 ;

        /*3a10*/                   MOV R8, R6 ;

        /*3a20*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x0 ;

        /*3a30*/                   IMAD.MOV.U32 R9, RZ, RZ, R7 ;

        /*3a40*/                   RET.REL.NODEC R4 0x0 ;

        /*3a50*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*3a60*/                   LOP3.LUT R6, R5, 0x40000000, RZ, 0xc0, !PT ;

        /*3a70*/                   IMAD.MOV.U32 R8, RZ, RZ, RZ ;

        /*3a80*/                   MOV R18, 0x5ff00000 ;

        /*3a90*/                   IMAD.MOV.U32 R14, RZ, RZ, 0x1 ;

        /*3aa0*/                   ISETP.GE.U32.AND P0, PT, R6, 0x40000000, PT ;

        /*3ab0*/                   BMOV.32.CLEAR RZ, B3 ;

        /*3ac0*/                   LOP3.LUT R20, R19, 0x7f800000, RZ, 0xc0, !PT ;

        /*3ad0*/                   BSSY B3, 0x3f90 ;

        /*3ae0*/                   SEL R9, R18, 0x1ff00000, !P0 ;

        /*3af0*/                   ISETP.GE.U32.AND P0, PT, R20, 0x3e800000, PT ;

        /*3b00*/                   DMUL R12, R4, R8 ;

        /*3b10*/                   SEL R11, R18, 0x1ff00000, !P0 ;

        /*3b20*/                   MUFU.RCP64H R15, R13 ;

        /*3b30*/                   DFMA R6, -R12, R14, 1 ;

        /*3b40*/                   DFMA R16, R6, R6, R6 ;

        /*3b50*/                   IMAD.MOV.U32 R6, RZ, RZ, R10 ;

        /*3b60*/                   MOV R7, R19 ;

        /*3b70*/                   IMAD.MOV.U32 R10, RZ, RZ, RZ ;

        /*3b80*/                   DFMA R16, R14, R16, R14 ;

        /*3b90*/                   DMUL R10, R6, R10 ;

        /*3ba0*/                   DMUL R14, R10, R16 ;

        /*3bb0*/                   DFMA R10, -R12, R14, R10 ;

        /*3bc0*/                   DFMA R14, R16, R10, R14 ;

        /*3bd0*/                   DSETP.GT.AND P0, PT, |R14|, RZ, PT ;

        /*3be0*/              @!P0 BRA 0x3eb0 ;

        /*3bf0*/                   ISETP.GT.U32.AND P0, PT, R20, 0x3e7fffff, PT ;

        /*3c00*/                   IMAD.MOV.U32 R10, RZ, RZ, RZ ;

        /*3c10*/                   DMUL R12, R8, R14 ;

        /*3c20*/                   SEL R11, R18, 0x1ff00000, P0 ;

        /*3c30*/                   DMUL R14, R14, R10 ;

        /*3c40*/                   DMUL R12, R10, R12 ;

        /*3c50*/                   DMUL R8, R8, R14 ;

        /*3c60*/                   DFMA R10, R4, R12, -R6 ;

        /*3c70*/                   DFMA R14, R4, R8, -R6 ;

        /*3c80*/                   DSETP.GT.AND P0, PT, |R10|, |R14|, PT ;

        /*3c90*/                   FSEL R11, R9, R13, P0 ;

        /*3ca0*/                   FSEL R8, R8, R12, P0 ;

        /*3cb0*/                   FSETP.GTU.AND P1, PT, |R11|, 1.469367938527859385e-39, PT ;

        /*3cc0*/                   IMAD.MOV.U32 R9, RZ, RZ, R11 ;

        /*3cd0*/               @P1 BRA 0x3f80 ;

        /*3ce0*/                   FSETP.GEU.AND P0, PT, |R7|, 1.5046327690525280102e-36, PT ;

        /*3cf0*/                   IMAD.MOV.U32 R9, RZ, RZ, R11 ;

        /*3d00*/                   MOV R12, 0x58500000 ;

        /*3d10*/                   LOP3.LUT R10, R8, 0xfffffffe, RZ, 0xc0, !PT ;

        /*3d20*/                   SEL R13, R12, 0x3ff00000, !P0 ;

        /*3d30*/                   IMAD.MOV.U32 R12, RZ, RZ, RZ ;

        /*3d40*/                   LOP3.LUT R8, R8, 0x1, RZ, 0xfc, !PT ;

        /*3d50*/                   DMUL R4, R4, R12 ;

        /*3d60*/                   DMUL R6, R6, R12 ;

        /*3d70*/                   DFMA R12, R10, R4, -R6 ;

        /*3d80*/                   DFMA R14, R8, R4, -R6 ;

        /*3d90*/                   DSETP.GT.AND P0, PT, |R12|, |R14|, PT ;

        /*3da0*/                   FSEL R15, R8, R10, P0 ;

        /*3db0*/                   IADD3 R12, P1, R15.reuse, 0x1, RZ ;

        /*3dc0*/                   LOP3.LUT R8, R15.reuse, 0x1, RZ, 0xc0, !PT ;

        /*3dd0*/                   IADD3 R10, P2, R15, -0x1, RZ ;

        /*3de0*/                   IMAD.X R13, RZ, RZ, R11, P1 ;

        /*3df0*/                   ISETP.NE.U32.AND P0, PT, R8, 0x1, PT ;

        /*3e00*/                   IADD3.X R9, R11, -0x1, RZ, P2, !PT ;

        /*3e10*/                   FSEL R12, R15, R12, P0 ;

        /*3e20*/                   FSEL R13, R11, R13, P0 ;

        /*3e30*/                   FSEL R10, R10, R15, P0 ;

        /*3e40*/                   FSEL R11, R9, R11, P0 ;

        /*3e50*/                   DFMA R8, R4, R12, -R6 ;

        /*3e60*/                   DFMA R4, R4, R10, -R6 ;

        /*3e70*/                   DSETP.GT.AND P0, PT, |R8|, |R4|, PT ;

        /*3e80*/                   FSEL R8, R10, R12, P0 ;

        /*3e90*/                   FSEL R9, R11, R13, P0 ;

        /*3ea0*/                   BRA 0x3f80 ;

        /*3eb0*/                   DSETP.NEU.AND P0, PT, R14, RZ, PT ;

        /*3ec0*/              @!P0 BRA 0x3f70 ;

        /*3ed0*/                   MUFU.RCP64H R9, R5 ;

        /*3ee0*/                   MOV R8, RZ ;

        /*3ef0*/                   DSETP.GT.AND P1, PT, |R8|, RZ, PT ;

        /*3f00*/              @!P1 DSETP.NEU.AND P0, PT, |R4|, +INF , PT ;

        /*3f10*/              @!P1 FSEL R4, R4, R8, P0 ;

        /*3f20*/              @!P1 FSEL R11, R5, R9, P0 ;

        /*3f30*/              @!P1 IMAD.MOV.U32 R8, RZ, RZ, R4 ;

        /*3f40*/              @!P1 IMAD.MOV.U32 R9, RZ, RZ, R11 ;

        /*3f50*/                   DMUL R8, R6, R8 ;

        /*3f60*/                   BRA 0x3f80 ;

        /*3f70*/                   DMUL R8, R6, R4 ;

        /*3f80*/                   BSYNC B3 ;

        /*3f90*/                   IMAD.MOV.U32 R4, RZ, RZ, R0 ;

        /*3fa0*/                   MOV R7, R9 ;

        /*3fb0*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x0 ;

        /*3fc0*/                   IMAD.MOV.U32 R6, RZ, RZ, R8 ;

        /*3fd0*/                   RET.REL.NODEC R4 0x0 ;

        /*3fe0*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*3ff0*/                   ISETP.GE.U32.AND P0, PT, R20, -0x3400000, PT ;

        /*4000*/                   BMOV.32.CLEAR RZ, B3 ;

        /*4010*/                   BSSY B3, 0x4260 ;

        /*4020*/                   IMAD.MOV.U32 R20, RZ, RZ, R0 ;

        /*4030*/              @!P0 BRA 0x40c0 ;

        /*4040*/                   DFMA.RM R16, R16, R20, R18 ;

        /*4050*/                   IADD3 R18, P0, R16, 0x1, RZ ;

        /*4060*/                   IADD3.X R19, RZ, R17, RZ, P0, !PT ;

        /*4070*/                   DFMA.RP R10, -R16, R18, R10 ;

        /*4080*/                   DSETP.GT.AND P0, PT, R10, RZ, PT ;

        /*4090*/                   FSEL R16, R18, R16, P0 ;

        /*40a0*/                   FSEL R17, R19, R17, P0 ;

        /*40b0*/                   BRA 0x4250 ;

        /*40c0*/                   DSETP.NE.AND P0, PT, R10, RZ, PT ;

        /*40d0*/              @!P0 BRA 0x4240 ;

        /*40e0*/                   ISETP.GE.AND P0, PT, R11, RZ, PT ;

        /*40f0*/              @!P0 IMAD.MOV.U32 R16, RZ, RZ, 0x0 ;

        /*4100*/              @!P0 IMAD.MOV.U32 R17, RZ, RZ, -0x80000 ;

        /*4110*/              @!P0 BRA 0x4250 ;

        /*4120*/                   ISETP.GT.AND P0, PT, R11, 0x7fefffff, PT ;

        /*4130*/               @P0 BRA 0x4240 ;

        /*4140*/                   DMUL R10, R10, 8.11296384146066816958e+31 ;

        /*4150*/                   IMAD.MOV.U32 R16, RZ, RZ, RZ ;

        /*4160*/                   MOV R20, 0x0 ;

        /*4170*/                   IMAD.MOV.U32 R21, RZ, RZ, 0x3fd80000 ;

        /*4180*/                   MUFU.RSQ64H R17, R11 ;

        /*4190*/                   DMUL R18, R16, R16 ;

        /*41a0*/                   DFMA R18, R10, -R18, 1 ;

        /*41b0*/                   DFMA R20, R18, R20, 0.5 ;

        /*41c0*/                   DMUL R18, R16, R18 ;

        /*41d0*/                   DFMA R18, R20, R18, R16 ;

        /*41e0*/                   DMUL R16, R10, R18 ;

        /*41f0*/                   IADD3 R19, R19, -0x100000, RZ ;

        /*4200*/                   DFMA R20, R16, -R16, R10 ;

        /*4210*/                   DFMA R16, R18, R20, R16 ;

        /*4220*/                   IADD3 R17, R17, -0x3500000, RZ ;

        /*4230*/                   BRA 0x4250 ;

        /*4240*/                   DADD R16, R10, R10 ;

        /*4250*/                   BSYNC B3 ;

        /*4260*/                   IMAD.MOV.U32 R9, RZ, RZ, 0x0 ;

        /*4270*/                   RET.REL.NODEC R8 0x0 ;

        /*4280*/                   BRA 0x4280;

        /*4290*/                   NOP;

        /*42a0*/                   NOP;

        /*42b0*/                   NOP;

        /*42c0*/                   NOP;

        /*42d0*/                   NOP;

        /*42e0*/                   NOP;

        /*42f0*/                   NOP;

		............................................................



Fatbin ptx code:
================
arch = sm_70
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
