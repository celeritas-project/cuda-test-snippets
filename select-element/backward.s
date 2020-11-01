
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

        /*0030*/                   MOV R9, 0x8 ;

        /*0040*/                   MOV R11, 0x4 ;

        /*0050*/                   S2R R3, SR_TID.X ;

        /*0060*/                   IMAD R0, R0, c[0x0][0x0], R3 ;

        /*0070*/                   IMAD.WIDE.U32 R4, R0, R9, c[0x0][0x160] ;

        /*0080*/                   IMAD.WIDE.U32 R2, R0, R9, c[0x0][0x168] ;

        /*0090*/                   IMAD.WIDE.U32 R6, R0.reuse, R9, c[0x0][0x178] ;

        /*00a0*/                   LDG.E.64.SYS R4, [R4] ;

        /*00b0*/                   IMAD.WIDE.U32 R10, R0.reuse, R11, c[0x0][0x170] ;

        /*00c0*/                   LDG.E.64.SYS R2, [R2] ;

        /*00d0*/                   IMAD.WIDE.U32 R8, R0, R9, c[0x0][0x180] ;

        /*00e0*/                   LDG.E.64.SYS R6, [R6] ;

        /*00f0*/                   LDG.E.SYS R11, [R10] ;

        /*0100*/                   LDG.E.64.SYS R8, [R8] ;

        /*0110*/                   BMOV.32.CLEAR RZ, B0 ;

        /*0120*/                   BSSY B0, 0x230 ;

        /*0130*/                   DMUL R12, R4, R2 ;

        /*0140*/                   DEPBAR.LE SB0, 0x0 ;

        /*0150*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*0160*/                   IADD3 R11, R11, -0x1, RZ ;

        /*0170*/                   MOV R5, RZ ;

        /*0180*/                   ISETP.NE.AND P0, PT, R11, RZ, PT ;

        /*0190*/              @!P0 BRA 0x220 ;

        /*01a0*/                   IMAD.WIDE.U32 R4, R11, 0x8, R8 ;

        /*01b0*/                   IMAD.WIDE.U32 R2, R11, 0x8, R6 ;

        /*01c0*/                   LDG.E.64.SYS R4, [R4] ;

        /*01d0*/                   LDG.E.64.SYS R2, [R2] ;

        /*01e0*/                   DFMA R12, R4, -R2, R12 ;

        /*01f0*/                   DSETP.GTU.AND P0, PT, R12, RZ, PT ;

        /*0200*/               @P0 BRA 0x150 ;

        /*0210*/                   MOV R5, R11 ;

        /*0220*/                   BSYNC B0 ;

        /*0230*/                   LEA R2, P0, R0, c[0x0][0x188], 0x2 ;

        /*0240*/                   LEA.HI.X R3, R0, c[0x0][0x18c], RZ, 0x2, P0 ;

        /*0250*/                   STG.E.SYS [R2], R5 ;

        /*0260*/                   EXIT ;

        /*0270*/                   BRA 0x270;

		.....................................



Fatbin ptx code:
================
arch = sm_70
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
