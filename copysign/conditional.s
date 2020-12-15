
Fatbin elf code:
================
arch = sm_70
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_70
		Function : _Z11my_copysignPd
	.headerflags    @"EF_CUDA_SM70 EF_CUDA_PTX_SM(EF_CUDA_SM70)"
        /*0000*/                   IMAD.MOV.U32 R1, RZ, RZ, c[0x0][0x28] ;

        /*0010*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*0020*/                   MOV R2, c[0x0][0x160] ;

        /*0030*/                   IMAD.MOV.U32 R3, RZ, RZ, c[0x0][0x164] ;

        /*0040*/                   LDG.E.64.SYS R4, [R2] ;

        /*0050*/                   MOV R6, 0x3ff00000 ;

        /*0060*/                   S2R R0, SR_TID.X ;

        /*0070*/                   ISETP.NE.AND P0, PT, R0, RZ, PT ;

        /*0080*/                   FSEL R7, R6, -1.875, !P0 ;

        /*0090*/                   IMAD.MOV.U32 R6, RZ, RZ, RZ ;

        /*00a0*/                   DMUL R4, R4, R6 ;

        /*00b0*/                   STG.E.64.SYS [R2], R4 ;

        /*00c0*/                   EXIT ;

        /*00d0*/                   BRA 0xd0;

        /*00e0*/                   NOP;

        /*00f0*/                   NOP;

		............................



Fatbin ptx code:
================
arch = sm_70
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
