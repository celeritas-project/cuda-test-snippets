
Fatbin elf code:
================
arch = sm_70
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_70
		Function : _Z6sampleN9celeritas16RngStatePointersEPd
	.headerflags    @"EF_CUDA_SM70 EF_CUDA_PTX_SM(EF_CUDA_SM70)"
        /*0000*/                   IMAD.MOV.U32 R1, RZ, RZ, c[0x0][0x28] ;

        /*0010*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*0020*/                   S2R R0, SR_CTAID.X ;

        /*0030*/                   IMAD.MOV.U32 R17, RZ, RZ, 0x30 ;

        /*0040*/                   S2R R3, SR_TID.X ;

        /*0050*/                   IMAD R0, R0, c[0x0][0x0], R3 ;

        /*0060*/                   IMAD.WIDE.U32 R16, R0, R17, c[0x0][0x160] ;

        /*0070*/                   LDG.E.64.SYS R2, [R16] ;

        /*0080*/                   LDG.E.64.SYS R8, [R16+0x8] ;

        /*0090*/                   LDG.E.64.SYS R14, [R16+0x10] ;

        /*00a0*/                   IMAD.MOV.U32 R18, RZ, RZ, 0x0 ;

        /*00b0*/                   IMAD.MOV.U32 R19, RZ, RZ, 0x3ca00000 ;

        /*00c0*/                   IMAD.MOV.U32 R11, RZ, RZ, 0x8 ;

        /*00d0*/                   IMAD R10, R0, 0x3, RZ ;

        /*00e0*/                   IMAD.WIDE.U32 R10, R10, R11, c[0x0][0x170] ;

        /*00f0*/                   SHF.R.U32.HI R4, RZ, 0x2, R3 ;

        /*0100*/                   LOP3.LUT R4, R4, R3, RZ, 0x3c, !PT ;

        /*0110*/                   SHF.R.U32.HI R5, RZ, 0x2, R8 ;

        /*0120*/                   IMAD.SHL.U32 R12, R15, 0x10, RZ ;

        /*0130*/                   STG.E.64.SYS [R16+0x8], R14 ;

        /*0140*/                   IMAD.SHL.U32 R3, R4, 0x2, RZ ;

        /*0150*/                   LOP3.LUT R5, R5, R8, RZ, 0x3c, !PT ;

        /*0160*/                   IADD3 R8, R2, 0xb0f8a, RZ ;

        /*0170*/                   LOP3.LUT R3, R15, R3, R4, 0x96, !PT ;

        /*0180*/                   IMAD.SHL.U32 R4, R5, 0x2, RZ ;

        /*0190*/                   LOP3.LUT R12, R3, R12, RZ, 0x3c, !PT ;

        /*01a0*/                   STG.E.64.SYS [R16], R8 ;

        /*01b0*/                   LOP3.LUT R4, R12.reuse, R4, R5, 0x96, !PT ;

        /*01c0*/                   IMAD.SHL.U32 R13, R12, 0x10, RZ ;

        /*01d0*/                   IADD3 R3, R2, 0x587c5, R12 ;

        /*01e0*/                   LOP3.LUT R13, R4, R13, RZ, 0x3c, !PT ;

        /*01f0*/                   IMAD.IADD R4, R13, 0x1, R8 ;

        /*0200*/                   STG.E.64.SYS [R16+0x10], R12 ;

        /*0210*/                   IMAD.WIDE.U32 R4, R4, 0x200000, RZ ;

        /*0220*/                   LOP3.LUT R4, R4, R3, RZ, 0x3c, !PT ;

        /*0230*/                   I2F.F64.U64 R2, R4 ;

        /*0240*/                   DFMA R20, R2, R18, 5.5511151231257827021e-17 ;

        /*0250*/                   STG.E.64.SYS [R10], R20 ;

        /*0260*/                   LDG.E.64.SYS R6, [R16] ;

        /*0270*/                   LDG.E.64.SYS R2, [R16+0x8] ;

        /*0280*/                   LDG.E.64.SYS R4, [R16+0x10] ;

        /*0290*/                   SHF.R.U32.HI R0, RZ, 0x2, R7 ;

        /*02a0*/                   IADD3 R14, R6, 0xb0f8a, RZ ;

        /*02b0*/                   LOP3.LUT R0, R0, R7, RZ, 0x3c, !PT ;

        /*02c0*/                   IMAD.MOV.U32 R15, RZ, RZ, R3 ;

        /*02d0*/                   SHF.R.U32.HI R23, RZ, 0x2, R2 ;

        /*02e0*/                   IMAD.SHL.U32 R7, R5, 0x10, RZ ;

        /*02f0*/                   STG.E.64.SYS [R16+0x8], R4 ;

        /*0300*/                   IMAD.SHL.U32 R22, R0, 0x2, RZ ;

        /*0310*/                   LOP3.LUT R23, R23, R2, RZ, 0x3c, !PT ;

        /*0320*/                   STG.E.64.SYS [R16], R14 ;

        /*0330*/                   LOP3.LUT R12, R5, R22, R0, 0x96, !PT ;

        /*0340*/                   IMAD.SHL.U32 R0, R23, 0x2, RZ ;

        /*0350*/                   LOP3.LUT R12, R12, R7, RZ, 0x3c, !PT ;

        /*0360*/                   LOP3.LUT R0, R12.reuse, R0, R23, 0x96, !PT ;

        /*0370*/                   IMAD.SHL.U32 R13, R12, 0x10, RZ ;

        /*0380*/                   IADD3 R23, R6, 0x587c5, R12 ;

        /*0390*/                   LOP3.LUT R13, R0, R13, RZ, 0x3c, !PT ;

        /*03a0*/                   IMAD.IADD R8, R13, 0x1, R14 ;

        /*03b0*/                   STG.E.64.SYS [R16+0x10], R12 ;

        /*03c0*/                   IMAD.WIDE.U32 R8, R8, 0x200000, RZ ;

        /*03d0*/                   LOP3.LUT R22, R8, R23, RZ, 0x3c, !PT ;

        /*03e0*/                   IMAD.MOV.U32 R23, RZ, RZ, R9 ;

        /*03f0*/                   I2F.F64.U64 R6, R22 ;

        /*0400*/                   DFMA R6, R6, R18, 5.5511151231257827021e-17 ;

        /*0410*/                   DMUL R20, R6, 5 ;

        /*0420*/                   STG.E.64.SYS [R10+0x8], R20 ;

        /*0430*/                   LDG.E.64.SYS R6, [R16] ;

        /*0440*/                   LDG.E.64.SYS R8, [R16+0x8] ;

        /*0450*/                   LDG.E.64.SYS R2, [R16+0x10] ;

        /*0460*/                   IMAD.MOV.U32 R14, RZ, RZ, 0x0 ;

        /*0470*/                   IMAD.MOV.U32 R15, RZ, RZ, 0x40150000 ;

        /*0480*/                   SHF.R.U32.HI R0, RZ, 0x2, R7 ;

        /*0490*/                   LOP3.LUT R0, R0, R7, RZ, 0x3c, !PT ;

        /*04a0*/                   SHF.R.U32.HI R23, RZ, 0x2, R8 ;

        /*04b0*/                   IMAD.SHL.U32 R4, R3, 0x10, RZ ;

        /*04c0*/                   STG.E.64.SYS [R16+0x8], R2 ;

        /*04d0*/                   IMAD.SHL.U32 R7, R0, 0x2, RZ ;

        /*04e0*/                   LOP3.LUT R23, R23, R8, RZ, 0x3c, !PT ;

        /*04f0*/                   IADD3 R8, R6, 0xb0f8a, RZ ;

        /*0500*/                   LOP3.LUT R7, R3, R7, R0, 0x96, !PT ;

        /*0510*/                   IMAD.SHL.U32 R0, R23, 0x2, RZ ;

        /*0520*/                   LOP3.LUT R4, R7, R4, RZ, 0x3c, !PT ;

        /*0530*/                   STG.E.64.SYS [R16], R8 ;

        /*0540*/                   LOP3.LUT R0, R4.reuse, R0, R23, 0x96, !PT ;

        /*0550*/                   IMAD.SHL.U32 R5, R4, 0x10, RZ ;

        /*0560*/                   IADD3 R7, R6, 0x587c5, R4 ;

        /*0570*/                   LOP3.LUT R5, R0, R5, RZ, 0x3c, !PT ;

        /*0580*/                   IMAD.IADD R12, R5, 0x1, R8 ;

        /*0590*/                   STG.E.64.SYS [R16+0x10], R4 ;

        /*05a0*/                   IMAD.WIDE.U32 R12, R12, 0x200000, RZ ;

        /*05b0*/                   LOP3.LUT R12, R12, R7, RZ, 0x3c, !PT ;

        /*05c0*/                   I2F.F64.U64 R6, R12 ;

        /*05d0*/                   DFMA R6, R6, R18, 5.5511151231257827021e-17 ;

        /*05e0*/                   DFMA R6, R6, R14, 2.5 ;

        /*05f0*/                   STG.E.64.SYS [R10+0x10], R6 ;

        /*0600*/                   EXIT ;

        /*0610*/                   BRA 0x610;

        /*0620*/                   NOP;

        /*0630*/                   NOP;

        /*0640*/                   NOP;

        /*0650*/                   NOP;

        /*0660*/                   NOP;

        /*0670*/                   NOP;

		....................................................



Fatbin ptx code:
================
arch = sm_70
code version = [6,4]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
