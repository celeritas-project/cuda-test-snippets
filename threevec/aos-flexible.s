
Fatbin elf code:
================
arch = sm_35
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_35
		Function : _Z4move4View
	.headerflags    @"EF_CUDA_SM35 EF_CUDA_PTX_SM(EF_CUDA_SM35)"

        /*0008*/                   MOV R1, c[0x0][0x44];
        /*0010*/                   S2R R0, SR_CTAID.X;
        /*0018*/                   S2R R3, SR_TID.X;
        /*0020*/                   IMAD R0, R0, c[0x0][0x28], R3;
        /*0028*/                   ISETP.GE.AND P0, PT, R0, c[0x0][0x140], PT;
        /*0030*/               @P0 EXIT;
        /*0038*/                   ISCADD R8.CC, R0, c[0x0][0x158], 0x3;

        /*0048*/                   MOV32I R4, 0x8;
        /*0050*/                   MOV32I R3, 0x18;
        /*0058*/                   IMAD.HI.X R9, R0, R4, c[0x0][0x15c];
        /*0060*/                   IMAD R4.CC, R0, R3, c[0x0][0x150];
        /*0068*/                   LD.E.64 R8, [R8];
        /*0070*/                   IMAD.HI.X R5, R0, R3, c[0x0][0x154];
        /*0078*/                   IMAD R2.CC, R0, R3, c[0x0][0x148];

        /*0088*/                   LD.E.64 R6, [R4];
        /*0090*/                   IMAD.HI.X R3, R0, R3, c[0x0][0x14c];
        /*0098*/                   LD.E.64 R10, [R2];
        /*00a0*/                   LD.E.64 R12, [R2+0x8];
        /*00a8*/                   LD.E.64 R14, [R2+0x10];
        /*00b0*/                   DFMA R6, R6, R8, R10;
        /*00b8*/                   ST.E.64 [R2], R6;

        /*00c8*/                   LD.E.64 R10, [R4+0x8];
        /*00d0*/                   DFMA R12, R8, R10, R12;
        /*00d8*/                   ST.E.64 [R2+0x8], R12;
        /*00e0*/                   LD.E.64 R10, [R4+0x10];
        /*00e8*/                   DFMA R14, R8, R10, R14;
        /*00f0*/                   ST.E.64 [R2+0x10], R14;
        /*00f8*/                   EXIT;
        /*0100*/                   BRA 0x100;
        /*0108*/                   NOP;
        /*0110*/                   NOP;
        /*0118*/                   NOP;
        /*0120*/                   NOP;
        /*0128*/                   NOP;
        /*0130*/                   NOP;
        /*0138*/                   NOP;
		.......................



Fatbin ptx code:
================
arch = sm_35
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
