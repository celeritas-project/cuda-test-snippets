
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

        /*0020*/                   MOV R4, c[0x0][0x160] ;

        /*0030*/                   IMAD.MOV.U32 R5, RZ, RZ, c[0x0][0x164] ;

        /*0040*/                   LDG.E.64.SYS R6, [R4] ;

        /*0050*/                   S2R R0, SR_TID.X ;

        /*0060*/                   LEA R0, R0, 0xffffffff, 0x1 ;

        /*0070*/                   I2F.F64 R2, R0 ;

        /*0080*/                   DMUL R2, R2, R6 ;

        /*0090*/                   STG.E.64.SYS [R4], R2 ;

        /*00a0*/                   EXIT ;

        /*00b0*/                   BRA 0xb0;

        /*00c0*/                   NOP;

        /*00d0*/                   NOP;

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
