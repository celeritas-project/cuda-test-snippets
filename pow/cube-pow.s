	.headerflags	@"EF_CUDA_TEXMODE_UNIFIED EF_CUDA_64BIT_ADDRESS EF_CUDA_SM70 EF_CUDA_VIRTUAL_SM(EF_CUDA_SM70)"
	.elftype	@"ET_REL"


//--------------------- .text._ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_ --------------------------
	.section	.text._ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text._ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_:
        .weak           _ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_
        .type           _ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_,@function
        .size           _ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_,(.L_x_111 - _ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_)
_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_:
	//## File "/usr/include/c++/8/cmath", line 415
        /*0000*/                   IADD3 R1, R1, -0x18, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_3) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_3:
        /*0050*/                   STL [R1+0x10], R21 ;
        /*0060*/                   STL [R1+0xc], R20 ;
        /*0070*/                   STL [R1+0x8], R17 ;
        /*0080*/                   STL [R1+0x4], R16 ;
        /*0090*/                   STL [R1], R2 ;
        /*00a0*/                   MOV R6, R6 ;
        /*00b0*/                   MOV R5, R5 ;
        /*00c0*/                   MOV R4, R4 ;
        /*00d0*/                   MOV R4, R4 ;
        /*00e0*/                   MOV R5, R5 ;
        /*00f0*/                   MOV R6, R6 ;
        /*0100*/                   MOV R4, R4 ;
        /*0110*/                   MOV R5, R5 ;
        /*0120*/                   MOV R16, R4 ;
        /*0130*/                   MOV R2, R5 ;
        /*0140*/                   MOV R17, R6 ;
	//## File "/usr/include/c++/8/cmath", line 418
        /*0150*/                   I2F.F64 R4, R17 ;
        /*0160*/                   MOV R6, R4 ;
        /*0170*/                   MOV R7, R5 ;
        /*0180*/                   MOV R4, R16 ;
        /*0190*/                   MOV R5, R2 ;
        /*01a0*/                   MOV R6, R6 ;
        /*01b0*/                   MOV R7, R7 ;
        /*01c0*/                   MOV R20, 32@lo((_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_ + .L_x_0@srel)) ;
        /*01d0*/                   MOV R21, 32@hi((_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_ + .L_x_0@srel)) ;
        /*01e0*/                   CALL.ABS.NOINC `(pow) ;
.L_x_0:
        /*01f0*/                   MOV R4, R4 ;
        /*0200*/                   MOV R5, R5 ;
        /*0210*/                   MOV R4, R4 ;
        /*0220*/                   MOV R5, R5 ;
        /*0230*/                   BRA `(.L_x_4) ;
.L_x_4:
        /*0240*/                   MOV R4, R4 ;
        /*0250*/                   MOV R5, R5 ;
        /*0260*/                   LDL R2, [R1] ;
        /*0270*/                   LDL R16, [R1+0x4] ;
        /*0280*/                   LDL R17, [R1+0x8] ;
        /*0290*/                   LDL R20, [R1+0xc] ;
        /*02a0*/                   LDL R21, [R1+0x10] ;
        /*02b0*/                   IADD3 R1, R1, 0x18, RZ ;
        /*02c0*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_5:
        /*02d0*/                   BRA `(.L_x_5);
        /*02e0*/                   NOP;
        /*02f0*/                   NOP;
.L_x_111:


//--------------------- .text._Z6cu_powPd         --------------------------
	.section	.text._Z6cu_powPd,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
        .global         _Z6cu_powPd
        .type           _Z6cu_powPd,@function
        .size           _Z6cu_powPd,(.L_x_110 - _Z6cu_powPd)
        .other          _Z6cu_powPd,@"STO_CUDA_ENTRY STV_DEFAULT"
_Z6cu_powPd:
.text._Z6cu_powPd:
	//## File "/home/s3j/.local/src/cuda-test-snippets/pow/cube-pow.cu", line 3
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
	//## File "/home/s3j/.local/src/cuda-test-snippets/pow/cube-pow.cu", line 5
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
        /*01a0*/                   MOV R6, 0x3 ;
        /*01b0*/                   MOV R4, R4 ;
        /*01c0*/                   MOV R5, R5 ;
        /*01d0*/                   MOV R6, R6 ;
        /*01e0*/                   MOV R20, 32@lo((_Z6cu_powPd + .L_x_1@srel)) ;
        /*01f0*/                   MOV R21, 32@hi((_Z6cu_powPd + .L_x_1@srel)) ;
        /*0200*/                   CALL.ABS.NOINC `(_ZSt3powIdiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_) ;
.L_x_1:
        /*0210*/                   MOV R4, R4 ;
        /*0220*/                   MOV R5, R5 ;
        /*0230*/                   S2R R0, SR_TID.X ;
        /*0240*/                   MOV R0, R0 ;
        /*0250*/                   MOV R0, R0 ;
        /*0260*/                   MOV R0, R0 ;
        /*0270*/                   MOV R3, RZ ;
        /*0280*/                   SHF.L.U64.HI R3, R0, 0x3, R3 ;
        /*0290*/                   SHF.L.U32 R0, R0, 0x3, RZ ;
        /*02a0*/                   IADD3 R16, P0, R16, R0, RZ ;
        /*02b0*/                   IADD3.X R3, R2, R3, RZ, P0, !PT ;
        /*02c0*/                   MOV R2, R16 ;
        /*02d0*/                   MOV R3, R3 ;
        /*02e0*/                   MOV R2, R2 ;
        /*02f0*/                   MOV R3, R3 ;
        /*0300*/                   ST.E.64.SYS [R2], R4 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/pow/cube-pow.cu", line 6
        /*0310*/                   MEMBAR.SC.VC ;
        /*0320*/                   ERRBAR ;
        /*0330*/                   EXIT ;
        /*0340*/                   MEMBAR.SC.VC ;
        /*0350*/                   ERRBAR ;
        /*0360*/                   EXIT ;
.L_x_6:
        /*0370*/                   BRA `(.L_x_6);
.L_x_110:


//--------------------- .text.pow                 --------------------------
	.section	.text.pow,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=28"
	.align	128
.text.pow:
        .type           pow,@function
        .size           pow,(.L_x_113 - pow)
pow:
        /*0000*/                   IADD3 R1, R1, -0x28, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_7) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_7:
        /*0050*/                   STL [R1+0x24], R25 ;
        /*0060*/                   STL [R1+0x20], R24 ;
        /*0070*/                   STL [R1+0x1c], R23 ;
        /*0080*/                   STL [R1+0x18], R22 ;
        /*0090*/                   STL [R1+0x14], R21 ;
        /*00a0*/                   STL [R1+0x10], R20 ;
        /*00b0*/                   STL [R1+0xc], R18 ;
        /*00c0*/                   STL [R1+0x8], R17 ;
        /*00d0*/                   STL [R1+0x4], R16 ;
        /*00e0*/                   STL [R1], R2 ;
        /*00f0*/                   MOV R7, R7 ;
        /*0100*/                   MOV R6, R6 ;
        /*0110*/                   MOV R5, R5 ;
        /*0120*/                   MOV R4, R4 ;
        /*0130*/                   MOV R8, R4 ;
        /*0140*/                   MOV R9, R5 ;
        /*0150*/                   MOV R6, R6 ;
        /*0160*/                   MOV R7, R7 ;
        /*0170*/                   MOV R3, R9 ;
        /*0180*/                   MOV R3, R3 ;
        /*0190*/                   MOV R0, R7 ;
        /*01a0*/                   MOV R0, R0 ;
        /*01b0*/                   MOV R4, 0xb ;
        /*01c0*/                   SHF.L.U32 R4, R4, 0x8, RZ ;
        /*01d0*/                   MOV R5, 0x14 ;
        /*01e0*/                   LOP3.LUT R4, R4, 0xff00, R5, 0xe2, !PT ;
        /*01f0*/                   PRMT R5, RZ, 0x4, R4 ;
        /*0200*/                   PRMT R4, RZ, 0x5, R4 ;
        /*0210*/                   SHF.R.S32.HI R5, RZ, R5, R0 ;
        /*0220*/                   SGXT R4, R5, R4 ;
        /*0230*/                   IADD3 R4, R4, -0x3ff, RZ ;
        /*0240*/                   IADD3 R4, R4, 0xb, RZ ;
        /*0250*/                   MOV R6, R6 ;
        /*0260*/                   MOV R7, R7 ;
        /*0270*/                   MOV R4, R4 ;
        /*0280*/                   SHF.R.S32.HI R5, RZ, 0x1f, R4 ;
        /*0290*/                   MOV R4, R4 ;
        /*02a0*/                   MOV R5, R5 ;
        /*02b0*/                   SHF.L.U64.HI R5, R6, R4, R7 ;
        /*02c0*/                   SHF.L.U32 R4, R6, R4, RZ ;
        /*02d0*/                   ISETP.EQ.U32.AND P0, PT, R4, RZ, PT ;
        /*02e0*/                   ISETP.EQ.AND.EX P0, PT, R5, -0x80000000, PT, P0 ;
        /*02f0*/                   SEL R12, RZ, 0x1, !P0 ;
        /*0300*/                   DADD R10, -RZ, |R8| ;
        /*0310*/                   MOV R10, R10 ;
        /*0320*/                   MOV R11, R11 ;
        /*0330*/                   MOV R4, R10 ;
        /*0340*/                   MOV R5, R11 ;
        /*0350*/                   MOV R4, R4 ;
        /*0360*/                   MOV R5, R5 ;
        /*0370*/                   MOV R6, R6 ;
        /*0380*/                   MOV R7, R7 ;
        /*0390*/                   MOV R24, R8 ;
        /*03a0*/                   MOV R25, R9 ;
        /*03b0*/                   MOV R8, R6 ;
        /*03c0*/                   MOV R9, R7 ;
        /*03d0*/                   MOV R22, R8 ;
        /*03e0*/                   MOV R23, R9 ;
        /*03f0*/                   MOV R17, R3 ;
        /*0400*/                   MOV R16, R0 ;
        /*0410*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x80, 0x0 ;
        /*0420*/                   P2R R18, PR, RZ, 0x1 ;
        /*0430*/                   MOV R2, R12 ;
        /*0440*/                   MOV R20, 32@lo((pow + .L_x_2@srel)) ;
        /*0450*/                   MOV R21, 32@hi((pow + .L_x_2@srel)) ;
        /*0460*/                   CALL.ABS.NOINC `(__internal_accurate_pow) ;
.L_x_2:
        /*0470*/                   MOV R4, R4 ;
        /*0480*/                   MOV R5, R5 ;
        /*0490*/                   ISETP.LT.AND P0, PT, R17, RZ, PT ;
        /*04a0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*04b0*/                   MOV R4, R4 ;
        /*04c0*/                   MOV R5, R5 ;
        /*04d0*/                   MOV R6, R4 ;
        /*04e0*/                   MOV R7, R5 ;
        /*04f0*/                   MOV R3, R6 ;
        /*0500*/                   MOV R0, R7 ;
        /*0510*/                   MOV R4, R4 ;
        /*0520*/                   MOV R5, R5 ;
        /*0530*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0540*/                   BSSY B0, `(.L_x_8) ;
        /*0550*/               @P0 BRA `(.L_x_9) ;
        /*0560*/                   BRA `(.L_x_10) ;
.L_x_10:
        /*0570*/                   ISETP.NE.AND P0, PT, R18, RZ, PT ;
        /*0580*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0590*/                   MOV R4, R3 ;
        /*05a0*/                   MOV R5, R0 ;
        /*05b0*/                   MOV R4, R4 ;
        /*05c0*/                   MOV R5, R5 ;
        /*05d0*/                   MOV R4, R4 ;
        /*05e0*/                   MOV R5, R5 ;
        /*05f0*/               @P0 BRA `(.L_x_9) ;
        /*0600*/                   BRA `(.L_x_11) ;
.L_x_11:
        /*0610*/                   MOV R0, R0 ;
        /*0620*/                   MOV R0, R0 ;
        /*0630*/                   MOV R3, R3 ;
        /*0640*/                   MOV R3, R3 ;
        /*0650*/                   LOP3.LUT R0, R0, 0x80000000, RZ, 0x3c, !PT ;
        /*0660*/                   MOV R4, R3 ;
        /*0670*/                   MOV R5, R0 ;
        /*0680*/                   MOV R4, R4 ;
        /*0690*/                   MOV R5, R5 ;
        /*06a0*/                   MOV R4, R4 ;
        /*06b0*/                   MOV R5, R5 ;
        /*06c0*/                   BRA `(.L_x_9) ;
.L_x_9:
        /*06d0*/                   BSYNC B0 ;
.L_x_8:
        /*06e0*/                   MOV R4, R4 ;
        /*06f0*/                   MOV R5, R5 ;
        /*0700*/                   DSETP.EQ.AND P0, PT, R24, RZ, PT ;
        /*0710*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0720*/                   MOV R4, R4 ;
        /*0730*/                   MOV R5, R5 ;
        /*0740*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0750*/                   BSSY B0, `(.L_x_12) ;
        /*0760*/               @P0 BRA `(.L_x_13) ;
        /*0770*/                   BRA `(.L_x_14) ;
.L_x_14:
        /*0780*/                   DADD R4, -RZ, |R22| ;
        /*0790*/                   MOV R4, R4 ;
        /*07a0*/                   MOV R5, R5 ;
        /*07b0*/                   DSETP.EQ.AND P0, PT, R4, 0.5, PT ;
        /*07c0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*07d0*/                   MOV R0, R2 ;
        /*07e0*/                   MOV R0, R0 ;
        /*07f0*/                   BMOV.32.CLEAR RZ, B1 ;
        /*0800*/                   BSSY B1, `(.L_x_15) ;
        /*0810*/               @P0 BRA `(.L_x_16) ;
        /*0820*/                   BRA `(.L_x_17) ;
.L_x_17:
        /*0830*/                   MOV R0, RZ ;
        /*0840*/                   MOV R0, R0 ;
        /*0850*/                   MOV R0, R0 ;
        /*0860*/                   BRA `(.L_x_16) ;
.L_x_16:
        /*0870*/                   BSYNC B1 ;
.L_x_15:
        /*0880*/                   MOV R0, R0 ;
        /*0890*/                   ISETP.NE.AND P0, PT, R0, RZ, PT ;
        /*08a0*/                   MOV R3, RZ ;
        /*08b0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*08c0*/                   MOV R3, R3 ;
        /*08d0*/                   MOV R0, R0 ;
        /*08e0*/                   MOV R3, R3 ;
        /*08f0*/                   BMOV.32.CLEAR RZ, B1 ;
        /*0900*/                   BSSY B1, `(.L_x_18) ;
        /*0910*/               @P0 BRA `(.L_x_19) ;
        /*0920*/                   BRA `(.L_x_20) ;
.L_x_20:
        /*0930*/                   MOV R3, R17 ;
        /*0940*/                   MOV R3, R3 ;
        /*0950*/                   BRA `(.L_x_19) ;
.L_x_19:
        /*0960*/                   BSYNC B1 ;
.L_x_18:
        /*0970*/                   MOV R3, R3 ;
        /*0980*/                   ISETP.LT.AND P0, PT, R16, RZ, PT ;
        /*0990*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*09a0*/                   MOV R3, R3 ;
        /*09b0*/                   MOV R4, R3 ;
        /*09c0*/                   MOV R3, R3 ;
        /*09d0*/                   BMOV.32.CLEAR RZ, B1 ;
        /*09e0*/                   BSSY B1, `(.L_x_21) ;
        /*09f0*/               @P0 BRA `(.L_x_22) ;
        /*0a00*/                   BRA `(.L_x_23) ;
.L_x_23:
        /*0a10*/                   LOP3.LUT R4, R4, 0x7ff00000, RZ, 0xfc, !PT ;
        /*0a20*/                   MOV R4, R4 ;
        /*0a30*/                   MOV R3, R4 ;
        /*0a40*/                   BRA `(.L_x_22) ;
.L_x_22:
        /*0a50*/                   BSYNC B1 ;
.L_x_21:
        /*0a60*/                   MOV R3, R3 ;
        /*0a70*/                   MOV R4, RZ ;
        /*0a80*/                   MOV R4, R4 ;
        /*0a90*/                   MOV R5, R3 ;
        /*0aa0*/                   MOV R4, R4 ;
        /*0ab0*/                   MOV R5, R5 ;
        /*0ac0*/                   MOV R0, R0 ;
        /*0ad0*/                   MOV R4, R4 ;
        /*0ae0*/                   MOV R5, R5 ;
        /*0af0*/                   MOV R0, R0 ;
        /*0b00*/                   BRA `(.L_x_24) ;
.L_x_13:
        /*0b10*/                   ISETP.LT.AND P0, PT, R17, RZ, PT ;
        /*0b20*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0b30*/                   MOV R4, R4 ;
        /*0b40*/                   MOV R5, R5 ;
        /*0b50*/                   MOV R6, R4 ;
        /*0b60*/                   MOV R7, R5 ;
        /*0b70*/                   BMOV.32.CLEAR RZ, B1 ;
        /*0b80*/                   BSSY B1, `(.L_x_25) ;
        /*0b90*/               @P0 BRA `(.L_x_26) ;
        /*0ba0*/                   BRA `(.L_x_27) ;
.L_x_27:
        /*0bb0*/                   FRND.F64.TRUNC R6, R22 ;
        /*0bc0*/                   DSETP.NEU.AND P0, PT, R22, R6, PT ;
        /*0bd0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0be0*/                   MOV R4, R4 ;
        /*0bf0*/                   MOV R5, R5 ;
        /*0c00*/                   MOV R6, R4 ;
        /*0c10*/                   MOV R7, R5 ;
        /*0c20*/               @P0 BRA `(.L_x_26) ;
        /*0c30*/                   BRA `(.L_x_28) ;
.L_x_28:
        /*0c40*/                   MOV R4, 0x0 ;
        /*0c50*/                   MOV R5, 0xfff80000 ;
        /*0c60*/                   MOV R4, R4 ;
        /*0c70*/                   MOV R5, R5 ;
        /*0c80*/                   MOV R6, R4 ;
        /*0c90*/                   MOV R7, R5 ;
        /*0ca0*/                   BRA `(.L_x_26) ;
.L_x_26:
        /*0cb0*/                   BSYNC B1 ;
.L_x_25:
        /*0cc0*/                   MOV R6, R6 ;
        /*0cd0*/                   MOV R7, R7 ;
        /*0ce0*/                   MOV R6, R6 ;
        /*0cf0*/                   MOV R7, R7 ;
        /*0d00*/                   MOV R0, R2 ;
        /*0d10*/                   MOV R4, R6 ;
        /*0d20*/                   MOV R5, R7 ;
        /*0d30*/                   MOV R0, R0 ;
        /*0d40*/                   BRA `(.L_x_24) ;
.L_x_24:
        /*0d50*/                   BSYNC B0 ;
.L_x_12:
        /*0d60*/                   MOV R0, R0 ;
        /*0d70*/                   MOV R4, R4 ;
        /*0d80*/                   MOV R5, R5 ;
        /*0d90*/                   DADD R6, R24, R22 ;
        /*0da0*/                   MOV R3, R6 ;
        /*0db0*/                   MOV R3, R7 ;
        /*0dc0*/                   MOV R3, R3 ;
        /*0dd0*/                   MOV R3, R3 ;
        /*0de0*/                   LOP3.LUT R3, R3, 0x7ff00000, RZ, 0xc0, !PT ;
        /*0df0*/                   ISETP.EQ.AND P0, PT, R3, 0x7ff00000, PT ;
        /*0e00*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0e10*/                   MOV R6, R4 ;
        /*0e20*/                   MOV R7, R5 ;
        /*0e30*/                   MOV R0, R0 ;
        /*0e40*/                   MOV R4, R4 ;
        /*0e50*/                   MOV R5, R5 ;
        /*0e60*/                   MOV R6, R6 ;
        /*0e70*/                   MOV R7, R7 ;
        /*0e80*/                   BMOV.32.CLEAR RZ, B1 ;
        /*0e90*/                   BSSY B1, `(.L_x_29) ;
        /*0ea0*/               @P0 BRA `(.L_x_30) ;
        /*0eb0*/                   BRA `(.L_x_31) ;
.L_x_31:
        /*0ec0*/                   DADD R6, -RZ, |R24| ;
        /*0ed0*/                   MOV R6, R6 ;
        /*0ee0*/                   MOV R7, R7 ;
        /*0ef0*/                   DSETP.LE.AND P0, PT, R6, +INF , PT ;
        /*0f00*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0f10*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0f20*/                   BSSY B0, `(.L_x_32) ;
        /*0f30*/               @P0 BRA `(.L_x_33) ;
        /*0f40*/                   BRA `(.L_x_34) ;
.L_x_34:
        /*0f50*/                   DADD R6, -RZ, |R22| ;
        /*0f60*/                   MOV R6, R6 ;
        /*0f70*/                   MOV R7, R7 ;
        /*0f80*/                   DSETP.LE.AND P0, PT, R6, +INF , PT ;
        /*0f90*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0fa0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0fb0*/               @P0 BRA `(.L_x_35) ;
        /*0fc0*/                   BRA `(.L_x_33) ;
.L_x_33:
        /*0fd0*/                   DADD R4, R24, R22 ;
        /*0fe0*/                   MOV R4, R4 ;
        /*0ff0*/                   MOV R5, R5 ;
        /*1000*/                   MOV R4, R4 ;
        /*1010*/                   MOV R5, R5 ;
        /*1020*/                   BRA `(.L_x_36) ;
.L_x_35:
        /*1030*/                   MOV R3, R22 ;
        /*1040*/                   MOV R3, R3 ;
        /*1050*/                   MOV R6, R23 ;
        /*1060*/                   MOV R6, R6 ;
        /*1070*/                   LOP3.LUT R6, R6, 0x7fffffff, RZ, 0xc0, !PT ;
        /*1080*/                   ISETP.EQ.AND P1, PT, R6, 0x7ff00000, PT ;
        /*1090*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0 ;
        /*10a0*/                   PLOP3.LUT P1, PT, P1, PT, PT, 0x8, 0x0 ;
        /*10b0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x80, 0x0 ;
        /*10c0*/                   MOV R3, R3 ;
        /*10d0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x80, 0x0 ;
        /*10e0*/                   BMOV.32.CLEAR RZ, B2 ;
        /*10f0*/                   BSSY B2, `(.L_x_37) ;
        /*1100*/               @P1 BRA `(.L_x_38) ;
        /*1110*/                   BRA `(.L_x_39) ;
.L_x_39:
        /*1120*/                   ISETP.EQ.AND P0, PT, R3, RZ, PT ;
        /*1130*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x80, 0x0 ;
        /*1140*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x80, 0x0 ;
        /*1150*/                   BRA `(.L_x_38) ;
.L_x_38:
        /*1160*/                   BSYNC B2 ;
.L_x_37:
        /*1170*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x80, 0x0 ;
        /*1180*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1190*/                   BMOV.32.CLEAR RZ, B2 ;
        /*11a0*/                   BSSY B2, `(.L_x_40) ;
        /*11b0*/               @P0 BRA `(.L_x_41) ;
        /*11c0*/                   BRA `(.L_x_42) ;
.L_x_42:
        /*11d0*/                   DADD R4, -RZ, |R24| ;
        /*11e0*/                   MOV R4, R4 ;
        /*11f0*/                   MOV R5, R5 ;
        /*1200*/                   DSETP.GT.AND P0, PT, R4, 1, PT ;
        /*1210*/                   MOV R0, RZ ;
        /*1220*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1230*/                   MOV R0, R0 ;
        /*1240*/                   MOV R0, R0 ;
        /*1250*/                   BMOV.32.CLEAR RZ, B3 ;
        /*1260*/                   BSSY B3, `(.L_x_43) ;
        /*1270*/               @P0 BRA `(.L_x_44) ;
        /*1280*/                   BRA `(.L_x_45) ;
.L_x_45:
        /*1290*/                   MOV R0, 0x7ff00000 ;
        /*12a0*/                   MOV R0, R0 ;
        /*12b0*/                   MOV R0, R0 ;
        /*12c0*/                   BRA `(.L_x_44) ;
.L_x_44:
        /*12d0*/                   BSYNC B3 ;
.L_x_43:
        /*12e0*/                   MOV R0, R0 ;
        /*12f0*/                   ISETP.LT.AND P0, PT, R16, RZ, PT ;
        /*1300*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1310*/                   MOV R0, R0 ;
        /*1320*/                   MOV R3, R0 ;
        /*1330*/                   MOV R0, R0 ;
        /*1340*/                   BMOV.32.CLEAR RZ, B3 ;
        /*1350*/                   BSSY B3, `(.L_x_46) ;
        /*1360*/               @P0 BRA `(.L_x_47) ;
        /*1370*/                   BRA `(.L_x_48) ;
.L_x_48:
        /*1380*/                   LOP3.LUT R3, R3, 0x7ff00000, RZ, 0x3c, !PT ;
        /*1390*/                   MOV R3, R3 ;
        /*13a0*/                   MOV R0, R3 ;
        /*13b0*/                   BRA `(.L_x_47) ;
.L_x_47:
        /*13c0*/                   BSYNC B3 ;
.L_x_46:
        /*13d0*/                   MOV R0, R0 ;
        /*13e0*/                   DSETP.EQ.AND P0, PT, R24, -1, PT ;
        /*13f0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1400*/                   MOV R0, R0 ;
        /*1410*/                   MOV R0, R0 ;
        /*1420*/                   BMOV.32.CLEAR RZ, B3 ;
        /*1430*/                   BSSY B3, `(.L_x_49) ;
        /*1440*/               @P0 BRA `(.L_x_50) ;
        /*1450*/                   BRA `(.L_x_51) ;
.L_x_51:
        /*1460*/                   MOV R0, 0x3ff00000 ;
        /*1470*/                   MOV R0, R0 ;
        /*1480*/                   MOV R0, R0 ;
        /*1490*/                   BRA `(.L_x_50) ;
.L_x_50:
        /*14a0*/                   BSYNC B3 ;
.L_x_49:
        /*14b0*/                   MOV R0, R0 ;
        /*14c0*/                   MOV R4, RZ ;
        /*14d0*/                   MOV R4, R4 ;
        /*14e0*/                   MOV R5, R0 ;
        /*14f0*/                   MOV R4, R4 ;
        /*1500*/                   MOV R5, R5 ;
        /*1510*/                   MOV R4, R4 ;
        /*1520*/                   MOV R5, R5 ;
        /*1530*/                   BRA `(.L_x_52) ;
.L_x_41:
        /*1540*/                   MOV R3, R24 ;
        /*1550*/                   MOV R3, R3 ;
        /*1560*/                   MOV R6, R25 ;
        /*1570*/                   MOV R6, R6 ;
        /*1580*/                   LOP3.LUT R6, R6, 0x7fffffff, RZ, 0xc0, !PT ;
        /*1590*/                   ISETP.EQ.AND P1, PT, R6, 0x7ff00000, PT ;
        /*15a0*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0 ;
        /*15b0*/                   PLOP3.LUT P1, PT, P1, PT, PT, 0x8, 0x0 ;
        /*15c0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x80, 0x0 ;
        /*15d0*/                   MOV R3, R3 ;
        /*15e0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x80, 0x0 ;
        /*15f0*/                   BMOV.32.CLEAR RZ, B3 ;
        /*1600*/                   BSSY B3, `(.L_x_53) ;
        /*1610*/               @P1 BRA `(.L_x_54) ;
        /*1620*/                   BRA `(.L_x_55) ;
.L_x_55:
        /*1630*/                   ISETP.EQ.AND P0, PT, R3, RZ, PT ;
        /*1640*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x80, 0x0 ;
        /*1650*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x80, 0x0 ;
        /*1660*/                   BRA `(.L_x_54) ;
.L_x_54:
        /*1670*/                   BSYNC B3 ;
.L_x_53:
        /*1680*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x80, 0x0 ;
        /*1690*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*16a0*/                   MOV R4, R4 ;
        /*16b0*/                   MOV R5, R5 ;
        /*16c0*/                   MOV R4, R4 ;
        /*16d0*/                   MOV R5, R5 ;
        /*16e0*/                   BMOV.32.CLEAR RZ, B3 ;
        /*16f0*/                   BSSY B3, `(.L_x_56) ;
        /*1700*/               @P0 BRA `(.L_x_57) ;
        /*1710*/                   BRA `(.L_x_58) ;
.L_x_58:
        /*1720*/                   ISETP.GE.AND P0, PT, R16, RZ, PT ;
        /*1730*/                   MOV R3, RZ ;
        /*1740*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1750*/                   MOV R3, R3 ;
        /*1760*/                   MOV R3, R3 ;
        /*1770*/                   BMOV.32.CLEAR RZ, B4 ;
        /*1780*/                   BSSY B4, `(.L_x_59) ;
        /*1790*/               @P0 BRA `(.L_x_60) ;
        /*17a0*/                   BRA `(.L_x_61) ;
.L_x_61:
        /*17b0*/                   MOV R3, 0x7ff00000 ;
        /*17c0*/                   MOV R3, R3 ;
        /*17d0*/                   MOV R3, R3 ;
        /*17e0*/                   BRA `(.L_x_60) ;
.L_x_60:
        /*17f0*/                   BSYNC B4 ;
.L_x_59:
        /*1800*/                   MOV R3, R3 ;
        /*1810*/                   ISETP.LT.AND P0, PT, R17, RZ, PT ;
        /*1820*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1830*/                   MOV R3, R3 ;
        /*1840*/                   MOV R4, R3 ;
        /*1850*/                   MOV R3, R3 ;
        /*1860*/                   BMOV.32.CLEAR RZ, B4 ;
        /*1870*/                   BSSY B4, `(.L_x_62) ;
        /*1880*/               @P0 BRA `(.L_x_63) ;
        /*1890*/                   BRA `(.L_x_64) ;
.L_x_64:
        /*18a0*/                   ISETP.NE.AND P0, PT, R0, RZ, PT ;
        /*18b0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*18c0*/                   MOV R3, R4 ;
        /*18d0*/                   MOV R3, R3 ;
        /*18e0*/               @P0 BRA `(.L_x_63) ;
        /*18f0*/                   BRA `(.L_x_65) ;
.L_x_65:
        /*1900*/                   LOP3.LUT R0, R16, 0x7fffffff, RZ, 0xc0, !PT ;
        /*1910*/                   ISETP.NE.AND P0, PT, R0, 0x3fe00000, PT ;
        /*1920*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1930*/                   MOV R3, R4 ;
        /*1940*/                   MOV R3, R3 ;
        /*1950*/               @P0 BRA `(.L_x_63) ;
        /*1960*/                   BRA `(.L_x_66) ;
.L_x_66:
        /*1970*/                   LOP3.LUT R4, R4, 0x80000000, RZ, 0x3c, !PT ;
        /*1980*/                   MOV R4, R4 ;
        /*1990*/                   MOV R3, R4 ;
        /*19a0*/                   BRA `(.L_x_63) ;
.L_x_63:
        /*19b0*/                   BSYNC B4 ;
.L_x_62:
        /*19c0*/                   MOV R3, R3 ;
        /*19d0*/                   MOV R4, RZ ;
        /*19e0*/                   MOV R4, R4 ;
        /*19f0*/                   MOV R5, R3 ;
        /*1a00*/                   MOV R4, R4 ;
        /*1a10*/                   MOV R5, R5 ;
        /*1a20*/                   MOV R4, R4 ;
        /*1a30*/                   MOV R5, R5 ;
        /*1a40*/                   BRA `(.L_x_57) ;
.L_x_57:
        /*1a50*/                   BSYNC B3 ;
.L_x_56:
        /*1a60*/                   MOV R4, R4 ;
        /*1a70*/                   MOV R5, R5 ;
        /*1a80*/                   MOV R4, R4 ;
        /*1a90*/                   MOV R5, R5 ;
        /*1aa0*/                   MOV R4, R4 ;
        /*1ab0*/                   MOV R5, R5 ;
        /*1ac0*/                   BRA `(.L_x_52) ;
.L_x_52:
        /*1ad0*/                   BSYNC B2 ;
.L_x_40:
        /*1ae0*/                   MOV R4, R4 ;
        /*1af0*/                   MOV R5, R5 ;
        /*1b00*/                   MOV R4, R4 ;
        /*1b10*/                   MOV R5, R5 ;
        /*1b20*/                   MOV R4, R4 ;
        /*1b30*/                   MOV R5, R5 ;
        /*1b40*/                   BRA `(.L_x_36) ;
.L_x_36:
        /*1b50*/                   BSYNC B0 ;
.L_x_32:
        /*1b60*/                   MOV R4, R4 ;
        /*1b70*/                   MOV R5, R5 ;
        /*1b80*/                   MOV R4, R4 ;
        /*1b90*/                   MOV R5, R5 ;
        /*1ba0*/                   MOV R6, R4 ;
        /*1bb0*/                   MOV R7, R5 ;
        /*1bc0*/                   BRA `(.L_x_30) ;
.L_x_30:
        /*1bd0*/                   BSYNC B1 ;
.L_x_29:
        /*1be0*/                   MOV R6, R6 ;
        /*1bf0*/                   MOV R7, R7 ;
        /*1c00*/                   DSETP.EQ.AND P0, PT, R24, 1, PT ;
        /*1c10*/                   MOV R6, R6 ;
        /*1c20*/                   MOV R7, R7 ;
        /*1c30*/                   BMOV.32.CLEAR RZ, B0 ;
        /*1c40*/                   BSSY B0, `(.L_x_67) ;
        /*1c50*/               @P0 BRA `(.L_x_68) ;
        /*1c60*/                   BRA `(.L_x_69) ;
.L_x_69:
        /*1c70*/                   DSETP.EQ.AND P0, PT, R22, RZ, PT ;
        /*1c80*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1c90*/                   MOV R6, R6 ;
        /*1ca0*/                   MOV R7, R7 ;
        /*1cb0*/                   MOV R6, R6 ;
        /*1cc0*/                   MOV R7, R7 ;
        /*1cd0*/               @P0 BRA `(.L_x_70) ;
        /*1ce0*/                   BRA `(.L_x_68) ;
.L_x_68:
        /*1cf0*/                   MOV R4, 0x0 ;
        /*1d00*/                   MOV R5, 0x3ff00000 ;
        /*1d10*/                   MOV R4, R4 ;
        /*1d20*/                   MOV R5, R5 ;
        /*1d30*/                   MOV R6, R4 ;
        /*1d40*/                   MOV R7, R5 ;
        /*1d50*/                   BRA `(.L_x_70) ;
.L_x_70:
        /*1d60*/                   BSYNC B0 ;
.L_x_67:
        /*1d70*/                   MOV R6, R6 ;
        /*1d80*/                   MOV R7, R7 ;
        /*1d90*/                   MOV R4, R6 ;
        /*1da0*/                   MOV R5, R7 ;
        /*1db0*/                   MOV R4, R4 ;
        /*1dc0*/                   MOV R5, R5 ;
        /*1dd0*/                   BRA `(.L_x_71) ;
.L_x_71:
        /*1de0*/                   MOV R4, R4 ;
        /*1df0*/                   MOV R5, R5 ;
        /*1e00*/                   LDL R2, [R1] ;
        /*1e10*/                   LDL R16, [R1+0x4] ;
        /*1e20*/                   LDL R17, [R1+0x8] ;
        /*1e30*/                   LDL R18, [R1+0xc] ;
        /*1e40*/                   LDL R20, [R1+0x10] ;
        /*1e50*/                   LDL R21, [R1+0x14] ;
        /*1e60*/                   LDL R22, [R1+0x18] ;
        /*1e70*/                   LDL R23, [R1+0x1c] ;
        /*1e80*/                   LDL R24, [R1+0x20] ;
        /*1e90*/                   LDL R25, [R1+0x24] ;
        /*1ea0*/                   IADD3 R1, R1, 0x28, RZ ;
        /*1eb0*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_72:
        /*1ec0*/                   BRA `(.L_x_72);
        /*1ed0*/                   NOP;
        /*1ee0*/                   NOP;
        /*1ef0*/                   NOP;
.L_x_113:


//--------------------- .text.__internal_accurate_pow --------------------------
	.section	.text.__internal_accurate_pow,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=44"
	.align	128
.text.__internal_accurate_pow:
        .type           __internal_accurate_pow,@function
        .size           __internal_accurate_pow,(.L_x_114 - __internal_accurate_pow)
__internal_accurate_pow:
        /*0000*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0010*/                   MOV R7, R7 ;
        /*0020*/                   MOV R6, R6 ;
        /*0030*/                   MOV R5, R5 ;
        /*0040*/                   MOV R4, R4 ;
        /*0050*/                   MOV R11, R4 ;
        /*0060*/                   MOV R5, R5 ;
        /*0070*/                   MOV R6, R6 ;
        /*0080*/                   MOV R7, R7 ;
        /*0090*/                   MOV R0, R5 ;
        /*00a0*/                   MOV R0, R0 ;
        /*00b0*/                   MOV R3, R11 ;
        /*00c0*/                   MOV R3, R3 ;
        /*00d0*/                   SHF.R.U32.HI R4, RZ, 0x14, R0 ;
        /*00e0*/                   ISETP.EQ.AND P0, PT, R4, RZ, PT ;
        /*00f0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0100*/                   MOV R8, R3 ;
        /*0110*/                   MOV R9, R0 ;
        /*0120*/                   MOV R10, R4 ;
        /*0130*/                   MOV R4, R11 ;
        /*0140*/                   MOV R5, R5 ;
        /*0150*/                   MOV R4, R4 ;
        /*0160*/                   MOV R5, R5 ;
        /*0170*/                   MOV R6, R6 ;
        /*0180*/                   MOV R7, R7 ;
        /*0190*/                   MOV R0, R6 ;
        /*01a0*/                   MOV R3, R7 ;
        /*01b0*/                   MOV R8, R8 ;
        /*01c0*/                   MOV R9, R9 ;
        /*01d0*/                   MOV R10, R10 ;
        /*01e0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*01f0*/                   BSSY B0, `(.L_x_73) ;
        /*0200*/               @P0 BRA `(.L_x_74) ;
        /*0210*/                   BRA `(.L_x_75) ;
.L_x_75:
        /*0220*/                   DMUL R4, R4, 1.80143985094819840000e+16 ;
        /*0230*/                   MOV R6, R4 ;
        /*0240*/                   MOV R4, R5 ;
        /*0250*/                   MOV R4, R4 ;
        /*0260*/                   MOV R4, R4 ;
        /*0270*/                   MOV R5, R6 ;
        /*0280*/                   MOV R5, R5 ;
        /*0290*/                   SHF.R.U32.HI R6, RZ, 0x14, R4 ;
        /*02a0*/                   IADD3 R6, R6, -0x36, RZ ;
        /*02b0*/                   MOV R5, R5 ;
        /*02c0*/                   MOV R4, R4 ;
        /*02d0*/                   MOV R6, R6 ;
        /*02e0*/                   MOV R8, R5 ;
        /*02f0*/                   MOV R9, R4 ;
        /*0300*/                   MOV R10, R6 ;
        /*0310*/                   BRA `(.L_x_74) ;
.L_x_74:
        /*0320*/                   BSYNC B0 ;
.L_x_73:
        /*0330*/                   MOV R10, R10 ;
        /*0340*/                   MOV R9, R9 ;
        /*0350*/                   MOV R4, R8 ;
        /*0360*/                   IADD3 R10, R10, -0x3ff, RZ ;
        /*0370*/                   LOP3.LUT R9, R9, 0x800fffff, RZ, 0xc0, !PT ;
        /*0380*/                   LOP3.LUT R9, R9, 0x3ff00000, RZ, 0xfc, !PT ;
        /*0390*/                   MOV R4, R4 ;
        /*03a0*/                   MOV R5, R9 ;
        /*03b0*/                   ISETP.GT.U32.AND P0, PT, R9, 0x3ff6a09e, PT ;
        /*03c0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*03d0*/                   MOV R4, R4 ;
        /*03e0*/                   MOV R5, R5 ;
        /*03f0*/                   MOV R8, R10 ;
        /*0400*/                   MOV R10, R10 ;
        /*0410*/                   MOV R9, R4 ;
        /*0420*/                   MOV R11, R5 ;
        /*0430*/                   MOV R9, R9 ;
        /*0440*/                   MOV R11, R11 ;
        /*0450*/                   MOV R6, R4 ;
        /*0460*/                   MOV R7, R5 ;
        /*0470*/                   MOV R4, R8 ;
        /*0480*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0490*/                   BSSY B0, `(.L_x_76) ;
        /*04a0*/               @P0 BRA `(.L_x_77) ;
        /*04b0*/                   BRA `(.L_x_78) ;
.L_x_78:
        /*04c0*/                   MOV R4, R9 ;
        /*04d0*/                   MOV R4, R4 ;
        /*04e0*/                   MOV R5, R11 ;
        /*04f0*/                   MOV R5, R5 ;
        /*0500*/                   IADD3 R5, R5, -0x100000, RZ ;
        /*0510*/                   MOV R4, R4 ;
        /*0520*/                   MOV R5, R5 ;
        /*0530*/                   IADD3 R10, R10, 0x1, RZ ;
        /*0540*/                   MOV R4, R4 ;
        /*0550*/                   MOV R5, R5 ;
        /*0560*/                   MOV R10, R10 ;
        /*0570*/                   MOV R6, R4 ;
        /*0580*/                   MOV R7, R5 ;
        /*0590*/                   MOV R4, R10 ;
        /*05a0*/                   BRA `(.L_x_77) ;
.L_x_77:
        /*05b0*/                   BSYNC B0 ;
.L_x_76:
        /*05c0*/                   MOV R4, R4 ;
        /*05d0*/                   MOV R8, R6 ;
        /*05e0*/                   MOV R9, R7 ;
        /*05f0*/                   DADD R6, R8, -1 ;
        /*0600*/                   MOV R10, 0x0 ;
        /*0610*/                   MOV R11, 0x3ff00000 ;
        /*0620*/                   DADD R8, R8, 1 ;
        /*0630*/                   MOV R5, R8 ;
        /*0640*/                   MOV R5, R9 ;
        /*0650*/                   MOV R12, RZ ;
        /*0660*/                   MUFU.RCP64H R5, R5 ;
        /*0670*/                   MOV R12, R12 ;
        /*0680*/                   MOV R13, R5 ;
        /*0690*/                   DADD R8, -RZ, -R8 ;
        /*06a0*/                   MOV R8, R8 ;
        /*06b0*/                   MOV R9, R9 ;
        /*06c0*/                   DFMA R8, R8, R12, R10 ;
        /*06d0*/                   DFMA R10, R8, R8, R8 ;
        /*06e0*/                   DFMA R10, R10, R12, R12 ;
        /*06f0*/                   DMUL R8, R6, R10 ;
        /*0700*/                   DADD R8, R8, R8 ;
        /*0710*/                   DMUL R12, R8, R8 ;
        /*0720*/                   MOV R14, 0x41ad3b5a ;
        /*0730*/                   MOV R15, 0x3ed0f5d2 ;
        /*0740*/                   MOV R32, 0x7d2cafe2 ;
        /*0750*/                   MOV R33, 0x3eb0f5ff ;
        /*0760*/                   DFMA R14, R32, R12, R14 ;
        /*0770*/                   MOV R32, 0x75488a3f ;
        /*0780*/                   MOV R33, 0x3ef3b20a ;
        /*0790*/                   DFMA R14, R14, R12, R32 ;
        /*07a0*/                   MOV R32, 0xe4faecd5 ;
        /*07b0*/                   MOV R33, 0x3f1745cd ;
        /*07c0*/                   DFMA R14, R14, R12, R32 ;
        /*07d0*/                   MOV R32, 0x258a578b ;
        /*07e0*/                   MOV R33, 0x3f3c71c7 ;
        /*07f0*/                   DFMA R14, R14, R12, R32 ;
        /*0800*/                   MOV R32, 0x9242b910 ;
        /*0810*/                   MOV R33, 0x3f624924 ;
        /*0820*/                   DFMA R14, R14, R12, R32 ;
        /*0830*/                   MOV R32, 0x99999dfb ;
        /*0840*/                   MOV R33, 0x3f899999 ;
        /*0850*/                   DFMA R14, R14, R12, R32 ;
        /*0860*/                   DMUL R14, R14, R12 ;
        /*0870*/                   DADD R12, R6, -R8 ;
        /*0880*/                   DMUL R12, R12, 2 ;
        /*0890*/                   DADD R32, -RZ, -R8 ;
        /*08a0*/                   MOV R32, R32 ;
        /*08b0*/                   MOV R33, R33 ;
        /*08c0*/                   DFMA R12, R32, R6, R12 ;
        /*08d0*/                   DMUL R10, R10, R12 ;
        /*08e0*/                   DADD R12, R14, c[`(__internal_accurate_pow.const2.0.8)] ;
        /*08f0*/                   MOV R6, 0x55555555 ;
        /*0900*/                   MOV R7, 0x3fb55555 ;
        /*0910*/                   DADD R6, R6, -R12 ;
        /*0920*/                   DADD R6, R6, R14 ;
        /*0930*/                   DADD R6, R6, RZ ;
        /*0940*/                   DADD R14, R6, c[`(__internal_accurate_pow.const2.8.16)] ;
        /*0950*/                   DADD R6, R12, R14 ;
        /*0960*/                   DADD R12, R12, -R6 ;
        /*0970*/                   DADD R12, R12, R14 ;
        /*0980*/                   DMUL R14, R8, R8 ;
        /*0990*/                   DADD R32, -RZ, -R14 ;
        /*09a0*/                   MOV R32, R32 ;
        /*09b0*/                   MOV R33, R33 ;
        /*09c0*/                   DFMA R32, R8, R8, R32 ;
        /*09d0*/                   MOV R5, R10 ;
        /*09e0*/                   MOV R5, R5 ;
        /*09f0*/                   MOV R34, R11 ;
        /*0a00*/                   MOV R34, R34 ;
        /*0a10*/                   IADD3 R34, R34, 0x100000, RZ ;
        /*0a20*/                   MOV R35, R34 ;
        /*0a30*/                   MOV R34, R5 ;
        /*0a40*/                   DFMA R32, R8, R34, R32 ;
        /*0a50*/                   DMUL R34, R14, R8 ;
        /*0a60*/                   DADD R40, -RZ, -R34 ;
        /*0a70*/                   MOV R40, R40 ;
        /*0a80*/                   MOV R41, R41 ;
        /*0a90*/                   DFMA R40, R14, R8, R40 ;
        /*0aa0*/                   DFMA R40, R14, R10, R40 ;
        /*0ab0*/                   DFMA R32, R32, R8, R40 ;
        /*0ac0*/                   DMUL R14, R6, R34 ;
        /*0ad0*/                   DADD R40, -RZ, -R14 ;
        /*0ae0*/                   MOV R40, R40 ;
        /*0af0*/                   MOV R41, R41 ;
        /*0b00*/                   DFMA R40, R6, R34, R40 ;
        /*0b10*/                   DFMA R32, R6, R32, R40 ;
        /*0b20*/                   DFMA R12, R12, R34, R32 ;
        /*0b30*/                   DADD R6, R14, R12 ;
        /*0b40*/                   DADD R14, R14, -R6 ;
        /*0b50*/                   DADD R14, R14, R12 ;
        /*0b60*/                   DADD R12, R8, R6 ;
        /*0b70*/                   DADD R8, R8, -R12 ;
        /*0b80*/                   DADD R8, R8, R6 ;
        /*0b90*/                   DADD R8, R8, R14 ;
        /*0ba0*/                   DADD R8, R8, R10 ;
        /*0bb0*/                   DADD R6, R12, R8 ;
        /*0bc0*/                   DADD R12, R12, -R6 ;
        /*0bd0*/                   DADD R12, R12, R8 ;
        /*0be0*/                   LOP3.LUT R4, R4, 0x80000000, RZ, 0x3c, !PT ;
        /*0bf0*/                   MOV R8, 0x80000000 ;
        /*0c00*/                   MOV R9, 0x43300000 ;
        /*0c10*/                   MOV R4, R4 ;
        /*0c20*/                   MOV R5, R9 ;
        /*0c30*/                   MOV R8, R8 ;
        /*0c40*/                   MOV R9, R9 ;
        /*0c50*/                   DADD R4, R4, -R8 ;
        /*0c60*/                   MOV R8, 0xfefa39ef ;
        /*0c70*/                   MOV R9, 0x3fe62e42 ;
        /*0c80*/                   DFMA R10, R4, R8, R6 ;
        /*0c90*/                   DADD R14, -RZ, -R4 ;
        /*0ca0*/                   MOV R14, R14 ;
        /*0cb0*/                   MOV R15, R15 ;
        /*0cc0*/                   DFMA R14, R14, R8, R10 ;
        /*0cd0*/                   DADD R14, R14, -R6 ;
        /*0ce0*/                   DADD R12, R12, -R14 ;
        /*0cf0*/                   MOV R6, 0x3b39803f ;
        /*0d00*/                   MOV R7, 0x3c7abc9e ;
        /*0d10*/                   DFMA R6, R4, R6, R12 ;
        /*0d20*/                   DADD R4, R10, R6 ;
        /*0d30*/                   DADD R10, R10, -R4 ;
        /*0d40*/                   DADD R10, R10, R6 ;
        /*0d50*/                   MOV R3, R3 ;
        /*0d60*/                   MOV R3, R3 ;
        /*0d70*/                   MOV R0, R0 ;
        /*0d80*/                   MOV R0, R0 ;
        /*0d90*/                   IADD3 R6, R3, R3, RZ ;
        /*0da0*/                   ISETP.GE.U32.AND P0, PT, R6, -0x2000000, PT ;
        /*0db0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0dc0*/                   MOV R3, R3 ;
        /*0dd0*/                   MOV R4, R4 ;
        /*0de0*/                   MOV R5, R5 ;
        /*0df0*/                   MOV R10, R10 ;
        /*0e00*/                   MOV R11, R11 ;
        /*0e10*/                   MOV R6, R3 ;
        /*0e20*/                   MOV R0, R0 ;
        /*0e30*/                   MOV R3, R3 ;
        /*0e40*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0e50*/                   BSSY B0, `(.L_x_79) ;
        /*0e60*/               @P0 BRA `(.L_x_80) ;
        /*0e70*/                   BRA `(.L_x_81) ;
.L_x_81:
        /*0e80*/                   LOP3.LUT R6, R6, 0xff0fffff, RZ, 0xc0, !PT ;
        /*0e90*/                   MOV R6, R6 ;
        /*0ea0*/                   MOV R3, R6 ;
        /*0eb0*/                   BRA `(.L_x_80) ;
.L_x_80:
        /*0ec0*/                   BSYNC B0 ;
.L_x_79:
        /*0ed0*/                   MOV R3, R3 ;
        /*0ee0*/                   MOV R6, R0 ;
        /*0ef0*/                   MOV R7, R3 ;
        /*0f00*/                   DMUL R8, R4, R6 ;
        /*0f10*/                   DADD R12, -RZ, -R8 ;
        /*0f20*/                   MOV R12, R12 ;
        /*0f30*/                   MOV R13, R13 ;
        /*0f40*/                   DFMA R12, R4, R6, R12 ;
        /*0f50*/                   DFMA R6, R10, R6, R12 ;
        /*0f60*/                   DADD R4, R8, R6 ;
        /*0f70*/                   DADD R8, R8, -R4 ;
        /*0f80*/                   DADD R6, R8, R6 ;
        /*0f90*/                   MOV R8, 0x0 ;
        /*0fa0*/                   MOV R9, 0x43380000 ;
        /*0fb0*/                   MOV R10, 0x652b82fe ;
        /*0fc0*/                   MOV R11, 0x3ff71547 ;
        /*0fd0*/                   DFMA R12, R4, R10, R8 ;
        /*0fe0*/                   MOV R0, R12 ;
        /*0ff0*/                   MOV R12, R13 ;
        /*1000*/                   MOV R0, R0 ;
        /*1010*/                   MOV R0, R0 ;
        /*1020*/                   DFMA R8, R4, R10, R8 ;
        /*1030*/                   MOV R10, 0x0 ;
        /*1040*/                   MOV R11, 0xc3380000 ;
        /*1050*/                   DADD R8, R8, R10 ;
        /*1060*/                   MOV R10, 0xfefa39ef ;
        /*1070*/                   MOV R11, 0xbfe62e42 ;
        /*1080*/                   DFMA R10, R8, R10, R4 ;
        /*1090*/                   MOV R12, 0x3b39803f ;
        /*10a0*/                   MOV R13, 0xbc7abc9e ;
        /*10b0*/                   DFMA R8, R8, R12, R10 ;
        /*10c0*/                   MOV R10, 0xfca213ea ;
        /*10d0*/                   MOV R11, 0x3e928af3 ;
        /*10e0*/                   MOV R12, 0x69ce2bdf ;
        /*10f0*/                   MOV R13, 0x3e5ade15 ;
        /*1100*/                   DFMA R10, R12, R8, R10 ;
        /*1110*/                   MOV R12, 0x62401315 ;
        /*1120*/                   MOV R13, 0x3ec71dee ;
        /*1130*/                   DFMA R10, R10, R8, R12 ;
        /*1140*/                   MOV R12, 0x7c89eb71 ;
        /*1150*/                   MOV R13, 0x3efa0199 ;
        /*1160*/                   DFMA R10, R10, R8, R12 ;
        /*1170*/                   MOV R12, 0x14761f65 ;
        /*1180*/                   MOV R13, 0x3f2a01a0 ;
        /*1190*/                   DFMA R10, R10, R8, R12 ;
        /*11a0*/                   MOV R12, 0x1852b7af ;
        /*11b0*/                   MOV R13, 0x3f56c16c ;
        /*11c0*/                   DFMA R10, R10, R8, R12 ;
        /*11d0*/                   MOV R12, 0x11122322 ;
        /*11e0*/                   MOV R13, 0x3f811111 ;
        /*11f0*/                   DFMA R10, R10, R8, R12 ;
        /*1200*/                   MOV R12, 0x555502a1 ;
        /*1210*/                   MOV R13, 0x3fa55555 ;
        /*1220*/                   DFMA R10, R10, R8, R12 ;
        /*1230*/                   MOV R12, 0x55555511 ;
        /*1240*/                   MOV R13, 0x3fc55555 ;
        /*1250*/                   DFMA R10, R10, R8, R12 ;
        /*1260*/                   MOV R12, 0xb ;
        /*1270*/                   MOV R13, 0x3fe00000 ;
        /*1280*/                   DFMA R10, R10, R8, R12 ;
        /*1290*/                   MOV R12, 0x0 ;
        /*12a0*/                   MOV R13, 0x3ff00000 ;
        /*12b0*/                   DFMA R10, R10, R8, R12 ;
        /*12c0*/                   DFMA R10, R10, R8, R12 ;
        /*12d0*/                   MOV R13, R10 ;
        /*12e0*/                   MOV R14, R11 ;
        /*12f0*/                   MOV R3, R13 ;
        /*1300*/                   MOV R3, R3 ;
        /*1310*/                   MOV R8, R14 ;
        /*1320*/                   MOV R8, R8 ;
        /*1330*/                   SHF.L.U32 R9, R0, 0x14, RZ ;
        /*1340*/                   IADD3 R8, R9, R8, RZ ;
        /*1350*/                   MOV R10, R3 ;
        /*1360*/                   MOV R11, R8 ;
        /*1370*/                   MOV R3, R5 ;
        /*1380*/                   MOV R3, R3 ;
        /*1390*/                   MOV R12, R3 ;
        /*13a0*/                   MOV R4, R4 ;
        /*13b0*/                   MOV R5, R5 ;
        /*13c0*/                   MOV R6, R6 ;
        /*13d0*/                   MOV R7, R7 ;
        /*13e0*/                   MOV R0, R0 ;
        /*13f0*/                   MOV R8, R13 ;
        /*1400*/                   MOV R9, R14 ;
        /*1410*/                   MOV R8, R8 ;
        /*1420*/                   MOV R9, R9 ;
        /*1430*/                   MOV R3, R8 ;
        /*1440*/                   MOV R8, R9 ;
        /*1450*/                   MOV R10, R10 ;
        /*1460*/                   MOV R11, R11 ;
        /*1470*/                   MOV R12, R12 ;
        /*1480*/                   BRA `(.L_x_82) ;
.L_x_82:
        /*1490*/                   FADD.FTZ R12, -RZ, |R12| ;
        /*14a0*/                   MOV R12, R12 ;
        /*14b0*/                   BRA `(.L_x_83) ;
.L_x_83:
        /*14c0*/                   FSETP.LT.FTZ.AND P0, PT, R12, 4.1917929649353027344, PT ;
        /*14d0*/                   MOV R10, R10 ;
        /*14e0*/                   MOV R11, R11 ;
        /*14f0*/                   MOV R10, R10 ;
        /*1500*/                   MOV R11, R11 ;
        /*1510*/                   BMOV.32.CLEAR RZ, B0 ;
        /*1520*/                   BSSY B0, `(.L_x_84) ;
        /*1530*/               @P0 BRA `(.L_x_85) ;
        /*1540*/                   BRA `(.L_x_86) ;
.L_x_86:
        /*1550*/                   DSETP.LT.AND P0, PT, R4, RZ, PT ;
        /*1560*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1570*/                   BMOV.32.CLEAR RZ, B1 ;
        /*1580*/                   BSSY B1, `(.L_x_87) ;
        /*1590*/               @P0 BRA `(.L_x_88) ;
        /*15a0*/                   BRA `(.L_x_89) ;
.L_x_89:
        /*15b0*/                   CS2R R10, SRZ ;
        /*15c0*/                   MOV R10, R10 ;
        /*15d0*/                   MOV R11, R11 ;
        /*15e0*/                   MOV R10, R10 ;
        /*15f0*/                   MOV R11, R11 ;
        /*1600*/                   BRA `(.L_x_90) ;
.L_x_88:
        /*1610*/                   DADD R10, R4, +INF  ;
        /*1620*/                   MOV R10, R10 ;
        /*1630*/                   MOV R11, R11 ;
        /*1640*/                   MOV R10, R10 ;
        /*1650*/                   MOV R11, R11 ;
        /*1660*/                   BRA `(.L_x_90) ;
.L_x_90:
        /*1670*/                   BSYNC B1 ;
.L_x_87:
        /*1680*/                   MOV R10, R10 ;
        /*1690*/                   MOV R11, R11 ;
        /*16a0*/                   MOV R4, R5 ;
        /*16b0*/                   MOV R4, R4 ;
        /*16c0*/                   MOV R4, R4 ;
        /*16d0*/                   MOV R10, R10 ;
        /*16e0*/                   MOV R11, R11 ;
        /*16f0*/                   MOV R4, R4 ;
        /*1700*/                   BRA `(.L_x_91) ;
.L_x_91:
        /*1710*/                   FADD.FTZ R4, -RZ, |R4| ;
        /*1720*/                   MOV R4, R4 ;
        /*1730*/                   BRA `(.L_x_92) ;
.L_x_92:
        /*1740*/                   FSETP.LT.FTZ.AND P0, PT, R4, 4.2275390625, PT ;
        /*1750*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1760*/                   MOV R10, R10 ;
        /*1770*/                   MOV R11, R11 ;
        /*1780*/                   MOV R10, R10 ;
        /*1790*/                   MOV R11, R11 ;
        /*17a0*/                   BMOV.32.CLEAR RZ, B1 ;
        /*17b0*/                   BSSY B1, `(.L_x_93) ;
        /*17c0*/               @P0 BRA `(.L_x_94) ;
        /*17d0*/                   BRA `(.L_x_95) ;
.L_x_95:
        /*17e0*/                   MOV R0, R0 ;
        /*17f0*/                   MOV R4, 0x2 ;
        /*1800*/                   MOV R5, R0 ;
        /*1810*/                   MOV R4, R4 ;
        /*1820*/                   MOV R5, R5 ;
        /*1830*/                   MOV R4, R4 ;
        /*1840*/                   MOV R9, R5 ;
        /*1850*/                   MOV R10, R4 ;
        /*1860*/                   IABS R11, R10 ;
        /*1870*/                   MOV R11, R11 ;
        /*1880*/                   MOV R11, R11 ;
        /*1890*/                   I2F.U32.RP R4, R11 ;
        /*18a0*/                   MUFU.RCP R4, R4 ;
        /*18b0*/                   MOV R4, R4 ;
        /*18c0*/                   IADD3 R4, R4, 0xffffffe, RZ ;
        /*18d0*/                   MOV R4, R4 ;
        /*18e0*/                   F2I.FTZ.U32.TRUNC.NTZ R12, R4 ;
        /*18f0*/                   IMAD.U32 R4, R11, R12, RZ ;
        /*1900*/                   IADD3 R4, RZ, -R4, RZ ;
        /*1910*/                   MOV R4, R4 ;
        /*1920*/                   MOV R4, R4 ;
        /*1930*/                   IMAD.WIDE.U32 R4, R12, R4, RZ ;
        /*1940*/                   MOV R4, R5 ;
        /*1950*/                   IADD3 R4, R12, R4, RZ ;
        /*1960*/                   IABS R12, R9 ;
        /*1970*/                   MOV R12, R12 ;
        /*1980*/                   MOV R12, R12 ;
        /*1990*/                   IMAD.WIDE.U32 R4, R4, R12, RZ ;
        /*19a0*/                   MOV R4, R5 ;
        /*19b0*/                   IMAD.U32 R5, R11, R4, RZ ;
        /*19c0*/                   IADD3 R13, R4, 0x1, RZ ;
        /*19d0*/                   IADD3 R5, R12, -R5, RZ ;
        /*19e0*/                   ISETP.LE.U32.AND P0, PT, R11, R5, PT ;
        /*19f0*/                   SEL R13, R13, R4, P0 ;
        /*1a00*/                   IADD3 R4, R13, 0x1, RZ ;
        /*1a10*/                   IADD3 R12, R5, -R11, RZ ;
        /*1a20*/                   SEL R12, R12, R5, P0 ;
        /*1a30*/                   ISETP.GE.U32.AND P0, PT, R12, R11, PT ;
        /*1a40*/                   SEL R4, R4, R13, P0 ;
        /*1a50*/                   LOP3.LUT R9, R9, R10, RZ, 0x3c, !PT ;
        /*1a60*/                   MOV R5, RZ ;
        /*1a70*/                   ISETP.GE.AND P0, PT, R9, R5, PT ;
        /*1a80*/                   MOV R10, R10 ;
        /*1a90*/                   MOV R9, R4 ;
        /*1aa0*/                   BMOV.32.CLEAR RZ, B2 ;
        /*1ab0*/                   BSSY B2, `(.L_x_96) ;
        /*1ac0*/               @P0 BRA `(.L_x_97) ;
        /*1ad0*/                   IADD3 R9, RZ, -R9, RZ ;
        /*1ae0*/                   MOV R9, R9 ;
        /*1af0*/                   MOV R9, R9 ;
        /*1b00*/                   MOV R9, R9 ;
.L_x_97:
        /*1b10*/                   BSYNC B2 ;
.L_x_96:
        /*1b20*/                   MOV R4, RZ ;
        /*1b30*/                   ISETP.NE.AND P0, PT, R10, R4, PT ;
        /*1b40*/                   LOP3.LUT R10, RZ, R10, RZ, 0x33, !PT ;
        /*1b50*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1b60*/                   SEL R10, R10, R9, P0 ;
        /*1b70*/                   MOV R4, R10 ;
        /*1b80*/                   MOV R4, R4 ;
        /*1b90*/                   MOV R9, R4 ;
        /*1ba0*/                   MOV R3, R3 ;
        /*1bb0*/                   MOV R3, R3 ;
        /*1bc0*/                   MOV R8, R8 ;
        /*1bd0*/                   MOV R8, R8 ;
        /*1be0*/                   SHF.L.U32 R4, R9, 0x14, RZ ;
        /*1bf0*/                   IADD3 R4, R8, R4, RZ ;
        /*1c00*/                   MOV R5, R4 ;
        /*1c10*/                   MOV R4, R3 ;
        /*1c20*/                   IADD3 R0, R0, -R9, RZ ;
        /*1c30*/                   SHF.L.U32 R0, R0, 0x14, RZ ;
        /*1c40*/                   IADD3 R0, R0, 0x3ff00000, RZ ;
        /*1c50*/                   MOV R8, RZ ;
        /*1c60*/                   MOV R8, R8 ;
        /*1c70*/                   MOV R9, R0 ;
        /*1c80*/                   DMUL R4, R4, R8 ;
        /*1c90*/                   MOV R4, R4 ;
        /*1ca0*/                   MOV R5, R5 ;
        /*1cb0*/                   MOV R9, R10 ;
        /*1cc0*/                   MOV R10, R4 ;
        /*1cd0*/                   MOV R11, R5 ;
        /*1ce0*/                   BRA `(.L_x_94) ;
.L_x_94:
        /*1cf0*/                   BSYNC B1 ;
.L_x_93:
        /*1d00*/                   MOV R10, R10 ;
        /*1d10*/                   MOV R11, R11 ;
        /*1d20*/                   MOV R10, R10 ;
        /*1d30*/                   MOV R11, R11 ;
        /*1d40*/                   MOV R10, R10 ;
        /*1d50*/                   MOV R11, R11 ;
        /*1d60*/                   BRA `(.L_x_85) ;
.L_x_85:
        /*1d70*/                   BSYNC B0 ;
.L_x_84:
        /*1d80*/                   MOV R10, R10 ;
        /*1d90*/                   MOV R11, R11 ;
        /*1da0*/                   MOV R10, R10 ;
        /*1db0*/                   MOV R11, R11 ;
        /*1dc0*/                   BRA `(.L_x_98) ;
.L_x_98:
        /*1dd0*/                   BRA `(.L_x_99) ;
.L_x_99:
        /*1de0*/                   BRA `(.L_x_100) ;
.L_x_100:
        /*1df0*/                   MOV R0, R10 ;
        /*1e00*/                   MOV R0, R0 ;
        /*1e10*/                   MOV R3, R11 ;
        /*1e20*/                   MOV R3, R3 ;
        /*1e30*/                   LOP3.LUT R3, R3, 0x7fffffff, RZ, 0xc0, !PT ;
        /*1e40*/                   ISETP.EQ.AND P1, PT, R3, 0x7ff00000, PT ;
        /*1e50*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0 ;
        /*1e60*/                   PLOP3.LUT P1, PT, P1, PT, PT, 0x8, 0x0 ;
        /*1e70*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x80, 0x0 ;
        /*1e80*/                   MOV R0, R0 ;
        /*1e90*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x80, 0x0 ;
        /*1ea0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*1eb0*/                   BSSY B0, `(.L_x_101) ;
        /*1ec0*/               @P1 BRA `(.L_x_102) ;
        /*1ed0*/                   BRA `(.L_x_103) ;
.L_x_103:
        /*1ee0*/                   ISETP.EQ.AND P0, PT, R0, RZ, PT ;
        /*1ef0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x80, 0x0 ;
        /*1f00*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x80, 0x0 ;
        /*1f10*/                   BRA `(.L_x_102) ;
.L_x_102:
        /*1f20*/                   BSYNC B0 ;
.L_x_101:
        /*1f30*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x80, 0x0 ;
        /*1f40*/                   SEL R0, RZ, 0x1, !P0 ;
        /*1f50*/                   MOV R0, R0 ;
        /*1f60*/                   BRA `(.L_x_104) ;
.L_x_104:
        /*1f70*/                   ISETP.NE.AND P0, PT, R0, RZ, PT ;
        /*1f80*/                   MOV R4, R10 ;
        /*1f90*/                   MOV R5, R11 ;
        /*1fa0*/                   MOV R4, R4 ;
        /*1fb0*/                   MOV R5, R5 ;
        /*1fc0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*1fd0*/                   BSSY B0, `(.L_x_105) ;
        /*1fe0*/               @P0 BRA `(.L_x_106) ;
        /*1ff0*/                   BRA `(.L_x_107) ;
.L_x_107:
        /*2000*/                   DFMA R6, R10, R6, R10 ;
        /*2010*/                   MOV R6, R6 ;
        /*2020*/                   MOV R7, R7 ;
        /*2030*/                   MOV R4, R6 ;
        /*2040*/                   MOV R5, R7 ;
        /*2050*/                   BRA `(.L_x_106) ;
.L_x_106:
        /*2060*/                   BSYNC B0 ;
.L_x_105:
        /*2070*/                   MOV R4, R4 ;
        /*2080*/                   MOV R5, R5 ;
        /*2090*/                   MOV R0, R4 ;
        /*20a0*/                   MOV R5, R5 ;
        /*20b0*/                   MOV R4, R0 ;
        /*20c0*/                   MOV R5, R5 ;
        /*20d0*/                   BRA `(.L_x_108) ;
.L_x_108:
        /*20e0*/                   MOV R4, R4 ;
        /*20f0*/                   MOV R5, R5 ;
        /*2100*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_109:
        /*2110*/                   BRA `(.L_x_109);
        /*2120*/                   NOP;
        /*2130*/                   NOP;
        /*2140*/                   NOP;
        /*2150*/                   NOP;
        /*2160*/                   NOP;
        /*2170*/                   NOP;
.L_x_114:
