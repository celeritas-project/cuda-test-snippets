
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
        /*0060*/                   ISCADD R14.CC, R0, c[0x0][0x160], 0x3;
        /*0068*/                   MOV32I R17, 0x8;
        /*0070*/                   IMAD.HI.X R15, R0, R17, c[0x0][0x164];
        /*0078*/                   ISCADD R2.CC, R0, c[0x0][0x178], 0x3;

        /*0088*/                   LD.E.64 R4, [R14];
        /*0090*/                   IMAD.HI.X R3, R0, R17, c[0x0][0x17c];
        /*0098*/                   ISCADD R6.CC, R0, c[0x0][0x148], 0x3;
        /*00a0*/                   LD.E.64 R2, [R2];
        /*00a8*/                   IMAD.HI.X R7, R0, R17, c[0x0][0x14c];
        /*00b0*/                   LD.E.64 R8, [R6];
        /*00b8*/                   ISCADD R18.CC, R0, c[0x0][0x168], 0x3;

        /*00c8*/                   IMAD.HI.X R19, R0, R17, c[0x0][0x16c];
        /*00d0*/                   ISCADD R10.CC, R0, c[0x0][0x150], 0x3;
        /*00d8*/                   IMAD.HI.X R11, R0, R17, c[0x0][0x154];
        /*00e0*/                   DFMA R4, R4, R2, R8;
        /*00e8*/                   ST.E.64 [R6], R4;
        /*00f0*/                   ISCADD R20.CC, R0, c[0x0][0x170], 0x3;
        /*00f8*/                   LD.E.64 R8, [R18];

        /*0108*/                   LD.E.64 R12, [R10];
        /*0110*/                   IMAD.HI.X R21, R0, R17, c[0x0][0x174];
        /*0118*/                   ISCADD R14.CC, R0, c[0x0][0x158], 0x3;
        /*0120*/                   IMAD.HI.X R15, R0, R17, c[0x0][0x15c];
        /*0128*/                   DFMA R8, R2, R8, R12;
        /*0130*/                   ST.E.64 [R10], R8;
        /*0138*/                   LD.E.64 R12, [R20];

        /*0148*/                   LD.E.64 R16, [R14];
        /*0150*/                   DFMA R12, R2, R12, R16;
        /*0158*/                   ST.E.64 [R14], R12;
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
