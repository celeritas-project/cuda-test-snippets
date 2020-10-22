
Fatbin elf code:
================
arch = sm_35
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_35
		Function : _Z5myexpPd
	.headerflags    @"EF_CUDA_SM35 EF_CUDA_PTX_SM(EF_CUDA_SM35)"

        /*0008*/                   MOV R1, c[0x0][0x44];
        /*0010*/                   S2R R0, SR_TID.X;
        /*0018*/                   MOV32I R3, 0x8;
        /*0020*/                   ISCADD R2.CC, R0, c[0x0][0x140], 0x3;
        /*0028*/                   MOV32I R6, 0x0;
        /*0030*/                   IMAD.U32.U32.HI.X R3, R0, R3, c[0x0][0x144];
        /*0038*/                   MOV32I R7, 0x43380000;

        /*0048*/                   LD.E.64 R4, [R2];
        /*0050*/                   SSY 0x190;
        /*0058*/                   DFMA R6, R4, c[0x2][0x0], R6;
        /*0060*/                   FSETP.GEU.FTZ.AND P0, PT, |R5|, c[0x2][0x6c], PT;
        /*0068*/                   DADD R8, R6, -6.75539944105574400000e+15;
        /*0070*/                   DFMA R10, R8, c[0x2][0x8], R4;
        /*0078*/                   DFMA R10, R8, c[0x2][0x10], R10;

        /*0088*/                   MOV32I R8, 0xfca213ea;
        /*0090*/                   MOV32I R9, 0x3e928af3;
        /*0098*/                   DFMA R8, R10, c[0x2][0x18], R8;
        /*00a0*/                   DFMA R8, R10, R8, c[0x2][0x20];
        /*00a8*/                   DFMA R8, R10, R8, c[0x2][0x28];
        /*00b0*/                   DFMA R8, R10, R8, c[0x2][0x30];
        /*00b8*/                   DFMA R8, R10, R8, c[0x2][0x38];

        /*00c8*/                   DFMA R8, R10, R8, c[0x2][0x40];
        /*00d0*/                   DFMA R8, R10, R8, c[0x2][0x48];
        /*00d8*/                   DFMA R8, R10, R8, c[0x2][0x50];
        /*00e0*/                   DFMA R8, R10, R8, c[0x2][0x58];
        /*00e8*/                   DFMA R8, R10, R8, c[0x2][0x60];
        /*00f0*/                   DFMA R8, R10, R8, c[0x2][0x60];
        /*00f8*/                   IMAD R13, R6, c[0x2][0x68], R9;

        /*0108*/                   MOV R12, R8;
        /*0110*/              @!P0 NOP.S;
        /*0118*/                   FSETP.GEU.FTZ.AND P0, PT, |R5|, c[0x2][0x70], PT;
        /*0120*/                   DSETP.GEU.AND P1, PT, R4, RZ, PT;
        /*0128*/                   DADD R4, R4, +INF ;
        /*0130*/              @!P0 IMAD.U32.U32.HI R0, R6, 0x2, R6;
        /*0138*/                   SEL R13, R5, RZ, P1;

        /*0148*/                   SEL R12, R4, RZ, P1;
        /*0150*/              @!P0 MOV R4, RZ;
        /*0158*/              @!P0 SHR R7, R0, 0x1;
        /*0160*/              @!P0 ISUB R6, R6, R7;
        /*0168*/              @!P0 IMAD R9, R7, c[0x2][0x68], R9;
        /*0170*/              @!P0 ISCADD32I R5, R6, 0x3ff00000, 0x14;
        /*0178*/              @!P0 DMUL R12, R8, R4;

        /*0188*/                   NOP.S;
        /*0190*/                   ST.E.64 [R2], R12;
        /*0198*/                   EXIT;
        /*01a0*/                   BRA 0x1a0;
        /*01a8*/                   NOP;
        /*01b0*/                   NOP;
        /*01b8*/                   NOP;
		.....................



Fatbin ptx code:
================
arch = sm_35
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
