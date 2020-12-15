
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

        /*0020*/                   S2R R0, SR_TID.X ;

        /*0030*/                   LOP3.LUT R0, R0, 0x1, RZ, 0xc0, !PT ;

        /*0040*/                   ISETP.NE.U32.AND P0, PT, R0, 0x1, PT ;

        /*0050*/               @P0 EXIT ;

        /*0060*/                   MOV R2, c[0x0][0x160] ;

        /*0070*/                   IMAD.MOV.U32 R3, RZ, RZ, c[0x0][0x164] ;

        /*0080*/                   LDG.E.64.SYS R4, [R2] ;

        /*0090*/                   DADD R4, -RZ, -R4 ;

        /*00a0*/                   STG.E.64.SYS [R2], R4 ;

        /*00b0*/                   EXIT ;

        /*00c0*/                   BRA 0xc0;

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
