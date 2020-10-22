
Fatbin elf code:
================
arch = sm_35
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_35
		Function : _Z4movejdPd
	.headerflags    @"EF_CUDA_SM35 EF_CUDA_PTX_SM(EF_CUDA_SM35)"

        /*0008*/                   MOV R1, c[0x0][0x44];
        /*0010*/                   S2R R0, SR_CTAID.X;
        /*0018*/                   S2R R3, SR_TID.X;
        /*0020*/                   IMAD R0, R0, c[0x0][0x28], R3;
        /*0028*/                   ISETP.GE.U32.AND P0, PT, R0, c[0x0][0x140], PT;
        /*0030*/               @P0 EXIT;
        /*0038*/                   ISCADD R2.CC, R0, c[0x0][0x150], 0x3;

        /*0048*/                   MOV32I R3, 0x8;
        /*0050*/                   MOV R6, c[0x0][0x34];
        /*0058*/                   IMAD.U32.U32.HI.X R3, R0, R3, c[0x0][0x154];
        /*0060*/                   LD.E.64 R4, [R2];
        /*0068*/                   IMAD R0, R6, c[0x0][0x28], R0;
        /*0070*/                   ISETP.GE.U32.AND P0, PT, R0, c[0x0][0x140], PT;
        /*0078*/                   DADD R4, R4, c[0x0][0x148];

        /*0088*/                   ST.E.64 [R2], R4;
        /*0090*/              @!P0 BRA 0x38;
        /*0098*/                   MOV RZ, RZ;
        /*00a0*/                   EXIT;
        /*00a8*/                   BRA 0xa8;
        /*00b0*/                   NOP;
        /*00b8*/                   NOP;
		......................



Fatbin ptx code:
================
arch = sm_35
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
