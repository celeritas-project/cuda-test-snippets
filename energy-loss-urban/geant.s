
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

        /*0030*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x8 ;

        /*0040*/                   IMAD.WIDE.U32 R4, R0, R5, c[0x0][0x160] ;

        /*0050*/                   LDG.E.64.SYS R4, [R4] ;

        /*0060*/                   BMOV.32.CLEAR RZ, B0 ;

        /*0070*/                   BSSY B0, 0x200 ;

        /*0080*/                   IMAD.MOV.U32 R2, RZ, RZ, 0x0 ;

        /*0090*/                   IMAD.MOV.U32 R3, RZ, RZ, 0x3ff80000 ;

        /*00a0*/                   DSETP.GT.AND P0, PT, R4, c[0x2][0x0], PT ;

        /*00b0*/              @!P0 BRA 0x1f0 ;

        /*00c0*/                   MUFU.RCP64H R3, R5 ;

        /*00d0*/                   IMAD.MOV.U32 R2, RZ, RZ, 0x1 ;

        /*00e0*/                   BMOV.32.CLEAR RZ, B1 ;

        /*00f0*/                   BSSY B1, 0x1e0 ;

        /*0100*/                   DFMA R6, -R4, R2, 1 ;

        /*0110*/                   DFMA R6, R6, R6, R6 ;

        /*0120*/                   DFMA R6, R2, R6, R2 ;

        /*0130*/                   DMUL R2, R6, c[0x2][0x8] ;

        /*0140*/                   DFMA R8, -R4, R2, c[0x2][0x8] ;

        /*0150*/                   DFMA R2, R6, R8, R2 ;

        /*0160*/                   FFMA R6, RZ, R5, R3 ;

        /*0170*/                   FSETP.GT.AND P0, PT, |R6|, 4.8978884574313168671e-40, PT ;

        /*0180*/               @P0 BRA 0x1d0 ;

        /*0190*/                   MOV R2, 0x1b0 ;

        /*01a0*/                   CALL.REL.NOINC 0x240 ;

        /*01b0*/                   IMAD.MOV.U32 R2, RZ, RZ, R8 ;

        /*01c0*/                   IMAD.MOV.U32 R3, RZ, RZ, R9 ;

        /*01d0*/                   BSYNC B1 ;

        /*01e0*/                   DADD R2, R2, 1 ;

        /*01f0*/                   BSYNC B0 ;

        /*0200*/                   LEA R4, P0, R0, c[0x0][0x168], 0x3 ;

        /*0210*/                   LEA.HI.X R5, R0, c[0x0][0x16c], RZ, 0x3, P0 ;

        /*0220*/                   STG.E.64.SYS [R4], R2 ;

        /*0230*/                   EXIT ;

        /*0240*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*0250*/                   LOP3.LUT R3, R5, 0x40000000, RZ, 0xc0, !PT ;

        /*0260*/                   IMAD.MOV.U32 R6, RZ, RZ, 0x5ff00000 ;

        /*0270*/                   BMOV.32.CLEAR RZ, B2 ;

        /*0280*/                   IMAD.MOV.U32 R10, RZ, RZ, 0x1 ;

        /*0290*/                   ISETP.GE.U32.AND P0, PT, R3, 0x40000000, PT ;

        /*02a0*/                   BSSY B2, 0x680 ;

        /*02b0*/                   SEL R7, R6, 0x1ff00000, !P0 ;

        /*02c0*/                   IMAD.MOV.U32 R6, RZ, RZ, RZ ;

        /*02d0*/                   DMUL R8, R4, R6 ;

        /*02e0*/                   MUFU.RCP64H R11, R9 ;

        /*02f0*/                   DFMA R12, -R8, R10, 1 ;

        /*0300*/                   DFMA R12, R12, R12, R12 ;

        /*0310*/                   DFMA R12, R10, R12, R10 ;

        /*0320*/                   DMUL R10, R12, c[0x2][0x10] ;

        /*0330*/                   DFMA R14, -R8, R10, c[0x2][0x10] ;

        /*0340*/                   DFMA R14, R12, R14, R10 ;

        /*0350*/                   DSETP.GT.AND P0, PT, |R14|, RZ, PT ;

        /*0360*/              @!P0 BRA 0x5a0 ;

        /*0370*/                   DMUL R8, R6, R14 ;

        /*0380*/                   DMUL R14, R14, 1.34078079299425970996e+154 ;

        /*0390*/                   DMUL R8, R8, 1.34078079299425970996e+154 ;

        /*03a0*/                   DMUL R14, R6, R14 ;

        /*03b0*/                   DFMA R6, R4, R8, c[0x2][0x18] ;

        /*03c0*/                   DFMA R10, R4, R14, c[0x2][0x18] ;

        /*03d0*/                   DSETP.GT.AND P0, PT, |R6|, |R10|, PT ;

        /*03e0*/                   FSEL R7, R15, R9, P0 ;

        /*03f0*/                   FSEL R8, R14, R8, P0 ;

        /*0400*/                   FSETP.GTU.AND P1, PT, |R7|, 1.469367938527859385e-39, PT ;

        /*0410*/                   IMAD.MOV.U32 R9, RZ, RZ, R7 ;

        /*0420*/               @P1 BRA 0x670 ;

        /*0430*/                   LOP3.LUT R6, R8.reuse, 0xfffffffe, RZ, 0xc0, !PT ;

        /*0440*/                   IMAD.MOV.U32 R9, RZ, RZ, R7 ;

        /*0450*/                   LOP3.LUT R8, R8, 0x1, RZ, 0xfc, !PT ;

        /*0460*/                   DFMA R10, R4, R6, c[0x2][0x18] ;

        /*0470*/                   DFMA R12, R4, R8, c[0x2][0x18] ;

        /*0480*/                   DSETP.GT.AND P0, PT, |R10|, |R12|, PT ;

        /*0490*/                   FSEL R11, R8, R6, P0 ;

        /*04a0*/                   IADD3 R8, P1, R11.reuse, 0x1, RZ ;

        /*04b0*/                   LOP3.LUT R3, R11.reuse, 0x1, RZ, 0xc0, !PT ;

        /*04c0*/                   IADD3 R10, P2, R11, -0x1, RZ ;

        /*04d0*/                   IMAD.X R6, RZ, RZ, R7, P1 ;

        /*04e0*/                   ISETP.NE.U32.AND P0, PT, R3, 0x1, PT ;

        /*04f0*/                   IADD3.X R3, R7, -0x1, RZ, P2, !PT ;

        /*0500*/                   FSEL R8, R11, R8, P0 ;

        /*0510*/                   FSEL R9, R7, R6, P0 ;

        /*0520*/                   FSEL R10, R10, R11, P0 ;

        /*0530*/                   FSEL R11, R3, R7, P0 ;

        /*0540*/                   DFMA R6, R4, R8, c[0x2][0x18] ;

        /*0550*/                   DFMA R4, R4, R10, c[0x2][0x18] ;

        /*0560*/                   DSETP.GT.AND P0, PT, |R6|, |R4|, PT ;

        /*0570*/                   FSEL R8, R10, R8, P0 ;

        /*0580*/                   FSEL R9, R11, R9, P0 ;

        /*0590*/                   BRA 0x670 ;

        /*05a0*/                   DSETP.NEU.AND P0, PT, R14, RZ, PT ;

        /*05b0*/              @!P0 BRA 0x660 ;

        /*05c0*/                   MUFU.RCP64H R9, R5 ;

        /*05d0*/                   IMAD.MOV.U32 R8, RZ, RZ, RZ ;

        /*05e0*/                   DSETP.GT.AND P1, PT, |R8|, RZ, PT ;

        /*05f0*/              @!P1 DSETP.NEU.AND P0, PT, |R4|, +INF , PT ;

        /*0600*/              @!P1 FSEL R3, R4, R8, P0 ;

        /*0610*/              @!P1 FSEL R4, R5, R9, P0 ;

        /*0620*/              @!P1 IMAD.MOV.U32 R8, RZ, RZ, R3 ;

        /*0630*/              @!P1 IMAD.MOV.U32 R9, RZ, RZ, R4 ;

        /*0640*/                   DMUL R8, R8, c[0x2][0x8] ;

        /*0650*/                   BRA 0x670 ;

        /*0660*/                   DMUL R8, R4, c[0x2][0x8] ;

        /*0670*/                   BSYNC B2 ;

        /*0680*/                   IMAD.MOV.U32 R3, RZ, RZ, 0x0 ;

        /*0690*/                   RET.REL.NODEC R2 0x0 ;

        /*06a0*/                   BRA 0x6a0;

        /*06b0*/                   NOP;

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
