
Fatbin elf code:
================
arch = sm_70
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_70
		Function : _Z5mylogPd
	.headerflags    @"EF_CUDA_SM70 EF_CUDA_PTX_SM(EF_CUDA_SM70)"
        /*0000*/                   IMAD.MOV.U32 R1, RZ, RZ, c[0x0][0x28] ;

        /*0010*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*0020*/                   S2R R2, SR_TID.X ;

        /*0030*/                   IMAD.MOV.U32 R3, RZ, RZ, 0x8 ;

        /*0040*/                   IMAD.WIDE.U32 R2, R2, R3, c[0x0][0x160] ;

        /*0050*/                   LDG.E.64.SYS R4, [R2] ;

        /*0060*/                   BMOV.32.CLEAR RZ, B0 ;

        /*0070*/                   BSSY B0, 0x440 ;

        /*0080*/                   ISETP.GT.AND P0, PT, R5, 0xfffff, PT ;

        /*0090*/                   IMAD.MOV.U32 R6, RZ, RZ, R4 ;

        /*00a0*/                   IMAD.MOV.U32 R7, RZ, RZ, R5 ;

        /*00b0*/              @!P0 DMUL R6, R6, 1.80143985094819840000e+16 ;

        /*00c0*/              @!P0 IMAD.MOV.U32 R5, RZ, RZ, R7 ;

        /*00d0*/              @!P0 IMAD.MOV.U32 R4, RZ, RZ, R6 ;

        /*00e0*/                   IADD3 R0, R5, -0x1, RZ ;

        /*00f0*/                   ISETP.GE.U32.AND P1, PT, R0, 0x7fefffff, PT ;

        /*0100*/                   IMAD.MOV.U32 R0, RZ, RZ, -0x3ff ;

        /*0110*/              @!P0 MOV R0, 0xfffffbcb ;

        /*0120*/               @P1 MOV R8, 0x0 ;

        /*0130*/               @P1 IMAD.MOV.U32 R9, RZ, RZ, 0x7ff00000 ;

        /*0140*/               @P1 FSETP.NEU.FTZ.AND P2, PT, R7, RZ, PT ;

        /*0150*/               @P1 DFMA R8, R6, R8, +INF  ;

        /*0160*/               @P1 FSEL R14, R8, RZ, P2 ;

        /*0170*/               @P1 FSEL R15, R9, -QNAN , P2 ;

        /*0180*/               @P1 BRA 0x430 ;

        /*0190*/                   LOP3.LUT R6, R5.reuse, 0x800fffff, RZ, 0xc0, !PT ;

        /*01a0*/                   IMAD.MOV.U32 R8, RZ, RZ, RZ ;

        /*01b0*/                   MOV R16, 0x3ae80f1e ;

        /*01c0*/                   IMAD.MOV.U32 R17, RZ, RZ, 0x3eb1380b ;

        /*01d0*/                   LOP3.LUT R7, R6, 0x3ff00000, RZ, 0xfc, !PT ;

        /*01e0*/                   IMAD.MOV.U32 R6, RZ, RZ, R4 ;

        /*01f0*/                   LEA.HI R5, R5, R0, RZ, 0xc ;

        /*0200*/                   ISETP.GE.AND P0, PT, R7, 0x3ff6a09f, PT ;

        /*0210*/               @P0 IADD3 R9, R7, -0x100000, RZ ;

        /*0220*/               @P0 IADD3 R5, R5, 0x1, RZ ;

        /*0230*/               @P0 IMAD.MOV.U32 R7, RZ, RZ, R9 ;

        /*0240*/                   LOP3.LUT R4, R5, 0x80000000, RZ, 0x3c, !PT ;

        /*0250*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x43300000 ;

        /*0260*/                   DADD R14, R6, 1 ;

        /*0270*/                   DADD R6, R6, -1 ;

        /*0280*/                   DADD R4, R4, c[0x2][0x38] ;

        /*0290*/                   MUFU.RCP64H R9, R15 ;

        /*02a0*/                   DFMA R10, -R14, R8, 1 ;

        /*02b0*/                   DFMA R10, R10, R10, R10 ;

        /*02c0*/                   DFMA R8, R8, R10, R8 ;

        /*02d0*/                   DMUL R10, R8, R6 ;

        /*02e0*/                   DADD R10, R10, R10 ;

        /*02f0*/                   DMUL R12, R10, R10 ;

        /*0300*/                   DADD R14, R6, -R10 ;

        /*0310*/                   DFMA R16, R12, R16, c[0x2][0x0] ;

        /*0320*/                   DADD R18, R14, R14 ;

        /*0330*/                   DFMA R16, R12, R16, c[0x2][0x8] ;

        /*0340*/                   DFMA R14, R4, c[0x2][0x40], R10 ;

        /*0350*/                   DFMA R16, R12, R16, c[0x2][0x10] ;

        /*0360*/                   DFMA R18, R6, -R10, R18 ;

        /*0370*/                   DFMA R16, R12, R16, c[0x2][0x18] ;

        /*0380*/                   DFMA R6, -R4, c[0x2][0x40], R14 ;

        /*0390*/                   DFMA R16, R12, R16, c[0x2][0x20] ;

        /*03a0*/                   DMUL R18, R8, R18 ;

        /*03b0*/                   DFMA R16, R12, R16, c[0x2][0x28] ;

        /*03c0*/                   DADD R6, -R10, R6 ;

        /*03d0*/                   DFMA R16, R12, R16, c[0x2][0x30] ;

        /*03e0*/                   DMUL R16, R12, R16 ;

        /*03f0*/                   DFMA R16, R10, R16, R18 ;

        /*0400*/                   DADD R6, R16, -R6 ;

        /*0410*/                   DFMA R6, R4, c[0x2][0x48], R6 ;

        /*0420*/                   DADD R14, R14, R6 ;

        /*0430*/                   BSYNC B0 ;

        /*0440*/                   STG.E.64.SYS [R2], R14 ;

        /*0450*/                   EXIT ;

        /*0460*/                   BRA 0x460;

        /*0470*/                   NOP;

		.....................



Fatbin ptx code:
================
arch = sm_70
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
