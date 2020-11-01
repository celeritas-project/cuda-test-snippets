
Fatbin elf code:
================
arch = sm_70
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_70
		Function : _Z6selectPKdS0_PKiPPdS4_Pi
	.headerflags    @"EF_CUDA_SM70 EF_CUDA_PTX_SM(EF_CUDA_SM70)"
        /*0000*/                   IMAD.MOV.U32 R1, RZ, RZ, c[0x0][0x28] ;

        /*0010*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*0020*/                   S2R R4, SR_CTAID.X ;

        /*0030*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x4 ;

        /*0040*/                   IMAD.MOV.U32 R17, RZ, RZ, 0x8 ;

        /*0050*/                   S2R R3, SR_TID.X ;

        /*0060*/                   IMAD R4, R4, c[0x0][0x0], R3 ;

        /*0070*/                   IMAD.WIDE.U32 R12, R4, R5, c[0x0][0x170] ;

        /*0080*/                   IMAD.WIDE.U32 R10, R4, R17, c[0x0][0x160] ;

        /*0090*/                   IMAD.WIDE.U32 R8, R4.reuse, R17.reuse, c[0x0][0x168] ;

        /*00a0*/                   LDG.E.SYS R0, [R12] ;

        /*00b0*/                   LDG.E.64.SYS R2, [R10] ;

        /*00c0*/                   LDG.E.64.SYS R8, [R8] ;

        /*00d0*/                   IMAD.WIDE.U32 R14, R4.reuse, R17.reuse, c[0x0][0x178] ;

        /*00e0*/                   BMOV.32.CLEAR RZ, B0 ;

        /*00f0*/                   BSSY B0, 0x1100 ;

        /*0100*/                   IMAD.WIDE.U32 R16, R4, R17, c[0x0][0x180] ;

        /*0110*/                   IMAD.WIDE.U32 R4, R4, R5, c[0x0][0x188] ;

        /*0120*/                   IADD3 R6, R0, -0x1, RZ ;

        /*0130*/                   ISETP.GE.AND P0, PT, R6, 0x1, PT ;

        /*0140*/                   DMUL R2, R2, R8 ;

        /*0150*/              @!P0 BRA 0x10f0 ;

        /*0160*/                   LDG.E.64.SYS R8, [R14] ;

        /*0170*/                   LDG.E.64.SYS R10, [R16] ;

        /*0180*/                   LOP3.LUT R18, R6, 0x3, RZ, 0xc0, !PT ;

        /*0190*/                   BMOV.32.CLEAR RZ, B1 ;

        /*01a0*/                   BSSY B1, 0x440 ;

        /*01b0*/                   IMAD.MOV.U32 R7, RZ, RZ, RZ ;

        /*01c0*/                   ISETP.NE.AND P0, PT, R18, RZ, PT ;

        /*01d0*/                   CS2R R12, SRZ ;

        /*01e0*/              @!P0 BRA 0x430 ;

        /*01f0*/                   ISETP.NE.AND P0, PT, R18, 0x1, PT ;

        /*0200*/                   BMOV.32.CLEAR RZ, B2 ;

        /*0210*/                   BSSY B2, 0x3b0 ;

        /*0220*/                   IMAD.MOV.U32 R19, RZ, RZ, RZ ;

        /*0230*/                   CS2R R12, SRZ ;

        /*0240*/              @!P0 BRA 0x3a0 ;

        /*0250*/                   ISETP.NE.AND P0, PT, R18, 0x2, PT ;

        /*0260*/                   BMOV.32.CLEAR RZ, B3 ;

        /*0270*/                   BSSY B3, 0x320 ;

        /*0280*/                   IMAD.MOV.U32 R7, RZ, RZ, RZ ;

        /*0290*/                   CS2R R12, SRZ ;

        /*02a0*/              @!P0 BRA 0x310 ;

        /*02b0*/                   LDG.E.64.SYS R12, [R8] ;

        /*02c0*/                   LDG.E.64.SYS R14, [R10] ;

        /*02d0*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x1 ;

        /*02e0*/                   DFMA R12, R12, R14, RZ ;

        /*02f0*/                   DSETP.GE.AND P0, PT, R12, R2, PT ;

        /*0300*/               @P0 STG.E.SYS [R4], RZ ;

        /*0310*/                   BSYNC B3 ;

        /*0320*/                   IMAD.WIDE.U32 R16, R7, 0x8, R10 ;

        /*0330*/                   IMAD.WIDE.U32 R14, R7, 0x8, R8 ;

        /*0340*/                   LDG.E.64.SYS R16, [R16] ;

        /*0350*/                   LDG.E.64.SYS R14, [R14] ;

        /*0360*/                   IADD3 R19, R7, 0x1, RZ ;

        /*0370*/                   DFMA R12, R16, R14, R12 ;

        /*0380*/                   DSETP.GE.AND P0, PT, R12, R2, PT ;

        /*0390*/               @P0 STG.E.SYS [R4], R7 ;

        /*03a0*/                   BSYNC B2 ;

        /*03b0*/                   IMAD.WIDE R16, R19, 0x8, R10 ;

        /*03c0*/                   IMAD.WIDE R14, R19, 0x8, R8 ;

        /*03d0*/                   LDG.E.64.SYS R16, [R16] ;

        /*03e0*/                   LDG.E.64.SYS R14, [R14] ;

        /*03f0*/                   IADD3 R7, R19, 0x1, RZ ;

        /*0400*/                   DFMA R12, R16, R14, R12 ;

        /*0410*/                   DSETP.GE.AND P0, PT, R12, R2, PT ;

        /*0420*/               @P0 STG.E.SYS [R4], R19 ;

        /*0430*/                   BSYNC B1 ;

        /*0440*/                   ISETP.GE.U32.AND P0, PT, R6, 0x4, PT ;

        /*0450*/              @!P0 BRA 0x10f0 ;

        /*0460*/                   IMAD.IADD R14, R6, 0x1, -R7 ;

        /*0470*/                   BMOV.32.CLEAR RZ, B1 ;

        /*0480*/                   BSSY B1, 0xb70 ;

        /*0490*/                   IMAD.WIDE R8, R7.reuse, 0x8, R8 ;

        /*04a0*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0 ;

        /*04b0*/                   ISETP.GT.AND P1, PT, R14, 0xc, PT ;

        /*04c0*/                   IMAD.WIDE R10, R7, 0x8, R10 ;

        /*04d0*/              @!P1 BRA 0xb60 ;

        /*04e0*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0 ;

        /*04f0*/                   IADD3 R14, R0, -0xd, RZ ;

        /*0500*/                   LDG.E.64.SYS R16, [R10] ;

        /*0510*/                   LDG.E.64.SYS R18, [R8] ;

        /*0520*/                   DFMA R18, R16, R18, R12 ;

        /*0530*/                   DSETP.GE.AND P1, PT, R18, R2, PT ;

        /*0540*/               @P1 STG.E.SYS [R4], R7 ;

        /*0550*/                   LDG.E.64.SYS R12, [R10+0x8] ;

        /*0560*/                   LDG.E.64.SYS R16, [R8+0x8] ;

        /*0570*/                   DFMA R18, R12, R16, R18 ;

        /*0580*/                   DSETP.GE.AND P1, PT, R18, R2, PT ;

        /*0590*/               @P1 IADD3 R15, R7, 0x1, RZ ;

        /*05a0*/               @P1 STG.E.SYS [R4], R15 ;

        /*05b0*/                   LDG.E.64.SYS R12, [R10+0x10] ;

        /*05c0*/                   LDG.E.64.SYS R16, [R8+0x10] ;

        /*05d0*/                   DFMA R18, R12, R16, R18 ;

        /*05e0*/                   DSETP.GE.AND P1, PT, R18, R2, PT ;

        /*05f0*/               @P1 IADD3 R21, R7, 0x2, RZ ;

        /*0600*/               @P1 STG.E.SYS [R4], R21 ;

        /*0610*/                   LDG.E.64.SYS R12, [R10+0x18] ;

        /*0620*/                   LDG.E.64.SYS R16, [R8+0x18] ;

        /*0630*/                   DFMA R18, R12, R16, R18 ;

        /*0640*/                   DSETP.GE.AND P1, PT, R18, R2, PT ;

        /*0650*/               @P1 IADD3 R15, R7, 0x3, RZ ;

        /*0660*/               @P1 STG.E.SYS [R4], R15 ;

        /*0670*/                   LDG.E.64.SYS R12, [R10+0x20] ;

        /*0680*/                   LDG.E.64.SYS R16, [R8+0x20] ;

        /*0690*/                   IADD3 R21, R7, 0x4, RZ ;

        /*06a0*/                   DFMA R18, R12, R16, R18 ;

        /*06b0*/                   DSETP.GE.AND P1, PT, R18, R2, PT ;

        /*06c0*/               @P1 STG.E.SYS [R4], R21 ;

        /*06d0*/                   LDG.E.64.SYS R12, [R10+0x28] ;

        /*06e0*/                   LDG.E.64.SYS R16, [R8+0x28] ;

        /*06f0*/                   DFMA R18, R12, R16, R18 ;

        /*0700*/                   DSETP.GE.AND P1, PT, R18, R2, PT ;

        /*0710*/               @P1 IADD3 R15, R7, 0x5, RZ ;

        /*0720*/               @P1 STG.E.SYS [R4], R15 ;

        /*0730*/                   LDG.E.64.SYS R12, [R10+0x30] ;

        /*0740*/                   LDG.E.64.SYS R16, [R8+0x30] ;

        /*0750*/                   DFMA R18, R12, R16, R18 ;

        /*0760*/                   DSETP.GE.AND P1, PT, R18, R2, PT ;

        /*0770*/               @P1 IADD3 R21, R7, 0x6, RZ ;

        /*0780*/               @P1 STG.E.SYS [R4], R21 ;

        /*0790*/                   LDG.E.64.SYS R12, [R10+0x38] ;

        /*07a0*/                   LDG.E.64.SYS R16, [R8+0x38] ;

        /*07b0*/                   DFMA R18, R12, R16, R18 ;

        /*07c0*/                   DSETP.GE.AND P1, PT, R18, R2, PT ;

        /*07d0*/               @P1 IADD3 R15, R7, 0x7, RZ ;

        /*07e0*/               @P1 STG.E.SYS [R4], R15 ;

        /*07f0*/                   LDG.E.64.SYS R12, [R10+0x40] ;

        /*0800*/                   LDG.E.64.SYS R16, [R8+0x40] ;

        /*0810*/                   IADD3 R21, R7, 0x8, RZ ;

        /*0820*/                   DFMA R18, R12, R16, R18 ;

        /*0830*/                   DSETP.GE.AND P1, PT, R18, R2, PT ;

        /*0840*/               @P1 STG.E.SYS [R4], R21 ;

        /*0850*/                   LDG.E.64.SYS R12, [R10+0x48] ;

        /*0860*/                   LDG.E.64.SYS R16, [R8+0x48] ;

        /*0870*/                   DFMA R18, R12, R16, R18 ;

        /*0880*/                   DSETP.GE.AND P1, PT, R18, R2, PT ;

        /*0890*/               @P1 IADD3 R15, R7, 0x9, RZ ;

        /*08a0*/               @P1 STG.E.SYS [R4], R15 ;

        /*08b0*/                   LDG.E.64.SYS R12, [R10+0x50] ;

        /*08c0*/                   LDG.E.64.SYS R16, [R8+0x50] ;

        /*08d0*/                   DFMA R18, R12, R16, R18 ;

        /*08e0*/                   DSETP.GE.AND P1, PT, R18, R2, PT ;

        /*08f0*/               @P1 IADD3 R21, R7, 0xa, RZ ;

        /*0900*/               @P1 STG.E.SYS [R4], R21 ;

        /*0910*/                   LDG.E.64.SYS R12, [R10+0x58] ;

        /*0920*/                   LDG.E.64.SYS R16, [R8+0x58] ;

        /*0930*/                   DFMA R18, R12, R16, R18 ;

        /*0940*/                   DSETP.GE.AND P1, PT, R18, R2, PT ;

        /*0950*/               @P1 IADD3 R15, R7, 0xb, RZ ;

        /*0960*/               @P1 STG.E.SYS [R4], R15 ;

        /*0970*/                   LDG.E.64.SYS R12, [R10+0x60] ;

        /*0980*/                   LDG.E.64.SYS R16, [R8+0x60] ;

        /*0990*/                   IADD3 R21, R7, 0xc, RZ ;

        /*09a0*/                   DFMA R18, R12, R16, R18 ;

        /*09b0*/                   DSETP.GE.AND P1, PT, R18, R2, PT ;

        /*09c0*/               @P1 STG.E.SYS [R4], R21 ;

        /*09d0*/                   LDG.E.64.SYS R12, [R10+0x68] ;

        /*09e0*/                   LDG.E.64.SYS R16, [R8+0x68] ;

        /*09f0*/                   DFMA R18, R12, R16, R18 ;

        /*0a00*/                   DSETP.GE.AND P1, PT, R18, R2, PT ;

        /*0a10*/               @P1 IADD3 R15, R7, 0xd, RZ ;

        /*0a20*/               @P1 STG.E.SYS [R4], R15 ;

        /*0a30*/                   LDG.E.64.SYS R12, [R10+0x70] ;

        /*0a40*/                   LDG.E.64.SYS R16, [R8+0x70] ;

        /*0a50*/                   DFMA R18, R12, R16, R18 ;

        /*0a60*/                   DSETP.GE.AND P1, PT, R18, R2, PT ;

        /*0a70*/               @P1 IADD3 R21, R7, 0xe, RZ ;

        /*0a80*/               @P1 STG.E.SYS [R4], R21 ;

        /*0a90*/                   LDG.E.64.SYS R12, [R10+0x78] ;

        /*0aa0*/                   LDG.E.64.SYS R16, [R8+0x78] ;

        /*0ab0*/                   IADD3 R10, P3, R10, 0x80, RZ ;

        /*0ac0*/                   IADD3 R8, P2, R8, 0x80, RZ ;

        /*0ad0*/                   IMAD.X R11, RZ, RZ, R11, P3 ;

        /*0ae0*/                   IMAD.X R9, RZ, RZ, R9, P2 ;

        /*0af0*/                   DFMA R12, R12, R16, R18 ;

        /*0b00*/                   DSETP.GE.AND P1, PT, R12, R2, PT ;

        /*0b10*/               @P1 IADD3 R15, R7.reuse, 0xf, RZ ;

        /*0b20*/                   IADD3 R7, R7, 0x10, RZ ;

        /*0b30*/               @P1 STG.E.SYS [R4], R15 ;

        /*0b40*/                   ISETP.GE.AND P1, PT, R7, R14, PT ;

        /*0b50*/              @!P1 BRA 0x500 ;

        /*0b60*/                   BSYNC B1 ;

        /*0b70*/                   IMAD.IADD R14, R6, 0x1, -R7 ;

        /*0b80*/                   BMOV.32.CLEAR RZ, B1 ;

        /*0b90*/                   BSSY B1, 0xf60 ;

        /*0ba0*/                   ISETP.GT.AND P1, PT, R14, 0x4, PT ;

        /*0bb0*/              @!P1 BRA 0xf50 ;

        /*0bc0*/                   LDG.E.64.SYS R14, [R10] ;

        /*0bd0*/                   LDG.E.64.SYS R16, [R8] ;

        /*0be0*/                   DFMA R16, R14, R16, R12 ;

        /*0bf0*/                   DSETP.GE.AND P0, PT, R16, R2, PT ;

        /*0c00*/               @P0 STG.E.SYS [R4], R7 ;

        /*0c10*/                   LDG.E.64.SYS R12, [R10+0x8] ;

        /*0c20*/                   LDG.E.64.SYS R14, [R8+0x8] ;

        /*0c30*/                   DFMA R16, R12, R14, R16 ;

        /*0c40*/                   DSETP.GE.AND P0, PT, R16, R2, PT ;

        /*0c50*/               @P0 IADD3 R19, R7, 0x1, RZ ;

        /*0c60*/               @P0 STG.E.SYS [R4], R19 ;

        /*0c70*/                   LDG.E.64.SYS R12, [R10+0x10] ;

        /*0c80*/                   LDG.E.64.SYS R14, [R8+0x10] ;

        /*0c90*/                   DFMA R16, R12, R14, R16 ;

        /*0ca0*/                   DSETP.GE.AND P0, PT, R16, R2, PT ;

        /*0cb0*/               @P0 IADD3 R21, R7, 0x2, RZ ;

        /*0cc0*/               @P0 STG.E.SYS [R4], R21 ;

        /*0cd0*/                   LDG.E.64.SYS R12, [R10+0x18] ;

        /*0ce0*/                   LDG.E.64.SYS R14, [R8+0x18] ;

        /*0cf0*/                   DFMA R16, R12, R14, R16 ;

        /*0d00*/                   DSETP.GE.AND P0, PT, R16, R2, PT ;

        /*0d10*/               @P0 IADD3 R23, R7, 0x3, RZ ;

        /*0d20*/               @P0 STG.E.SYS [R4], R23 ;

        /*0d30*/                   LDG.E.64.SYS R12, [R10+0x20] ;

        /*0d40*/                   LDG.E.64.SYS R14, [R8+0x20] ;

        /*0d50*/                   IADD3 R7, R7, 0x4, RZ ;

        /*0d60*/                   DFMA R18, R12, R14, R16 ;

        /*0d70*/                   IADD3 R14, P1, R8, 0x20, RZ ;

        /*0d80*/                   IADD3 R16, P2, R10, 0x20, RZ ;

        /*0d90*/                   IMAD.X R15, RZ, RZ, R9, P1 ;

        /*0da0*/                   DSETP.GE.AND P0, PT, R18, R2, PT ;

        /*0db0*/                   IMAD.X R17, RZ, RZ, R11, P2 ;

        /*0dc0*/               @P0 STG.E.SYS [R4], R7 ;

        /*0dd0*/                   LDG.E.64.SYS R12, [R14+0x8] ;

        /*0de0*/                   LDG.E.64.SYS R10, [R16+0x8] ;

        /*0df0*/                   DFMA R12, R10, R12, R18 ;

        /*0e00*/                   DSETP.GE.AND P0, PT, R12, R2, PT ;

        /*0e10*/               @P0 IADD3 R19, R7, 0x1, RZ ;

        /*0e20*/               @P0 STG.E.SYS [R4], R19 ;

        /*0e30*/                   LDG.E.64.SYS R8, [R16+0x10] ;

        /*0e40*/                   LDG.E.64.SYS R10, [R14+0x10] ;

        /*0e50*/                   DFMA R10, R8, R10, R12 ;

        /*0e60*/                   DSETP.GE.AND P0, PT, R10, R2, PT ;

        /*0e70*/               @P0 IADD3 R21, R7, 0x2, RZ ;

        /*0e80*/               @P0 STG.E.SYS [R4], R21 ;

        /*0e90*/                   LDG.E.64.SYS R12, [R16+0x18] ;

        /*0ea0*/                   LDG.E.64.SYS R8, [R14+0x18] ;

        /*0eb0*/                   DFMA R12, R12, R8, R10 ;

        /*0ec0*/                   IADD3 R8, P1, R14, 0x20, RZ ;

        /*0ed0*/                   IADD3 R10, P2, R16, 0x20, RZ ;

        /*0ee0*/                   DSETP.GE.AND P0, PT, R12, R2, PT ;

        /*0ef0*/                   IMAD.X R11, RZ, RZ, R17, P2 ;

        /*0f00*/               @P0 IADD3 R9, R7.reuse, 0x3, RZ ;

        /*0f10*/                   IADD3 R7, R7, 0x4, RZ ;

        /*0f20*/               @P0 STG.E.SYS [R4], R9 ;

        /*0f30*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0 ;

        /*0f40*/                   IMAD.X R9, RZ, RZ, R15, P1 ;

        /*0f50*/                   BSYNC B1 ;

        /*0f60*/                   ISETP.LT.OR P0, PT, R7, R6, P0 ;

        /*0f70*/              @!P0 BRA 0x10f0 ;

        /*0f80*/                   LDG.E.64.SYS R14, [R10] ;

        /*0f90*/                   LDG.E.64.SYS R16, [R8] ;

        /*0fa0*/                   DFMA R16, R14, R16, R12 ;

        /*0fb0*/                   DSETP.GE.AND P0, PT, R16, R2, PT ;

        /*0fc0*/               @P0 STG.E.SYS [R4], R7 ;

        /*0fd0*/                   LDG.E.64.SYS R12, [R10+0x8] ;

        /*0fe0*/                   LDG.E.64.SYS R14, [R8+0x8] ;

        /*0ff0*/                   DFMA R16, R12, R14, R16 ;

        /*1000*/                   DSETP.GE.AND P0, PT, R16, R2, PT ;

        /*1010*/               @P0 IADD3 R19, R7, 0x1, RZ ;

        /*1020*/               @P0 STG.E.SYS [R4], R19 ;

        /*1030*/                   LDG.E.64.SYS R12, [R10+0x10] ;

        /*1040*/                   LDG.E.64.SYS R14, [R8+0x10] ;

        /*1050*/                   DFMA R16, R12, R14, R16 ;

        /*1060*/                   DSETP.GE.AND P0, PT, R16, R2, PT ;

        /*1070*/               @P0 IADD3 R21, R7, 0x2, RZ ;

        /*1080*/               @P0 STG.E.SYS [R4], R21 ;

        /*1090*/                   LDG.E.64.SYS R12, [R10+0x18] ;

        /*10a0*/                   LDG.E.64.SYS R14, [R8+0x18] ;

        /*10b0*/                   DFMA R12, R12, R14, R16 ;

        /*10c0*/                   DSETP.GE.AND P0, PT, R12, R2, PT ;

        /*10d0*/               @P0 IADD3 R7, R7, 0x3, RZ ;

        /*10e0*/               @P0 STG.E.SYS [R4], R7 ;

        /*10f0*/                   BSYNC B0 ;

        /*1100*/                   IADD3 R3, R0, -0x1, RZ ;

        /*1110*/                   STG.E.SYS [R4], R3 ;

        /*1120*/                   EXIT ;

        /*1130*/                   BRA 0x1130;

        /*1140*/                   NOP;

        /*1150*/                   NOP;

        /*1160*/                   NOP;

        /*1170*/                   NOP;

		.....................................



Fatbin ptx code:
================
arch = sm_70
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
