
Fatbin elf code:
================
arch = sm_70
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_70
		Function : _Z12loss_scalingPKdPd
	.headerflags    @"EF_CUDA_SM70 EF_CUDA_PTX_SM(EF_CUDA_SM70)"
        /*0000*/                   IMAD.MOV.U32 R1, RZ, RZ, c[0x0][0x28] ;

        /*0010*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*0020*/                   S2R R0, SR_TID.X ;

        /*0030*/                   IMAD.MOV.U32 R3, RZ, RZ, 0x8 ;

        /*0040*/                   IMAD.WIDE.U32 R2, R0, R3, c[0x0][0x160] ;

        /*0050*/                   LDG.E.64.SYS R4, [R2] ;

        /*0060*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x1 ;

        /*0070*/                   BMOV.32.CLEAR RZ, B0 ;

        /*0080*/                   BSSY B0, 0x160 ;

        /*0090*/                   MUFU.RCP64H R7, R5 ;

        /*00a0*/                   DFMA R8, -R4, R6, 1 ;

        /*00b0*/                   DFMA R8, R8, R8, R8 ;

        /*00c0*/                   DFMA R8, R6, R8, R6 ;

        /*00d0*/                   DMUL R6, R8, c[0x2][0x0] ;

        /*00e0*/                   DFMA R10, -R4, R6, c[0x2][0x0] ;

        /*00f0*/                   DFMA R6, R8, R10, R6 ;

        /*0100*/                   FFMA R8, RZ, R5, R7 ;

        /*0110*/                   FSETP.GT.AND P0, PT, |R8|, 4.8978884574313168671e-40, PT ;

        /*0120*/               @P0 BRA 0x150 ;

        /*0130*/                   MOV R2, 0x150 ;

        /*0140*/                   CALL.REL.NOINC 0x230 ;

        /*0150*/                   BSYNC B0 ;

        /*0160*/                   DSETP.MIN.AND P0, P1, R6, 1, PT ;

        /*0170*/                   IMAD.MOV.U32 R2, RZ, RZ, R7 ;

        /*0180*/                   IMAD.MOV.U32 R8, RZ, RZ, 0x80000 ;

        /*0190*/                   IMAD.MOV.U32 R4, RZ, RZ, 0x0 ;

        /*01a0*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x3fe00000 ;

        /*01b0*/                   FSEL R3, R2, 1.875, P0 ;

        /*01c0*/                   IMAD.MOV.U32 R7, RZ, RZ, 0x8 ;

        /*01d0*/                   SEL R2, R6, RZ, P0 ;

        /*01e0*/               @P1 LOP3.LUT R3, R8, 0x3ff00000, RZ, 0xfc, !PT ;

        /*01f0*/                   DFMA R2, R2, R4, 1 ;

        /*0200*/                   IMAD.WIDE.U32 R4, R0, R7, c[0x0][0x168] ;

        /*0210*/                   STG.E.64.SYS [R4], R2 ;

        /*0220*/                   EXIT ;

        /*0230*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*0240*/                   LOP3.LUT R3, R5, 0x40000000, RZ, 0xc0, !PT ;

        /*0250*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x5ff00000 ;

        /*0260*/                   BMOV.32.CLEAR RZ, B1 ;

        /*0270*/                   IMAD.MOV.U32 R10, RZ, RZ, 0x1 ;

        /*0280*/                   ISETP.GE.U32.AND P0, PT, R3, 0x40000000, PT ;

        /*0290*/                   BSSY B1, 0x670 ;

        /*02a0*/                   SEL R7, R6, 0x1ff00000, !P0 ;

        /*02b0*/                   IMAD.MOV.U32 R6, RZ, RZ, RZ ;

        /*02c0*/                   DMUL R8, R4, R6 ;

        /*02d0*/                   MUFU.RCP64H R11, R9 ;

        /*02e0*/                   DFMA R12, -R8, R10, 1 ;

        /*02f0*/                   DFMA R12, R12, R12, R12 ;

        /*0300*/                   DFMA R12, R10, R12, R10 ;

        /*0310*/                   DMUL R10, R12, c[0x2][0x8] ;

        /*0320*/                   DFMA R14, -R8, R10, c[0x2][0x8] ;

        /*0330*/                   DFMA R14, R12, R14, R10 ;

        /*0340*/                   DSETP.GT.AND P0, PT, |R14|, RZ, PT ;

        /*0350*/              @!P0 BRA 0x590 ;

        /*0360*/                   DMUL R8, R6, R14 ;

        /*0370*/                   DMUL R14, R14, 1.34078079299425970996e+154 ;

        /*0380*/                   DMUL R8, R8, 1.34078079299425970996e+154 ;

        /*0390*/                   DMUL R14, R6, R14 ;

        /*03a0*/                   DFMA R6, R4, R8, c[0x2][0x10] ;

        /*03b0*/                   DFMA R10, R4, R14, c[0x2][0x10] ;

        /*03c0*/                   DSETP.GT.AND P0, PT, |R6|, |R10|, PT ;

        /*03d0*/                   FSEL R7, R15, R9, P0 ;

        /*03e0*/                   FSEL R8, R14, R8, P0 ;

        /*03f0*/                   FSETP.GTU.AND P1, PT, |R7|, 1.469367938527859385e-39, PT ;

        /*0400*/                   IMAD.MOV.U32 R9, RZ, RZ, R7 ;

        /*0410*/               @P1 BRA 0x660 ;

        /*0420*/                   LOP3.LUT R6, R8.reuse, 0xfffffffe, RZ, 0xc0, !PT ;

        /*0430*/                   IMAD.MOV.U32 R9, RZ, RZ, R7 ;

        /*0440*/                   LOP3.LUT R8, R8, 0x1, RZ, 0xfc, !PT ;

        /*0450*/                   DFMA R10, R4, R6, c[0x2][0x10] ;

        /*0460*/                   DFMA R12, R4, R8, c[0x2][0x10] ;

        /*0470*/                   DSETP.GT.AND P0, PT, |R10|, |R12|, PT ;

        /*0480*/                   FSEL R11, R8, R6, P0 ;

        /*0490*/                   IADD3 R8, P1, R11.reuse, 0x1, RZ ;

        /*04a0*/                   LOP3.LUT R3, R11.reuse, 0x1, RZ, 0xc0, !PT ;

        /*04b0*/                   IADD3 R10, P2, R11, -0x1, RZ ;

        /*04c0*/                   IMAD.X R6, RZ, RZ, R7, P1 ;

        /*04d0*/                   ISETP.NE.U32.AND P0, PT, R3, 0x1, PT ;

        /*04e0*/                   IADD3.X R3, R7, -0x1, RZ, P2, !PT ;

        /*04f0*/                   FSEL R8, R11, R8, P0 ;

        /*0500*/                   FSEL R9, R7, R6, P0 ;

        /*0510*/                   FSEL R10, R10, R11, P0 ;

        /*0520*/                   FSEL R11, R3, R7, P0 ;

        /*0530*/                   DFMA R6, R4, R8, c[0x2][0x10] ;

        /*0540*/                   DFMA R4, R4, R10, c[0x2][0x10] ;

        /*0550*/                   DSETP.GT.AND P0, PT, |R6|, |R4|, PT ;

        /*0560*/                   FSEL R8, R10, R8, P0 ;

        /*0570*/                   FSEL R9, R11, R9, P0 ;

        /*0580*/                   BRA 0x660 ;

        /*0590*/                   DSETP.NEU.AND P0, PT, R14, RZ, PT ;

        /*05a0*/              @!P0 BRA 0x650 ;

        /*05b0*/                   MUFU.RCP64H R9, R5 ;

        /*05c0*/                   IMAD.MOV.U32 R8, RZ, RZ, RZ ;

        /*05d0*/                   DSETP.GT.AND P1, PT, |R8|, RZ, PT ;

        /*05e0*/              @!P1 DSETP.NEU.AND P0, PT, |R4|, +INF , PT ;

        /*05f0*/              @!P1 FSEL R3, R4, R8, P0 ;

        /*0600*/              @!P1 FSEL R4, R5, R9, P0 ;

        /*0610*/              @!P1 IMAD.MOV.U32 R8, RZ, RZ, R3 ;

        /*0620*/              @!P1 IMAD.MOV.U32 R9, RZ, RZ, R4 ;

        /*0630*/                   DMUL R8, R8, c[0x2][0x0] ;

        /*0640*/                   BRA 0x660 ;

        /*0650*/                   DMUL R8, R4, c[0x2][0x0] ;

        /*0660*/                   BSYNC B1 ;

        /*0670*/                   IMAD.MOV.U32 R3, RZ, RZ, 0x0 ;

        /*0680*/                   IMAD.MOV.U32 R6, RZ, RZ, R8 ;

        /*0690*/                   IMAD.MOV.U32 R7, RZ, RZ, R9 ;

        /*06a0*/                   RET.REL.NODEC R2 0x0 ;

        /*06b0*/                   BRA 0x6b0;

        /*06c0*/                   NOP;

        /*06d0*/                   NOP;

        /*06e0*/                   NOP;

        /*06f0*/                   NOP;

		..........



Fatbin ptx code:
================
arch = sm_70
code version = [7,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
