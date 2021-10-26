
Fatbin elf code:
================
arch = sm_70
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_70
		Function : _Z6sampleN9celeritas12RngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd
	.headerflags    @"EF_CUDA_SM70 EF_CUDA_PTX_SM(EF_CUDA_SM70)"
        /*0000*/                   IMAD.MOV.U32 R1, RZ, RZ, c[0x0][0x28] ;

        /*0010*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*0020*/                   S2R R0, SR_CTAID.X ;

        /*0030*/                   IMAD.MOV.U32 R17, RZ, RZ, 0x30 ;

        /*0040*/                   S2R R3, SR_TID.X ;

        /*0050*/                   IMAD R0, R0, c[0x0][0x0], R3 ;

        /*0060*/                   IMAD.WIDE.U32 R16, R0, R17, c[0x0][0x160] ;

        /*0070*/                   LDG.E.64.SYS R2, [R16] ;

        /*0080*/                   LDG.E.64.SYS R14, [R16+0x8] ;

        /*0090*/                   LDG.E.64.SYS R8, [R16+0x10] ;

        /*00a0*/                   IMAD.MOV.U32 R18, RZ, RZ, 0x0 ;

        /*00b0*/                   IMAD.MOV.U32 R19, RZ, RZ, 0x3ca00000 ;

        /*00c0*/                   IMAD.MOV.U32 R11, RZ, RZ, 0x8 ;

        /*00d0*/                   IMAD R10, R0, 0x3, RZ ;

        /*00e0*/                   IMAD.WIDE.U32 R10, R10, R11, c[0x0][0x170] ;

        /*00f0*/                   SHF.R.U32.HI R4, RZ, 0x2, R3 ;

        /*0100*/                   LOP3.LUT R4, R4, R3, RZ, 0x3c, !PT ;

        /*0110*/                   STG.E.SYS [R16+0x4], R15 ;

        /*0120*/                   SHF.R.U32.HI R5, RZ, 0x2, R14 ;

        /*0130*/                   IMAD.SHL.U32 R6, R9, 0x10, RZ ;

        /*0140*/                   STG.E.64.SYS [R16+0x8], R8 ;

        /*0150*/                   IMAD.SHL.U32 R3, R4, 0x2, RZ ;

        /*0160*/                   LOP3.LUT R5, R5, R14, RZ, 0x3c, !PT ;

        /*0170*/                   IADD3 R14, R2, 0xb0f8a, RZ ;

        /*0180*/                   LOP3.LUT R3, R9, R3, R4, 0x96, !PT ;

        /*0190*/                   IMAD.SHL.U32 R4, R5, 0x2, RZ ;

        /*01a0*/                   LOP3.LUT R6, R3, R6, RZ, 0x3c, !PT ;

        /*01b0*/                   STG.E.SYS [R16], R14 ;

        /*01c0*/                   LOP3.LUT R4, R6.reuse, R4, R5, 0x96, !PT ;

        /*01d0*/                   IMAD.SHL.U32 R7, R6, 0x10, RZ ;

        /*01e0*/                   IADD3 R3, R2, 0x587c5, R6 ;

        /*01f0*/                   LOP3.LUT R7, R4, R7, RZ, 0x3c, !PT ;

        /*0200*/                   IMAD.IADD R4, R7, 0x1, R14 ;

        /*0210*/                   STG.E.64.SYS [R16+0x10], R6 ;

        /*0220*/                   IMAD.WIDE.U32 R4, R4, 0x200000, RZ ;

        /*0230*/                   LOP3.LUT R4, R4, R3, RZ, 0x3c, !PT ;

        /*0240*/                   I2F.F64.U64 R2, R4 ;

        /*0250*/                   DFMA R20, R2, R18, 5.5511151231257827021e-17 ;

        /*0260*/                   STG.E.64.SYS [R10], R20 ;

        /*0270*/                   LDG.E.64.SYS R2, [R16] ;

        /*0280*/                   LDG.E.64.SYS R12, [R16+0x8] ;

        /*0290*/                   LDG.E.64.SYS R4, [R16+0x10] ;

        /*02a0*/                   SHF.R.U32.HI R0, RZ, 0x2, R3 ;

        /*02b0*/                   LOP3.LUT R0, R0, R3, RZ, 0x3c, !PT ;

        /*02c0*/                   STG.E.SYS [R16+0x4], R13 ;

        /*02d0*/                   SHF.R.U32.HI R23, RZ, 0x2, R12 ;

        /*02e0*/                   IMAD.SHL.U32 R14, R5, 0x10, RZ ;

        /*02f0*/                   STG.E.64.SYS [R16+0x8], R4 ;

        /*0300*/                   IMAD.SHL.U32 R3, R0, 0x2, RZ ;

        /*0310*/                   LOP3.LUT R23, R23, R12, RZ, 0x3c, !PT ;

        /*0320*/                   IADD3 R12, R2, 0xb0f8a, RZ ;

        /*0330*/                   LOP3.LUT R3, R5, R3, R0, 0x96, !PT ;

        /*0340*/                   IMAD.SHL.U32 R0, R23, 0x2, RZ ;

        /*0350*/                   LOP3.LUT R14, R3, R14, RZ, 0x3c, !PT ;

        /*0360*/                   STG.E.SYS [R16], R12 ;

        /*0370*/                   LOP3.LUT R0, R14.reuse, R0, R23, 0x96, !PT ;

        /*0380*/                   IMAD.SHL.U32 R15, R14, 0x10, RZ ;

        /*0390*/                   IADD3 R23, R2, 0x587c5, R14 ;

        /*03a0*/                   LOP3.LUT R15, R0, R15, RZ, 0x3c, !PT ;

        /*03b0*/                   IMAD.IADD R6, R15, 0x1, R12 ;

        /*03c0*/                   STG.E.64.SYS [R16+0x10], R14 ;

        /*03d0*/                   IMAD.WIDE.U32 R6, R6, 0x200000, RZ ;

        /*03e0*/                   LOP3.LUT R22, R6, R23, RZ, 0x3c, !PT ;

        /*03f0*/                   IMAD.MOV.U32 R23, RZ, RZ, R7 ;

        /*0400*/                   I2F.F64.U64 R2, R22 ;

        /*0410*/                   DFMA R2, R2, R18, 5.5511151231257827021e-17 ;

        /*0420*/                   DMUL R20, R2, 5 ;

        /*0430*/                   STG.E.64.SYS [R10+0x8], R20 ;

        /*0440*/                   LDG.E.64.SYS R6, [R16] ;

        /*0450*/                   LDG.E.64.SYS R8, [R16+0x8] ;

        /*0460*/                   LDG.E.64.SYS R2, [R16+0x10] ;

        /*0470*/                   IMAD.MOV.U32 R14, RZ, RZ, 0x0 ;

        /*0480*/                   IMAD.MOV.U32 R15, RZ, RZ, 0x40150000 ;

        /*0490*/                   SHF.R.U32.HI R0, RZ, 0x2, R7 ;

        /*04a0*/                   LOP3.LUT R0, R0, R7, RZ, 0x3c, !PT ;

        /*04b0*/                   SHF.R.U32.HI R7, RZ, 0x2, R8 ;

        /*04c0*/                   IMAD.SHL.U32 R4, R3, 0x10, RZ ;

        /*04d0*/                   STG.E.64.SYS [R16+0x8], R2 ;

        /*04e0*/                   IMAD.SHL.U32 R5, R0, 0x2, RZ ;

        /*04f0*/                   LOP3.LUT R7, R7, R8, RZ, 0x3c, !PT ;

        /*0500*/                   IADD3 R8, R6, 0xb0f8a, RZ ;

        /*0510*/                   LOP3.LUT R5, R3, R5, R0, 0x96, !PT ;

        /*0520*/                   IMAD.SHL.U32 R0, R7, 0x2, RZ ;

        /*0530*/                   LOP3.LUT R4, R5, R4, RZ, 0x3c, !PT ;

        /*0540*/                   STG.E.64.SYS [R16], R8 ;

        /*0550*/                   LOP3.LUT R0, R4.reuse, R0, R7, 0x96, !PT ;

        /*0560*/                   IMAD.SHL.U32 R5, R4, 0x10, RZ ;

        /*0570*/                   IADD3 R7, R6, 0x587c5, R4 ;

        /*0580*/                   LOP3.LUT R5, R0, R5, RZ, 0x3c, !PT ;

        /*0590*/                   IMAD.IADD R12, R5, 0x1, R8 ;

        /*05a0*/                   STG.E.64.SYS [R16+0x10], R4 ;

        /*05b0*/                   IMAD.WIDE.U32 R12, R12, 0x200000, RZ ;

        /*05c0*/                   LOP3.LUT R12, R12, R7, RZ, 0x3c, !PT ;

        /*05d0*/                   I2F.F64.U64 R6, R12 ;

        /*05e0*/                   DFMA R6, R6, R18, 5.5511151231257827021e-17 ;

        /*05f0*/                   DFMA R6, R6, R14, 2.5 ;

        /*0600*/                   STG.E.64.SYS [R10+0x10], R6 ;

        /*0610*/                   EXIT ;

        /*0620*/                   BRA 0x620;

        /*0630*/                   NOP;

        /*0640*/                   NOP;

        /*0650*/                   NOP;

        /*0660*/                   NOP;

        /*0670*/                   NOP;

		...................................................................................



Fatbin ptx code:
================
arch = sm_70
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
