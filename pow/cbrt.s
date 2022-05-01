	.headerflags	@"EF_CUDA_TEXMODE_UNIFIED EF_CUDA_64BIT_ADDRESS EF_CUDA_SM70 EF_CUDA_VIRTUAL_SM(EF_CUDA_SM70)"
	.elftype	@"ET_REL"


//--------------------- .text._Z7cu_cbrtPd        --------------------------
	.section	.text._Z7cu_cbrtPd,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
        .global         _Z7cu_cbrtPd
        .type           _Z7cu_cbrtPd,@function
        .size           _Z7cu_cbrtPd,(.L_x_12 - _Z7cu_cbrtPd)
        .other          _Z7cu_cbrtPd,@"STO_CUDA_ENTRY STV_DEFAULT"
_Z7cu_cbrtPd:
.text._Z7cu_cbrtPd:
	//## File "/home/s3j/.local/src/cuda-test-snippets/pow/cbrt.cu", line 2
        /*0000*/                   MOV R1, c[0x0][0x28] ;
        /*0010*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0020*/                   MOV R2, 0x160 ;
        /*0030*/                   LDC.64 R2, c[0x0][R2] ;
        /*0040*/                   MOV R16, R2 ;
        /*0050*/                   MOV R2, R3 ;
        /*0060*/                   MOV R16, R16 ;
        /*0070*/                   MOV R2, R2 ;
        /*0080*/                   MOV R16, R16 ;
        /*0090*/                   MOV R2, R2 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/pow/cbrt.cu", line 4
        /*00a0*/                   S2R R0, SR_TID.X ;
        /*00b0*/                   MOV R0, R0 ;
        /*00c0*/                   MOV R0, R0 ;
        /*00d0*/                   MOV R0, R0 ;
        /*00e0*/                   MOV R7, RZ ;
        /*00f0*/                   SHF.L.U64.HI R7, R0, 0x3, R7 ;
        /*0100*/                   SHF.L.U32 R6, R0, 0x3, RZ ;
        /*0110*/                   IADD3 R6, P0, R16, R6, RZ ;
        /*0120*/                   IADD3.X R7, R2, R7, RZ, P0, !PT ;
        /*0130*/                   MOV R6, R6 ;
        /*0140*/                   MOV R7, R7 ;
        /*0150*/                   MOV R6, R6 ;
        /*0160*/                   MOV R7, R7 ;
        /*0170*/                   LD.E.64.SYS R6, [R6] ;
        /*0180*/                   MOV R4, R6 ;
        /*0190*/                   MOV R5, R7 ;
        /*01a0*/                   MOV R4, R4 ;
        /*01b0*/                   MOV R5, R5 ;
        /*01c0*/                   MOV R20, 32@lo((_Z7cu_cbrtPd + .L_x_0@srel)) ;
        /*01d0*/                   MOV R21, 32@hi((_Z7cu_cbrtPd + .L_x_0@srel)) ;
        /*01e0*/                   CALL.ABS.NOINC `(cbrt) ;
.L_x_0:
        /*01f0*/                   MOV R4, R4 ;
        /*0200*/                   MOV R5, R5 ;
        /*0210*/                   S2R R0, SR_TID.X ;
        /*0220*/                   MOV R0, R0 ;
        /*0230*/                   MOV R0, R0 ;
        /*0240*/                   MOV R0, R0 ;
        /*0250*/                   MOV R3, RZ ;
        /*0260*/                   SHF.L.U64.HI R3, R0, 0x3, R3 ;
        /*0270*/                   SHF.L.U32 R0, R0, 0x3, RZ ;
        /*0280*/                   IADD3 R16, P0, R16, R0, RZ ;
        /*0290*/                   IADD3.X R3, R2, R3, RZ, P0, !PT ;
        /*02a0*/                   MOV R2, R16 ;
        /*02b0*/                   MOV R3, R3 ;
        /*02c0*/                   MOV R2, R2 ;
        /*02d0*/                   MOV R3, R3 ;
        /*02e0*/                   ST.E.64.SYS [R2], R4 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/pow/cbrt.cu", line 5
        /*02f0*/                   MEMBAR.SC.VC ;
        /*0300*/                   ERRBAR ;
        /*0310*/                   EXIT ;
        /*0320*/                   MEMBAR.SC.VC ;
        /*0330*/                   ERRBAR ;
        /*0340*/                   EXIT ;
.L_x_1:
        /*0350*/                   BRA `(.L_x_1);
        /*0360*/                   NOP;
        /*0370*/                   NOP;
.L_x_12:


//--------------------- .text.cbrt                --------------------------
	.section	.text.cbrt,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=36"
	.align	128
.text.cbrt:
        .type           cbrt,@function
        .size           cbrt,(.L_x_13 - cbrt)
cbrt:
        /*0000*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0010*/                   MOV R5, R5 ;
        /*0020*/                   MOV R4, R4 ;
        /*0030*/                   MOV R4, R4 ;
        /*0040*/                   MOV R5, R5 ;
        /*0050*/                   MOV R0, R4 ;
        /*0060*/                   MOV R0, R0 ;
        /*0070*/                   MOV R3, R5 ;
        /*0080*/                   MOV R3, R3 ;
        /*0090*/                   LOP3.LUT R3, R3, 0x7fffffff, RZ, 0xc0, !PT ;
        /*00a0*/                   DSETP.NEU.AND P0, PT, R4, RZ, PT ;
        /*00b0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*00c0*/                   MOV R4, R4 ;
        /*00d0*/                   MOV R5, R5 ;
        /*00e0*/                   MOV R0, R0 ;
        /*00f0*/                   MOV R3, R3 ;
        /*0100*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0110*/                   BSSY B0, `(.L_x_2) ;
        /*0120*/               @P0 BRA `(.L_x_3) ;
        /*0130*/                   BRA `(.L_x_4) ;
.L_x_4:
        /*0140*/                   ISETP.LT.AND P0, PT, R3, 0x7ff00000, PT ;
        /*0150*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0160*/               @P0 BRA `(.L_x_3) ;
        /*0170*/                   BRA `(.L_x_5) ;
.L_x_5:
        /*0180*/                   SHF.R.U32.HI R6, RZ, 0x14, R3 ;
        /*0190*/                   ISETP.EQ.AND P0, PT, R6, RZ, PT ;
        /*01a0*/                   MOV R7, RZ ;
        /*01b0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*01c0*/                   MOV R0, R0 ;
        /*01d0*/                   MOV R3, R3 ;
        /*01e0*/                   MOV R6, R6 ;
        /*01f0*/                   MOV R7, R7 ;
        /*0200*/                   MOV R8, R0 ;
        /*0210*/                   MOV R9, R3 ;
        /*0220*/                   MOV R6, R6 ;
        /*0230*/                   MOV R7, R7 ;
        /*0240*/                   BMOV.32.CLEAR RZ, B1 ;
        /*0250*/                   BSSY B1, `(.L_x_6) ;
        /*0260*/               @P0 BRA `(.L_x_7) ;
        /*0270*/                   BRA `(.L_x_8) ;
.L_x_8:
        /*0280*/                   MOV R6, R0 ;
        /*0290*/                   MOV R7, R3 ;
        /*02a0*/                   DMUL R6, R6, 1.80143985094819840000e+16 ;
        /*02b0*/                   MOV R0, R6 ;
        /*02c0*/                   MOV R3, R7 ;
        /*02d0*/                   MOV R0, R0 ;
        /*02e0*/                   MOV R0, R0 ;
        /*02f0*/                   MOV R3, R3 ;
        /*0300*/                   MOV R3, R3 ;
        /*0310*/                   SHF.R.U32.HI R6, RZ, 0x14, R3 ;
        /*0320*/                   MOV R7, 0x12 ;
        /*0330*/                   MOV R0, R0 ;
        /*0340*/                   MOV R3, R3 ;
        /*0350*/                   MOV R6, R6 ;
        /*0360*/                   MOV R7, R7 ;
        /*0370*/                   MOV R8, R0 ;
        /*0380*/                   MOV R9, R3 ;
        /*0390*/                   MOV R6, R6 ;
        /*03a0*/                   MOV R7, R7 ;
        /*03b0*/                   BRA `(.L_x_7) ;
.L_x_7:
        /*03c0*/                   BSYNC B1 ;
.L_x_6:
        /*03d0*/                   MOV R3, R7 ;
        /*03e0*/                   MOV R6, R6 ;
        /*03f0*/                   MOV R9, R9 ;
        /*0400*/                   MOV R7, R8 ;
        /*0410*/                   IADD3 R6, R6, -0x3fe, RZ ;
        /*0420*/                   I2F R6, R6 ;
        /*0430*/                   FMUL.FTZ R0, R6, 0.3333333432674407959 ;
        /*0440*/                   F2I.FTZ.NTZ R0, R0 ;
        /*0450*/                   IMAD R6, R0, 0x3, RZ ;
        /*0460*/                   SHF.L.U32 R6, R6, 0x14, RZ ;
        /*0470*/                   IADD3 R6, R9, -R6, RZ ;
        /*0480*/                   LOP3.LUT R7, R7, R6, RZ, 0x3c, !PT ;
        /*0490*/                   LOP3.LUT R6, R7, R6, RZ, 0x3c, !PT ;
        /*04a0*/                   LOP3.LUT R7, R7, R6, RZ, 0x3c, !PT ;
        /*04b0*/                   MOV R6, R6 ;
        /*04c0*/                   MOV R7, R7 ;
        /*04d0*/                   MOV R8, R6 ;
        /*04e0*/                   MOV R9, R7 ;
        /*04f0*/                   MOV R8, R8 ;
        /*0500*/                   MOV R9, R9 ;
        /*0510*/                   F2F.F32.F64 R12, R8 ;
        /*0520*/                   MOV R10, 0x800000 ;
        /*0530*/                   FMUL R13, R12, R10 ;
        /*0540*/                   DADD R8, -RZ, |R8| ;
        /*0550*/                   MOV R8, R8 ;
        /*0560*/                   MOV R9, R9 ;
        /*0570*/                   MOV R10, 0x380fffff ;
        /*0580*/                   MOV R11, 0xf0000000 ;
        /*0590*/                   LOP3.LUT R11, R11, R10, RZ, 0x3c, !PT ;
        /*05a0*/                   LOP3.LUT R10, R11, R10, RZ, 0x3c, !PT ;
        /*05b0*/                   LOP3.LUT R11, R11, R10, RZ, 0x3c, !PT ;
        /*05c0*/                   DSETP.LT.AND P0, PT, R8, R10, PT ;
        /*05d0*/                   FSEL R13, R13, R12, P0 ;
        /*05e0*/                   MOV R13, R13 ;
        /*05f0*/                   MOV R13, R13 ;
        /*0600*/                   MUFU.LG2 R13, R13 ;
        /*0610*/                   FMUL.FTZ R13, R13, 0.3333333432674407959 ;
        /*0620*/                   MUFU.EX2 R13, R13 ;
        /*0630*/                   MOV R13, R13 ;
        /*0640*/                   MOV R13, R13 ;
        /*0650*/                   MOV R13, R13 ;
        /*0660*/                   MOV R13, R13 ;
        /*0670*/                   FMUL.FTZ R13, R13, 1 ;
        /*0680*/                   MOV R8, R13 ;
        /*0690*/                   F2F.F64.F32 R8, R8 ;
        /*06a0*/                   MOV R8, R8 ;
        /*06b0*/                   MOV R9, R9 ;
        /*06c0*/                   MOV R8, R8 ;
        /*06d0*/                   MOV R9, R9 ;
        /*06e0*/                   MOV R8, R8 ;
        /*06f0*/                   MOV R9, R9 ;
        /*0700*/                   MOV R8, R8 ;
        /*0710*/                   MOV R9, R9 ;
        /*0720*/                   DMUL R10, R8, R8 ;
        /*0730*/                   MOV R32, R10 ;
        /*0740*/                   MOV R33, R11 ;
        /*0750*/                   MOV R10, R32 ;
        /*0760*/                   MOV R10, R10 ;
        /*0770*/                   MOV R11, R33 ;
        /*0780*/                   MOV R11, R11 ;
        /*0790*/                   IADD3 R11, R11, 0x100000, RZ ;
        /*07a0*/                   MOV R10, R10 ;
        /*07b0*/                   MOV R11, R11 ;
        /*07c0*/                   DFMA R10, R10, R8, R6 ;
        /*07d0*/                   MOV R12, R10 ;
        /*07e0*/                   MOV R12, R11 ;
        /*07f0*/                   MOV R13, RZ ;
        /*0800*/                   MUFU.RCP64H R12, R12 ;
        /*0810*/                   LOP3.LUT R13, R13, R12, RZ, 0x3c, !PT ;
        /*0820*/                   LOP3.LUT R12, R13, R12, RZ, 0x3c, !PT ;
        /*0830*/                   LOP3.LUT R13, R13, R12, RZ, 0x3c, !PT ;
        /*0840*/                   DADD R10, -RZ, -R10 ;
        /*0850*/                   MOV R10, R10 ;
        /*0860*/                   MOV R11, R11 ;
        /*0870*/                   MOV R14, 0x0 ;
        /*0880*/                   MOV R15, 0x3ff00000 ;
        /*0890*/                   DFMA R10, R10, R12, R14 ;
        /*08a0*/                   DFMA R10, R10, R10, R10 ;
        /*08b0*/                   DFMA R10, R10, R12, R12 ;
        /*08c0*/                   DADD R12, -RZ, -R8 ;
        /*08d0*/                   MOV R12, R12 ;
        /*08e0*/                   MOV R13, R13 ;
        /*08f0*/                   MOV R14, R32 ;
        /*0900*/                   MOV R15, R33 ;
        /*0910*/                   DFMA R12, R14, R12, R6 ;
        /*0920*/                   DMUL R10, R10, R12 ;
        /*0930*/                   DFMA R10, R8, R10, R8 ;
        /*0940*/                   MOV R6, R10 ;
        /*0950*/                   MOV R7, R11 ;
        /*0960*/                   MOV R6, R6 ;
        /*0970*/                   MOV R6, R6 ;
        /*0980*/                   MOV R7, R7 ;
        /*0990*/                   MOV R7, R7 ;
        /*09a0*/                   IADD3 R3, R0, -R3, RZ ;
        /*09b0*/                   SHF.L.U32 R3, R3, 0x14, RZ ;
        /*09c0*/                   IADD3 R3, R7, R3, RZ ;
        /*09d0*/                   MOV R0, R6 ;
        /*09e0*/                   MOV R3, R3 ;
        /*09f0*/                   MOV R4, R5 ;
        /*0a00*/                   MOV R4, R4 ;
        /*0a10*/                   MOV R0, R0 ;
        /*0a20*/                   MOV R0, R0 ;
        /*0a30*/                   MOV R3, R3 ;
        /*0a40*/                   MOV R3, R3 ;
        /*0a50*/                   LOP3.LUT R4, R4, 0x80000000, RZ, 0xc0, !PT ;
        /*0a60*/                   LOP3.LUT R4, R4, R3, RZ, 0xfc, !PT ;
        /*0a70*/                   MOV R5, R4 ;
        /*0a80*/                   MOV R4, R0 ;
        /*0a90*/                   MOV R4, R4 ;
        /*0aa0*/                   MOV R5, R5 ;
        /*0ab0*/                   MOV R4, R4 ;
        /*0ac0*/                   MOV R5, R5 ;
        /*0ad0*/                   BRA `(.L_x_9) ;
.L_x_3:
        /*0ae0*/                   DADD R4, R4, R4 ;
        /*0af0*/                   MOV R4, R4 ;
        /*0b00*/                   MOV R5, R5 ;
        /*0b10*/                   MOV R4, R4 ;
        /*0b20*/                   MOV R5, R5 ;
        /*0b30*/                   BRA `(.L_x_9) ;
.L_x_9:
        /*0b40*/                   BSYNC B0 ;
.L_x_2:
        /*0b50*/                   MOV R4, R4 ;
        /*0b60*/                   MOV R5, R5 ;
        /*0b70*/                   MOV R0, R4 ;
        /*0b80*/                   MOV R5, R5 ;
        /*0b90*/                   MOV R4, R0 ;
        /*0ba0*/                   MOV R5, R5 ;
        /*0bb0*/                   BRA `(.L_x_10) ;
.L_x_10:
        /*0bc0*/                   MOV R4, R4 ;
        /*0bd0*/                   MOV R5, R5 ;
        /*0be0*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_11:
        /*0bf0*/                   BRA `(.L_x_11);
.L_x_13:
