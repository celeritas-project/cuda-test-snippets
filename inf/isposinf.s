
Fatbin elf code:
================
arch = sm_70
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_70
		Function : _Z12isinf_kernelPKdPb
	.headerflags    @"EF_CUDA_SM70 EF_CUDA_PTX_SM(EF_CUDA_SM70)"
        /*0000*/                   IMAD.MOV.U32 R1, RZ, RZ, c[0x0][0x28] ;

        /*0010*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*0020*/                   S2R R4, SR_TID.X ;

        /*0030*/                   IMAD.MOV.U32 R3, RZ, RZ, 0x8 ;

        /*0040*/                   IMAD.WIDE.U32 R2, R4, R3, c[0x0][0x160] ;

        /*0050*/                   LDG.E.64.SYS R2, [R2] ;

        /*0060*/                   IADD3 R4, P1, R4, c[0x0][0x168], RZ ;

        /*0070*/                   IMAD.X R5, RZ, RZ, c[0x0][0x16c], P1 ;

        /*0080*/                   LOP3.LUT R0, R3, 0x7fffffff, RZ, 0xc0, !PT ;

        /*0090*/                   ISETP.NE.AND P0, PT, R0, 0x7ff00000, PT ;

        /*00a0*/                   ISETP.EQ.AND P0, PT, R2, RZ, !P0 ;

        /*00b0*/                   DSETP.GT.AND P0, PT, R2, RZ, P0 ;

        /*00c0*/                   SEL R7, RZ, 0x1, !P0 ;

        /*00d0*/                   STG.E.U8.SYS [R4], R7 ;

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
