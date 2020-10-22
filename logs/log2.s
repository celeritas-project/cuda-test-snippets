
Fatbin elf code:
================
arch = sm_35
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_35
		Function : _Z6mylog2Pd
	.headerflags    @"EF_CUDA_SM35 EF_CUDA_PTX_SM(EF_CUDA_SM35)"

        /*0008*/                   MOV R1, c[0x0][0x44];
        /*0010*/                   S2R R0, SR_TID.X;
        /*0018*/                   MOV32I R3, 0x8;
        /*0020*/                   ISCADD R2.CC, R0, c[0x0][0x140], 0x3;
        /*0028*/                   SSY 0x260;
        /*0030*/                   IMAD.U32.U32.HI.X R3, R0, R3, c[0x0][0x144];
        /*0038*/                   LD.E.64 R12, [R2];

        /*0048*/                   ISETP.GT.AND P0, PT, R13, c[0x2][0x0], PT;
        /*0050*/                   MOV R4, R12;
        /*0058*/                   MOV R5, R13;
        /*0060*/              @!P0 DMUL R4, R4, 1.80143985094819840000e+16;
        /*0068*/              @!P0 MOV R13, R5;
        /*0070*/              @!P0 MOV R12, R4;
        /*0078*/                   IADD32I R0, R13, -0x1;

        /*0088*/                   ISETP.GE.U32.AND P1, PT, R0, c[0x2][0x4], PT;
        /*0090*/                   MOV32I R0, 0xfffffc01;
        /*0098*/              @!P0 MOV32I R0, 0xfffffbcb;
        /*00a0*/               @P1 FSETP.NEU.FTZ.AND P2, PT, R5, RZ, PT;
        /*00a8*/               @P1 MOV32I R6, 0x0;
        /*00b0*/               @P1 MOV32I R7, 0x7ff00000;
        /*00b8*/               @P1 DFMA R6, R4, +INF , R6;

        /*00c8*/               @P1 SEL R14, R6, RZ, P2;
        /*00d0*/               @P1 SEL R15, R7, c[0x2][0x8], P2;
        /*00d8*/               @P1 NOP.S;
        /*00e0*/                   LOP32I.AND R4, R13, 0x800fffff;
        /*00e8*/                   IMAD.U32.U32.HI R13, R13, 0x1000, R0;
        /*00f0*/                   MOV R8, RZ;
        /*00f8*/                   MOV32I R14, 0x8b7a8b04;

        /*0108*/                   MOV32I R15, 0x3ed0ee25;
        /*0110*/                   LOP32I.OR R5, R4, 0x3ff00000;
        /*0118*/                   MOV R4, R12;
        /*0120*/                   ISETP.GE.AND P0, PT, R5, c[0x2][0xc], PT;
        /*0128*/               @P0 IADD32I R7, R5, -0x100000;
        /*0130*/               @P0 IADD32I R13, R13, 0x1;
        /*0138*/               @P0 MOV R5, R7;

        /*0148*/                   LOP32I.XOR R12, R13, 0x80000000;
        /*0150*/                   MOV32I R13, 0x43300000;
        /*0158*/                   DADD R6, R4, 1;
        /*0160*/                   DADD R4, R4, -1;
        /*0168*/                   DADD R12, R12, c[0x2][0x50];
        /*0170*/                   MUFU.RCP64H R9, R7;
        /*0178*/                   DFMA R6, -R6, R8, c[0x2][0x10];

        /*0188*/                   DFMA R6, R6, R6, R6;
        /*0190*/                   DFMA R6, R8, R6, R8;
        /*0198*/                   DMUL R8, R6, R4;
        /*01a0*/                   DADD R8, R8, R8;
        /*01a8*/                   DMUL R10, R8, R8;
        /*01b0*/                   DADD R16, R4, -R8;
        /*01b8*/                   DFMA R14, R10, c[0x2][0x18], R14;

        /*01c8*/                   DADD R18, R16, R16;
        /*01d0*/                   DFMA R14, R10, R14, c[0x2][0x20];
        /*01d8*/                   DFMA R18, -R4, R8, R18;
        /*01e0*/                   DFMA R14, R10, R14, c[0x2][0x28];
        /*01e8*/                   DMUL R18, R6, R18;
        /*01f0*/                   DFMA R14, R10, R14, c[0x2][0x30];
        /*01f8*/                   DFMA R14, R10, R14, c[0x2][0x38];

        /*0208*/                   DFMA R16, R10, R14, c[0x2][0x40];
        /*0210*/                   DFMA R14, R12, c[0x2][0x58], R8;
        /*0218*/                   DFMA R16, R10, R16, c[0x2][0x48];
        /*0220*/                   DFMA R20, -R12, c[0x2][0x58], R14;
        /*0228*/                   DMUL R4, R10, R16;
        /*0230*/                   DADD R6, -R8, R20;
        /*0238*/                   DFMA R4, R8, R4, R18;

        /*0248*/                   DADD R6, R4, -R6;
        /*0250*/                   DFMA R12, R12, c[0x2][0x60], R6;
        /*0258*/                   DADD.S R14, R14, R12;
        /*0260*/                   DMUL R4, R14, c[0x2][0x68];
        /*0268*/                   DFMA R4, R14, c[0x2][0x70], R4;
        /*0270*/                   ST.E.64 [R2], R4;
        /*0278*/                   EXIT;
        /*0280*/                   BRA 0x280;
        /*0288*/                   NOP;
        /*0290*/                   NOP;
        /*0298*/                   NOP;
        /*02a0*/                   NOP;
        /*02a8*/                   NOP;
        /*02b0*/                   NOP;
        /*02b8*/                   NOP;
		......................



Fatbin ptx code:
================
arch = sm_35
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
