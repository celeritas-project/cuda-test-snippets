
Fatbin elf code:
================
arch = sm_35
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_35
		Function : _Z4move17SizedParticleView
	.headerflags    @"EF_CUDA_SM35 EF_CUDA_PTX_SM(EF_CUDA_SM35)"

        /*0008*/                   MOV R1, c[0x0][0x44];
        /*0010*/                   S2R R6, SR_CTAID.X;
        /*0018*/                   S2R R0, SR_TID.X;
        /*0020*/                   IMAD R6, R6, c[0x0][0x28], R0;
        /*0028*/                   ISETP.GE.AND P0, PT, R6, c[0x0][0x140], PT;
        /*0030*/               @P0 EXIT;
        /*0038*/                   ISCADD R16.CC, R6, c[0x0][0x178], 0x3;

        /*0048*/                   MOV32I R0, 0x8;
        /*0050*/                   IMAD.HI.X R17, R6, R0, c[0x0][0x17c];
        /*0058*/                   ISCADD R2.CC, R6, c[0x0][0x1a8], 0x3;
        /*0060*/                   LD.E.64 R10, [R16];
        /*0068*/                   IMAD.HI.X R3, R6, R0, c[0x0][0x1ac];
        /*0070*/                   ISCADD R12.CC, R6, c[0x0][0x148], 0x3;
        /*0078*/                   LD.E.64 R8, [R2];

        /*0088*/                   IMAD.HI.X R13, R6, R0, c[0x0][0x14c];
        /*0090*/                   LD.E.64 R14, [R12];
        /*0098*/                   ISCADD R20.CC, R6, c[0x0][0x188], 0x3;
        /*00a0*/                   IMAD.HI.X R21, R6, R0, c[0x0][0x18c];
        /*00a8*/                   ISCADD R4.CC, R6, c[0x0][0x158], 0x3;
        /*00b0*/                   IMAD.HI.X R5, R6, R0, c[0x0][0x15c];
        /*00b8*/                   DFMA R8, R8, R10, R14;

        /*00c8*/                   ST.E.64 [R12], R8;
        /*00d0*/                   ISCADD R22.CC, R6, c[0x0][0x198], 0x3;
        /*00d8*/                   LD.E.64 R14, [R20];
        /*00e0*/                   IMAD.HI.X R23, R6, R0, c[0x0][0x19c];
        /*00e8*/                   LD.E.64 R10, [R2];
        /*00f0*/                   ISCADD R18.CC, R6, c[0x0][0x168], 0x3;
        /*00f8*/                   LD.E.64 R16, [R4];

        /*0108*/                   IMAD.HI.X R19, R6, R0, c[0x0][0x16c];
        /*0110*/                   DFMA R10, R10, R14, R16;
        /*0118*/                   ST.E.64 [R4], R10;
        /*0120*/                   LD.E.64 R6, [R2];
        /*0128*/                   LD.E.64 R8, [R22];
        /*0130*/                   LD.E.64 R12, [R18];
        /*0138*/                   DFMA R6, R6, R8, R12;

        /*0148*/                   ST.E.64 [R18], R6;
        /*0150*/                   EXIT;
        /*0158*/                   BRA 0x158;
        /*0160*/                   NOP;
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
