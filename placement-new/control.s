
Fatbin elf code:
================
arch = sm_35
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_35
		Function : _Z13kernel_simpleP3FooPS0_
	.headerflags    @"EF_CUDA_SM35 EF_CUDA_PTX_SM(EF_CUDA_SM35)"

        /*0008*/                   MOV R1, c[0x0][0x44];
        /*0010*/                   S2R R5, SR_TID.X;
        /*0018*/                   MOV32I R3, 0x4;
        /*0020*/                   MOV32I R6, 0x1234;
        /*0028*/                   SHF.L R0, RZ, 0x1, R5;
        /*0030*/                   ISCADD R2.CC, R0, c[0x0][0x140], 0x2;
        /*0038*/                   IMAD.U32.U32.HI.X R3, R0, R3, c[0x0][0x144];

        /*0048*/                   ISCADD R4.CC, R5, c[0x0][0x148], 0x3;
        /*0050*/                   MOV32I R0, 0x8;
        /*0058*/                   ST.E [R2], R6;
        /*0060*/                   IMAD.U32.U32.HI.X R5, R5, R0, c[0x0][0x14c];
        /*0068*/                   ST.E [R2+0x4], R6;
        /*0070*/                   ST.E.64 [R4], R2;
        /*0078*/                   EXIT;
        /*0080*/                   BRA 0x80;
        /*0088*/                   NOP;
        /*0090*/                   NOP;
        /*0098*/                   NOP;
        /*00a0*/                   NOP;
        /*00a8*/                   NOP;
        /*00b0*/                   NOP;
        /*00b8*/                   NOP;
		.....................................



Fatbin ptx code:
================
arch = sm_35
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
