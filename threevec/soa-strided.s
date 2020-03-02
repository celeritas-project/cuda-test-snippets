
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
        /*0038*/                   ISCADD R8.CC, R0, c[0x0][0x150], 0x3;

        /*0048*/                   MOV32I R4, 0x8;
        /*0050*/                   MOV R19, c[0x0][0x140];
        /*0058*/                   IMAD.HI.X R9, R0, R4, c[0x0][0x154];
        /*0060*/                   ISCADD R2.CC, R0, c[0x0][0x158], 0x3;
        /*0068*/                   LD.E.64 R8, [R8];
        /*0070*/                   IMAD.HI.X R3, R0, R4, c[0x0][0x15c];
        /*0078*/                   ISCADD R6.CC, R0, c[0x0][0x148], 0x3;

        /*0088*/                   LD.E.64 R2, [R2];
        /*0090*/                   SHR R10, R0, 0x1f;
        /*0098*/                   IMAD.HI.X R7, R0, R4, c[0x0][0x14c];
        /*00a0*/                   IADD R5.CC, R0, c[0x0][0x140];
        /*00a8*/                   LD.E.64 R12, [R6];
        /*00b0*/                   SHL R4, R5, 0x3;
        /*00b8*/                   IMAD.HI.X R11, R19, 0x2, R10;

        /*00c8*/                   IADD R14.CC, R4, c[0x0][0x150];
        /*00d0*/                   SHF.L.U64 R5, R5, 0x3, R11;
        /*00d8*/                   IADD.X R15, R5, c[0x0][0x154];
        /*00e0*/                   IADD R4.CC, R4, c[0x0][0x148];
        /*00e8*/                   IADD.X R5, R5, c[0x0][0x14c];
        /*00f0*/                   DFMA R12, R8, R2, R12;
        /*00f8*/                   ST.E.64 [R6], R12;

        /*0108*/                   LD.E.64 R14, [R14];
        /*0110*/                   SHL R9, R19, 0x1;
        /*0118*/                   LD.E.64 R16, [R4];
        /*0120*/                   IADD R0.CC, R0, R9;
        /*0128*/                   SHL R8, R0, 0x3;
        /*0130*/                   IMAD.HI.X R9, R9, 0x2, R10;
        /*0138*/                   IADD R10.CC, R8, c[0x0][0x150];

        /*0148*/                   SHF.L.U64 R0, R0, 0x3, R9;
        /*0150*/                   IADD.X R11, R0, c[0x0][0x154];
        /*0158*/                   IADD R8.CC, R8, c[0x0][0x148];
        /*0160*/                   IADD.X R9, R0, c[0x0][0x14c];
        /*0168*/                   DFMA R14, R2, R14, R16;
        /*0170*/                   ST.E.64 [R4], R14;
        /*0178*/                   LD.E.64 R6, [R10];

        /*0188*/                   LD.E.64 R12, [R8];
        /*0190*/                   DFMA R6, R2, R6, R12;
        /*0198*/                   ST.E.64 [R8], R6;
        /*01a0*/                   EXIT;
        /*01a8*/                   BRA 0x1a8;
        /*01b0*/                   NOP;
        /*01b8*/                   NOP;
		.......................



Fatbin ptx code:
================
arch = sm_35
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
