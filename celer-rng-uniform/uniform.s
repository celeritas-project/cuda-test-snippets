
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

        /*0030*/                   IMAD.MOV.U32 R15, RZ, RZ, 0x30 ;

        /*0040*/                   S2R R3, SR_TID.X ;

        /*0050*/                   IMAD R0, R0, c[0x0][0x0], R3 ;

        /*0060*/                   IMAD.WIDE.U32 R14, R0, R15, c[0x0][0x160] ;

        /*0070*/                   LDG.E.64.SYS R10, [R14] ;

        /*0080*/                   LDG.E.64.SYS R2, [R14+0x8] ;

        /*0090*/                   LDG.E.64.SYS R4, [R14+0x10] ;

        /*00a0*/                   LDG.E.64.SYS R8, [R14+0x18] ;

        /*00b0*/                   LDG.E.64.SYS R12, [R14+0x28] ;

        /*00c0*/                   LDG.E.SYS R23, [R14+0x20] ;

        /*00d0*/                   IMAD.MOV.U32 R29, RZ, RZ, 0x8 ;

        /*00e0*/                   IMAD R0, R0, 0x3, RZ ;

        /*00f0*/                   SHF.R.U32.HI R6, RZ, 0x2, R11 ;

        /*0100*/                   LOP3.LUT R6, R6, R11, RZ, 0x3c, !PT ;

        /*0110*/                   SHF.R.U32.HI R17, RZ, 0x2, R2 ;

        /*0120*/                   IMAD.SHL.U32 R7, R5, 0x10, RZ ;

        /*0130*/                   LOP3.LUT R2, R17, R2, RZ, 0x3c, !PT ;

        /*0140*/                   IMAD.SHL.U32 R11, R6.reuse, 0x2, RZ ;

        /*0150*/                   LOP3.LUT R16, R6, R7, R5, 0x96, !PT ;

        /*0160*/                   IMAD.SHL.U32 R6, R2, 0x2, RZ ;

        /*0170*/                   LOP3.LUT R11, R16, R11, RZ, 0x3c, !PT ;

        /*0180*/                   SHF.R.U32.HI R16, RZ, 0x2, R3 ;

        /*0190*/                   LOP3.LUT R7, R11.reuse, R6, R2, 0x96, !PT ;

        /*01a0*/                   IMAD.SHL.U32 R2, R11, 0x10, RZ ;

        /*01b0*/                   LOP3.LUT R16, R16, R3, RZ, 0x3c, !PT ;

        /*01c0*/                   LOP3.LUT R3, R7, R2, RZ, 0x3c, !PT ;

        /*01d0*/                   IMAD.SHL.U32 R2, R16, 0x2, RZ ;

        /*01e0*/                   SHF.R.U32.HI R17, RZ, 0x2, R4 ;

        /*01f0*/                   LOP3.LUT R7, R3.reuse, R2, R16, 0x96, !PT ;

        /*0200*/                   IMAD.SHL.U32 R2, R3, 0x10, RZ ;

        /*0210*/                   LOP3.LUT R17, R17, R4, RZ, 0x3c, !PT ;

        /*0220*/                   LOP3.LUT R4, R7, R2, RZ, 0x3c, !PT ;

        /*0230*/                   IMAD.SHL.U32 R2, R17, 0x2, RZ ;

        /*0240*/                   SHF.R.U32.HI R6, RZ, 0x2, R5 ;

        /*0250*/                   LOP3.LUT R17, R4.reuse, R2, R17, 0x96, !PT ;

        /*0260*/                   IMAD.SHL.U32 R2, R4, 0x10, RZ ;

        /*0270*/                   LOP3.LUT R6, R6, R5, RZ, 0x3c, !PT ;

        /*0280*/                   LOP3.LUT R5, R17, R2, RZ, 0x3c, !PT ;

        /*0290*/                   IMAD.SHL.U32 R2, R6, 0x2, RZ ;

        /*02a0*/                   SHF.R.U32.HI R16, RZ, 0x2, R11 ;

        /*02b0*/                   LOP3.LUT R7, R5.reuse, R2, R6, 0x96, !PT ;

        /*02c0*/                   IMAD.SHL.U32 R6, R5, 0x10, RZ ;

        /*02d0*/                   LOP3.LUT R17, R16, R11, RZ, 0x3c, !PT ;

        /*02e0*/                   LOP3.LUT R6, R7, R6, RZ, 0x3c, !PT ;

        /*02f0*/                   IMAD.SHL.U32 R2, R17, 0x2, RZ ;

        /*0300*/                   IMAD.SHL.U32 R7, R6.reuse, 0x10, RZ ;

        /*0310*/                   LOP3.LUT R2, R6, R2, R17, 0x96, !PT ;

        /*0320*/                   IADD3 R18, R10, 0xb0f8a, R3 ;

        /*0330*/                   LOP3.LUT R7, R2, R7, RZ, 0x3c, !PT ;

        /*0340*/                   IADD3 R2, R10, 0x212e9e, RZ ;

        /*0350*/                   IMAD.WIDE.U32 R18, R18, 0x200000, RZ ;

        /*0360*/                   IADD3 R20, R10.reuse, 0x161f14, R5 ;

        /*0370*/                   IADD3 R11, R10, 0x587c5, R11 ;

        /*0380*/                   IMAD.IADD R16, R2, 0x1, R7 ;

        /*0390*/                   IMAD.WIDE.U32 R20, R20, 0x200000, RZ ;

        /*03a0*/                   LOP3.LUT R18, R18, R11, RZ, 0x3c, !PT ;

        /*03b0*/                   IMAD.WIDE.U32 R16, R16, 0x200000, RZ ;

        /*03c0*/                   IADD3 R11, R10.reuse, 0x10974f, R4 ;

        /*03d0*/                   IADD3 R25, R10, 0x1ba6d9, R6 ;

        /*03e0*/                   LOP3.LUT R20, R20, R11, RZ, 0x3c, !PT ;

        /*03f0*/                   LOP3.LUT R16, R16, R25, RZ, 0x3c, !PT ;

        /*0400*/                   I2F.F64.U64 R18, R18 ;

        /*0410*/                   I2F.F64.U64 R20, R20 ;

        /*0420*/                   I2F.F64.U64 R16, R16 ;

        /*0430*/                   IMAD.MOV.U32 R10, RZ, RZ, 0x0 ;

        /*0440*/                   IMAD.MOV.U32 R11, RZ, RZ, 0x3ca00000 ;

        /*0450*/                   DFMA R24, R18, R10.reuse, 5.5511151231257827021e-17 ;

        /*0460*/                   IMAD.MOV.U32 R18, RZ, RZ, 0x0 ;

        /*0470*/                   DFMA R26, R20, R10, 5.5511151231257827021e-17 ;

        /*0480*/                   IMAD.MOV.U32 R19, RZ, RZ, 0x40150000 ;

        /*0490*/                   DFMA R10, R16, R10, 5.5511151231257827021e-17 ;

        /*04a0*/                   IMAD.WIDE.U32 R20, R0, R29, c[0x0][0x170] ;

        /*04b0*/                   DADD R24, RZ, R24 ;

        /*04c0*/                   DFMA R26, R26, 5, RZ ;

        /*04d0*/                   DFMA R10, R10, R18, 2.5 ;

        /*04e0*/                   STG.E.64.SYS [R20], R24 ;

        /*04f0*/                   STG.E.64.SYS [R20+0x8], R26 ;

        /*0500*/                   STG.E.64.SYS [R20+0x10], R10 ;

        /*0510*/                   STG.E.64.SYS [R14], R2 ;

        /*0520*/                   STG.E.64.SYS [R14+0x8], R4 ;

        /*0530*/                   STG.E.64.SYS [R14+0x10], R6 ;

        /*0540*/                   STG.E.64.SYS [R14+0x18], R8 ;

        /*0550*/                   STG.E.64.SYS [R14+0x28], R12 ;

        /*0560*/                   STG.E.SYS [R14+0x20], R23 ;

        /*0570*/                   EXIT ;

        /*0580*/                   BRA 0x580;

        /*0590*/                   NOP;

        /*05a0*/                   NOP;

        /*05b0*/                   NOP;

        /*05c0*/                   NOP;

        /*05d0*/                   NOP;

        /*05e0*/                   NOP;

        /*05f0*/                   NOP;

		...................................................................................



Fatbin ptx code:
================
arch = sm_70
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
