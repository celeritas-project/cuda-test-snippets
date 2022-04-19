
Fatbin elf code:
================
arch = sm_70
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_70
		Function : _Z11conditionalPdPKdS1_
	.headerflags    @"EF_CUDA_SM70 EF_CUDA_PTX_SM(EF_CUDA_SM70)"
        /*0000*/                   MOV R1, c[0x0][0x28] ;

        /*0010*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*0020*/                   S2R R6, SR_TID.X ;

        /*0030*/                   MOV R7, 0x8 ;

        /*0040*/                   IMAD.WIDE R2, R6, R7, c[0x0][0x170] ;

        /*0050*/                   IMAD.WIDE R4, R6, R7, c[0x0][0x168] ;

        /*0060*/                   LDG.E.64.CONSTANT.SYS R2, [R2] ;

        /*0070*/                   LDG.E.64.CONSTANT.SYS R4, [R4] ;

        /*0080*/                   IMAD.WIDE R6, R6, R7, c[0x0][0x160] ;

        /*0090*/                   DSETP.GT.AND P0, PT, R2, RZ, PT ;

        /*00a0*/                   DADD R8, -RZ, -R4 ;

        /*00b0*/                   FSEL R8, R4, R8, P0 ;

        /*00c0*/                   FSEL R9, R5, R9, P0 ;

        /*00d0*/                   STG.E.64.SYS [R6], R8 ;

        /*00e0*/                   EXIT ;

        /*00f0*/                   BRA 0xf0;

		..........



Fatbin ptx code:
================
arch = sm_70
code version = [7,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
