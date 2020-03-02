
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
        /*0010*/                   S2R R0, SR_CTAID.X;
        /*0018*/                   S2R R3, SR_TID.X;
        /*0020*/                   IMAD R0, R0, c[0x0][0x28], R3;
        /*0028*/                   ISETP.GE.AND P0, PT, R0, c[0x0][0x140], PT;
        /*0030*/               @P0 EXIT;
        /*0038*/                   ISCADD R14.CC, R0, c[0x0][0x160], 0x3;

        /*0048*/                   MOV32I R17, 0x8;
        /*0050*/                   IMAD.HI.X R15, R0, R17, c[0x0][0x164];
        /*0058*/                   ISCADD R2.CC, R0, c[0x0][0x178], 0x3;
        /*0060*/                   LD.E.64 R4, [R14];
        /*0068*/                   IMAD.HI.X R3, R0, R17, c[0x0][0x17c];
        /*0070*/                   ISCADD R6.CC, R0, c[0x0][0x148], 0x3;
        /*0078*/                   LD.E.64 R2, [R2];

        /*0088*/                   IMAD.HI.X R7, R0, R17, c[0x0][0x14c];
        /*0090*/                   LD.E.64 R8, [R6];
        /*0098*/                   ISCADD R18.CC, R0, c[0x0][0x168], 0x3;
        /*00a0*/                   IMAD.HI.X R19, R0, R17, c[0x0][0x16c];
        /*00a8*/                   ISCADD R10.CC, R0, c[0x0][0x150], 0x3;
        /*00b0*/                   IMAD.HI.X R11, R0, R17, c[0x0][0x154];
        /*00b8*/                   DFMA R4, R4, R2, R8;

        /*00c8*/                   ST.E.64 [R6], R4;
        /*00d0*/                   ISCADD R20.CC, R0, c[0x0][0x170], 0x3;
        /*00d8*/                   LD.E.64 R8, [R18];
        /*00e0*/                   IMAD.HI.X R21, R0, R17, c[0x0][0x174];
        /*00e8*/                   LD.E.64 R12, [R10];
        /*00f0*/                   ISCADD R14.CC, R0, c[0x0][0x158], 0x3;
        /*00f8*/                   IMAD.HI.X R15, R0, R17, c[0x0][0x15c];

        /*0108*/                   DFMA R8, R2, R8, R12;
        /*0110*/                   ST.E.64 [R10], R8;
        /*0118*/                   LD.E.64 R12, [R20];
        /*0120*/                   LD.E.64 R16, [R14];
        /*0128*/                   DFMA R12, R2, R12, R16;
        /*0130*/                   ST.E.64 [R14], R12;
        /*0138*/                   EXIT;
        /*0140*/                   BRA 0x140;
        /*0148*/                   NOP;
        /*0150*/                   NOP;
        /*0158*/                   NOP;
        /*0160*/                   NOP;
        /*0168*/                   NOP;
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
