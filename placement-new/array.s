
Fatbin elf code:
================
arch = sm_35
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_35
		Function : _Z6kernelP3FooPS0_
	.headerflags    @"EF_CUDA_SM35 EF_CUDA_PTX_SM(EF_CUDA_SM35)"

        /*0008*/                   MOV R1, c[0x0][0x44];
        /*0010*/                   S2R R5, SR_TID.X;
        /*0018*/                   MOV32I R7, 0x4;
        /*0020*/                   MOV32I R3, 0x4;
        /*0028*/                   MOV R6, RZ;
        /*0030*/                   MOV32I R8, 0x8;
        /*0038*/                   SHF.L R0, RZ, 0x1, R5;

        /*0048*/                   ISCADD R10.CC, R0, c[0x0][0x140], 0x2;
        /*0050*/                   IMAD.U32.U32.HI.X R7, R0, R7, c[0x0][0x144];
        /*0058*/                   IADD RZ.CC, -RZ, R10;
        /*0060*/                   ISETP.NE.X.AND P0, PT, R7, RZ, PT;
        /*0068*/               @P0 ISCADD R2.CC, R0, c[0x0][0x140], 0x2;
        /*0070*/               @P0 MOV R6, R7;
        /*0078*/               @P0 MOV32I R9, 0x1234;

        /*0088*/               @P0 IMAD.U32.U32.HI.X R3, R0, R3, c[0x0][0x144];
        /*0090*/                   MOV R0, RZ;
        /*0098*/                   ISCADD R4.CC, R5, c[0x0][0x148], 0x3;
        /*00a0*/               @P0 MOV R0, R10;
        /*00a8*/               @P0 ST.E [R2], R9;
        /*00b0*/                   IMAD.U32.U32.HI.X R5, R5, R8, c[0x0][0x14c];
        /*00b8*/               @P0 ST.E [R2+0x4], R9;

        /*00c8*/                   MOV R2, R0;
        /*00d0*/                   MOV R3, R6;
        /*00d8*/                   ST.E.64 [R4], R2;
        /*00e0*/                   EXIT;
        /*00e8*/                   BRA 0xe8;
        /*00f0*/                   NOP;
        /*00f8*/                   NOP;
		.............................



Fatbin ptx code:
================
arch = sm_35
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
