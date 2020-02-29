
Fatbin elf code:
================
arch = sm_35
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_35
		Function : _Z4move12ParticleView
	.headerflags    @"EF_CUDA_SM35 EF_CUDA_PTX_SM(EF_CUDA_SM35)"

        /*0008*/                   MOV R1, c[0x0][0x44];
        /*0010*/                   S2R R0, SR_CTAID.Y;
        /*0018*/                   S2R R3, SR_CTAID.X;
        /*0020*/                   S2R R4, SR_TID.Y;
        /*0028*/                   S2R R6, SR_TID.X;
        /*0030*/                   IMAD R0, R0, c[0x0][0x34], R3;
        /*0038*/                   IMAD R0, R0, c[0x0][0x2c], R4;

        /*0048*/                   IMAD R6, R0, c[0x0][0x28], R6;
        /*0050*/                   ISETP.GE.AND P0, PT, R6, c[0x0][0x140], PT;
        /*0058*/               @P0 EXIT;
        /*0060*/                   ISCADD R16.CC, R6, c[0x0][0x160], 0x3;
        /*0068*/                   MOV32I R0, 0x8;
        /*0070*/                   IMAD.HI.X R17, R6, R0, c[0x0][0x164];
        /*0078*/                   ISCADD R2.CC, R6, c[0x0][0x178], 0x3;

        /*0088*/                   LD.E.64 R10, [R16];
        /*0090*/                   IMAD.HI.X R3, R6, R0, c[0x0][0x17c];
        /*0098*/                   ISCADD R12.CC, R6, c[0x0][0x148], 0x3;
        /*00a0*/                   LD.E.64 R8, [R2];
        /*00a8*/                   IMAD.HI.X R13, R6, R0, c[0x0][0x14c];
        /*00b0*/                   LD.E.64 R14, [R12];
        /*00b8*/                   ISCADD R20.CC, R6, c[0x0][0x168], 0x3;

        /*00c8*/                   IMAD.HI.X R21, R6, R0, c[0x0][0x16c];
        /*00d0*/                   ISCADD R4.CC, R6, c[0x0][0x150], 0x3;
        /*00d8*/                   IMAD.HI.X R5, R6, R0, c[0x0][0x154];
        /*00e0*/                   DFMA R8, R8, R10, R14;
        /*00e8*/                   ST.E.64 [R12], R8;
        /*00f0*/                   ISCADD R22.CC, R6, c[0x0][0x170], 0x3;
        /*00f8*/                   LD.E.64 R14, [R20];

        /*0108*/                   LD.E.64 R10, [R2];
        /*0110*/                   IMAD.HI.X R23, R6, R0, c[0x0][0x174];
        /*0118*/                   LD.E.64 R16, [R4];
        /*0120*/                   ISCADD R18.CC, R6, c[0x0][0x158], 0x3;
        /*0128*/                   IMAD.HI.X R19, R6, R0, c[0x0][0x15c];
        /*0130*/                   DFMA R10, R10, R14, R16;
        /*0138*/                   ST.E.64 [R4], R10;

        /*0148*/                   LD.E.64 R6, [R2];
        /*0150*/                   LD.E.64 R8, [R22];
        /*0158*/                   LD.E.64 R12, [R18];
        /*0160*/                   DFMA R6, R6, R8, R12;
        /*0168*/                   ST.E.64 [R18], R6;
        /*0170*/                   EXIT;
        /*0178*/                   BRA 0x178;
		................................



Fatbin ptx code:
================
arch = sm_35
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
