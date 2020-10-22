
Fatbin elf code:
================
arch = sm_35
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_35
		Function : _Z6cu_powPd
	.headerflags    @"EF_CUDA_SM35 EF_CUDA_PTX_SM(EF_CUDA_SM35)"

        /*0008*/                   MOV R1, c[0x0][0x44];
        /*0010*/                   S2R R0, SR_TID.X;
        /*0018*/                   MOV32I R3, 0x8;
        /*0020*/                   ISCADD R2.CC, R0, c[0x0][0x140], 0x3;
        /*0028*/                   IMAD.U32.U32.HI.X R3, R0, R3, c[0x0][0x144];
        /*0030*/                   LD.E.64 R4, [R2];
        /*0038*/                   CAL 0x150;

        /*0048*/                   ISETP.GT.AND P1, PT, R5, -0x1, PT;
        /*0050*/                   PBK 0x120;
        /*0058*/                   DADD R8, R4, 3;
        /*0060*/                   DSETP.NEU.AND P0, PT, R4, RZ, PT;
        /*0068*/                   LOP32I.AND R10, R9, 0x7ff00000;
        /*0070*/              @!P1 LOP32I.XOR R0, R7, 0x80000000;
        /*0078*/              @!P0 MOV R6, RZ;

        /*0088*/              @!P1 MOV R7, R0;
        /*0090*/                   ISETP.NE.AND P1, PT, R10, c[0x2][0x0], PT;
        /*0098*/              @!P0 MOV R7, R5;
        /*00a0*/               @P1 BRA 0x100;
        /*00a8*/                   DSETP.GTU.AND P0, PT, |R4|, +INF , PT;
        /*00b0*/               @P0 BRK;
        /*00b8*/                   DSETP.NEU.AND P0, PT, |R4|, +INF , PT;

        /*00c8*/                   MOV R8, R6;
        /*00d0*/                   MOV R9, R7;
        /*00d8*/               @P0 BRK;
        /*00e0*/                   MOV32I R8, 0xfff00000;
        /*00e8*/                   ICMP.LT R9, R8, c[0x2][0x0], R5;
        /*00f0*/                   MOV R8, RZ;
        /*00f8*/                   BRK;

        /*0108*/                   MOV R8, R6;
        /*0110*/                   MOV R9, R7;
        /*0118*/                   BRK;
        /*0120*/                   DSETP.NEU.AND P0, PT, R4, 1, PT;
        /*0128*/                   SEL R4, R8, RZ, P0;
        /*0130*/                   SEL R5, R9, c[0x2][0x4], P0;
        /*0138*/                   ST.E.64 [R2], R4;

        /*0148*/                   EXIT;
        /*0150*/                   DADD R8, -RZ, |R4|;
        /*0158*/                   MOV R14, RZ;
        /*0160*/                   MOV32I R10, 0x41ad3b5a;
        /*0168*/                   MOV32I R11, 0x3ed0f5d2;
        /*0170*/                   SHR.U32 R0, R9, 0x14;
        /*0178*/                   ISETP.NE.AND P0, PT, R0, RZ, PT;

        /*0188*/              @!P0 DMUL R6, R8, 1.80143985094819840000e+16;
        /*0190*/              @!P0 MOV R9, R7;
        /*0198*/              @!P0 MOV R8, R6;
        /*01a0*/                   LOP32I.AND R9, R9, 0x800fffff;
        /*01a8*/              @!P0 MOV32I R6, 0xffffffca;
        /*01b0*/                   LOP32I.OR R13, R9, 0x3ff00000;
        /*01b8*/                   MOV R12, R8;

        /*01c8*/                   ISETP.GE.U32.AND P1, PT, R13, c[0x2][0x8], PT;
        /*01d0*/              @!P0 IMAD.U32.U32.HI R0, R7, 0x1000, R6;
        /*01d8*/               @P1 IADD32I R8, R13, -0x100000;
        /*01e0*/               @P1 MOV R13, R8;
        /*01e8*/                   DADD R8, R12, 1;
        /*01f0*/                   DADD R12, R12, -1;
        /*01f8*/                   MUFU.RCP64H R15, R9;

        /*0208*/                   DFMA R8, -R8, R14, c[0x2][0x10];
        /*0210*/                   DFMA R8, R8, R8, R8;
        /*0218*/                   DFMA R14, R14, R8, R14;
        /*0220*/                   DMUL R8, R14, R12;
        /*0228*/                   DADD R8, R8, R8;
        /*0230*/                   DMUL R16, R8, R8;
        /*0238*/                   DADD R20, R12, -R8;

        /*0248*/                   DFMA R10, R16, c[0x2][0x18], R10;
        /*0250*/                   DADD R22, R20, R20;
        /*0258*/                   DFMA R10, R16, R10, c[0x2][0x20];
        /*0260*/                   DFMA R20, -R12, R8, R22;
        /*0268*/                   DMUL R12, R8, R8;
        /*0270*/                   DFMA R10, R16, R10, c[0x2][0x28];
        /*0278*/                   DMUL R14, R14, R20;

        /*0288*/                   DFMA R22, R8, R8, -R12;
        /*0290*/                   DFMA R10, R16, R10, c[0x2][0x30];
        /*0298*/                   IADD32I R27, R15, 0x100000;
        /*02a0*/                   MOV R26, R14;
        /*02a8*/                   DFMA R10, R16, R10, c[0x2][0x38];
        /*02b0*/                   DFMA R22, R8, R26, R22;
        /*02b8*/                   DFMA R18, R16, R10, c[0x2][0x40];

        /*02c8*/                   DFMA R10, R16, R18, c[0x2][0x48];
        /*02d0*/                   DADD R28, -R10, c[0x2][0x48];
        /*02d8*/                   DFMA R28, R16, R18, R28;
        /*02e0*/                   DMUL R18, R8, R12;
        /*02e8*/                   DADD R20, RZ, R28;
        /*02f0*/                   DFMA R24, R8, R12, -R18;
        /*02f8*/                   DADD R20, R20, c[0x2][0x50];

        /*0308*/                   DFMA R28, R14, R12, R24;
        /*0310*/                   DADD R16, R10, R20;
        /*0318*/                   DFMA R22, R8, R22, R28;
        /*0320*/                   DMUL R12, R16, R18;
        /*0328*/                   DADD R10, R10, -R16;
        /*0330*/                   DFMA R26, R16, R18, -R12;
        /*0338*/                   DADD R20, R20, R10;

        /*0348*/                   DFMA R22, R16, R22, R26;
        /*0350*/                   IADD32I R16, R0, -0x3ff;
        /*0358*/                   DFMA R22, R20, R18, R22;
        /*0360*/               @P1 IADD32I R16, R0, -0x3fe;
        /*0368*/                   DADD R10, R12, R22;
        /*0370*/                   DADD R6, R8, R10;
        /*0378*/                   DADD R12, R12, -R10;

        /*0388*/                   DADD R8, R8, -R6;
        /*0390*/                   DADD R12, R22, R12;
        /*0398*/                   DADD R8, R10, R8;
        /*03a0*/                   LOP32I.XOR R10, R16, 0x80000000;
        /*03a8*/                   MOV32I R11, 0x43300000;
        /*03b0*/                   DADD R8, R12, R8;
        /*03b8*/                   DADD R12, R10, c[0x2][0x58];

        /*03c8*/                   DADD R8, R14, R8;
        /*03d0*/                   DADD R10, R6, R8;
        /*03d8*/                   DFMA R14, R12, c[0x2][0x60], R10;
        /*03e0*/                   DADD R6, R6, -R10;
        /*03e8*/                   DFMA R16, -R12, c[0x2][0x60], R14;
        /*03f0*/                   DADD R6, R8, R6;
        /*03f8*/                   DADD R16, -R10, R16;

        /*0408*/                   DADD R6, R6, -R16;
        /*0410*/                   DFMA R12, R12, c[0x2][0x68], R6;
        /*0418*/                   DADD R8, R14, R12;
        /*0420*/                   DADD R14, R14, -R8;
        /*0428*/                   DMUL R6, R8, 3;
        /*0430*/                   DADD R14, R12, R14;
        /*0438*/                   DFMA R8, R8, 3, -R6;

        /*0448*/                   MOV32I R12, 0x0;
        /*0450*/                   MOV32I R13, 0x43380000;
        /*0458*/                   DFMA R8, R14, 3, R8;
        /*0460*/                   DADD R10, R6, R8;
        /*0468*/                   DFMA R12, R10, c[0x2][0x70], R12;
        /*0470*/                   FSETP.GEU.FTZ.AND P0, PT, |R11|, c[0x2][0xd0], PT;
        /*0478*/                   DADD R6, R6, -R10;

        /*0488*/                   DADD R14, R12, -6.75539944105574400000e+15;
        /*0490*/                   DFMA R16, R14, c[0x2][0x78], R10;
        /*0498*/                   DFMA R14, R14, c[0x2][0x80], R16;
        /*04a0*/                   MOV32I R16, 0xfca213ea;
        /*04a8*/                   MOV32I R17, 0x3e928af3;
        /*04b0*/                   DFMA R16, R14, c[0x2][0x88], R16;
        /*04b8*/                   DFMA R16, R14, R16, c[0x2][0x90];

        /*04c8*/                   DFMA R16, R14, R16, c[0x2][0x98];
        /*04d0*/                   DFMA R16, R14, R16, c[0x2][0xa0];
        /*04d8*/                   DFMA R16, R14, R16, c[0x2][0xa8];
        /*04e0*/                   DFMA R16, R14, R16, c[0x2][0xb0];
        /*04e8*/                   DFMA R16, R14, R16, c[0x2][0xb8];
        /*04f0*/                   DFMA R16, R14, R16, c[0x2][0xc0];
        /*04f8*/                   DFMA R16, R14, R16, c[0x2][0xc8];

        /*0508*/                   DFMA R16, R14, R16, c[0x2][0x10];
        /*0510*/                   DFMA R16, R14, R16, c[0x2][0x10];
        /*0518*/                   IMAD R15, R12, c[0x2][0xc], R17;
        /*0520*/                   MOV R14, R16;
        /*0528*/              @!P0 BRA 0x5a8;
        /*0530*/                   FSETP.GEU.FTZ.AND P0, PT, |R11|, c[0x2][0xd4], PT;
        /*0538*/                   DSETP.GEU.AND P1, PT, R10, RZ, PT;

        /*0548*/                   DADD R10, R10, +INF ;
        /*0550*/              @!P0 IMAD.U32.U32.HI R0, R12, 0x2, R12;
        /*0558*/                   SEL R15, R11, RZ, P1;
        /*0560*/                   SEL R14, R10, RZ, P1;
        /*0568*/              @!P0 MOV R10, R16;
        /*0570*/              @!P0 SHR R13, R0, 0x1;
        /*0578*/              @!P0 ISUB R12, R12, R13;

        /*0588*/              @!P0 IMAD R11, R13, c[0x2][0xc], R17;
        /*0590*/              @!P0 ISCADD32I R13, R12, 0x3ff00000, 0x14;
        /*0598*/              @!P0 MOV R12, RZ;
        /*05a0*/              @!P0 DMUL R14, R10, R12;
        /*05a8*/                   DSETP.NEU.AND P0, PT, |R14|, +INF , PT;
        /*05b0*/                   DADD R8, R8, R6;
        /*05b8*/               @P0 DFMA R14, R8, R14, R14;

        /*05c8*/                   MOV R6, R14;
        /*05d0*/                   MOV R7, R15;
        /*05d8*/                   RET;
        /*05e0*/                   BRA 0x5e0;
        /*05e8*/                   NOP;
        /*05f0*/                   NOP;
        /*05f8*/                   NOP;
		......................



Fatbin ptx code:
================
arch = sm_35
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
