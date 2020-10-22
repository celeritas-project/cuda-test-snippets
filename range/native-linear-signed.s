
Fatbin elf code:
================
arch = sm_35
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_35
		Function : _Z4moveidPd
	.headerflags    @"EF_CUDA_SM35 EF_CUDA_PTX_SM(EF_CUDA_SM35)"

        /*0008*/                   MOV R1, c[0x0][0x44];
        /*0010*/                   MOV R10, c[0x0][0x140];
        /*0018*/                   S2R R11, SR_CTAID.X;
        /*0020*/                   ISETP.GE.AND P0, PT, R10, 0x1, PT;
        /*0028*/              @!P0 EXIT;
        /*0030*/                   LOP32I.AND R2, R10, 0x3;
        /*0038*/                   S2R R0, SR_TID.X;

        /*0048*/                   ISETP.NE.AND P0, PT, R2, RZ, PT;
        /*0050*/                   IMAD R11, R11, c[0x0][0x28], R0;
        /*0058*/                   MOV R0, RZ;
        /*0060*/              @!P0 BRA 0x160;
        /*0068*/                   ISETP.NE.AND P0, PT, R2, 0x1, PT;
        /*0070*/                   IMUL R12, R11, c[0x0][0x140];
        /*0078*/              @!P0 BRA 0x118;

        /*0088*/                   ISETP.NE.AND P0, PT, R2, 0x2, PT;
        /*0090*/                   MOV32I R8, 0x8;
        /*0098*/               @P0 ISCADD R2.CC, R12, c[0x0][0x150], 0x3;
        /*00a0*/               @P0 MOV32I R3, 0x8;
        /*00a8*/               @P0 IMAD.U32.U32.HI.X R3, R12, R3, c[0x0][0x154];
        /*00b0*/               @P0 MOV32I R0, 0x1;
        /*00b8*/               @P0 LD.E.64 R4, [R2];

        /*00c8*/                   IADD R7, R12, R0;
        /*00d0*/                   IADD32I R0, R0, 0x1;
        /*00d8*/                   ISCADD R6.CC, R7, c[0x0][0x150], 0x3;
        /*00e0*/                   IMAD.U32.U32.HI.X R7, R7, R8, c[0x0][0x154];
        /*00e8*/               @P0 DADD R4, R4, c[0x0][0x148];
        /*00f0*/               @P0 ST.E.64 [R2], R4;
        /*00f8*/                   LD.E.64 R8, [R6];

        /*0108*/                   DADD R8, R8, c[0x0][0x148];
        /*0110*/                   ST.E.64 [R6], R8;
        /*0118*/                   IADD R12, R12, R0;
        /*0120*/                   IADD32I R0, R0, 0x1;
        /*0128*/                   MOV32I R2, 0x8;
        /*0130*/                   ISCADD R4.CC, R12, c[0x0][0x150], 0x3;
        /*0138*/                   IMAD.U32.U32.HI.X R5, R12, R2, c[0x0][0x154];

        /*0148*/                   LD.E.64 R2, [R4];
        /*0150*/                   DADD R2, R2, c[0x0][0x148];
        /*0158*/                   ST.E.64 [R4], R2;
        /*0160*/                   ISETP.GE.U32.AND P0, PT, R10, 0x4, PT;
        /*0168*/              @!P0 EXIT;
        /*0170*/                   IMAD R16, R11, c[0x0][0x140], R0;
        /*0178*/                   ISCADD R2.CC, R16, c[0x0][0x150], 0x3;

        /*0188*/                   MOV32I R20, 0x8;
        /*0190*/                   IADD32I R7, R16, 0x1;
        /*0198*/                   IMAD.U32.U32.HI.X R3, R16, R20, c[0x0][0x154];
        /*01a0*/                   IADD32I R11, R16, 0x2;
        /*01a8*/                   LD.E.64 R4, [R2];
        /*01b0*/                   ISCADD R6.CC, R7, c[0x0][0x150], 0x3;
        /*01b8*/                   IMAD.U32.U32.HI.X R7, R7, R20, c[0x0][0x154];

        /*01c8*/                   DADD R4, R4, c[0x0][0x148];
        /*01d0*/                   ST.E.64 [R2], R4;
        /*01d8*/                   ISCADD R10.CC, R11, c[0x0][0x150], 0x3;
        /*01e0*/                   LD.E.64 R8, [R6];
        /*01e8*/                   IMAD.U32.U32.HI.X R11, R11, R20, c[0x0][0x154];
        /*01f0*/                   IADD32I R15, R16, 0x3;
        /*01f8*/                   IADD32I R16, R16, 0x4;

        /*0208*/                   DADD R8, R8, c[0x0][0x148];
        /*0210*/                   ST.E.64 [R6], R8;
        /*0218*/                   ISCADD R14.CC, R15, c[0x0][0x150], 0x3;
        /*0220*/                   LD.E.64 R12, [R10];
        /*0228*/                   IMAD.U32.U32.HI.X R15, R15, R20, c[0x0][0x154];
        /*0230*/                   DADD R12, R12, c[0x0][0x148];
        /*0238*/                   ST.E.64 [R10], R12;

        /*0248*/                   LD.E.64 R2, [R14];
        /*0250*/                   IADD32I R0, R0, 0x4;
        /*0258*/                   ISETP.GE.AND P0, PT, R0, c[0x0][0x140], PT;
        /*0260*/                   DADD R2, R2, c[0x0][0x148];
        /*0268*/                   ST.E.64 [R14], R2;
        /*0270*/              @!P0 BRA 0x178;
        /*0278*/                   MOV RZ, RZ;

        /*0288*/                   EXIT;
        /*0290*/                   BRA 0x290;
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
