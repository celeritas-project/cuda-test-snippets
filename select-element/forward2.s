
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
        /*0000*/                   MOV R1, c[0x0][0x28] ;

        /*0010*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*0020*/                   S2R R0, SR_CTAID.X ;

        /*0030*/                   MOV R11, 0x4 ;

        /*0040*/                   S2R R3, SR_TID.X ;

        /*0050*/                   IMAD R0, R0, c[0x0][0x0], R3 ;

        /*0060*/                   MOV R3, 0x8 ;

        /*0070*/                   IMAD.WIDE.U32 R10, R0, R11, c[0x0][0x170] ;

        /*0080*/                   IMAD.WIDE.U32 R8, R0, R3, c[0x0][0x160] ;

        /*0090*/                   IMAD.WIDE.U32 R6, R0, R3, c[0x0][0x168] ;

        /*00a0*/                   LDG.E.SYS R2, [R10] ;

        /*00b0*/                   LDG.E.64.SYS R4, [R8] ;

        /*00c0*/                   LDG.E.64.SYS R6, [R6] ;

        /*00d0*/                   BMOV.32.CLEAR RZ, B0 ;

        /*00e0*/                   BSSY B0, 0x260 ;

        /*00f0*/                   MOV R17, RZ ;

        /*0100*/                   IADD3 R2, R2, -0x1, RZ ;

        /*0110*/                   ISETP.NE.AND P0, PT, R2, RZ, PT ;

        /*0120*/                   DMUL R4, R4, R6 ;

        /*0130*/              @!P0 BRA 0x250 ;

        /*0140*/                   IMAD.WIDE.U32 R6, R0, R3, c[0x0][0x178] ;

        /*0150*/                   IMAD.WIDE.U32 R8, R0, R3, c[0x0][0x180] ;

        /*0160*/                   LDG.E.64.SYS R6, [R6] ;

        /*0170*/                   LDG.E.64.SYS R8, [R8] ;

        /*0180*/                   CS2R R10, SRZ ;

        /*0190*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*01a0*/                   IMAD.WIDE.U32 R14, R17, 0x8, R8 ;

        /*01b0*/                   IMAD.WIDE.U32 R12, R17, 0x8, R6 ;

        /*01c0*/                   LDG.E.64.SYS R14, [R14] ;

        /*01d0*/                   LDG.E.64.SYS R12, [R12] ;

        /*01e0*/                   DFMA R10, R14, R12, R10 ;

        /*01f0*/                   DSETP.GE.AND P0, PT, R4, R10, PT ;

        /*0200*/               @P0 BRA 0x250 ;

        /*0210*/                   IADD3 R17, R17, 0x1, RZ ;

        /*0220*/                   ISETP.NE.AND P0, PT, R17, R2, PT ;

        /*0230*/               @P0 BRA 0x190 ;

        /*0240*/                   MOV R17, R2 ;

        /*0250*/                   BSYNC B0 ;

        /*0260*/                   LEA R2, P0, R0, c[0x0][0x188], 0x2 ;

        /*0270*/                   LEA.HI.X R3, R0, c[0x0][0x18c], RZ, 0x2, P0 ;

        /*0280*/                   STG.E.SYS [R2], R17 ;

        /*0290*/                   EXIT ;

        /*02a0*/                   BRA 0x2a0;

        /*02b0*/                   NOP;

        /*02c0*/                   NOP;

        /*02d0*/                   NOP;

        /*02e0*/                   NOP;

        /*02f0*/                   NOP;

		.....................................



Fatbin ptx code:
================
arch = sm_70
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
