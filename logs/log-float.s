
Fatbin elf code:
================
arch = sm_70
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_70
		Function : _Z5mylogPf
	.headerflags    @"EF_CUDA_SM70 EF_CUDA_PTX_SM(EF_CUDA_SM70)"
        /*0000*/                   MOV R1, c[0x0][0x28] ;

        /*0010*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*0020*/                   S2R R2, SR_TID.X ;

        /*0030*/                   MOV R3, 0x4 ;

        /*0040*/                   IMAD.WIDE.U32 R2, R2, R3, c[0x0][0x160] ;

        /*0050*/                   LDG.E.SYS R0, [R2] ;

        /*0060*/                   MUFU.LG2 R0, R0 ;

        /*0070*/                   FMUL.FTZ R5, R0, 0.69314718246459960938 ;

        /*0080*/                   STG.E.SYS [R2], R5 ;

        /*0090*/                   EXIT ;

        /*00a0*/                   BRA 0xa0;

        /*00b0*/                   NOP;

        /*00c0*/                   NOP;

        /*00d0*/                   NOP;

        /*00e0*/                   NOP;

        /*00f0*/                   NOP;

		.....................



Fatbin ptx code:
================
arch = sm_70
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
