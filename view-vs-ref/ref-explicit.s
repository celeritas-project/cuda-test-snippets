
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
        /*0028*/                   IMAD R0, R0, c[0x0][0x34], R3;
        /*0030*/                   S2R R3, SR_TID.X;
        /*0038*/                   IMAD R0, R0, c[0x0][0x2c], R4;

        /*0048*/                   IMAD R0, R0, c[0x0][0x28], R3;
        /*0050*/                   ISETP.GE.AND P0, PT, R0, c[0x0][0x140], PT;
        /*0058*/               @P0 EXIT;
        /*0060*/                   ISCADD R20.CC, R0, c[0x0][0x160], 0x3;
        /*0068*/                   MOV32I R7, 0x8;
        /*0070*/                   IMAD.HI.X R21, R0, R7, c[0x0][0x164];
        /*0078*/                   ISCADD R16.CC, R0, c[0x0][0x168], 0x3;

        /*0088*/                   LD.E.64 R20, [R20];
        /*0090*/                   IMAD.HI.X R17, R0, R7, c[0x0][0x16c];
        /*0098*/                   ISCADD R4.CC, R0, c[0x0][0x148], 0x3;
        /*00a0*/                   LD.E.64 R14, [R16];
        /*00a8*/                   IMAD.HI.X R5, R0, R7, c[0x0][0x14c];
        /*00b0*/                   ISCADD R8.CC, R0, c[0x0][0x178], 0x3;
        /*00b8*/                   LD.E.64 R22, [R4];

        /*00c8*/                   IMAD.HI.X R9, R0, R7, c[0x0][0x17c];
        /*00d0*/                   ISCADD R2.CC, R0, c[0x0][0x150], 0x3;
        /*00d8*/                   LD.E.64 R8, [R8];
        /*00e0*/                   IMAD.HI.X R3, R0, R7, c[0x0][0x154];
        /*00e8*/                   ISCADD R18.CC, R0, c[0x0][0x170], 0x3;
        /*00f0*/                   LD.E.64 R10, [R2];
        /*00f8*/                   IMAD.HI.X R19, R0, R7, c[0x0][0x174];

        /*0108*/                   ISCADD R6.CC, R0, c[0x0][0x158], 0x3;
        /*0110*/                   LD.E.64 R18, [R18];
        /*0118*/                   IMAD.HI.X R7, R0, R7, c[0x0][0x15c];
        /*0120*/                   LD.E.64 R12, [R6];
        /*0128*/                   DFMA R22, R20, R8, R22;
        /*0130*/                   ST.E.64 [R4], R22;
        /*0138*/                   DFMA R14, R14, R8, R10;

        /*0148*/                   ST.E.64 [R2], R14;
        /*0150*/                   DFMA R12, R18, R8, R12;
        /*0158*/                   ST.E.64 [R6], R12;
        /*0160*/                   EXIT;
        /*0168*/                   BRA 0x168;
        /*0170*/                   NOP;
        /*0178*/                   NOP;
		................................



Fatbin ptx code:
================
arch = sm_35
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
