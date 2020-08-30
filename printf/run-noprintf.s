
Fatbin elf code:
================
arch = sm_35
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_35
		Function : _Z12print_valuesPKiPKdPi
	.headerflags    @"EF_CUDA_SM35 EF_CUDA_PTX_SM(EF_CUDA_SM35)"

        /*0008*/                   MOV R1, c[0x0][0x44];
        /*0010*/                   S2R R0, SR_TID.X;
        /*0018*/                   MOV32I R3, 0x8;
        /*0020*/                   MOV32I R7, 0x4;
        /*0028*/                   ISCADD R2.CC, R0, c[0x0][0x148], 0x3;
        /*0030*/                   IMAD.HI.X R3, R0, R3, c[0x0][0x14c];
        /*0038*/                   ISCADD R4.CC, R0, c[0x0][0x140], 0x2;

        /*0048*/                   LD.E.64 R2, [R2];
        /*0050*/                   IMAD.HI.X R5, R0, R7, c[0x0][0x144];
        /*0058*/                   LD.E R4, [R4];
        /*0060*/                   ISCADD R6.CC, R0, c[0x0][0x150], 0x2;
        /*0068*/                   IMAD.HI.X R7, R0, R7, c[0x0][0x154];
        /*0070*/                   DSET.GT.AND R8, R2, RZ, PT;
        /*0078*/                   LOP32I.AND R0, R8, 0x1;

        /*0088*/                   IADD R0, R4, R0;
        /*0090*/                   ST.E [R6], R0;
        /*0098*/                   EXIT;
        /*00a0*/                   BRA 0xa0;
        /*00a8*/                   NOP;
        /*00b0*/                   NOP;
        /*00b8*/                   NOP;
		...................................



Fatbin ptx code:
================
arch = sm_35
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
