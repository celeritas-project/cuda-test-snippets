
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
        /*0010*/                   S2R R2, SR_TID.X;
        /*0018*/                   IADD32I R1, R1, -0x10;
        /*0020*/                   MOV32I R3, 0x8;
        /*0028*/                   MOV R7, RZ;
        /*0030*/                   ISCADD R16.CC, R2, c[0x0][0x148], 0x3;
        /*0038*/                   MOV32I R4, 0x0;

        /*0048*/                   IMAD.HI.X R17, R2, R3, c[0x0][0x14c];
        /*0050*/                   MOV32I R3, 0x4;
        /*0058*/                   ISCADD R18.CC, R2, c[0x0][0x140], 0x2;
        /*0060*/                   MOV32I R5, 0x0;
        /*0068*/                   LD.E.64 R10, [R16];
        /*0070*/                   LOP.OR R6, R1, c[0x0][0x24];
        /*0078*/                   IMAD.HI.X R19, R2, R3, c[0x0][0x144];

        /*0088*/                   LD.E R0, [R18];
        /*0090*/                   STL.64 [R1+0x8], R10;
        /*0098*/                   STL [R1], R0;
        /*00a0*/                   JCAL 0x0;
        /*00a8*/                   LD.E.64 R16, [R16];
        /*00b0*/                   ISCADD R4.CC, R2, c[0x0][0x150], 0x2;
        /*00b8*/                   LD.E R18, [R18];

        /*00c8*/                   MOV32I R5, 0x4;
        /*00d0*/                   IMAD.HI.X R5, R2, R5, c[0x0][0x154];
        /*00d8*/                   DSET.GT.AND R3, R16, RZ, PT;
        /*00e0*/                   LOP32I.AND R3, R3, 0x1;
        /*00e8*/                   IADD R3, R18, R3;
        /*00f0*/                   ST.E [R4], R3;
        /*00f8*/                   EXIT;
        /*0100*/                   BRA 0x100;
        /*0108*/                   NOP;
        /*0110*/                   NOP;
        /*0118*/                   NOP;
        /*0120*/                   NOP;
        /*0128*/                   NOP;
        /*0130*/                   NOP;
        /*0138*/                   NOP;
		...................................



Fatbin ptx code:
================
arch = sm_35
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
