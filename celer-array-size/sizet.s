
Fatbin elf code:
================
arch = sm_70
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_70
		Function : _Z6assignPKiPN9celeritas5ArrayIiLm4EEE
	.headerflags    @"EF_CUDA_SM70 EF_CUDA_PTX_SM(EF_CUDA_SM70)"
        /*0000*/                   MOV R1, c[0x0][0x28] ;

        /*0010*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*0020*/                   S2R R4, SR_TID.X ;

        /*0030*/                   MOV R3, 0x4 ;

        /*0040*/                   IMAD.WIDE.U32 R2, R4, R3, c[0x0][0x160] ;

        /*0050*/                   LDG.E.SYS R7, [R2] ;

        /*0060*/                   MOV R5, 0x10 ;

        /*0070*/                   IMAD.WIDE.U32 R4, R4, R5, c[0x0][0x168] ;

        /*0080*/                   STG.E.SYS [R4], R7 ;

        /*0090*/                   LDG.E.SYS R9, [R2] ;

        /*00a0*/                   STG.E.SYS [R4+0x4], R9 ;

        /*00b0*/                   LDG.E.SYS R11, [R2] ;

        /*00c0*/                   STG.E.SYS [R4+0x8], R11 ;

        /*00d0*/                   LDG.E.SYS R13, [R2] ;

        /*00e0*/                   STG.E.SYS [R4+0xc], R13 ;

        /*00f0*/                   EXIT ;

        /*0100*/                   BRA 0x100;

        /*0110*/                   NOP;

        /*0120*/                   NOP;

        /*0130*/                   NOP;

        /*0140*/                   NOP;

        /*0150*/                   NOP;

        /*0160*/                   NOP;

        /*0170*/                   NOP;

		.................................................



Fatbin ptx code:
================
arch = sm_70
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
