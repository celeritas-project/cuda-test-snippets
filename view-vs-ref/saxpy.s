
Fatbin elf code:
================
arch = sm_35
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_35
		Function : _Z4moveiPdS_S_PKdS1_S1_S1_
	.headerflags    @"EF_CUDA_SM35 EF_CUDA_PTX_SM(EF_CUDA_SM35)"

        /*0008*/                   MOV R1, c[0x0][0x44];
        /*0010*/                   S2R R0, SR_CTAID.X;
        /*0018*/                   S2R R3, SR_TID.X;
        /*0020*/                   IMAD R0, R0, c[0x0][0x28], R3;
        /*0028*/                   ISETP.GE.AND P0, PT, R0, c[0x0][0x140], PT;
        /*0030*/               @P0 EXIT;
        /*0038*/                   ISCADD R2.CC, R0, c[0x0][0x178], 0x3;

        /*0048*/                   MOV32I R17, 0x8;
        /*0050*/                   IMAD.HI.X R3, R0, R17, c[0x0][0x17c];
        /*0058*/                   ISCADD R4.CC, R0, c[0x0][0x160], 0x3;
        /*0060*/                   IMAD.HI.X R5, R0, R17, c[0x0][0x164];
        /*0068*/                   ISCADD R6.CC, R0, c[0x0][0x148], 0x3;
        /*0070*/                   IMAD.HI.X R7, R0, R17, c[0x0][0x14c];
        /*0078*/                   ISCADD R12.CC, R0, c[0x0][0x168], 0x3;

        /*0088*/                   IMAD.HI.X R13, R0, R17, c[0x0][0x16c];
        /*0090*/                   ISCADD R14.CC, R0, c[0x0][0x170], 0x3;
        /*0098*/                   IMAD.HI.X R15, R0, R17, c[0x0][0x174];
        /*00a0*/                   LDG.E.64.T R2, [R2];
        /*00a8*/                   LDG.E.64.T R4, [R4];
        /*00b0*/                   LDG.E.64.T R12, [R12];
        /*00b8*/                   LDG.E.64.P R14, [R14];

        /*00c8*/                   LD.E.64 R8, [R6];
        /*00d0*/                   ISCADD R10.CC, R0, c[0x0][0x150], 0x3;
        /*00d8*/                   IMAD.HI.X R11, R0, R17, c[0x0][0x154];
        /*00e0*/                   TEXDEPBAR 0x2;
        /*00e8*/                   DFMA R4, R2, R4, R8;
        /*00f0*/                   ST.E.64 [R6], R4;
        /*00f8*/                   ISCADD R16.CC, R0, c[0x0][0x158], 0x3;

        /*0108*/                   LD.E.64 R8, [R10];
        /*0110*/                   IMAD.HI.X R17, R0, R17, c[0x0][0x15c];
        /*0118*/                   TEXDEPBAR 0x1;
        /*0120*/                   DFMA R8, R2, R12, R8;
        /*0128*/                   ST.E.64 [R10], R8;
        /*0130*/                   LD.E.64 R12, [R16];
        /*0138*/                   TEXDEPBAR 0x0;

        /*0148*/                   DFMA R12, R2, R14, R12;
        /*0150*/                   ST.E.64 [R16], R12;
        /*0158*/                   EXIT;
        /*0160*/                   BRA 0x160;
        /*0168*/                   NOP;
        /*0170*/                   NOP;
        /*0178*/                   NOP;
		.....................................



Fatbin ptx code:
================
arch = sm_35
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
