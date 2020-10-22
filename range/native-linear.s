
Fatbin elf code:
================
arch = sm_35
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_35
		Function : _Z4movejdPd
	.headerflags    @"EF_CUDA_SM35 EF_CUDA_PTX_SM(EF_CUDA_SM35)"

        /*0008*/                   MOV R1, c[0x0][0x44];
        /*0010*/                   ISETP.NE.AND P0, PT, RZ, c[0x0][0x140], PT;
        /*0018*/              @!P0 EXIT;
        /*0020*/                   MOV R12, c[0x0][0x140];
        /*0028*/                   S2R R0, SR_CTAID.X;
        /*0030*/                   MOV R11, RZ;
        /*0038*/                   S2R R3, SR_TID.X;

        /*0048*/                   LOP32I.AND R2, R12, 0x3;
        /*0050*/                   IMAD R0, R0, c[0x0][0x28], R3;
        /*0058*/                   ISETP.NE.AND P0, PT, R2, RZ, PT;
        /*0060*/              @!P0 BRA 0x160;
        /*0068*/                   ISETP.NE.AND P0, PT, R2, 0x1, PT;
        /*0070*/                   IMUL R10, R0, c[0x0][0x140];
        /*0078*/              @!P0 BRA 0x118;

        /*0088*/                   ISETP.NE.AND P0, PT, R2, 0x2, PT;
        /*0090*/                   MOV32I R8, 0x8;
        /*0098*/               @P0 ISCADD R2.CC, R10, c[0x0][0x150], 0x3;
        /*00a0*/               @P0 MOV32I R3, 0x8;
        /*00a8*/               @P0 IMAD.U32.U32.HI.X R3, R10, R3, c[0x0][0x154];
        /*00b0*/               @P0 MOV32I R11, 0x1;
        /*00b8*/               @P0 LD.E.64 R4, [R2];

        /*00c8*/                   IADD R7, R10, R11;
        /*00d0*/                   IADD32I R11, R11, 0x1;
        /*00d8*/                   ISCADD R6.CC, R7, c[0x0][0x150], 0x3;
        /*00e0*/                   IMAD.U32.U32.HI.X R7, R7, R8, c[0x0][0x154];
        /*00e8*/               @P0 DADD R4, R4, c[0x0][0x148];
        /*00f0*/               @P0 ST.E.64 [R2], R4;
        /*00f8*/                   LD.E.64 R8, [R6];

        /*0108*/                   DADD R8, R8, c[0x0][0x148];
        /*0110*/                   ST.E.64 [R6], R8;
        /*0118*/                   IADD R10, R10, R11;
        /*0120*/                   IADD32I R11, R11, 0x1;
        /*0128*/                   MOV32I R3, 0x8;
        /*0130*/                   ISCADD R4.CC, R10, c[0x0][0x150], 0x3;
        /*0138*/                   IMAD.U32.U32.HI.X R5, R10, R3, c[0x0][0x154];

        /*0148*/                   LD.E.64 R2, [R4];
        /*0150*/                   DADD R2, R2, c[0x0][0x148];
        /*0158*/                   ST.E.64 [R4], R2;
        /*0160*/                   ISETP.GE.U32.AND P0, PT, R12, 0x4, PT;
        /*0168*/              @!P0 EXIT;
        /*0170*/                   IMAD R16, R0, c[0x0][0x140], R11;
        /*0178*/                   ISUB R0, R11, c[0x0][0x140];

        /*0188*/                   ISCADD R2.CC, R16, c[0x0][0x150], 0x3;
        /*0190*/                   IADD32I R7, R16, 0x1;
        /*0198*/                   MOV32I R20, 0x8;
        /*01a0*/                   IADD32I R11, R16, 0x2;
        /*01a8*/                   IMAD.U32.U32.HI.X R3, R16, R20, c[0x0][0x154];
        /*01b0*/                   IADD32I R15, R16, 0x3;
        /*01b8*/                   LD.E.64 R4, [R2];

        /*01c8*/                   ISCADD R6.CC, R7, c[0x0][0x150], 0x3;
        /*01d0*/                   IADD32I R0, R0, 0x4;
        /*01d8*/                   IMAD.U32.U32.HI.X R7, R7, R20, c[0x0][0x154];
        /*01e0*/                   ISETP.NE.AND P0, PT, R0, RZ, PT;
        /*01e8*/                   DADD R4, R4, c[0x0][0x148];
        /*01f0*/                   ST.E.64 [R2], R4;
        /*01f8*/                   ISCADD R10.CC, R11, c[0x0][0x150], 0x3;

        /*0208*/                   LD.E.64 R8, [R6];
        /*0210*/                   IMAD.U32.U32.HI.X R11, R11, R20, c[0x0][0x154];
        /*0218*/                   DADD R8, R8, c[0x0][0x148];
        /*0220*/                   ST.E.64 [R6], R8;
        /*0228*/                   ISCADD R14.CC, R15, c[0x0][0x150], 0x3;
        /*0230*/                   LD.E.64 R12, [R10];
        /*0238*/                   IMAD.U32.U32.HI.X R15, R15, R20, c[0x0][0x154];

        /*0248*/                   DADD R12, R12, c[0x0][0x148];
        /*0250*/                   ST.E.64 [R10], R12;
        /*0258*/                   IADD32I R16, R16, 0x4;
        /*0260*/                   LD.E.64 R2, [R14];
        /*0268*/                   DADD R2, R2, c[0x0][0x148];
        /*0270*/                   ST.E.64 [R14], R2;
        /*0278*/               @P0 BRA 0x180;

        /*0288*/                   MOV RZ, RZ;
        /*0290*/                   EXIT;
        /*0298*/                   BRA 0x298;
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
