
Fatbin elf code:
================
arch = sm_35
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_35
		Function : _Z5mylogPf
	.headerflags    @"EF_CUDA_SM35 EF_CUDA_PTX_SM(EF_CUDA_SM35)"

        /*0008*/                   MOV R1, c[0x0][0x44];
        /*0010*/                   S2R R0, SR_TID.X;
        /*0018*/                   MOV32I R3, 0x4;
        /*0020*/                   ISCADD R2.CC, R0, c[0x0][0x140], 0x2;
        /*0028*/                   IMAD.U32.U32.HI.X R3, R0, R3, c[0x0][0x144];
        /*0030*/                   LD.E R0, [R2];
        /*0038*/                   MUFU.LG2 R0, R0;

        /*0048*/                   FMUL32I.FTZ R4, R0, 0.69314718246459960938;
        /*0050*/                   ST.E [R2], R4;
        /*0058*/                   EXIT;
        /*0060*/                   BRA 0x60;
        /*0068*/                   NOP;
        /*0070*/                   NOP;
        /*0078*/                   NOP;
		.....................



Fatbin ptx code:
================
arch = sm_35
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
