
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
        /*0030*/                   IADD32I RZ.CC, RZ, 0x55555600;
        /*0038*/                   LD.E.64 R4, [R2];

        /*0048*/                   MOV32I R0, 0x80000000;
        /*0050*/                   ISETP.NE.X.AND P1, PT, R0, c[0x2][0x0], PT;
        /*0058*/                   ISETP.NE.X.AND P0, PT, R0, c[0x2][0x0], PT;
        /*0060*/                   CAL 0x1e0;
        /*0068*/                   ISETP.GT.OR P1, PT, R5, -0x1, P1;
        /*0070*/                   PBK 0x110;
        /*0078*/                   DSETP.NEU.AND P2, PT, R4, RZ, PT;

        /*0088*/                   ISETP.LT.AND P0, PT, R5, RZ, !P0;
        /*0090*/              @!P1 LOP32I.XOR R0, R7, 0x80000000;
        /*0098*/              @!P1 MOV R7, R0;
        /*00a0*/              @!P2 BRA 0xd8;
        /*00a8*/                   ISETP.GT.AND P1, PT, R5, -0x1, PT;
        /*00b0*/               @P1 BRK;
        /*00b8*/                   MOV32I R6, 0x0;

        /*00c8*/                   MOV32I R7, 0xfff80000;
        /*00d0*/                   BRK;
        /*00d8*/                   IADD32I RZ.CC, -RZ, -0x55555600;
        /*00e0*/                   MOV32I R7, 0x80000000;
        /*00e8*/                   MOV R6, RZ;
        /*00f0*/                   ISET.EQ.X.AND R7, R7, c[0x2][0x0], PT;
        /*00f8*/                   LOP.AND R7, R5, R7;

        /*0108*/                   BRK;
        /*0110*/                   DADD R8, R4, c[0x2][0x8];
        /*0118*/                   PBK 0x1b0;
        /*0120*/                   LOP32I.AND R0, R9, 0x7ff00000;
        /*0128*/                   ISETP.NE.AND P1, PT, R0, c[0x2][0x4], PT;
        /*0130*/               @P1 BRA 0x198;
        /*0138*/                   DSETP.GTU.AND P1, PT, |R4|, +INF , PT;

        /*0148*/               @P1 BRK;
        /*0150*/                   DSETP.NEU.AND P1, PT, |R4|, +INF , PT;
        /*0158*/                   MOV R8, R6;
        /*0160*/                   MOV R9, R7;
        /*0168*/               @P1 BRK;
        /*0170*/                   MOV32I R8, 0xfff00000;
        /*0178*/                   SEL R9, R8, c[0x2][0x4], P0;

        /*0188*/                   MOV R8, RZ;
        /*0190*/                   BRK;
        /*0198*/                   MOV R8, R6;
        /*01a0*/                   MOV R9, R7;
        /*01a8*/                   BRK;
        /*01b0*/                   DSETP.NEU.AND P0, PT, R4, 1, PT;
        /*01b8*/                   SEL R4, R8, RZ, P0;

        /*01c8*/                   SEL R5, R9, c[0x2][0x10], P0;
        /*01d0*/                   ST.E.64 [R2], R4;
        /*01d8*/                   EXIT;
        /*01e0*/                   DADD R8, -RZ, |R4|;
        /*01e8*/                   MOV R14, RZ;
        /*01f0*/                   MOV32I R10, 0x41ad3b5a;
        /*01f8*/                   MOV32I R11, 0x3ed0f5d2;

        /*0208*/                   SHR.U32 R0, R9, 0x14;
        /*0210*/                   ISETP.NE.AND P2, PT, R0, RZ, PT;
        /*0218*/              @!P2 DMUL R6, R8, 1.80143985094819840000e+16;
        /*0220*/              @!P2 MOV R9, R7;
        /*0228*/              @!P2 MOV R8, R6;
        /*0230*/                   LOP32I.AND R9, R9, 0x800fffff;
        /*0238*/              @!P2 MOV32I R6, 0xffffffca;

        /*0248*/                   LOP32I.OR R13, R9, 0x3ff00000;
        /*0250*/                   MOV R12, R8;
        /*0258*/              @!P2 IMAD.U32.U32.HI R0, R7, 0x1000, R6;
        /*0260*/                   ISETP.GE.U32.AND P3, PT, R13, c[0x2][0x14], PT;
        /*0268*/               @P3 IADD32I R8, R13, -0x100000;
        /*0270*/               @P3 MOV R13, R8;
        /*0278*/                   DADD R8, R12, 1;

        /*0288*/                   DADD R12, R12, -1;
        /*0290*/                   MUFU.RCP64H R15, R9;
        /*0298*/                   DFMA R8, -R8, R14, c[0x2][0x18];
        /*02a0*/                   DFMA R8, R8, R8, R8;
        /*02a8*/                   DFMA R14, R14, R8, R14;
        /*02b0*/                   DMUL R8, R14, R12;
        /*02b8*/                   DADD R8, R8, R8;

        /*02c8*/                   DMUL R16, R8, R8;
        /*02d0*/                   DADD R20, R12, -R8;
        /*02d8*/                   DFMA R10, R16, c[0x2][0x20], R10;
        /*02e0*/                   DADD R22, R20, R20;
        /*02e8*/                   DFMA R10, R16, R10, c[0x2][0x28];
        /*02f0*/                   DFMA R20, -R12, R8, R22;
        /*02f8*/                   DMUL R12, R8, R8;

        /*0308*/                   DFMA R10, R16, R10, c[0x2][0x30];
        /*0310*/                   DMUL R14, R14, R20;
        /*0318*/                   DFMA R22, R8, R8, -R12;
        /*0320*/                   DFMA R10, R16, R10, c[0x2][0x38];
        /*0328*/                   IADD32I R27, R15, 0x100000;
        /*0330*/                   MOV R26, R14;
        /*0338*/                   DFMA R10, R16, R10, c[0x2][0x40];

        /*0348*/                   DFMA R22, R8, R26, R22;
        /*0350*/                   DFMA R18, R16, R10, c[0x2][0x48];
        /*0358*/                   DFMA R10, R16, R18, c[0x2][0x50];
        /*0360*/                   DADD R28, -R10, c[0x2][0x50];
        /*0368*/                   DFMA R28, R16, R18, R28;
        /*0370*/                   DMUL R18, R8, R12;
        /*0378*/                   DADD R20, RZ, R28;

        /*0388*/                   DFMA R24, R8, R12, -R18;
        /*0390*/                   DADD R20, R20, c[0x2][0x58];
        /*0398*/                   DFMA R28, R14, R12, R24;
        /*03a0*/                   DADD R16, R10, R20;
        /*03a8*/                   DFMA R22, R8, R22, R28;
        /*03b0*/                   DMUL R12, R16, R18;
        /*03b8*/                   DADD R10, R10, -R16;

        /*03c8*/                   DFMA R26, R16, R18, -R12;
        /*03d0*/                   DADD R20, R20, R10;
        /*03d8*/                   DFMA R22, R16, R22, R26;
        /*03e0*/                   IADD32I R16, R0, -0x3ff;
        /*03e8*/                   DFMA R22, R20, R18, R22;
        /*03f0*/               @P3 IADD32I R16, R0, -0x3fe;
        /*03f8*/                   DADD R10, R12, R22;

        /*0408*/                   DADD R6, R8, R10;
        /*0410*/                   DADD R12, R12, -R10;
        /*0418*/                   DADD R8, R8, -R6;
        /*0420*/                   DADD R12, R22, R12;
        /*0428*/                   DADD R8, R10, R8;
        /*0430*/                   LOP32I.XOR R10, R16, 0x80000000;
        /*0438*/                   MOV32I R11, 0x43300000;

        /*0448*/                   DADD R8, R12, R8;
        /*0450*/                   DADD R12, R10, c[0x2][0x60];
        /*0458*/                   DADD R8, R14, R8;
        /*0460*/                   DADD R10, R6, R8;
        /*0468*/                   DFMA R14, R12, c[0x2][0x68], R10;
        /*0470*/                   DADD R6, R6, -R10;
        /*0478*/                   DFMA R16, -R12, c[0x2][0x68], R14;

        /*0488*/                   DADD R6, R8, R6;
        /*0490*/                   DADD R16, -R10, R16;
        /*0498*/                   DADD R6, R6, -R16;
        /*04a0*/                   DFMA R12, R12, c[0x2][0x70], R6;
        /*04a8*/                   DADD R8, R14, R12;
        /*04b0*/                   DADD R14, R14, -R8;
        /*04b8*/                   DMUL R6, R8, c[0x2][0x8];

        /*04c8*/                   DADD R14, R12, R14;
        /*04d0*/                   DFMA R8, R8, c[0x2][0x8], -R6;
        /*04d8*/                   MOV32I R12, 0x0;
        /*04e0*/                   MOV32I R13, 0x43380000;
        /*04e8*/                   DFMA R8, R14, c[0x2][0x8], R8;
        /*04f0*/                   DADD R10, R6, R8;
        /*04f8*/                   DFMA R12, R10, c[0x2][0x78], R12;

        /*0508*/                   FSETP.GEU.FTZ.AND P2, PT, |R11|, c[0x2][0xdc], PT;
        /*0510*/                   DADD R6, R6, -R10;
        /*0518*/                   DADD R14, R12, -6.75539944105574400000e+15;
        /*0520*/                   DFMA R16, R14, c[0x2][0x80], R10;
        /*0528*/                   DFMA R14, R14, c[0x2][0x88], R16;
        /*0530*/                   MOV32I R16, 0xfca213ea;
        /*0538*/                   MOV32I R17, 0x3e928af3;

        /*0548*/                   DFMA R16, R14, c[0x2][0x90], R16;
        /*0550*/                   DFMA R16, R14, R16, c[0x2][0x98];
        /*0558*/                   DFMA R16, R14, R16, c[0x2][0xa0];
        /*0560*/                   DFMA R16, R14, R16, c[0x2][0xa8];
        /*0568*/                   DFMA R16, R14, R16, c[0x2][0xb0];
        /*0570*/                   DFMA R16, R14, R16, c[0x2][0xb8];
        /*0578*/                   DFMA R16, R14, R16, c[0x2][0xc0];

        /*0588*/                   DFMA R16, R14, R16, c[0x2][0xc8];
        /*0590*/                   DFMA R16, R14, R16, c[0x2][0xd0];
        /*0598*/                   DFMA R16, R14, R16, c[0x2][0x18];
        /*05a0*/                   DFMA R16, R14, R16, c[0x2][0x18];
        /*05a8*/                   IMAD R15, R12, c[0x2][0xd8], R17;
        /*05b0*/                   MOV R14, R16;
        /*05b8*/              @!P2 BRA 0x638;

        /*05c8*/                   FSETP.GEU.FTZ.AND P2, PT, |R11|, c[0x2][0xe0], PT;
        /*05d0*/                   DSETP.GEU.AND P3, PT, R10, RZ, PT;
        /*05d8*/                   DADD R10, R10, +INF ;
        /*05e0*/              @!P2 IMAD.U32.U32.HI R0, R12, 0x2, R12;
        /*05e8*/                   SEL R15, R11, RZ, P3;
        /*05f0*/                   SEL R14, R10, RZ, P3;
        /*05f8*/              @!P2 MOV R10, R16;

        /*0608*/              @!P2 SHR R13, R0, 0x1;
        /*0610*/              @!P2 ISUB R12, R12, R13;
        /*0618*/              @!P2 IMAD R11, R13, c[0x2][0xd8], R17;
        /*0620*/              @!P2 ISCADD32I R13, R12, 0x3ff00000, 0x14;
        /*0628*/              @!P2 MOV R12, RZ;
        /*0630*/              @!P2 DMUL R14, R10, R12;
        /*0638*/                   DSETP.NEU.AND P2, PT, |R14|, +INF , PT;

        /*0648*/                   DADD R8, R8, R6;
        /*0650*/               @P2 DFMA R14, R8, R14, R14;
        /*0658*/                   MOV R6, R14;
        /*0660*/                   MOV R7, R15;
        /*0668*/                   RET;
        /*0670*/                   BRA 0x670;
        /*0678*/                   NOP;
		......................



Fatbin ptx code:
================
arch = sm_35
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
