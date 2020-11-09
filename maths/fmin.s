
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
        /*0020*/                   ISCADD R6.CC, R0, c[0x0][0x148], 0x3;
        /*0028*/                   IMAD.U32.U32.HI.X R7, R0, R3, c[0x0][0x14c];
        /*0030*/                   ISCADD R2.CC, R0, c[0x0][0x140], 0x3;
        /*0038*/                   LD.E.64 R6, [R6];

        /*0048*/                   IMAD.U32.U32.HI.X R3, R0, R3, c[0x0][0x144];
        /*0050*/                   LD.E.64 R4, [R2];
        /*0058*/                   DMNMX R4, R4, R6, PT;
        /*0060*/                   ST.E.64 [R2], R4;
        /*0068*/                   EXIT;
        /*0070*/                   BRA 0x70;
        /*0078*/                   NOP;
		...........................



Fatbin ptx code:
================
arch = sm_35
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
