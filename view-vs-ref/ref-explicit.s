
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
        /*0038*/                   ISCADD R20.CC, R0, c[0x0][0x160], 0x3;

        /*0048*/                   MOV32I R7, 0x8;
        /*0050*/                   IMAD.HI.X R21, R0, R7, c[0x0][0x164];
        /*0058*/                   ISCADD R16.CC, R0, c[0x0][0x168], 0x3;
        /*0060*/                   LD.E.64 R20, [R20];
        /*0068*/                   IMAD.HI.X R17, R0, R7, c[0x0][0x16c];
        /*0070*/                   ISCADD R4.CC, R0, c[0x0][0x148], 0x3;
        /*0078*/                   LD.E.64 R14, [R16];

        /*0088*/                   IMAD.HI.X R5, R0, R7, c[0x0][0x14c];
        /*0090*/                   ISCADD R8.CC, R0, c[0x0][0x178], 0x3;
        /*0098*/                   LD.E.64 R22, [R4];
        /*00a0*/                   IMAD.HI.X R9, R0, R7, c[0x0][0x17c];
        /*00a8*/                   ISCADD R2.CC, R0, c[0x0][0x150], 0x3;
        /*00b0*/                   LD.E.64 R8, [R8];
        /*00b8*/                   IMAD.HI.X R3, R0, R7, c[0x0][0x154];

        /*00c8*/                   ISCADD R18.CC, R0, c[0x0][0x170], 0x3;
        /*00d0*/                   LD.E.64 R10, [R2];
        /*00d8*/                   IMAD.HI.X R19, R0, R7, c[0x0][0x174];
        /*00e0*/                   ISCADD R6.CC, R0, c[0x0][0x158], 0x3;
        /*00e8*/                   LD.E.64 R18, [R18];
        /*00f0*/                   IMAD.HI.X R7, R0, R7, c[0x0][0x15c];
        /*00f8*/                   LD.E.64 R12, [R6];

        /*0108*/                   DFMA R22, R20, R8, R22;
        /*0110*/                   ST.E.64 [R4], R22;
        /*0118*/                   DFMA R14, R14, R8, R10;
        /*0120*/                   ST.E.64 [R2], R14;
        /*0128*/                   DFMA R12, R18, R8, R12;
        /*0130*/                   ST.E.64 [R6], R12;
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
