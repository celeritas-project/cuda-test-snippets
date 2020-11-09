
Fatbin elf code:
================
arch = sm_35
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_35
		Function : _Z8call_minPdPKd
	.headerflags    @"EF_CUDA_SM35 EF_CUDA_PTX_SM(EF_CUDA_SM35)"

        /*0008*/                   MOV R1, c[0x0][0x44];
        /*0010*/                   S2R R0, SR_TID.X;
        /*0018*/                   MOV32I R3, 0x8;
        /*0020*/                   ISCADD R4.CC, R0, c[0x0][0x148], 0x3;
        /*0028*/                   IMAD.U32.U32.HI.X R5, R0, R3, c[0x0][0x14c];
        /*0030*/                   ISCADD R2.CC, R0, c[0x0][0x140], 0x3;
        /*0038*/                   LD.E.64 R4, [R4];

        /*0048*/                   IMAD.U32.U32.HI.X R3, R0, R3, c[0x0][0x144];
        /*0050*/                   LD.E.64 R8, [R2];
        /*0058*/                   DSETP.GT.AND P0, PT, R4, R8, PT;
        /*0060*/                   SEL R6, R8, R4, P0;
        /*0068*/                   SEL R7, R9, R5, P0;
        /*0070*/                   ST.E.64 [R2], R6;
        /*0078*/                   EXIT;
        /*0080*/                   BRA 0x80;
        /*0088*/                   NOP;
        /*0090*/                   NOP;
        /*0098*/                   NOP;
        /*00a0*/                   NOP;
        /*00a8*/                   NOP;
        /*00b0*/                   NOP;
        /*00b8*/                   NOP;
		...........................



Fatbin ptx code:
================
arch = sm_35
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
