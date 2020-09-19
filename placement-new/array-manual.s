
Fatbin elf code:
================
arch = sm_35
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_35
		Function : _Z18kernel_independentP3FooPS0_
	.headerflags    @"EF_CUDA_SM35 EF_CUDA_PTX_SM(EF_CUDA_SM35)"

        /*0008*/                   MOV R1, c[0x0][0x44];
        /*0010*/                   S2R R4, SR_TID.X;
        /*0018*/                   MOV32I R3, 0x4;
        /*0020*/                   MOV32I R7, 0x8;
        /*0028*/                   MOV R5, RZ;
        /*0030*/                   SHF.L R0, RZ, 0x1, R4;
        /*0038*/                   ISCADD R2.CC, R0, c[0x0][0x140], 0x2;

        /*0048*/                   IMAD.U32.U32.HI.X R3, R0, R3, c[0x0][0x144];
        /*0050*/                   MOV R0, RZ;
        /*0058*/                   IADD RZ.CC, -RZ, R2;
        /*0060*/                   ISETP.NE.X.AND P0, PT, R3, RZ, PT;
        /*0068*/                   ISCADD R8.CC, R4, c[0x0][0x148], 0x3;
        /*0070*/               @P0 MOV R0, R2;
        /*0078*/                   IMAD.U32.U32.HI.X R9, R4, R7, c[0x0][0x14c];

        /*0088*/               @P0 MOV32I R6, 0x1234;
        /*0090*/               @P0 MOV R5, R3;
        /*0098*/                   MOV32I R7, 0x1234;
        /*00a0*/               @P0 ST.E [R2], R6;
        /*00a8*/                   MOV R4, R0;
        /*00b0*/                   ST.E.64 [R8], R4;
        /*00b8*/                   ST.E [R2+0x4], R7;

        /*00c8*/                   EXIT;
        /*00d0*/                   BRA 0xd0;
        /*00d8*/                   NOP;
        /*00e0*/                   NOP;
        /*00e8*/                   NOP;
        /*00f0*/                   NOP;
        /*00f8*/                   NOP;
		..........................................



Fatbin ptx code:
================
arch = sm_35
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
