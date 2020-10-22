
Fatbin elf code:
================
arch = sm_35
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_35
		Function : _Z7cu_cbrtPd
	.headerflags    @"EF_CUDA_SM35 EF_CUDA_PTX_SM(EF_CUDA_SM35)"

        /*0008*/                   MOV R1, c[0x0][0x44];
        /*0010*/                   S2R R0, SR_TID.X;
        /*0018*/                   MOV32I R3, 0x8;
        /*0020*/                   ISCADD R2.CC, R0, c[0x0][0x140], 0x3;
        /*0028*/                   SSY 0x1e0;
        /*0030*/                   IMAD.U32.U32.HI.X R3, R0, R3, c[0x0][0x144];
        /*0038*/                   LD.E.64 R4, [R2];

        /*0048*/                   LOP32I.AND R0, R5, 0x7fffffff;
        /*0050*/                   ISETP.GE.U32.AND P0, PT, R0, c[0x2][0x0], PT;
        /*0058*/                   DSETP.NEU.AND P0, PT, R4, RZ, !P0;
        /*0060*/              @!P0 DADD R6, R4, R4;
        /*0068*/              @!P0 NOP.S;
        /*0070*/                   MOV R7, R0;
        /*0078*/                   MOV R6, R4;

        /*0088*/                   MOV R14, RZ;
        /*0090*/                   SHR.U32 R0, R7, 0x14;
        /*0098*/                   ISETP.NE.AND P0, PT, R0, RZ, PT;
        /*00a0*/              @!P0 DMUL R8, R6, 1.80143985094819840000e+16;
        /*00a8*/              @!P0 SHR.U32 R0, R9, 0x14;
        /*00b0*/              @!P0 MOV R7, R9;
        /*00b8*/              @!P0 MOV R6, R8;

        /*00c8*/                   IADD32I R0, R0, -0x3fe;
        /*00d0*/                   I2F.F32.S32 R0, R0;
        /*00d8*/                   FMUL32I.FTZ R0, R0, 0.3333333432674407959;
        /*00e0*/                   F2I.FTZ.S32.F32 R0, R0;
        /*00e8*/                   IMAD R7, R0, c[0x2][0x4], R7;
        /*00f0*/                   DSETP.GEU.AND P1, PT, |R6|, c[0x2][0x8], PT;
        /*00f8*/                   F2F.F32.F64 R4, R6;

        /*0108*/              @!P1 FMUL R4, R4, 1.175494350822287508e-38;
        /*0110*/                   MUFU.LG2 R4, R4;
        /*0118*/                   FMUL32I.FTZ R4, R4, 0.3333333432674407959;
        /*0120*/                   RRO.EX2 R4, R4;
        /*0128*/                   MUFU.EX2 R4, R4;
        /*0130*/                   FMUL.FTZ R4, R4, 1;
        /*0138*/                   F2F.F64.F32 R8, R4;

        /*0148*/                   MOV R4, RZ;
        /*0150*/                   DMUL R10, R8, R8;
        /*0158*/              @!P0 MOV32I R4, 0x12;
        /*0160*/                   IADD32I R13, R11, 0x100000;
        /*0168*/                   ISUB R0, R0, R4;
        /*0170*/                   MOV R12, R10;
        /*0178*/                   LOP32I.AND R4, R5, 0x80000000;

        /*0188*/                   DFMA R12, R8, R12, R6;
        /*0190*/                   DFMA R6, -R8, R10, R6;
        /*0198*/                   MUFU.RCP64H R15, R13;
        /*01a0*/                   DFMA R12, -R12, R14, c[0x2][0x10];
        /*01a8*/                   DFMA R12, R12, R12, R12;
        /*01b0*/                   DFMA R12, R14, R12, R14;
        /*01b8*/                   DMUL R6, R12, R6;

        /*01c8*/                   DFMA R6, R8, R6, R8;
        /*01d0*/                   IMAD R0, R0, c[0x2][0x18], R7;
        /*01d8*/                   LOP.OR.S R7, R0, R4;
        /*01e0*/                   ST.E.64 [R2], R6;
        /*01e8*/                   EXIT;
        /*01f0*/                   BRA 0x1f0;
        /*01f8*/                   NOP;
		.......................



Fatbin ptx code:
================
arch = sm_35
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
