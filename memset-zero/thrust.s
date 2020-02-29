
Fatbin elf code:
================
arch = sm_35
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_35
		Function : _ZN6thrust8cuda_cub4core13_kernel_agentINS0_14__parallel_for16ParallelForAgentINS0_11__transform17unary_transform_fIPKiNS_10device_ptrIiEENS5_14no_stencil_tagENS_8identityIiEENS5_21always_true_predicateEEElEESF_lEEvT0_T1_
	.headerflags    @"EF_CUDA_SM35 EF_CUDA_PTX_SM(EF_CUDA_SM35)"

        /*0008*/                   MOV R1, c[0x0][0x44];
        /*0010*/                   S2R R0, SR_CTAID.X;
        /*0018*/                   S2R R6, SR_TID.X;
        /*0020*/                   SHL R2, R0, 0x9;
        /*0028*/                   IMUL32I.U32.U32.HI R3, R0, 0x200;
        /*0030*/                   ISUB R7.CC, c[0x0][0x158], R2;
        /*0038*/                   ISUB.X R8, c[0x0][0x15c], R3;

        /*0048*/                   IADD R0.CC, R6, R2;
        /*0050*/                   IADD.X R3, RZ, R3;
        /*0058*/                   IMNMX.XHI R8.CC, R8, RZ, PT;
        /*0060*/                   SHL R4, R0, 0x2;
        /*0068*/                   SHF.L.U64 R0, R0, 0x2, R3;
        /*0070*/                   IMNMX.U32.XLO R7, R7, 0x200, PT;
        /*0078*/                   IADD R2.CC, R4, c[0x0][0x140];

        /*0088*/                   IADD.X R3, R0, c[0x0][0x144];
        /*0090*/                   IADD R4.CC, R4, c[0x0][0x148];
        /*0098*/                   IADD.X R5, R0, c[0x0][0x14c];
        /*00a0*/                   IADD32I RZ.CC, R7, -0x200;
        /*00a8*/                   ISETP.NE.X.AND P0, PT, R8, RZ, PT;
        /*00b0*/              @!P0 BRA 0x140;
        /*00b8*/                   ISUB RZ.CC, R6, R7;

        /*00c8*/                   SHR R8, R7, 0x1f;
        /*00d0*/                   IADD32I R0, R6, 0x100;
        /*00d8*/                   SSY 0x118;
        /*00e0*/                   ISETP.GE.X.AND P0, PT, RZ, R8, PT;
        /*00e8*/                   ISUB RZ.CC, R0, R7;
        /*00f0*/                   ISETP.GE.X.AND P1, PT, RZ, R8, PT;
        /*00f8*/               @P0 NOP.S;

        /*0108*/                   LD.E R0, [R2];
        /*0110*/                   ST.E.S [R4], R0;
        /*0118*/                   MOV RZ, RZ;
        /*0120*/               @P1 EXIT;
        /*0128*/                   LD.E R2, [R2+0x400];
        /*0130*/                   ST.E [R4+0x400], R2;
        /*0138*/                   EXIT;

        /*0148*/                   LD.E R0, [R2];
        /*0150*/                   ST.E [R4], R0;
        /*0158*/                   LD.E R7, [R2+0x400];
        /*0160*/                   ST.E [R4+0x400], R7;
        /*0168*/                   EXIT;
        /*0170*/                   BRA 0x170;
        /*0178*/                   NOP;
		........................................................................................................................................................................................................................................


		Function : _ZN6thrust8cuda_cub4core13_kernel_agentINS0_14__parallel_for16ParallelForAgentINS0_6__fill7functorINS_6detail15normal_iteratorINS_10device_ptrIiEEEEiEElEESC_lEEvT0_T1_
	.headerflags    @"EF_CUDA_SM35 EF_CUDA_PTX_SM(EF_CUDA_SM35)"

        /*0008*/                   MOV R1, c[0x0][0x44];
        /*0010*/                   S2R R0, SR_CTAID.X;
        /*0018*/                   S2R R4, SR_TID.X;
        /*0020*/                   SHF.L R2, RZ, 0x9, R0;
        /*0028*/                   IMUL32I.U32.U32.HI R3, R0, 0x200;
        /*0030*/                   ISUB R5.CC, c[0x0][0x150], R2;
        /*0038*/                   ISUB.X R6, c[0x0][0x154], R3;

        /*0048*/                   IADD R0.CC, R4, R2;
        /*0050*/                   IADD.X R3, RZ, R3;
        /*0058*/                   IMNMX.XHI R6.CC, R6, RZ, PT;
        /*0060*/                   IMNMX.U32.XLO R5, R5, 0x200, PT;
        /*0068*/                   ISCADD R2.CC, R0, c[0x0][0x140], 0x2;
        /*0070*/                   SHF.L.U64 R0, R0, 0x2, R3;
        /*0078*/                   IADD.X R3, R0, c[0x0][0x144];

        /*0088*/                   IADD32I RZ.CC, R5, -0x200;
        /*0090*/                   ISETP.NE.X.AND P0, PT, R6, RZ, PT;
        /*0098*/              @!P0 BRA 0xf8;
        /*00a0*/                   ISUB RZ.CC, R4, R5;
        /*00a8*/                   SHR R6, R5, 0x1f;
        /*00b0*/                   IADD32I R0, R4, 0x100;
        /*00b8*/                   ISETP.GE.X.AND P0, PT, RZ, R6, PT;

        /*00c8*/                   ISUB RZ.CC, R0, R5;
        /*00d0*/              @!P0 MOV R4, c[0x0][0x148];
        /*00d8*/              @!P0 ST.E [R2], R4;
        /*00e0*/                   ISETP.GE.X.AND P0, PT, RZ, R6, PT;
        /*00e8*/               @P0 EXIT;
        /*00f0*/                   BRA 0x110;
        /*00f8*/                   MOV R4, c[0x0][0x148];

        /*0108*/                   ST.E [R2], R4;
        /*0110*/                   MOV R4, c[0x0][0x148];
        /*0118*/                   ST.E [R2+0x400], R4;
        /*0120*/                   EXIT;
        /*0128*/                   BRA 0x128;
        /*0130*/                   NOP;
        /*0138*/                   NOP;
		..................................................................................................................................................................................


		Function : _ZN6thrust8cuda_cub3cub11EmptyKernelIvEEvv
	.headerflags    @"EF_CUDA_SM35 EF_CUDA_PTX_SM(EF_CUDA_SM35)"

        /*0008*/                   MOV R1, c[0x0][0x44];
        /*0010*/                   MOV RZ, RZ;
        /*0018*/                   EXIT;
        /*0020*/                   BRA 0x20;
        /*0028*/                   NOP;
        /*0030*/                   NOP;
        /*0038*/                   NOP;
		.....................................................



Fatbin ptx code:
================
arch = sm_35
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
