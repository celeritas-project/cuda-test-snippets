
Fatbin elf code:
================
arch = sm_70
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_70
		Function : _Z11my_copysignPd
	.headerflags    @"EF_CUDA_SM70 EF_CUDA_PTX_SM(EF_CUDA_SM70)"
        /*0000*/                   IMAD.MOV.U32 R1, RZ, RZ, c[0x0][0x28] ;

        /*0010*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*0020*/                   S2R R6, SR_TID.X ;

        /*0030*/                   I2F.F64 R2, R6 ;

        /*0040*/                   SHF.R.U32.HI R0, RZ, 0x14, R3 ;

        /*0050*/                   SGXT.U32 R0, R0, 0xb ;

        /*0060*/                   IADD3 R5, R0, -0x3f4, RZ ;

        /*0070*/                   SHF.L.U32 R0, R2.reuse, R5.reuse, RZ ;

        /*0080*/                   SHF.L.U64.HI R5, R2, R5, R3 ;

        /*0090*/                   ISETP.NE.U32.AND P0, PT, R0, RZ, PT ;

        /*00a0*/                   MOV R0, 0xd0 ;

        /*00b0*/                   ISETP.NE.AND.EX P0, PT, R5, -0x80000000, PT, P0 ;

        /*00c0*/                   CALL.REL.NOINC 0x310 ;

        /*00d0*/                   FRND.F64.TRUNC R4, R2 ;

        /*00e0*/                   DADD R8, R2, -1 ;

        /*00f0*/                   BMOV.32.CLEAR RZ, B0 ;

        /*0100*/                   BSSY B0, 0x280 ;

        /*0110*/                   LOP3.LUT R0, R9, 0x7ff00000, RZ, 0xc0, !PT ;

        /*0120*/                   DSETP.NEU.AND P1, PT, R4, R2, PT ;

        /*0130*/                   IMAD.MOV.U32 R5, RZ, RZ, R15 ;

        /*0140*/                   IMAD.MOV.U32 R4, RZ, RZ, R14 ;

        /*0150*/              @!P0 LOP3.LUT R7, R5, 0x80000000, RZ, 0x3c, !PT ;

        /*0160*/                   FSEL R4, R4, RZ, !P1 ;

        /*0170*/              @!P0 IMAD.MOV.U32 R5, RZ, RZ, R7 ;

        /*0180*/                   ISETP.NE.AND P0, PT, R0, 0x7ff00000, PT ;

        /*0190*/                   FSEL R5, R5, -QNAN , !P1 ;

        /*01a0*/               @P0 BRA 0x250 ;

        /*01b0*/                   DSETP.GTU.AND P0, PT, |R2|, +INF , PT ;

        /*01c0*/               @P0 BRA 0x270 ;

        /*01d0*/                   ISETP.NE.AND P0, PT, R2, RZ, PT ;

        /*01e0*/                   LOP3.LUT R2, R3, 0x7fffffff, RZ, 0xc0, !PT ;

        /*01f0*/                   ISETP.EQ.AND P0, PT, R2, 0x7ff00000, !P0 ;

        /*0200*/              @!P0 IMAD.MOV.U32 R8, RZ, RZ, R4 ;

        /*0210*/              @!P0 IMAD.MOV.U32 R9, RZ, RZ, R5 ;

        /*0220*/               @P0 IMAD.MOV.U32 R8, RZ, RZ, 0x0 ;

        /*0230*/               @P0 IMAD.MOV.U32 R9, RZ, RZ, 0x3ff00000 ;

        /*0240*/                   BRA 0x270 ;

        /*0250*/                   IMAD.MOV.U32 R8, RZ, RZ, R4 ;

        /*0260*/                   IMAD.MOV.U32 R9, RZ, RZ, R5 ;

        /*0270*/                   BSYNC B0 ;

        /*0280*/                   IMAD.MOV.U32 R2, RZ, RZ, c[0x0][0x160] ;

        /*0290*/                   IMAD.MOV.U32 R3, RZ, RZ, c[0x0][0x164] ;

        /*02a0*/                   LDG.E.64.SYS R4, [R2] ;

        /*02b0*/                   ISETP.NE.AND P0, PT, R6, RZ, PT ;

        /*02c0*/                   FSEL R6, R8, RZ, P0 ;

        /*02d0*/                   FSEL R7, R9, 1.875, P0 ;

        /*02e0*/                   DMUL R4, R4, R6 ;

        /*02f0*/                   STG.E.64.SYS [R2], R4 ;

        /*0300*/                   EXIT ;

        /*0310*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*0320*/                   MUFU.RCP64H R9, 2 ;

        /*0330*/                   IMAD.MOV.U32 R4, RZ, RZ, 0x0 ;

        /*0340*/                   BMOV.32.CLEAR RZ, B0 ;

        /*0350*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x3ff00000 ;

        /*0360*/                   BSSY B0, 0xa00 ;

        /*0370*/                   IMAD.MOV.U32 R8, RZ, RZ, RZ ;

        /*0380*/                   IMAD.MOV.U32 R10, RZ, RZ, 0x7d2cafe2 ;

        /*0390*/                   IMAD.MOV.U32 R11, RZ, RZ, 0x3eb0f5ff ;

        /*03a0*/                   IMAD.IADD R7, R3, 0x1, R3 ;

        /*03b0*/                   DFMA R4, R8, -2, R4 ;

        /*03c0*/                   ISETP.GT.U32.AND P1, PT, R7, -0x2000001, PT ;

        /*03d0*/                   DFMA R4, R4, R4, R4 ;

        /*03e0*/                   DFMA R8, R8, R4, R8 ;

        /*03f0*/                   DMUL R4, RZ, R8 ;

        /*0400*/                   DADD R4, R4, R4 ;

        /*0410*/                   DMUL R12, R4, R4 ;

        /*0420*/                   DADD R14, RZ, -R4 ;

        /*0430*/                   DFMA R10, R12, R10, c[0x2][0x0] ;

        /*0440*/                   DADD R18, R14, R14 ;

        /*0450*/                   DFMA R10, R12, R10, c[0x2][0x8] ;

        /*0460*/                   DMUL R14, R4, R4 ;

        /*0470*/                   DFMA R10, R12, R10, c[0x2][0x10] ;

        /*0480*/                   DFMA R18, RZ, -R4, R18 ;

        /*0490*/                   DFMA R10, R12, R10, c[0x2][0x18] ;

        /*04a0*/                   DMUL R8, R8, R18 ;

        /*04b0*/                   DFMA R10, R12, R10, c[0x2][0x20] ;

        /*04c0*/                   IADD3 R23, R9, 0x100000, RZ ;

        /*04d0*/                   IMAD.MOV.U32 R22, RZ, RZ, R8 ;

        /*04e0*/                   DFMA R16, R12, R10, c[0x2][0x28] ;

        /*04f0*/                   DFMA R10, R12, R16, c[0x2][0x30] ;

        /*0500*/                   DADD R20, -R10, c[0x2][0x30] ;

        /*0510*/                   DFMA R20, R12, R16, R20 ;

        /*0520*/                   DMUL R16, R4, R14 ;

        /*0530*/                   DADD R20, RZ, R20 ;

        /*0540*/                   DFMA R12, R4, R4, -R14 ;

        /*0550*/                   DADD R20, R20, c[0x2][0x38] ;

        /*0560*/                   DFMA R24, R4, R14, -R16 ;

        /*0570*/                   DADD R18, R10, R20 ;

        /*0580*/                   DFMA R22, R4, R22, R12 ;

        /*0590*/                   DFMA R24, R8, R14, R24 ;

        /*05a0*/                   DMUL R12, R18, R16 ;

        /*05b0*/                   DFMA R22, R4, R22, R24 ;

        /*05c0*/                   DADD R10, R10, -R18 ;

        /*05d0*/                   DFMA R14, R18, R16, -R12 ;

        /*05e0*/                   DADD R10, R20, R10 ;

        /*05f0*/                   DFMA R14, R18, R22, R14 ;

        /*0600*/                   DFMA R14, R10, R16, R14 ;

        /*0610*/                   DADD R16, R12, R14 ;

        /*0620*/                   DADD R10, R4, R16 ;

        /*0630*/                   DADD R12, R12, -R16 ;

        /*0640*/                   DADD R4, R4, -R10 ;

        /*0650*/                   DADD R12, R14, R12 ;

        /*0660*/                   DADD R4, R16, R4 ;

        /*0670*/                   DADD R4, R12, R4 ;

        /*0680*/                   DADD R8, R8, R4 ;

        /*0690*/                   DADD R12, R10, R8 ;

        /*06a0*/                   DADD R4, RZ, R12 ;

        /*06b0*/                   DADD R10, R10, -R12 ;

        /*06c0*/                   DADD R14, -RZ, R4 ;

        /*06d0*/                   DADD R10, R8, R10 ;

        /*06e0*/                   DADD R14, -R12, R14 ;

        /*06f0*/                   DADD R10, R10, -R14 ;

        /*0700*/                   LOP3.LUT R15, R3, 0xff0fffff, RZ, 0xc0, !PT ;

        /*0710*/                   IMAD.MOV.U32 R14, RZ, RZ, R2 ;

        /*0720*/                   SEL R15, R15, R3, P1 ;

        /*0730*/                   DADD R10, RZ, R10 ;

        /*0740*/                   DADD R8, R4, R10 ;

        /*0750*/                   DADD R12, R4, -R8 ;

        /*0760*/                   DMUL R4, R8, R14 ;

        /*0770*/                   DADD R12, R10, R12 ;

        /*0780*/                   DFMA R8, R8, R14, -R4 ;

        /*0790*/                   DFMA R8, R12, R14, R8 ;

        /*07a0*/                   IMAD.MOV.U32 R12, RZ, RZ, 0x652b82fe ;

        /*07b0*/                   IMAD.MOV.U32 R13, RZ, RZ, 0x3ff71547 ;

        /*07c0*/                   DADD R10, R4, R8 ;

        /*07d0*/                   DFMA R12, R10, R12, 6.75539944105574400000e+15 ;

        /*07e0*/                   FSETP.GEU.FTZ.AND P1, PT, |R11|, 4.1917929649353027344, PT ;

        /*07f0*/                   DADD R4, R4, -R10 ;

        /*0800*/                   DADD R14, R12, -6.75539944105574400000e+15 ;

        /*0810*/                   DFMA R16, R14, c[0x2][0x40], R10 ;

        /*0820*/                   DFMA R14, R14, c[0x2][0x48], R16 ;

        /*0830*/                   IMAD.MOV.U32 R16, RZ, RZ, 0x69ce2bdf ;

        /*0840*/                   IMAD.MOV.U32 R17, RZ, RZ, 0x3e5ade15 ;

        /*0850*/                   DFMA R16, R14, R16, c[0x2][0x50] ;

        /*0860*/                   DFMA R16, R14, R16, c[0x2][0x58] ;

        /*0870*/                   DFMA R16, R14, R16, c[0x2][0x60] ;

        /*0880*/                   DFMA R16, R14, R16, c[0x2][0x68] ;

        /*0890*/                   DFMA R16, R14, R16, c[0x2][0x70] ;

        /*08a0*/                   DFMA R16, R14, R16, c[0x2][0x78] ;

        /*08b0*/                   DFMA R16, R14, R16, c[0x2][0x80] ;

        /*08c0*/                   DFMA R16, R14, R16, c[0x2][0x88] ;

        /*08d0*/                   DFMA R16, R14, R16, c[0x2][0x90] ;

        /*08e0*/                   DFMA R16, R14, R16, 1 ;

        /*08f0*/                   DFMA R16, R14, R16, 1 ;

        /*0900*/                   IMAD R15, R12, 0x100000, R17 ;

        /*0910*/                   IMAD.MOV.U32 R14, RZ, RZ, R16 ;

        /*0920*/              @!P1 BRA 0x9f0 ;

        /*0930*/                   FSETP.GEU.FTZ.AND P1, PT, |R11|, 4.2275390625, PT ;

        /*0940*/                   DSETP.GEU.AND P2, PT, R10, RZ, PT ;

        /*0950*/                   DADD R10, R10, +INF  ;

        /*0960*/              @!P1 LEA.HI R7, R12, R12, RZ, 0x1 ;

        /*0970*/                   FSEL R14, R10, RZ, P2 ;

        /*0980*/              @!P1 IMAD.MOV.U32 R10, RZ, RZ, RZ ;

        /*0990*/              @!P1 SHF.R.S32.HI R7, RZ, 0x1, R7 ;

        /*09a0*/                   FSEL R15, R11, RZ, P2 ;

        /*09b0*/              @!P1 IMAD.IADD R12, R12, 0x1, -R7 ;

        /*09c0*/              @!P1 IMAD R17, R7, 0x100000, R17 ;

        /*09d0*/              @!P1 LEA R11, R12, 0x3ff00000, 0x14 ;

        /*09e0*/              @!P1 DMUL R14, R16, R10 ;

        /*09f0*/                   BSYNC B0 ;

        /*0a00*/                   ISETP.NE.AND P1, PT, R14, RZ, PT ;

        /*0a10*/                   DADD R4, R8, R4 ;

        /*0a20*/                   LOP3.LUT R7, R15, 0x7fffffff, RZ, 0xc0, !PT ;

        /*0a30*/                   ISETP.EQ.AND P1, PT, R7, 0x7ff00000, !P1 ;

        /*0a40*/              @!P1 DFMA R14, R4, R14, R14 ;

        /*0a50*/                   IMAD.MOV.U32 R4, RZ, RZ, R0 ;

        /*0a60*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x0 ;

        /*0a70*/                   RET.REL.NODEC R4 0x0 ;

        /*0a80*/                   BRA 0xa80;

        /*0a90*/                   NOP;

        /*0aa0*/                   NOP;

        /*0ab0*/                   NOP;

        /*0ac0*/                   NOP;

        /*0ad0*/                   NOP;

        /*0ae0*/                   NOP;

        /*0af0*/                   NOP;

		............................



Fatbin ptx code:
================
arch = sm_70
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
