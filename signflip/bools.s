
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

        /*0020*/                   S2R R8, SR_TID.X ;

        /*0030*/                   MOV R9, 0x8 ;

        /*0040*/                   IMAD.WIDE R2, R8, R9, c[0x0][0x170] ;

        /*0050*/                   LDG.E.64.CONSTANT.SYS R2, [R2] ;

        /*0060*/                   IMAD.WIDE R4, R8, R9, c[0x0][0x168] ;

        /*0070*/                   LDG.E.64.CONSTANT.SYS R4, [R4] ;

        /*0080*/                   MOV R0, 0x1 ;

        /*0090*/                   IMAD.WIDE R8, R8, R9, c[0x0][0x160] ;

        /*00a0*/                   DSETP.GT.AND P0, PT, R2, RZ, PT ;

        /*00b0*/              @!P0 IADD3 R0, RZ, -0x1, RZ ;

        /*00c0*/                   I2F.F64 R6, R0 ;

        /*00d0*/                   DMUL R6, R4, R6 ;

        /*00e0*/                   STG.E.64.SYS [R8], R6 ;

        /*00f0*/                   EXIT ;

        /*0100*/                   BRA 0x100;

        /*0110*/                   NOP;

        /*0120*/                   NOP;

        /*0130*/                   NOP;

        /*0140*/                   NOP;

        /*0150*/                   NOP;

        /*0160*/                   NOP;

        /*0170*/                   NOP;

		..........



Fatbin ptx code:
================
arch = sm_70
code version = [7,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
