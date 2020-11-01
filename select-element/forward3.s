
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

        /*0020*/                   S2R R0, SR_CTAID.X ;

        /*0030*/                   IMAD.MOV.U32 R5, RZ, RZ, 0x4 ;

        /*0040*/                   S2R R3, SR_TID.X ;

        /*0050*/                   IMAD R0, R0, c[0x0][0x0], R3 ;

        /*0060*/                   IMAD.WIDE.U32 R4, R0, R5, c[0x0][0x170] ;

        /*0070*/                   LDG.E.SYS R2, [R4] ;

        /*0080*/                   BMOV.32.CLEAR RZ, B0 ;

        /*0090*/                   BSSY B0, 0x2c0 ;

        /*00a0*/                   IMAD.MOV.U32 R15, RZ, RZ, RZ ;

        /*00b0*/                   IADD3 R2, R2, -0x1, RZ ;

        /*00c0*/                   ISETP.NE.AND P0, PT, R2, RZ, PT ;

        /*00d0*/              @!P0 BRA 0x2b0 ;

        /*00e0*/                   IMAD.SHL.U32 R10, R0, 0x8, RZ ;

        /*00f0*/                   SHF.R.U32.HI R3, RZ, 0x1d, R0 ;

        /*0100*/                   IADD3 R12, P0, R10.reuse, c[0x0][0x160], RZ ;

        /*0110*/                   IADD3 R8, P1, R10.reuse, c[0x0][0x168], RZ ;

        /*0120*/                   IADD3.X R13, R3.reuse, c[0x0][0x164], RZ, P0, !PT ;

        /*0130*/                   IADD3.X R9, R3, c[0x0][0x16c], RZ, P1, !PT ;

        /*0140*/                   IADD3 R4, P0, R10, c[0x0][0x178], RZ ;

        /*0150*/                   LDG.E.64.SYS R6, [R12] ;

        /*0160*/                   LDG.E.64.SYS R8, [R8] ;

        /*0170*/                   IADD3 R10, P1, R10, c[0x0][0x180], RZ ;

        /*0180*/                   IADD3.X R5, R3.reuse, c[0x0][0x17c], RZ, P0, !PT ;

        /*0190*/                   IADD3.X R11, R3, c[0x0][0x184], RZ, P1, !PT ;

        /*01a0*/                   LDG.E.64.SYS R4, [R4] ;

        /*01b0*/                   LDG.E.64.SYS R10, [R10] ;

        /*01c0*/                   IMAD.MOV.U32 R15, RZ, RZ, RZ ;

        /*01d0*/                   DMUL R6, R6, R8 ;

        /*01e0*/                   DADD R6, -RZ, -R6 ;

        /*01f0*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*0200*/                   IMAD.WIDE.U32 R12, R15, 0x8, R10 ;

        /*0210*/                   IMAD.WIDE.U32 R8, R15, 0x8, R4 ;

        /*0220*/                   LDG.E.64.SYS R12, [R12] ;

        /*0230*/                   LDG.E.64.SYS R8, [R8] ;

        /*0240*/                   DFMA R6, R12, R8, R6 ;

        /*0250*/                   DSETP.GE.AND P0, PT, R6, RZ, PT ;

        /*0260*/               @P0 BRA 0x2b0 ;

        /*0270*/                   IADD3 R15, R15, 0x1, RZ ;

        /*0280*/                   ISETP.NE.AND P0, PT, R15, R2, PT ;

        /*0290*/               @P0 BRA 0x1f0 ;

        /*02a0*/                   IMAD.MOV.U32 R15, RZ, RZ, R2 ;

        /*02b0*/                   BSYNC B0 ;

        /*02c0*/                   LEA R2, P0, R0, c[0x0][0x188], 0x2 ;

        /*02d0*/                   LEA.HI.X R3, R0, c[0x0][0x18c], RZ, 0x2, P0 ;

        /*02e0*/                   STG.E.SYS [R2], R15 ;

        /*02f0*/                   EXIT ;

        /*0300*/                   BRA 0x300;

        /*0310*/                   NOP;

        /*0320*/                   NOP;

        /*0330*/                   NOP;

        /*0340*/                   NOP;

        /*0350*/                   NOP;

        /*0360*/                   NOP;

        /*0370*/                   NOP;

		.....................................



Fatbin ptx code:
================
arch = sm_70
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
