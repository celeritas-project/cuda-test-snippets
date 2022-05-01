	.headerflags	@"EF_CUDA_TEXMODE_UNIFIED EF_CUDA_64BIT_ADDRESS EF_CUDA_SM70 EF_CUDA_VIRTUAL_SM(EF_CUDA_SM70)"
	.elftype	@"ET_REL"


//--------------------- .text.__cuda_sm20_dblrcp_rn_slowpath_v3 --------------------------
	.section	.text.__cuda_sm20_dblrcp_rn_slowpath_v3,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text.__cuda_sm20_dblrcp_rn_slowpath_v3:
        .weak           __cuda_sm20_dblrcp_rn_slowpath_v3
        .type           __cuda_sm20_dblrcp_rn_slowpath_v3,@function
        .size           __cuda_sm20_dblrcp_rn_slowpath_v3,(.L_x_191 - __cuda_sm20_dblrcp_rn_slowpath_v3)
__cuda_sm20_dblrcp_rn_slowpath_v3:
        /*0000*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0010*/                   MOV R6, R6 ;
        /*0020*/                   MOV R5, R5 ;
        /*0030*/                   MOV R4, R4 ;
        /*0040*/                   MOV R4, R4 ;
        /*0050*/                   MOV R5, R5 ;
        /*0060*/                   MOV R6, R6 ;
        /*0070*/                   MOV R4, R4 ;
        /*0080*/                   MOV R5, R5 ;
        /*0090*/                   MOV R0, R6 ;
        /*00a0*/                   MOV R3, R5 ;
        /*00b0*/                   MOV R3, R3 ;
        /*00c0*/                   LOP3.LUT R8, R3, 0x7fffffff, RZ, 0xc0, !PT ;
        /*00d0*/                   MOV R6, R4 ;
        /*00e0*/                   MOV R9, R6 ;
        /*00f0*/                   MOV R6, 0x0 ;
        /*0100*/                   MOV R7, 0x7ff00000 ;
        /*0110*/                   MOV R10, R6 ;
        /*0120*/                   MOV R6, R7 ;
        /*0130*/                   MOV R6, R6 ;
        /*0140*/                   MOV R10, R6 ;
        /*0150*/                   DADD R6, -RZ, |R4| ;
        /*0160*/                   MOV R6, R6 ;
        /*0170*/                   MOV R7, R7 ;
        /*0180*/                   DSETP.GTU.AND P0, PT, R6, +INF , PT ;
        /*0190*/                   MOV R4, R4 ;
        /*01a0*/                   MOV R5, R5 ;
        /*01b0*/                   MOV R0, R0 ;
        /*01c0*/                   MOV R3, R3 ;
        /*01d0*/                   MOV R8, R8 ;
        /*01e0*/                   MOV R9, R9 ;
        /*01f0*/                   MOV R10, R10 ;
        /*0200*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0210*/                   BSSY B0, `(.L_x_7) ;
        /*0220*/               @P0 BRA `(.L_x_8) ;
        /*0230*/                   IADD3 R6, R8, -0x1, RZ ;
        /*0240*/                   IADD3 R7, R10, -0x1, RZ ;
        /*0250*/                   ISETP.LT.U32.AND P0, PT, R6, R7, PT ;
        /*0260*/               @P0 BRA `(.L_x_9) ;
        /*0270*/                   LOP3.LUT R4, R10, R3, RZ, 0x3c, !PT ;
        /*0280*/                   MOV R5, RZ ;
        /*0290*/                   LOP3.LUT R5, R5, R4, RZ, 0x3c, !PT ;
        /*02a0*/                   LOP3.LUT R4, R5, R4, RZ, 0x3c, !PT ;
        /*02b0*/                   LOP3.LUT R5, R5, R4, RZ, 0x3c, !PT ;
        /*02c0*/                   MOV R4, R4 ;
        /*02d0*/                   MOV R5, R5 ;
        /*02e0*/                   BRA `(.L_x_10) ;
.L_x_9:
        /*02f0*/                   ISETP.LT.U32.AND P0, PT, R8, 0x1000001, PT ;
        /*0300*/               @P0 BRA `(.L_x_11) ;
        /*0310*/                   IADD3 R6, R3, -0x3fe00000, RZ ;
        /*0320*/                   MOV R7, R6 ;
        /*0330*/                   MOV R6, R9 ;
        /*0340*/                   MOV R3, R6 ;
        /*0350*/                   MOV R8, R7 ;
        /*0360*/                   MOV R3, RZ ;
        /*0370*/                   MUFU.RCP64H R8, R8 ;
        /*0380*/                   MOV R3, R3 ;
        /*0390*/                   MOV R3, R3 ;
        /*03a0*/                   MOV R8, R8 ;
        /*03b0*/                   MOV R8, R8 ;
        /*03c0*/                   LOP3.LUT R3, R3, R0, RZ, 0xfc, !PT ;
        /*03d0*/                   MOV R9, R8 ;
        /*03e0*/                   MOV R8, R3 ;
        /*03f0*/                   DADD R10, -RZ, -R6 ;
        /*0400*/                   MOV R10, R10 ;
        /*0410*/                   MOV R11, R11 ;
        /*0420*/                   MOV R6, 0x0 ;
        /*0430*/                   MOV R7, 0x3ff00000 ;
        /*0440*/                   DFMA R12, R10, R8, R6 ;
        /*0450*/                   DFMA R12, R12, R12, R12 ;
        /*0460*/                   DFMA R12, R12, R8, R8 ;
        /*0470*/                   DFMA R10, R10, R12, R6 ;
        /*0480*/                   DFMA R10, R10, R12, R12 ;
        /*0490*/                   MOV R8, 0x100000 ;
        /*04a0*/                   MOV R9, RZ ;
        /*04b0*/                   LOP3.LUT R9, R9, R8, RZ, 0x3c, !PT ;
        /*04c0*/                   LOP3.LUT R8, R9, R8, RZ, 0x3c, !PT ;
        /*04d0*/                   LOP3.LUT R9, R9, R8, RZ, 0x3c, !PT ;
        /*04e0*/                   DMUL R8, R10, R8 ;
        /*04f0*/                   DADD R4, -RZ, -R4 ;
        /*0500*/                   MOV R4, R4 ;
        /*0510*/                   MOV R5, R5 ;
        /*0520*/                   DFMA R4, R4, R8, R6 ;
        /*0530*/                   DFMA R4, R4, R4, R4 ;
        /*0540*/                   DFMA R4, R4, R8, R8 ;
        /*0550*/                   MOV R4, R4 ;
        /*0560*/                   MOV R5, R5 ;
        /*0570*/                   BRA `(.L_x_10) ;
.L_x_11:
        /*0580*/                   MOV R6, 0x46900000 ;
        /*0590*/                   MOV R7, RZ ;
        /*05a0*/                   LOP3.LUT R7, R7, R6, RZ, 0x3c, !PT ;
        /*05b0*/                   LOP3.LUT R6, R7, R6, RZ, 0x3c, !PT ;
        /*05c0*/                   LOP3.LUT R7, R7, R6, RZ, 0x3c, !PT ;
        /*05d0*/                   DMUL R4, R6, R4 ;
        /*05e0*/                   MOV R3, R4 ;
        /*05f0*/                   MOV R8, R5 ;
        /*0600*/                   MOV R3, RZ ;
        /*0610*/                   MUFU.RCP64H R8, R8 ;
        /*0620*/                   MOV R3, R3 ;
        /*0630*/                   MOV R3, R3 ;
        /*0640*/                   MOV R8, R8 ;
        /*0650*/                   MOV R8, R8 ;
        /*0660*/                   LOP3.LUT R3, R3, R0, RZ, 0xfc, !PT ;
        /*0670*/                   MOV R9, R8 ;
        /*0680*/                   MOV R8, R3 ;
        /*0690*/                   DADD R4, -RZ, -R4 ;
        /*06a0*/                   MOV R4, R4 ;
        /*06b0*/                   MOV R5, R5 ;
        /*06c0*/                   MOV R10, 0x0 ;
        /*06d0*/                   MOV R11, 0x3ff00000 ;
        /*06e0*/                   DFMA R12, R4, R8, R10 ;
        /*06f0*/                   DFMA R12, R12, R12, R12 ;
        /*0700*/                   DFMA R12, R12, R8, R8 ;
        /*0710*/                   DFMA R4, R4, R12, R10 ;
        /*0720*/                   DFMA R4, R4, R12, R12 ;
        /*0730*/                   DMUL R4, R4, R6 ;
        /*0740*/                   MOV R4, R4 ;
        /*0750*/                   MOV R5, R5 ;
        /*0760*/                   BRA `(.L_x_10) ;
.L_x_8:
        /*0770*/                   LOP3.LUT R4, R3, 0x80000, RZ, 0xfc, !PT ;
        /*0780*/                   MOV R5, R4 ;
        /*0790*/                   MOV R4, R9 ;
        /*07a0*/                   MOV R4, R4 ;
        /*07b0*/                   MOV R5, R5 ;
        /*07c0*/                   BRA `(.L_x_10) ;
.L_x_10:
        /*07d0*/                   BSYNC B0 ;
.L_x_7:
        /*07e0*/                   MOV R4, R4 ;
        /*07f0*/                   MOV R5, R5 ;
        /*0800*/                   MOV R0, R4 ;
        /*0810*/                   MOV R5, R5 ;
        /*0820*/                   MOV R4, R0 ;
        /*0830*/                   MOV R5, R5 ;
        /*0840*/                   MOV R4, R4 ;
        /*0850*/                   MOV R5, R5 ;
        /*0860*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_12:
        /*0870*/                   BRA `(.L_x_12);
.L_x_191:


//--------------------- .text.__cuda_sm20_dsqrt_rn_f64_mediumpath_v1 --------------------------
	.section	.text.__cuda_sm20_dsqrt_rn_f64_mediumpath_v1,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text.__cuda_sm20_dsqrt_rn_f64_mediumpath_v1:
        .weak           __cuda_sm20_dsqrt_rn_f64_mediumpath_v1
        .type           __cuda_sm20_dsqrt_rn_f64_mediumpath_v1,@function
        .size           __cuda_sm20_dsqrt_rn_f64_mediumpath_v1,(.L_x_192 - __cuda_sm20_dsqrt_rn_f64_mediumpath_v1)
__cuda_sm20_dsqrt_rn_f64_mediumpath_v1:
        /*0000*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0010*/                   MOV R13, R13 ;
        /*0020*/                   MOV R12, R12 ;
        /*0030*/                   MOV R11, R11 ;
        /*0040*/                   MOV R10, R10 ;
        /*0050*/                   MOV R9, R9 ;
        /*0060*/                   MOV R8, R8 ;
        /*0070*/                   MOV R6, R6 ;
        /*0080*/                   MOV R5, R5 ;
        /*0090*/                   MOV R4, R4 ;
        /*00a0*/                   MOV R4, R4 ;
        /*00b0*/                   MOV R5, R5 ;
        /*00c0*/                   MOV R6, R6 ;
        /*00d0*/                   MOV R8, R8 ;
        /*00e0*/                   MOV R9, R9 ;
        /*00f0*/                   MOV R10, R10 ;
        /*0100*/                   MOV R11, R11 ;
        /*0110*/                   MOV R12, R12 ;
        /*0120*/                   MOV R13, R13 ;
        /*0130*/                   MOV R4, R4 ;
        /*0140*/                   MOV R5, R5 ;
        /*0150*/                   MOV R6, R6 ;
        /*0160*/                   MOV R8, R8 ;
        /*0170*/                   MOV R9, R9 ;
        /*0180*/                   MOV R10, R10 ;
        /*0190*/                   MOV R11, R11 ;
        /*01a0*/                   MOV R12, R12 ;
        /*01b0*/                   MOV R13, R13 ;
        /*01c0*/                   ISETP.LT.U32.AND P0, PT, R6, -0x3400000, PT ;
        /*01d0*/                   MOV R4, R4 ;
        /*01e0*/                   MOV R5, R5 ;
        /*01f0*/                   MOV R6, R8 ;
        /*0200*/                   MOV R7, R9 ;
        /*0210*/                   MOV R10, R10 ;
        /*0220*/                   MOV R11, R11 ;
        /*0230*/                   MOV R12, R12 ;
        /*0240*/                   MOV R13, R13 ;
        /*0250*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0260*/                   BSSY B0, `(.L_x_13) ;
        /*0270*/               @P0 BRA `(.L_x_14) ;
        /*0280*/                   BRA `(.L_x_15) ;
.L_x_14:
        /*0290*/                   DSETP.EQU.AND P0, PT, R4, RZ, PT ;
        /*02a0*/               @P0 BRA `(.L_x_16) ;
        /*02b0*/                   MOV R0, R5 ;
        /*02c0*/                   MOV R0, R0 ;
        /*02d0*/                   ISETP.LT.AND P0, PT, R0, RZ, PT ;
        /*02e0*/                   MOV R0, R0 ;
        /*02f0*/               @P0 BRA `(.L_x_17) ;
        /*0300*/                   ISETP.GT.AND P0, PT, R0, 0x7fefffff, PT ;
        /*0310*/               @P0 BRA `(.L_x_16) ;
        /*0320*/                   BRA `(.L_x_18) ;
.L_x_16:
        /*0330*/                   DADD R4, R4, R4 ;
        /*0340*/                   MOV R4, R4 ;
        /*0350*/                   MOV R5, R5 ;
        /*0360*/                   BRA `(.L_x_19) ;
.L_x_15:
        /*0370*/                   DFMA.RM R6, R6, R10, R12 ;
        /*0380*/                   MOV R0, R6 ;
        /*0390*/                   MOV R3, R7 ;
        /*03a0*/                   MOV R0, R0 ;
        /*03b0*/                   MOV R3, R3 ;
        /*03c0*/                   IADD3 R0, P0, R0, 0x1, RZ ;
        /*03d0*/                   IADD3.X R3, R3, RZ, RZ, P0, !PT ;
        /*03e0*/                   MOV R0, R0 ;
        /*03f0*/                   MOV R3, R3 ;
        /*0400*/                   DADD R8, -RZ, -R6 ;
        /*0410*/                   MOV R8, R8 ;
        /*0420*/                   MOV R9, R9 ;
        /*0430*/                   MOV R10, R0 ;
        /*0440*/                   MOV R11, R3 ;
        /*0450*/                   DFMA.RP R8, R8, R10, R4 ;
        /*0460*/                   DSETP.GT.AND P0, PT, R8, RZ, PT ;
        /*0470*/                   MOV R4, R6 ;
        /*0480*/                   MOV R5, R7 ;
        /*0490*/                   FSEL R4, R0, R4, P0 ;
        /*04a0*/                   FSEL R5, R3, R5, P0 ;
        /*04b0*/                   MOV R4, R4 ;
        /*04c0*/                   MOV R5, R5 ;
        /*04d0*/                   MOV R4, R4 ;
        /*04e0*/                   MOV R5, R5 ;
        /*04f0*/                   BRA `(.L_x_19) ;
.L_x_19:
        /*0500*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0510*/                   BSYNC B0 ;
.L_x_13:
        /*0520*/                   MOV R4, R4 ;
        /*0530*/                   MOV R5, R5 ;
        /*0540*/                   MOV R4, R4 ;
        /*0550*/                   MOV R5, R5 ;
        /*0560*/                   MOV R0, R4 ;
        /*0570*/                   MOV R5, R5 ;
        /*0580*/                   BRA `(.L_x_20) ;
.L_x_17:
        /*0590*/                   MOV R4, 0xfff80000 ;
        /*05a0*/                   MOV R5, RZ ;
        /*05b0*/                   LOP3.LUT R5, R5, R4, RZ, 0x3c, !PT ;
        /*05c0*/                   LOP3.LUT R4, R5, R4, RZ, 0x3c, !PT ;
        /*05d0*/                   LOP3.LUT R5, R5, R4, RZ, 0x3c, !PT ;
        /*05e0*/                   MOV R4, R4 ;
        /*05f0*/                   MOV R5, R5 ;
        /*0600*/                   BRA `(.L_x_19) ;
.L_x_18:
        /*0610*/                   MOV R6, 0x46900000 ;
        /*0620*/                   MOV R7, RZ ;
        /*0630*/                   LOP3.LUT R7, R7, R6, RZ, 0x3c, !PT ;
        /*0640*/                   LOP3.LUT R6, R7, R6, RZ, 0x3c, !PT ;
        /*0650*/                   LOP3.LUT R7, R7, R6, RZ, 0x3c, !PT ;
        /*0660*/                   DMUL R4, R6, R4 ;
        /*0670*/                   MOV R0, R4 ;
        /*0680*/                   MOV R3, R5 ;
        /*0690*/                   MOV R0, RZ ;
        /*06a0*/                   MUFU.RSQ64H R3, R3 ;
        /*06b0*/                   MOV R0, R0 ;
        /*06c0*/                   MOV R0, R0 ;
        /*06d0*/                   MOV R3, R3 ;
        /*06e0*/                   MOV R3, R3 ;
        /*06f0*/                   MOV R6, R0 ;
        /*0700*/                   MOV R7, R3 ;
        /*0710*/                   DMUL R8, R6, R6 ;
        /*0720*/                   DADD R8, -RZ, -R8 ;
        /*0730*/                   MOV R8, R8 ;
        /*0740*/                   MOV R9, R9 ;
        /*0750*/                   MOV R10, 0x0 ;
        /*0760*/                   MOV R11, 0x3ff00000 ;
        /*0770*/                   DFMA R8, R4, R8, R10 ;
        /*0780*/                   MOV R10, 0x0 ;
        /*0790*/                   MOV R11, 0x3fe00000 ;
        /*07a0*/                   MOV R12, 0x0 ;
        /*07b0*/                   MOV R13, 0x3fd80000 ;
        /*07c0*/                   DFMA R10, R12, R8, R10 ;
        /*07d0*/                   DMUL R8, R8, R6 ;
        /*07e0*/                   DFMA R8, R10, R8, R6 ;
        /*07f0*/                   MOV R0, R8 ;
        /*0800*/                   MOV R3, R9 ;
        /*0810*/                   MOV R6, R0 ;
        /*0820*/                   MOV R7, R3 ;
        /*0830*/                   DMUL R6, R4, R6 ;
        /*0840*/                   MOV R0, R0 ;
        /*0850*/                   MOV R0, R0 ;
        /*0860*/                   MOV R3, R3 ;
        /*0870*/                   MOV R3, R3 ;
        /*0880*/                   IADD3 R3, R3, -0x100000, RZ ;
        /*0890*/                   MOV R8, R0 ;
        /*08a0*/                   MOV R9, R3 ;
        /*08b0*/                   DADD R10, -RZ, -R6 ;
        /*08c0*/                   MOV R10, R10 ;
        /*08d0*/                   MOV R11, R11 ;
        /*08e0*/                   DFMA R10, R6, R10, R4 ;
        /*08f0*/                   DFMA R8, R10, R8, R6 ;
        /*0900*/                   MOV R0, R8 ;
        /*0910*/                   MOV R3, R9 ;
        /*0920*/                   MOV R0, R0 ;
        /*0930*/                   MOV R0, R0 ;
        /*0940*/                   MOV R3, R3 ;
        /*0950*/                   MOV R3, R3 ;
        /*0960*/                   IADD3 R3, R3, -0x3500000, RZ ;
        /*0970*/                   MOV R4, R0 ;
        /*0980*/                   MOV R5, R3 ;
        /*0990*/                   MOV R4, R4 ;
        /*09a0*/                   MOV R5, R5 ;
        /*09b0*/                   BRA `(.L_x_19) ;
.L_x_20:
        /*09c0*/                   MOV R4, R0 ;
        /*09d0*/                   MOV R5, R5 ;
        /*09e0*/                   MOV R4, R4 ;
        /*09f0*/                   MOV R5, R5 ;
        /*0a00*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_21:
        /*0a10*/                   BRA `(.L_x_21);
        /*0a20*/                   NOP;
        /*0a30*/                   NOP;
        /*0a40*/                   NOP;
        /*0a50*/                   NOP;
        /*0a60*/                   NOP;
        /*0a70*/                   NOP;
.L_x_192:


//--------------------- .text._Z9my_rhypotIdET_S0_S0_ --------------------------
	.section	.text._Z9my_rhypotIdET_S0_S0_,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text._Z9my_rhypotIdET_S0_S0_:
        .weak           _Z9my_rhypotIdET_S0_S0_
        .type           _Z9my_rhypotIdET_S0_S0_,@function
        .size           _Z9my_rhypotIdET_S0_S0_,(.L_x_189 - _Z9my_rhypotIdET_S0_S0_)
_Z9my_rhypotIdET_S0_S0_:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 6
        /*0000*/                   IADD3 R1, R1, -0x18, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_22) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_22:
        /*0050*/                   STL [R1+0x14], R21 ;
        /*0060*/                   STL [R1+0x10], R20 ;
        /*0070*/                   STL [R1+0xc], R18 ;
        /*0080*/                   STL [R1+0x8], R17 ;
        /*0090*/                   STL [R1+0x4], R16 ;
        /*00a0*/                   STL [R1], R2 ;
        /*00b0*/                   MOV R7, R7 ;
        /*00c0*/                   MOV R6, R6 ;
        /*00d0*/                   MOV R5, R5 ;
        /*00e0*/                   MOV R4, R4 ;
        /*00f0*/                   MOV R4, R4 ;
        /*0100*/                   MOV R5, R5 ;
        /*0110*/                   MOV R6, R6 ;
        /*0120*/                   MOV R7, R7 ;
        /*0130*/                   MOV R4, R4 ;
        /*0140*/                   MOV R5, R5 ;
        /*0150*/                   MOV R18, R4 ;
        /*0160*/                   MOV R17, R5 ;
        /*0170*/                   MOV R4, R6 ;
        /*0180*/                   MOV R5, R7 ;
        /*0190*/                   MOV R16, R4 ;
        /*01a0*/                   MOV R2, R5 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 9
        /*01b0*/                   MOV R4, R18 ;
        /*01c0*/                   MOV R5, R17 ;
        /*01d0*/                   MOV R6, R16 ;
        /*01e0*/                   MOV R7, R2 ;
        /*01f0*/                   MOV R20, 32@lo((_Z9my_rhypotIdET_S0_S0_ + .L_x_0@srel)) ;
        /*0200*/                   MOV R21, 32@hi((_Z9my_rhypotIdET_S0_S0_ + .L_x_0@srel)) ;
        /*0210*/                   CALL.ABS.NOINC `(rhypot) ;
.L_x_0:
        /*0220*/                   MOV R4, R4 ;
        /*0230*/                   MOV R5, R5 ;
        /*0240*/                   MOV R4, R4 ;
        /*0250*/                   MOV R5, R5 ;
        /*0260*/                   BRA `(.L_x_23) ;
.L_x_23:
        /*0270*/                   MOV R4, R4 ;
        /*0280*/                   MOV R5, R5 ;
        /*0290*/                   LDL R2, [R1] ;
        /*02a0*/                   LDL R16, [R1+0x4] ;
        /*02b0*/                   LDL R17, [R1+0x8] ;
        /*02c0*/                   LDL R18, [R1+0xc] ;
        /*02d0*/                   LDL R20, [R1+0x10] ;
        /*02e0*/                   LDL R21, [R1+0x14] ;
        /*02f0*/                   IADD3 R1, R1, 0x18, RZ ;
        /*0300*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_24:
        /*0310*/                   BRA `(.L_x_24);
        /*0320*/                   NOP;
        /*0330*/                   NOP;
        /*0340*/                   NOP;
        /*0350*/                   NOP;
        /*0360*/                   NOP;
        /*0370*/                   NOP;
.L_x_189:


//--------------------- .text._Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ --------------------------
	.section	.text._Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=36"
	.align	128
.text._Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_:
        .weak           _Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_
        .type           _Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_,@function
        .size           _Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_,(.L_x_149 - _Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_)
_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 52
        /*0000*/                   IADD3 R1, R1, -0xe0, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_25) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_25:
        /*0050*/                   STL [R1+0xdc], R31 ;
        /*0060*/                   STL [R1+0xd8], R30 ;
        /*0070*/                   STL [R1+0xd4], R29 ;
        /*0080*/                   STL [R1+0xd0], R28 ;
        /*0090*/                   STL [R1+0xcc], R27 ;
        /*00a0*/                   STL [R1+0xc8], R26 ;
        /*00b0*/                   STL [R1+0xc4], R25 ;
        /*00c0*/                   STL [R1+0xc0], R24 ;
        /*00d0*/                   STL [R1+0xbc], R23 ;
        /*00e0*/                   STL [R1+0xb8], R22 ;
        /*00f0*/                   STL [R1+0xb4], R21 ;
        /*0100*/                   STL [R1+0xb0], R20 ;
        /*0110*/                   STL [R1+0xac], R18 ;
        /*0120*/                   STL [R1+0xa8], R17 ;
        /*0130*/                   STL [R1+0xa4], R16 ;
        /*0140*/                   STL [R1+0xa0], R2 ;
        /*0150*/                   BMOV.32.CLEAR R18, B7 ;
        /*0160*/                   BMOV.32.CLEAR R17, B6 ;
        /*0170*/                   MOV R7, R7 ;
        /*0180*/                   MOV R6, R6 ;
        /*0190*/                   MOV R5, R5 ;
        /*01a0*/                   MOV R4, R4 ;
        /*01b0*/                   IADD3 R0, R1, RZ, RZ ;
        /*01c0*/                   MOV R0, R0 ;
        /*01d0*/                   MOV R8, R0 ;
        /*01e0*/                   MOV R9, RZ ;
        /*01f0*/                   MOV R0, R8 ;
        /*0200*/                   MOV R9, R9 ;
        /*0210*/                   MOV R8, R0 ;
        /*0220*/                   MOV R9, R9 ;
        /*0230*/                   MOV R0, c[0x0][0x20] ;
        /*0240*/                   MOV R3, c[0x0][0x24] ;
        /*0250*/                   IADD3 R0, P0, R8, R0, RZ ;
        /*0260*/                   IADD3.X R3, R9, R3, RZ, P0, !PT ;
        /*0270*/                   MOV R4, R4 ;
        /*0280*/                   MOV R5, R5 ;
        /*0290*/                   MOV R6, R6 ;
        /*02a0*/                   MOV R7, R7 ;
        /*02b0*/                   MOV R16, R0 ;
        /*02c0*/                   MOV R2, R3 ;
        /*02d0*/                   MOV R28, R4 ;
        /*02e0*/                   MOV R29, R5 ;
        /*02f0*/                   MOV R26, R6 ;
        /*0300*/                   MOV R27, R7 ;
.L_x_157:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 54
        /*0310*/                   BRA `(.L_x_26) ;
.L_x_26:
        /*0320*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0330*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0 ;
        /*0340*/               @P0 BRA `(.L_x_27) ;
        /*0350*/                   BRA `(.L_x_28) ;
.L_x_28:
        /*0360*/                   BRA `(.L_x_27) ;
.L_x_27:
        /*0370*/                   BRA `(.L_x_29) ;
.L_x_29:
        /*0380*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0 ;
        /*0390*/               @P0 BRA `(.L_x_26) ;
        /*03a0*/                   BRA `(.L_x_30) ;
.L_x_30:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 55
        /*03b0*/                   BRA `(.L_x_31) ;
.L_x_31:
        /*03c0*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*03d0*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0 ;
        /*03e0*/               @P0 BRA `(.L_x_32) ;
        /*03f0*/                   BRA `(.L_x_33) ;
.L_x_33:
        /*0400*/                   BRA `(.L_x_32) ;
.L_x_32:
        /*0410*/                   BRA `(.L_x_34) ;
.L_x_34:
        /*0420*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0 ;
        /*0430*/               @P0 BRA `(.L_x_31) ;
        /*0440*/                   BRA `(.L_x_35) ;
.L_x_35:
        /*0450*/                   MOV R6, R26 ;
        /*0460*/                   MOV R7, R27 ;
        /*0470*/                   IADD3 R4, P0, R16, 0x80, RZ ;
        /*0480*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*0490*/                   MOV R4, R4 ;
        /*04a0*/                   MOV R5, R5 ;
        /*04b0*/                   MOV R4, R4 ;
        /*04c0*/                   MOV R5, R5 ;
        /*04d0*/                   ST.E.64.SYS [R4], R6 ;
        /*04e0*/                   MOV R0, 0x2 ;
        /*04f0*/                   MOV R0, R0 ;
        /*0500*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 67
        /*0510*/                   BRA `(.L_x_36) ;
.L_x_36:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*0520*/                   IADD3 R4, P0, R16, 0x80, RZ ;
        /*0530*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*0540*/                   MOV R4, R4 ;
        /*0550*/                   MOV R5, R5 ;
        /*0560*/                   MOV R4, R4 ;
        /*0570*/                   MOV R5, R5 ;
        /*0580*/                   LD.E.64.SYS R4, [R4] ;
        /*0590*/                   MOV R3, R4 ;
        /*05a0*/                   MOV R4, R5 ;
        /*05b0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*05c0*/                   ISETP.NE.AND.EX P0, PT, R4, RZ, PT, P0 ;
        /*05d0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*05e0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*05f0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0600*/                   BSSY B0, `(.L_x_37) ;
        /*0610*/               @P0 BRA `(.L_x_38) ;
        /*0620*/                   BRA `(.L_x_39) ;
.L_x_39:
        /*0630*/                   BRA `(.L_x_38) ;
.L_x_38:
        /*0640*/                   BSYNC B0 ;
.L_x_37:
        /*0650*/                   IADD3 R4, P0, R16, 0x80, RZ ;
        /*0660*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*0670*/                   MOV R4, R4 ;
        /*0680*/                   MOV R5, R5 ;
        /*0690*/                   MOV R4, R4 ;
        /*06a0*/                   MOV R5, R5 ;
        /*06b0*/                   LD.E.64.SYS R4, [R4] ;
        /*06c0*/                   MOV R3, R4 ;
        /*06d0*/                   MOV R6, R5 ;
        /*06e0*/                   MOV R0, R0 ;
        /*06f0*/                   MOV R4, R0 ;
        /*0700*/                   MOV R5, RZ ;
        /*0710*/                   SHF.L.U64.HI R5, R4, 0x3, R5 ;
        /*0720*/                   SHF.L.U32 R4, R4, 0x3, RZ ;
        /*0730*/                   IADD3 R4, P0, R3, R4, RZ ;
        /*0740*/                   IADD3.X R5, R6, R5, RZ, P0, !PT ;
        /*0750*/                   MOV R4, R4 ;
        /*0760*/                   MOV R5, R5 ;
.L_x_158:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 67
        /*0770*/                   MOV R4, R4 ;
        /*0780*/                   MOV R5, R5 ;
        /*0790*/                   MOV R4, R4 ;
        /*07a0*/                   MOV R5, R5 ;
        /*07b0*/                   LD.E.64.SYS R4, [R4] ;
        /*07c0*/                   MOV R4, R4 ;
        /*07d0*/                   MOV R5, R5 ;
        /*07e0*/                   MOV R6, R4 ;
        /*07f0*/                   MOV R7, R5 ;
        /*0800*/                   MOV R12, R6 ;
        /*0810*/                   MOV R13, R7 ;
        /*0820*/                   MOV R12, R12 ;
        /*0830*/                   MOV R13, R13 ;
        /*0840*/                   MOV R4, R12 ;
        /*0850*/                   MOV R5, R13 ;
        /*0860*/                   MOV R8, R4 ;
        /*0870*/                   MOV R9, R5 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*0880*/                   BRA `(.L_x_40) ;
.L_x_40:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*0890*/                   MOV R4, 0x0 ;
        /*08a0*/                   MOV R5, 0x3ff00000 ;
        /*08b0*/                   MOV R10, R4 ;
        /*08c0*/                   MOV R11, R5 ;
        /*08d0*/                   MOV R4, R4 ;
        /*08e0*/                   MOV R5, R5 ;
        /*08f0*/                   MOV R10, R10 ;
        /*0900*/                   MOV R11, R11 ;
.L_x_161:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*0910*/                   DMUL R8, R12, R10 ;
        /*0920*/                   MOV R10, R12 ;
        /*0930*/                   MOV R11, R13 ;
        /*0940*/                   MOV R8, R8 ;
        /*0950*/                   MOV R9, R9 ;
        /*0960*/                   MOV R10, R10 ;
        /*0970*/                   MOV R11, R11 ;
        /*0980*/                   BRA `(.L_x_41) ;
.L_x_41:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*0990*/                   MOV R4, R4 ;
        /*09a0*/                   MOV R5, R5 ;
        /*09b0*/                   MOV R14, R4 ;
        /*09c0*/                   MOV R15, R5 ;
.L_x_162:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*09d0*/                   DMUL R8, R8, R14 ;
        /*09e0*/                   MOV R6, R6 ;
        /*09f0*/                   MOV R7, R7 ;
        /*0a00*/                   MOV R10, R8 ;
        /*0a10*/                   MOV R11, R9 ;
        /*0a20*/                   MOV R8, R6 ;
        /*0a30*/                   MOV R9, R7 ;
.L_x_160:
        /*0a40*/                   MOV R14, R8 ;
        /*0a50*/                   MOV R15, R9 ;
        /*0a60*/                   MOV R14, R14 ;
        /*0a70*/                   MOV R15, R15 ;
        /*0a80*/                   BRA `(.L_x_42) ;
.L_x_42:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*0a90*/                   MOV R4, R4 ;
        /*0aa0*/                   MOV R5, R5 ;
        /*0ab0*/                   MOV R12, R4 ;
        /*0ac0*/                   MOV R13, R5 ;
.L_x_164:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*0ad0*/                   DMUL R12, R8, R12 ;
        /*0ae0*/                   MOV R14, R8 ;
        /*0af0*/                   MOV R15, R9 ;
        /*0b00*/                   MOV R12, R12 ;
        /*0b10*/                   MOV R13, R13 ;
        /*0b20*/                   MOV R14, R14 ;
        /*0b30*/                   MOV R15, R15 ;
        /*0b40*/                   BRA `(.L_x_43) ;
.L_x_43:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*0b50*/                   MOV R4, R4 ;
        /*0b60*/                   MOV R5, R5 ;
        /*0b70*/                   MOV R32, R4 ;
        /*0b80*/                   MOV R33, R5 ;
.L_x_165:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*0b90*/                   DMUL R12, R12, R32 ;
        /*0ba0*/                   MOV R12, R12 ;
        /*0bb0*/                   MOV R13, R13 ;
.L_x_163:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 296
        /*0bc0*/                   DMUL R10, R10, R12 ;
        /*0bd0*/                   MOV R10, R10 ;
        /*0be0*/                   MOV R11, R11 ;
.L_x_159:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 67
        /*0bf0*/                   DADD R10, R4, -R10 ;
        /*0c00*/                   MOV R4, R10 ;
        /*0c10*/                   MOV R5, R11 ;
        /*0c20*/                   MOV R4, R4 ;
        /*0c30*/                   MOV R5, R5 ;
        /*0c40*/                   MOV R20, 32@lo((_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ + .L_x_1@srel)) ;
        /*0c50*/                   MOV R21, 32@hi((_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ + .L_x_1@srel)) ;
        /*0c60*/                   CALL.ABS.NOINC `(sqrt) ;
.L_x_1:
        /*0c70*/                   MOV R4, R4 ;
        /*0c80*/                   MOV R5, R5 ;
        /*0c90*/                   MOV R24, R4 ;
        /*0ca0*/                   MOV R25, R5 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 71
        /*0cb0*/                   DSETP.GE.AND P0, PT, R24, c[`(_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_.const2.0.8)], PT ;
        /*0cc0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0cd0*/                   BMOV.32.CLEAR RZ, B7 ;
        /*0ce0*/                   BSSY B7, `(.L_x_44) ;
        /*0cf0*/               @P0 BRA `(.L_x_45) ;
        /*0d00*/                   BRA `(.L_x_46) ;
.L_x_46:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 75
        /*0d10*/                   MOV R4, R24 ;
        /*0d20*/                   MOV R5, R25 ;
        /*0d30*/                   MOV R4, R4 ;
        /*0d40*/                   MOV R5, R5 ;
        /*0d50*/                   MOV R0, R5 ;
        /*0d60*/                   MOV R0, R0 ;
        /*0d70*/                   IADD3 R3, R0, 0x300402, RZ ;
        /*0d80*/                   MOV R3, R3 ;
        /*0d90*/                   MOV R6, R4 ;
        /*0da0*/                   MOV R7, R5 ;
        /*0db0*/                   MOV R6, RZ ;
        /*0dc0*/                   MUFU.RCP64H R7, R7 ;
        /*0dd0*/                   MOV R6, R6 ;
        /*0de0*/                   MOV R6, R6 ;
        /*0df0*/                   MOV R7, R7 ;
        /*0e00*/                   MOV R7, R7 ;
        /*0e10*/                   LOP3.LUT R6, R6, R3, RZ, 0xfc, !PT ;
        /*0e20*/                   MOV R6, R6 ;
        /*0e30*/                   MOV R7, R7 ;
        /*0e40*/                   DADD R8, -RZ, -R4 ;
        /*0e50*/                   MOV R8, R8 ;
        /*0e60*/                   MOV R9, R9 ;
        /*0e70*/                   MOV R10, 0x0 ;
        /*0e80*/                   MOV R11, 0x3ff00000 ;
        /*0e90*/                   DFMA R12, R8, R6, R10 ;
        /*0ea0*/                   DFMA R12, R12, R12, R12 ;
        /*0eb0*/                   DFMA R12, R12, R6, R6 ;
        /*0ec0*/                   DFMA R8, R8, R12, R10 ;
        /*0ed0*/                   DFMA R12, R8, R12, R12 ;
        /*0ee0*/                   FADD R3, -RZ, |R3| ;
        /*0ef0*/                   MOV R3, R3 ;
        /*0f00*/                   FSETP.GEU.AND P0, PT, R3, 5.8789094863358348022e-39, PT ;
        /*0f10*/                   MOV R6, R4 ;
        /*0f20*/                   MOV R7, R5 ;
        /*0f30*/                   MOV R4, R6 ;
        /*0f40*/                   MOV R5, R7 ;
        /*0f50*/                   MOV R0, R0 ;
        /*0f60*/                   MOV R12, R12 ;
        /*0f70*/                   MOV R13, R13 ;
        /*0f80*/                   BMOV.32.CLEAR RZ, B6 ;
        /*0f90*/                   BSSY B6, `(.L_x_47) ;
        /*0fa0*/               @P0 BRA `(.L_x_48) ;
        /*0fb0*/                   LOP3.LUT R0, R0, 0x7fffffff, RZ, 0xc0, !PT ;
        /*0fc0*/                   IADD3 R6, R0, -0x100000, RZ ;
        /*0fd0*/                   MOV R4, R4 ;
        /*0fe0*/                   MOV R5, R5 ;
        /*0ff0*/                   MOV R6, R6 ;
        /*1000*/                   MOV R20, 32@lo((_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ + .L_x_2@srel)) ;
        /*1010*/                   MOV R21, 32@hi((_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ + .L_x_2@srel)) ;
        /*1020*/                   CALL.ABS.NOINC `(__cuda_sm20_dblrcp_rn_slowpath_v3) ;
.L_x_2:
        /*1030*/                   MOV R4, R4 ;
        /*1040*/                   MOV R5, R5 ;
        /*1050*/                   MOV R12, R4 ;
        /*1060*/                   MOV R13, R5 ;
.L_x_48:
        /*1070*/                   BSYNC B6 ;
.L_x_47:
        /*1080*/                   MOV R12, R12 ;
        /*1090*/                   MOV R13, R13 ;
        /*10a0*/                   MOV R12, R12 ;
        /*10b0*/                   MOV R13, R13 ;
        /*10c0*/                   MOV R4, R12 ;
        /*10d0*/                   MOV R5, R13 ;
        /*10e0*/                   MOV R8, R26 ;
        /*10f0*/                   MOV R9, R27 ;
        /*1100*/                   IADD3 R6, P0, R16, 0x20, RZ ;
        /*1110*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*1120*/                   MOV R6, R6 ;
        /*1130*/                   MOV R7, R7 ;
        /*1140*/                   MOV R6, R6 ;
        /*1150*/                   MOV R7, R7 ;
        /*1160*/                   ST.E.64.SYS [R6], R8 ;
        /*1170*/                   MOV R0, RZ ;
        /*1180*/                   MOV R0, R0 ;
        /*1190*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 76
        /*11a0*/                   BRA `(.L_x_49) ;
.L_x_49:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*11b0*/                   IADD3 R6, P0, R16, 0x20, RZ ;
        /*11c0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*11d0*/                   MOV R6, R6 ;
        /*11e0*/                   MOV R7, R7 ;
        /*11f0*/                   MOV R6, R6 ;
        /*1200*/                   MOV R7, R7 ;
        /*1210*/                   LD.E.64.SYS R6, [R6] ;
        /*1220*/                   MOV R3, R6 ;
        /*1230*/                   MOV R6, R7 ;
        /*1240*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*1250*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*1260*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1270*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1280*/                   BMOV.32.CLEAR RZ, B0 ;
        /*1290*/                   BSSY B0, `(.L_x_50) ;
        /*12a0*/               @P0 BRA `(.L_x_51) ;
        /*12b0*/                   BRA `(.L_x_52) ;
.L_x_52:
        /*12c0*/                   BRA `(.L_x_51) ;
.L_x_51:
        /*12d0*/                   BSYNC B0 ;
.L_x_50:
        /*12e0*/                   IADD3 R6, P0, R16, 0x20, RZ ;
        /*12f0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*1300*/                   MOV R6, R6 ;
        /*1310*/                   MOV R7, R7 ;
        /*1320*/                   MOV R6, R6 ;
        /*1330*/                   MOV R7, R7 ;
        /*1340*/                   LD.E.64.SYS R6, [R6] ;
        /*1350*/                   MOV R3, R6 ;
        /*1360*/                   MOV R8, R7 ;
        /*1370*/                   MOV R0, R0 ;
        /*1380*/                   MOV R6, R0 ;
        /*1390*/                   MOV R7, RZ ;
        /*13a0*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*13b0*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*13c0*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*13d0*/                   IADD3.X R7, R8, R7, RZ, P0, !PT ;
        /*13e0*/                   MOV R6, R6 ;
        /*13f0*/                   MOV R7, R7 ;
.L_x_166:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 76
        /*1400*/                   MOV R6, R6 ;
        /*1410*/                   MOV R7, R7 ;
        /*1420*/                   MOV R6, R6 ;
        /*1430*/                   MOV R7, R7 ;
        /*1440*/                   LD.E.64.SYS R6, [R6] ;
        /*1450*/                   DMUL R6, R6, R4 ;
        /*1460*/                   MOV R6, R6 ;
        /*1470*/                   MOV R7, R7 ;
        /*1480*/                   MOV R10, R26 ;
        /*1490*/                   MOV R11, R27 ;
        /*14a0*/                   IADD3 R8, P0, R16, RZ, RZ ;
        /*14b0*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*14c0*/                   MOV R8, R8 ;
        /*14d0*/                   MOV R9, R9 ;
        /*14e0*/                   MOV R8, R8 ;
        /*14f0*/                   MOV R9, R9 ;
        /*1500*/                   ST.E.64.SYS [R8], R10 ;
        /*1510*/                   MOV R0, 0x1 ;
        /*1520*/                   MOV R0, R0 ;
        /*1530*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 77
        /*1540*/                   BRA `(.L_x_53) ;
.L_x_53:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*1550*/                   IADD3 R8, P0, R16, RZ, RZ ;
        /*1560*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*1570*/                   MOV R8, R8 ;
        /*1580*/                   MOV R9, R9 ;
        /*1590*/                   MOV R8, R8 ;
        /*15a0*/                   MOV R9, R9 ;
        /*15b0*/                   LD.E.64.SYS R8, [R8] ;
        /*15c0*/                   MOV R3, R8 ;
        /*15d0*/                   MOV R8, R9 ;
        /*15e0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*15f0*/                   ISETP.NE.AND.EX P0, PT, R8, RZ, PT, P0 ;
        /*1600*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1610*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1620*/                   BMOV.32.CLEAR RZ, B0 ;
        /*1630*/                   BSSY B0, `(.L_x_54) ;
        /*1640*/               @P0 BRA `(.L_x_55) ;
        /*1650*/                   BRA `(.L_x_56) ;
.L_x_56:
        /*1660*/                   BRA `(.L_x_55) ;
.L_x_55:
        /*1670*/                   BSYNC B0 ;
.L_x_54:
        /*1680*/                   IADD3 R8, P0, R16, RZ, RZ ;
        /*1690*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*16a0*/                   MOV R8, R8 ;
        /*16b0*/                   MOV R9, R9 ;
        /*16c0*/                   MOV R8, R8 ;
        /*16d0*/                   MOV R9, R9 ;
        /*16e0*/                   LD.E.64.SYS R8, [R8] ;
        /*16f0*/                   MOV R3, R8 ;
        /*1700*/                   MOV R10, R9 ;
        /*1710*/                   MOV R0, R0 ;
        /*1720*/                   MOV R8, R0 ;
        /*1730*/                   MOV R9, RZ ;
        /*1740*/                   SHF.L.U64.HI R9, R8, 0x3, R9 ;
        /*1750*/                   SHF.L.U32 R8, R8, 0x3, RZ ;
        /*1760*/                   IADD3 R8, P0, R3, R8, RZ ;
        /*1770*/                   IADD3.X R9, R10, R9, RZ, P0, !PT ;
        /*1780*/                   MOV R8, R8 ;
        /*1790*/                   MOV R9, R9 ;
.L_x_167:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 77
        /*17a0*/                   MOV R8, R8 ;
        /*17b0*/                   MOV R9, R9 ;
        /*17c0*/                   MOV R8, R8 ;
        /*17d0*/                   MOV R9, R9 ;
        /*17e0*/                   LD.E.64.SYS R8, [R8] ;
        /*17f0*/                   DMUL R8, R8, R4 ;
        /*1800*/                   MOV R8, R8 ;
        /*1810*/                   MOV R9, R9 ;
.L_x_150:
        /*1820*/                   MOV R4, R6 ;
        /*1830*/                   MOV R5, R7 ;
        /*1840*/                   MOV R4, R4 ;
        /*1850*/                   MOV R5, R5 ;
.L_x_142:
        /*1860*/                   MOV R12, R8 ;
        /*1870*/                   MOV R13, R9 ;
        /*1880*/                   MOV R12, R12 ;
        /*1890*/                   MOV R13, R13 ;
.L_x_151:
        /*18a0*/                   BRA `(.L_x_57) ;
.L_x_45:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 79
        /*18b0*/                   DSETP.GT.AND P0, PT, R24, RZ, PT ;
        /*18c0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*18d0*/                   BMOV.32.CLEAR RZ, B6 ;
        /*18e0*/                   BSSY B6, `(.L_x_58) ;
        /*18f0*/               @P0 BRA `(.L_x_59) ;
        /*1900*/                   BRA `(.L_x_60) ;
.L_x_60:
        /*1910*/                   MOV R6, R26 ;
        /*1920*/                   MOV R7, R27 ;
        /*1930*/                   IADD3 R4, P0, R16, 0x8, RZ ;
        /*1940*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*1950*/                   MOV R4, R4 ;
        /*1960*/                   MOV R5, R5 ;
        /*1970*/                   MOV R4, R4 ;
        /*1980*/                   MOV R5, R5 ;
        /*1990*/                   ST.E.64.SYS [R4], R6 ;
        /*19a0*/                   MOV R0, RZ ;
        /*19b0*/                   MOV R0, R0 ;
        /*19c0*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 82
        /*19d0*/                   BRA `(.L_x_61) ;
.L_x_61:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*19e0*/                   IADD3 R4, P0, R16, 0x8, RZ ;
        /*19f0*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*1a00*/                   MOV R4, R4 ;
        /*1a10*/                   MOV R5, R5 ;
        /*1a20*/                   MOV R4, R4 ;
        /*1a30*/                   MOV R5, R5 ;
        /*1a40*/                   LD.E.64.SYS R4, [R4] ;
        /*1a50*/                   MOV R3, R4 ;
        /*1a60*/                   MOV R4, R5 ;
        /*1a70*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*1a80*/                   ISETP.NE.AND.EX P0, PT, R4, RZ, PT, P0 ;
        /*1a90*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1aa0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1ab0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*1ac0*/                   BSSY B0, `(.L_x_62) ;
        /*1ad0*/               @P0 BRA `(.L_x_63) ;
        /*1ae0*/                   BRA `(.L_x_64) ;
.L_x_64:
        /*1af0*/                   BRA `(.L_x_63) ;
.L_x_63:
        /*1b00*/                   BSYNC B0 ;
.L_x_62:
        /*1b10*/                   IADD3 R4, P0, R16, 0x8, RZ ;
        /*1b20*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*1b30*/                   MOV R4, R4 ;
        /*1b40*/                   MOV R5, R5 ;
        /*1b50*/                   MOV R4, R4 ;
        /*1b60*/                   MOV R5, R5 ;
        /*1b70*/                   LD.E.64.SYS R4, [R4] ;
        /*1b80*/                   MOV R3, R4 ;
        /*1b90*/                   MOV R6, R5 ;
        /*1ba0*/                   MOV R0, R0 ;
        /*1bb0*/                   MOV R4, R0 ;
        /*1bc0*/                   MOV R5, RZ ;
        /*1bd0*/                   SHF.L.U64.HI R5, R4, 0x3, R5 ;
        /*1be0*/                   SHF.L.U32 R4, R4, 0x3, RZ ;
        /*1bf0*/                   IADD3 R4, P0, R3, R4, RZ ;
        /*1c00*/                   IADD3.X R5, R6, R5, RZ, P0, !PT ;
        /*1c10*/                   MOV R4, R4 ;
        /*1c20*/                   MOV R5, R5 ;
.L_x_168:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 82
        /*1c30*/                   MOV R4, R4 ;
        /*1c40*/                   MOV R5, R5 ;
        /*1c50*/                   MOV R4, R4 ;
        /*1c60*/                   MOV R5, R5 ;
        /*1c70*/                   LD.E.64.SYS R4, [R4] ;
        /*1c80*/                   MOV R8, R26 ;
        /*1c90*/                   MOV R9, R27 ;
        /*1ca0*/                   IADD3 R6, P0, R16, 0x10, RZ ;
        /*1cb0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*1cc0*/                   MOV R6, R6 ;
        /*1cd0*/                   MOV R7, R7 ;
        /*1ce0*/                   MOV R6, R6 ;
        /*1cf0*/                   MOV R7, R7 ;
        /*1d00*/                   ST.E.64.SYS [R6], R8 ;
        /*1d10*/                   MOV R0, RZ ;
        /*1d20*/                   MOV R0, R0 ;
        /*1d30*/                   MOV R22, R4 ;
        /*1d40*/                   MOV R23, R5 ;
        /*1d50*/                   MOV R0, R0 ;
        /*1d60*/                   BRA `(.L_x_65) ;
.L_x_65:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*1d70*/                   IADD3 R4, P0, R16, 0x10, RZ ;
        /*1d80*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*1d90*/                   MOV R4, R4 ;
        /*1da0*/                   MOV R5, R5 ;
        /*1db0*/                   MOV R4, R4 ;
        /*1dc0*/                   MOV R5, R5 ;
        /*1dd0*/                   LD.E.64.SYS R4, [R4] ;
        /*1de0*/                   MOV R3, R4 ;
        /*1df0*/                   MOV R4, R5 ;
        /*1e00*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*1e10*/                   ISETP.NE.AND.EX P0, PT, R4, RZ, PT, P0 ;
        /*1e20*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1e30*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1e40*/                   BMOV.32.CLEAR RZ, B0 ;
        /*1e50*/                   BSSY B0, `(.L_x_66) ;
        /*1e60*/               @P0 BRA `(.L_x_67) ;
        /*1e70*/                   BRA `(.L_x_68) ;
.L_x_68:
        /*1e80*/                   BRA `(.L_x_67) ;
.L_x_67:
        /*1e90*/                   BSYNC B0 ;
.L_x_66:
        /*1ea0*/                   IADD3 R4, P0, R16, 0x10, RZ ;
        /*1eb0*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*1ec0*/                   MOV R4, R4 ;
        /*1ed0*/                   MOV R5, R5 ;
        /*1ee0*/                   MOV R4, R4 ;
        /*1ef0*/                   MOV R5, R5 ;
        /*1f00*/                   LD.E.64.SYS R4, [R4] ;
        /*1f10*/                   MOV R3, R4 ;
        /*1f20*/                   MOV R6, R5 ;
        /*1f30*/                   MOV R0, R0 ;
        /*1f40*/                   MOV R4, R0 ;
        /*1f50*/                   MOV R5, RZ ;
        /*1f60*/                   SHF.L.U64.HI R5, R4, 0x3, R5 ;
        /*1f70*/                   SHF.L.U32 R4, R4, 0x3, RZ ;
        /*1f80*/                   IADD3 R4, P0, R3, R4, RZ ;
        /*1f90*/                   IADD3.X R5, R6, R5, RZ, P0, !PT ;
        /*1fa0*/                   MOV R4, R4 ;
        /*1fb0*/                   MOV R5, R5 ;
.L_x_169:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 82
        /*1fc0*/                   MOV R4, R4 ;
        /*1fd0*/                   MOV R5, R5 ;
        /*1fe0*/                   MOV R4, R4 ;
        /*1ff0*/                   MOV R5, R5 ;
        /*2000*/                   LD.E.64.SYS R4, [R4] ;
        /*2010*/                   MOV R8, R26 ;
        /*2020*/                   MOV R9, R27 ;
        /*2030*/                   IADD3 R6, P0, R16, 0x18, RZ ;
        /*2040*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*2050*/                   MOV R6, R6 ;
        /*2060*/                   MOV R7, R7 ;
        /*2070*/                   MOV R6, R6 ;
        /*2080*/                   MOV R7, R7 ;
        /*2090*/                   ST.E.64.SYS [R6], R8 ;
        /*20a0*/                   MOV R0, 0x1 ;
        /*20b0*/                   MOV R0, R0 ;
        /*20c0*/                   MOV R6, R4 ;
        /*20d0*/                   MOV R7, R5 ;
        /*20e0*/                   MOV R4, R6 ;
        /*20f0*/                   MOV R5, R7 ;
        /*2100*/                   MOV R0, R0 ;
        /*2110*/                   BRA `(.L_x_69) ;
.L_x_69:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*2120*/                   IADD3 R6, P0, R16, 0x18, RZ ;
        /*2130*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*2140*/                   MOV R6, R6 ;
        /*2150*/                   MOV R7, R7 ;
        /*2160*/                   MOV R6, R6 ;
        /*2170*/                   MOV R7, R7 ;
        /*2180*/                   LD.E.64.SYS R6, [R6] ;
        /*2190*/                   MOV R3, R6 ;
        /*21a0*/                   MOV R6, R7 ;
        /*21b0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*21c0*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*21d0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*21e0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*21f0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*2200*/                   BSSY B0, `(.L_x_70) ;
        /*2210*/               @P0 BRA `(.L_x_71) ;
        /*2220*/                   BRA `(.L_x_72) ;
.L_x_72:
        /*2230*/                   BRA `(.L_x_71) ;
.L_x_71:
        /*2240*/                   BSYNC B0 ;
.L_x_70:
        /*2250*/                   IADD3 R6, P0, R16, 0x18, RZ ;
        /*2260*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*2270*/                   MOV R6, R6 ;
        /*2280*/                   MOV R7, R7 ;
        /*2290*/                   MOV R6, R6 ;
        /*22a0*/                   MOV R7, R7 ;
        /*22b0*/                   LD.E.64.SYS R6, [R6] ;
        /*22c0*/                   MOV R3, R6 ;
        /*22d0*/                   MOV R6, R7 ;
        /*22e0*/                   MOV R0, R0 ;
        /*22f0*/                   MOV R8, R0 ;
        /*2300*/                   MOV R9, RZ ;
        /*2310*/                   SHF.L.U64.HI R9, R8, 0x3, R9 ;
        /*2320*/                   SHF.L.U32 R8, R8, 0x3, RZ ;
        /*2330*/                   IADD3 R8, P0, R3, R8, RZ ;
        /*2340*/                   IADD3.X R9, R6, R9, RZ, P0, !PT ;
        /*2350*/                   MOV R8, R8 ;
        /*2360*/                   MOV R9, R9 ;
.L_x_170:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 82
        /*2370*/                   MOV R8, R8 ;
        /*2380*/                   MOV R9, R9 ;
        /*2390*/                   MOV R8, R8 ;
        /*23a0*/                   MOV R9, R9 ;
        /*23b0*/                   LD.E.64.SYS R8, [R8] ;
        /*23c0*/                   MOV R6, R8 ;
        /*23d0*/                   MOV R7, R9 ;
        /*23e0*/                   MOV R4, R4 ;
        /*23f0*/                   MOV R5, R5 ;
        /*2400*/                   MOV R6, R6 ;
        /*2410*/                   MOV R7, R7 ;
        /*2420*/                   MOV R20, 32@lo((_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ + .L_x_3@srel)) ;
        /*2430*/                   MOV R21, 32@hi((_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ + .L_x_3@srel)) ;
        /*2440*/                   CALL.ABS.NOINC `(_Z9my_rhypotIdET_S0_S0_) ;
.L_x_3:
        /*2450*/                   MOV R4, R4 ;
        /*2460*/                   MOV R5, R5 ;
        /*2470*/                   DMUL R4, R22, R4 ;
        /*2480*/                   MOV R22, R4 ;
        /*2490*/                   MOV R23, R5 ;
.L_x_143:
        /*24a0*/                   MOV R4, R22 ;
        /*24b0*/                   MOV R5, R23 ;
        /*24c0*/                   MOV R30, R4 ;
        /*24d0*/                   MOV R31, R5 ;
        /*24e0*/                   MOV R8, R30 ;
        /*24f0*/                   MOV R9, R31 ;
        /*2500*/                   MOV R8, R8 ;
        /*2510*/                   MOV R9, R9 ;
        /*2520*/                   MOV R4, R8 ;
        /*2530*/                   MOV R5, R9 ;
        /*2540*/                   MOV R4, R4 ;
        /*2550*/                   MOV R5, R5 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*2560*/                   BRA `(.L_x_73) ;
.L_x_73:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*2570*/                   MOV R14, 0x0 ;
        /*2580*/                   MOV R15, 0x3ff00000 ;
        /*2590*/                   MOV R6, R14 ;
        /*25a0*/                   MOV R7, R15 ;
        /*25b0*/                   MOV R14, R14 ;
        /*25c0*/                   MOV R15, R15 ;
        /*25d0*/                   MOV R6, R6 ;
        /*25e0*/                   MOV R7, R7 ;
.L_x_173:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*25f0*/                   DMUL R6, R8, R6 ;
        /*2600*/                   MOV R4, R8 ;
        /*2610*/                   MOV R5, R9 ;
        /*2620*/                   MOV R10, R6 ;
        /*2630*/                   MOV R11, R7 ;
        /*2640*/                   MOV R4, R4 ;
        /*2650*/                   MOV R5, R5 ;
        /*2660*/                   BRA `(.L_x_74) ;
.L_x_74:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*2670*/                   MOV R6, R14 ;
        /*2680*/                   MOV R7, R15 ;
        /*2690*/                   MOV R6, R6 ;
        /*26a0*/                   MOV R7, R7 ;
.L_x_174:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*26b0*/                   DMUL R4, R10, R6 ;
        /*26c0*/                   MOV R6, R30 ;
        /*26d0*/                   MOV R7, R31 ;
        /*26e0*/                   MOV R4, R4 ;
        /*26f0*/                   MOV R5, R5 ;
        /*2700*/                   MOV R6, R6 ;
        /*2710*/                   MOV R7, R7 ;
.L_x_172:
        /*2720*/                   MOV R10, R6 ;
        /*2730*/                   MOV R11, R7 ;
        /*2740*/                   MOV R10, R10 ;
        /*2750*/                   MOV R11, R11 ;
        /*2760*/                   BRA `(.L_x_75) ;
.L_x_75:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*2770*/                   MOV R8, R14 ;
        /*2780*/                   MOV R9, R15 ;
        /*2790*/                   MOV R8, R8 ;
        /*27a0*/                   MOV R9, R9 ;
.L_x_176:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*27b0*/                   DMUL R8, R6, R8 ;
        /*27c0*/                   MOV R10, R6 ;
        /*27d0*/                   MOV R11, R7 ;
        /*27e0*/                   MOV R8, R8 ;
        /*27f0*/                   MOV R9, R9 ;
        /*2800*/                   MOV R10, R10 ;
        /*2810*/                   MOV R11, R11 ;
        /*2820*/                   BRA `(.L_x_76) ;
.L_x_76:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*2830*/                   MOV R12, R14 ;
        /*2840*/                   MOV R13, R15 ;
        /*2850*/                   MOV R12, R12 ;
        /*2860*/                   MOV R13, R13 ;
.L_x_177:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*2870*/                   DMUL R8, R8, R12 ;
        /*2880*/                   MOV R8, R8 ;
        /*2890*/                   MOV R9, R9 ;
.L_x_175:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 296
        /*28a0*/                   DMUL R4, R4, R8 ;
        /*28b0*/                   MOV R4, R4 ;
        /*28c0*/                   MOV R5, R5 ;
.L_x_171:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 83
        /*28d0*/                   DADD R14, R14, -R4 ;
        /*28e0*/                   MOV R4, R14 ;
        /*28f0*/                   MOV R5, R15 ;
        /*2900*/                   MOV R4, R4 ;
        /*2910*/                   MOV R5, R5 ;
        /*2920*/                   MOV R20, 32@lo((_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ + .L_x_4@srel)) ;
        /*2930*/                   MOV R21, 32@hi((_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ + .L_x_4@srel)) ;
        /*2940*/                   CALL.ABS.NOINC `(sqrt) ;
.L_x_4:
        /*2950*/                   MOV R4, R4 ;
        /*2960*/                   MOV R5, R5 ;
        /*2970*/                   MOV R6, R4 ;
        /*2980*/                   MOV R7, R5 ;
.L_x_152:
        /*2990*/                   MOV R4, R22 ;
        /*29a0*/                   MOV R5, R23 ;
        /*29b0*/                   MOV R4, R4 ;
        /*29c0*/                   MOV R5, R5 ;
.L_x_144:
        /*29d0*/                   MOV R8, R6 ;
        /*29e0*/                   MOV R9, R7 ;
        /*29f0*/                   MOV R8, R8 ;
        /*2a00*/                   MOV R9, R9 ;
.L_x_153:
        /*2a10*/                   BRA `(.L_x_77) ;
.L_x_59:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 88
        /*2a20*/                   MOV R4, 0x0 ;
        /*2a30*/                   MOV R5, 0x3ff00000 ;
        /*2a40*/                   MOV R4, R4 ;
        /*2a50*/                   MOV R5, R5 ;
        /*2a60*/                   MOV R6, R4 ;
        /*2a70*/                   MOV R7, R5 ;
.L_x_145:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 89
        /*2a80*/                   CS2R R4, SRZ ;
        /*2a90*/                   MOV R4, R4 ;
        /*2aa0*/                   MOV R5, R5 ;
        /*2ab0*/                   MOV R10, R4 ;
        /*2ac0*/                   MOV R11, R5 ;
.L_x_154:
        /*2ad0*/                   MOV R4, R6 ;
        /*2ae0*/                   MOV R5, R7 ;
        /*2af0*/                   MOV R4, R4 ;
        /*2b00*/                   MOV R5, R5 ;
.L_x_146:
        /*2b10*/                   MOV R8, R10 ;
        /*2b20*/                   MOV R9, R11 ;
        /*2b30*/                   MOV R8, R8 ;
        /*2b40*/                   MOV R9, R9 ;
.L_x_155:
        /*2b50*/                   BRA `(.L_x_77) ;
.L_x_77:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 83
        /*2b60*/                   BSYNC B6 ;
.L_x_58:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 89
        /*2b70*/                   MOV R6, R8 ;
        /*2b80*/                   MOV R7, R9 ;
        /*2b90*/                   MOV R4, R4 ;
        /*2ba0*/                   MOV R5, R5 ;
        /*2bb0*/                   MOV R6, R6 ;
        /*2bc0*/                   MOV R7, R7 ;
        /*2bd0*/                   MOV R10, R4 ;
        /*2be0*/                   MOV R11, R5 ;
.L_x_147:
        /*2bf0*/                   MOV R4, R10 ;
        /*2c00*/                   MOV R5, R11 ;
        /*2c10*/                   MOV R4, R4 ;
        /*2c20*/                   MOV R5, R5 ;
.L_x_148:
        /*2c30*/                   MOV R12, R6 ;
        /*2c40*/                   MOV R13, R7 ;
        /*2c50*/                   MOV R12, R12 ;
        /*2c60*/                   MOV R13, R13 ;
.L_x_156:
        /*2c70*/                   BRA `(.L_x_57) ;
.L_x_57:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 77
        /*2c80*/                   BSYNC B7 ;
.L_x_44:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 92
        /*2c90*/                   MOV R10, R12 ;
        /*2ca0*/                   MOV R11, R13 ;
        /*2cb0*/                   MOV R8, R4 ;
        /*2cc0*/                   MOV R9, R5 ;
        /*2cd0*/                   MOV R10, R10 ;
        /*2ce0*/                   MOV R11, R11 ;
        /*2cf0*/                   MOV R8, R8 ;
        /*2d00*/                   MOV R9, R9 ;
        /*2d10*/                   MOV R6, R26 ;
        /*2d20*/                   MOV R7, R27 ;
        /*2d30*/                   IADD3 R4, P0, R16, 0x28, RZ ;
        /*2d40*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*2d50*/                   MOV R4, R4 ;
        /*2d60*/                   MOV R5, R5 ;
        /*2d70*/                   MOV R4, R4 ;
        /*2d80*/                   MOV R5, R5 ;
        /*2d90*/                   ST.E.64.SYS [R4], R6 ;
        /*2da0*/                   MOV R0, 0x2 ;
        /*2db0*/                   MOV R0, R0 ;
        /*2dc0*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 93
        /*2dd0*/                   BRA `(.L_x_78) ;
.L_x_78:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*2de0*/                   IADD3 R4, P0, R16, 0x28, RZ ;
        /*2df0*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*2e00*/                   MOV R4, R4 ;
        /*2e10*/                   MOV R5, R5 ;
        /*2e20*/                   MOV R4, R4 ;
        /*2e30*/                   MOV R5, R5 ;
        /*2e40*/                   LD.E.64.SYS R4, [R4] ;
        /*2e50*/                   MOV R3, R4 ;
        /*2e60*/                   MOV R4, R5 ;
        /*2e70*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*2e80*/                   ISETP.NE.AND.EX P0, PT, R4, RZ, PT, P0 ;
        /*2e90*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*2ea0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*2eb0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*2ec0*/                   BSSY B0, `(.L_x_79) ;
        /*2ed0*/               @P0 BRA `(.L_x_80) ;
        /*2ee0*/                   BRA `(.L_x_81) ;
.L_x_81:
        /*2ef0*/                   BRA `(.L_x_80) ;
.L_x_80:
        /*2f00*/                   BSYNC B0 ;
.L_x_79:
        /*2f10*/                   IADD3 R4, P0, R16, 0x28, RZ ;
        /*2f20*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*2f30*/                   MOV R4, R4 ;
        /*2f40*/                   MOV R5, R5 ;
        /*2f50*/                   MOV R4, R4 ;
        /*2f60*/                   MOV R5, R5 ;
        /*2f70*/                   LD.E.64.SYS R4, [R4] ;
        /*2f80*/                   MOV R3, R4 ;
        /*2f90*/                   MOV R6, R5 ;
        /*2fa0*/                   MOV R0, R0 ;
        /*2fb0*/                   MOV R4, R0 ;
        /*2fc0*/                   MOV R5, RZ ;
        /*2fd0*/                   SHF.L.U64.HI R5, R4, 0x3, R5 ;
        /*2fe0*/                   SHF.L.U32 R4, R4, 0x3, RZ ;
        /*2ff0*/                   IADD3 R4, P0, R3, R4, RZ ;
        /*3000*/                   IADD3.X R5, R6, R5, RZ, P0, !PT ;
        /*3010*/                   MOV R4, R4 ;
        /*3020*/                   MOV R5, R5 ;
.L_x_178:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 93
        /*3030*/                   MOV R4, R4 ;
        /*3040*/                   MOV R5, R5 ;
        /*3050*/                   MOV R4, R4 ;
        /*3060*/                   MOV R5, R5 ;
        /*3070*/                   LD.E.64.SYS R4, [R4] ;
        /*3080*/                   MOV R12, R28 ;
        /*3090*/                   MOV R13, R29 ;
        /*30a0*/                   IADD3 R6, P0, R16, 0x30, RZ ;
        /*30b0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*30c0*/                   MOV R6, R6 ;
        /*30d0*/                   MOV R7, R7 ;
        /*30e0*/                   MOV R6, R6 ;
        /*30f0*/                   MOV R7, R7 ;
        /*3100*/                   ST.E.64.SYS [R6], R12 ;
        /*3110*/                   MOV R0, RZ ;
        /*3120*/                   MOV R0, R0 ;
        /*3130*/                   MOV R4, R4 ;
        /*3140*/                   MOV R5, R5 ;
        /*3150*/                   MOV R0, R0 ;
        /*3160*/                   BRA `(.L_x_82) ;
.L_x_82:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*3170*/                   IADD3 R6, P0, R16, 0x30, RZ ;
        /*3180*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3190*/                   MOV R6, R6 ;
        /*31a0*/                   MOV R7, R7 ;
        /*31b0*/                   MOV R6, R6 ;
        /*31c0*/                   MOV R7, R7 ;
        /*31d0*/                   LD.E.64.SYS R6, [R6] ;
        /*31e0*/                   MOV R3, R6 ;
        /*31f0*/                   MOV R6, R7 ;
        /*3200*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*3210*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*3220*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3230*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3240*/                   BMOV.32.CLEAR RZ, B0 ;
        /*3250*/                   BSSY B0, `(.L_x_83) ;
        /*3260*/               @P0 BRA `(.L_x_84) ;
        /*3270*/                   BRA `(.L_x_85) ;
.L_x_85:
        /*3280*/                   BRA `(.L_x_84) ;
.L_x_84:
        /*3290*/                   BSYNC B0 ;
.L_x_83:
        /*32a0*/                   IADD3 R6, P0, R16, 0x30, RZ ;
        /*32b0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*32c0*/                   MOV R6, R6 ;
        /*32d0*/                   MOV R7, R7 ;
        /*32e0*/                   MOV R6, R6 ;
        /*32f0*/                   MOV R7, R7 ;
        /*3300*/                   LD.E.64.SYS R6, [R6] ;
        /*3310*/                   MOV R3, R6 ;
        /*3320*/                   MOV R12, R7 ;
        /*3330*/                   MOV R0, R0 ;
        /*3340*/                   MOV R6, R0 ;
        /*3350*/                   MOV R7, RZ ;
        /*3360*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*3370*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*3380*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*3390*/                   IADD3.X R7, R12, R7, RZ, P0, !PT ;
        /*33a0*/                   MOV R6, R6 ;
        /*33b0*/                   MOV R7, R7 ;
.L_x_179:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 93
        /*33c0*/                   MOV R6, R6 ;
        /*33d0*/                   MOV R7, R7 ;
        /*33e0*/                   MOV R6, R6 ;
        /*33f0*/                   MOV R7, R7 ;
        /*3400*/                   LD.E.64.SYS R6, [R6] ;
        /*3410*/                   DMUL R4, R4, R6 ;
        /*3420*/                   MOV R12, R28 ;
        /*3430*/                   MOV R13, R29 ;
        /*3440*/                   IADD3 R6, P0, R16, 0x38, RZ ;
        /*3450*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3460*/                   MOV R6, R6 ;
        /*3470*/                   MOV R7, R7 ;
        /*3480*/                   MOV R6, R6 ;
        /*3490*/                   MOV R7, R7 ;
        /*34a0*/                   ST.E.64.SYS [R6], R12 ;
        /*34b0*/                   MOV R0, 0x2 ;
        /*34c0*/                   MOV R0, R0 ;
        /*34d0*/                   MOV R4, R4 ;
        /*34e0*/                   MOV R5, R5 ;
        /*34f0*/                   MOV R0, R0 ;
        /*3500*/                   BRA `(.L_x_86) ;
.L_x_86:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*3510*/                   IADD3 R6, P0, R16, 0x38, RZ ;
        /*3520*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3530*/                   MOV R6, R6 ;
        /*3540*/                   MOV R7, R7 ;
        /*3550*/                   MOV R6, R6 ;
        /*3560*/                   MOV R7, R7 ;
        /*3570*/                   LD.E.64.SYS R6, [R6] ;
        /*3580*/                   MOV R3, R6 ;
        /*3590*/                   MOV R6, R7 ;
        /*35a0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*35b0*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*35c0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*35d0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*35e0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*35f0*/                   BSSY B0, `(.L_x_87) ;
        /*3600*/               @P0 BRA `(.L_x_88) ;
        /*3610*/                   BRA `(.L_x_89) ;
.L_x_89:
        /*3620*/                   BRA `(.L_x_88) ;
.L_x_88:
        /*3630*/                   BSYNC B0 ;
.L_x_87:
        /*3640*/                   IADD3 R6, P0, R16, 0x38, RZ ;
        /*3650*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3660*/                   MOV R6, R6 ;
        /*3670*/                   MOV R7, R7 ;
        /*3680*/                   MOV R6, R6 ;
        /*3690*/                   MOV R7, R7 ;
        /*36a0*/                   LD.E.64.SYS R6, [R6] ;
        /*36b0*/                   MOV R3, R6 ;
        /*36c0*/                   MOV R12, R7 ;
        /*36d0*/                   MOV R0, R0 ;
        /*36e0*/                   MOV R6, R0 ;
        /*36f0*/                   MOV R7, RZ ;
        /*3700*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*3710*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*3720*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*3730*/                   IADD3.X R7, R12, R7, RZ, P0, !PT ;
        /*3740*/                   MOV R6, R6 ;
        /*3750*/                   MOV R7, R7 ;
.L_x_180:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 93
        /*3760*/                   MOV R6, R6 ;
        /*3770*/                   MOV R7, R7 ;
        /*3780*/                   MOV R6, R6 ;
        /*3790*/                   MOV R7, R7 ;
        /*37a0*/                   LD.E.64.SYS R6, [R6] ;
        /*37b0*/                   DMUL R6, R24, R6 ;
        /*37c0*/                   DADD R4, R4, R6 ;
        /*37d0*/                   DMUL R4, R4, R8 ;
        /*37e0*/                   MOV R12, R28 ;
        /*37f0*/                   MOV R13, R29 ;
        /*3800*/                   IADD3 R6, P0, R16, 0x40, RZ ;
        /*3810*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3820*/                   MOV R6, R6 ;
        /*3830*/                   MOV R7, R7 ;
        /*3840*/                   MOV R6, R6 ;
        /*3850*/                   MOV R7, R7 ;
        /*3860*/                   ST.E.64.SYS [R6], R12 ;
        /*3870*/                   MOV R0, 0x1 ;
        /*3880*/                   MOV R0, R0 ;
        /*3890*/                   MOV R4, R4 ;
        /*38a0*/                   MOV R5, R5 ;
        /*38b0*/                   MOV R0, R0 ;
        /*38c0*/                   BRA `(.L_x_90) ;
.L_x_90:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*38d0*/                   IADD3 R6, P0, R16, 0x40, RZ ;
        /*38e0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*38f0*/                   MOV R6, R6 ;
        /*3900*/                   MOV R7, R7 ;
        /*3910*/                   MOV R6, R6 ;
        /*3920*/                   MOV R7, R7 ;
        /*3930*/                   LD.E.64.SYS R6, [R6] ;
        /*3940*/                   MOV R3, R6 ;
        /*3950*/                   MOV R6, R7 ;
        /*3960*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*3970*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*3980*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3990*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*39a0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*39b0*/                   BSSY B0, `(.L_x_91) ;
        /*39c0*/               @P0 BRA `(.L_x_92) ;
        /*39d0*/                   BRA `(.L_x_93) ;
.L_x_93:
        /*39e0*/                   BRA `(.L_x_92) ;
.L_x_92:
        /*39f0*/                   BSYNC B0 ;
.L_x_91:
        /*3a00*/                   IADD3 R6, P0, R16, 0x40, RZ ;
        /*3a10*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3a20*/                   MOV R6, R6 ;
        /*3a30*/                   MOV R7, R7 ;
        /*3a40*/                   MOV R6, R6 ;
        /*3a50*/                   MOV R7, R7 ;
        /*3a60*/                   LD.E.64.SYS R6, [R6] ;
        /*3a70*/                   MOV R3, R6 ;
        /*3a80*/                   MOV R12, R7 ;
        /*3a90*/                   MOV R0, R0 ;
        /*3aa0*/                   MOV R6, R0 ;
        /*3ab0*/                   MOV R7, RZ ;
        /*3ac0*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*3ad0*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*3ae0*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*3af0*/                   IADD3.X R7, R12, R7, RZ, P0, !PT ;
        /*3b00*/                   MOV R6, R6 ;
        /*3b10*/                   MOV R7, R7 ;
.L_x_181:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 93
        /*3b20*/                   MOV R6, R6 ;
        /*3b30*/                   MOV R7, R7 ;
        /*3b40*/                   MOV R6, R6 ;
        /*3b50*/                   MOV R7, R7 ;
        /*3b60*/                   LD.E.64.SYS R6, [R6] ;
        /*3b70*/                   DMUL R6, R10, R6 ;
        /*3b80*/                   DADD R4, R4, -R6 ;
        /*3b90*/                   IADD3 R6, P0, R16, 0x88, RZ ;
        /*3ba0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3bb0*/                   MOV R6, R6 ;
        /*3bc0*/                   MOV R7, R7 ;
        /*3bd0*/                   MOV R6, R6 ;
        /*3be0*/                   MOV R7, R7 ;
        /*3bf0*/                   ST.E.64.SYS [R6], R4 ;
        /*3c00*/                   MOV R6, R26 ;
        /*3c10*/                   MOV R7, R27 ;
        /*3c20*/                   IADD3 R4, P0, R16, 0x48, RZ ;
        /*3c30*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*3c40*/                   MOV R4, R4 ;
        /*3c50*/                   MOV R5, R5 ;
        /*3c60*/                   MOV R4, R4 ;
        /*3c70*/                   MOV R5, R5 ;
        /*3c80*/                   ST.E.64.SYS [R4], R6 ;
        /*3c90*/                   MOV R0, 0x2 ;
        /*3ca0*/                   MOV R0, R0 ;
        /*3cb0*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 94
        /*3cc0*/                   BRA `(.L_x_94) ;
.L_x_94:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*3cd0*/                   IADD3 R4, P0, R16, 0x48, RZ ;
        /*3ce0*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*3cf0*/                   MOV R4, R4 ;
        /*3d00*/                   MOV R5, R5 ;
        /*3d10*/                   MOV R4, R4 ;
        /*3d20*/                   MOV R5, R5 ;
        /*3d30*/                   LD.E.64.SYS R4, [R4] ;
        /*3d40*/                   MOV R3, R4 ;
        /*3d50*/                   MOV R4, R5 ;
        /*3d60*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*3d70*/                   ISETP.NE.AND.EX P0, PT, R4, RZ, PT, P0 ;
        /*3d80*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3d90*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3da0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*3db0*/                   BSSY B0, `(.L_x_95) ;
        /*3dc0*/               @P0 BRA `(.L_x_96) ;
        /*3dd0*/                   BRA `(.L_x_97) ;
.L_x_97:
        /*3de0*/                   BRA `(.L_x_96) ;
.L_x_96:
        /*3df0*/                   BSYNC B0 ;
.L_x_95:
        /*3e00*/                   IADD3 R4, P0, R16, 0x48, RZ ;
        /*3e10*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*3e20*/                   MOV R4, R4 ;
        /*3e30*/                   MOV R5, R5 ;
        /*3e40*/                   MOV R4, R4 ;
        /*3e50*/                   MOV R5, R5 ;
        /*3e60*/                   LD.E.64.SYS R4, [R4] ;
        /*3e70*/                   MOV R3, R4 ;
        /*3e80*/                   MOV R6, R5 ;
        /*3e90*/                   MOV R0, R0 ;
        /*3ea0*/                   MOV R4, R0 ;
        /*3eb0*/                   MOV R5, RZ ;
        /*3ec0*/                   SHF.L.U64.HI R5, R4, 0x3, R5 ;
        /*3ed0*/                   SHF.L.U32 R4, R4, 0x3, RZ ;
        /*3ee0*/                   IADD3 R4, P0, R3, R4, RZ ;
        /*3ef0*/                   IADD3.X R5, R6, R5, RZ, P0, !PT ;
        /*3f00*/                   MOV R4, R4 ;
        /*3f10*/                   MOV R5, R5 ;
.L_x_182:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 94
        /*3f20*/                   MOV R4, R4 ;
        /*3f30*/                   MOV R5, R5 ;
        /*3f40*/                   MOV R4, R4 ;
        /*3f50*/                   MOV R5, R5 ;
        /*3f60*/                   LD.E.64.SYS R4, [R4] ;
        /*3f70*/                   MOV R12, R28 ;
        /*3f80*/                   MOV R13, R29 ;
        /*3f90*/                   IADD3 R6, P0, R16, 0x50, RZ ;
        /*3fa0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3fb0*/                   MOV R6, R6 ;
        /*3fc0*/                   MOV R7, R7 ;
        /*3fd0*/                   MOV R6, R6 ;
        /*3fe0*/                   MOV R7, R7 ;
        /*3ff0*/                   ST.E.64.SYS [R6], R12 ;
        /*4000*/                   MOV R0, RZ ;
        /*4010*/                   MOV R0, R0 ;
        /*4020*/                   MOV R4, R4 ;
        /*4030*/                   MOV R5, R5 ;
        /*4040*/                   MOV R0, R0 ;
        /*4050*/                   BRA `(.L_x_98) ;
.L_x_98:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*4060*/                   IADD3 R6, P0, R16, 0x50, RZ ;
        /*4070*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4080*/                   MOV R6, R6 ;
        /*4090*/                   MOV R7, R7 ;
        /*40a0*/                   MOV R6, R6 ;
        /*40b0*/                   MOV R7, R7 ;
        /*40c0*/                   LD.E.64.SYS R6, [R6] ;
        /*40d0*/                   MOV R3, R6 ;
        /*40e0*/                   MOV R6, R7 ;
        /*40f0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*4100*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*4110*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*4120*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*4130*/                   BMOV.32.CLEAR RZ, B0 ;
        /*4140*/                   BSSY B0, `(.L_x_99) ;
        /*4150*/               @P0 BRA `(.L_x_100) ;
        /*4160*/                   BRA `(.L_x_101) ;
.L_x_101:
        /*4170*/                   BRA `(.L_x_100) ;
.L_x_100:
        /*4180*/                   BSYNC B0 ;
.L_x_99:
        /*4190*/                   IADD3 R6, P0, R16, 0x50, RZ ;
        /*41a0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*41b0*/                   MOV R6, R6 ;
        /*41c0*/                   MOV R7, R7 ;
        /*41d0*/                   MOV R6, R6 ;
        /*41e0*/                   MOV R7, R7 ;
        /*41f0*/                   LD.E.64.SYS R6, [R6] ;
        /*4200*/                   MOV R3, R6 ;
        /*4210*/                   MOV R12, R7 ;
        /*4220*/                   MOV R0, R0 ;
        /*4230*/                   MOV R6, R0 ;
        /*4240*/                   MOV R7, RZ ;
        /*4250*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*4260*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*4270*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*4280*/                   IADD3.X R7, R12, R7, RZ, P0, !PT ;
        /*4290*/                   MOV R6, R6 ;
        /*42a0*/                   MOV R7, R7 ;
.L_x_183:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 94
        /*42b0*/                   MOV R6, R6 ;
        /*42c0*/                   MOV R7, R7 ;
        /*42d0*/                   MOV R6, R6 ;
        /*42e0*/                   MOV R7, R7 ;
        /*42f0*/                   LD.E.64.SYS R6, [R6] ;
        /*4300*/                   DMUL R4, R4, R6 ;
        /*4310*/                   MOV R12, R28 ;
        /*4320*/                   MOV R13, R29 ;
        /*4330*/                   IADD3 R6, P0, R16, 0x58, RZ ;
        /*4340*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4350*/                   MOV R6, R6 ;
        /*4360*/                   MOV R7, R7 ;
        /*4370*/                   MOV R6, R6 ;
        /*4380*/                   MOV R7, R7 ;
        /*4390*/                   ST.E.64.SYS [R6], R12 ;
        /*43a0*/                   MOV R0, 0x2 ;
        /*43b0*/                   MOV R0, R0 ;
        /*43c0*/                   MOV R4, R4 ;
        /*43d0*/                   MOV R5, R5 ;
        /*43e0*/                   MOV R0, R0 ;
        /*43f0*/                   BRA `(.L_x_102) ;
.L_x_102:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*4400*/                   IADD3 R6, P0, R16, 0x58, RZ ;
        /*4410*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4420*/                   MOV R6, R6 ;
        /*4430*/                   MOV R7, R7 ;
        /*4440*/                   MOV R6, R6 ;
        /*4450*/                   MOV R7, R7 ;
        /*4460*/                   LD.E.64.SYS R6, [R6] ;
        /*4470*/                   MOV R3, R6 ;
        /*4480*/                   MOV R6, R7 ;
        /*4490*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*44a0*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*44b0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*44c0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*44d0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*44e0*/                   BSSY B0, `(.L_x_103) ;
        /*44f0*/               @P0 BRA `(.L_x_104) ;
        /*4500*/                   BRA `(.L_x_105) ;
.L_x_105:
        /*4510*/                   BRA `(.L_x_104) ;
.L_x_104:
        /*4520*/                   BSYNC B0 ;
.L_x_103:
        /*4530*/                   IADD3 R6, P0, R16, 0x58, RZ ;
        /*4540*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4550*/                   MOV R6, R6 ;
        /*4560*/                   MOV R7, R7 ;
        /*4570*/                   MOV R6, R6 ;
        /*4580*/                   MOV R7, R7 ;
        /*4590*/                   LD.E.64.SYS R6, [R6] ;
        /*45a0*/                   MOV R3, R6 ;
        /*45b0*/                   MOV R12, R7 ;
        /*45c0*/                   MOV R0, R0 ;
        /*45d0*/                   MOV R6, R0 ;
        /*45e0*/                   MOV R7, RZ ;
        /*45f0*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*4600*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*4610*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*4620*/                   IADD3.X R7, R12, R7, RZ, P0, !PT ;
        /*4630*/                   MOV R6, R6 ;
        /*4640*/                   MOV R7, R7 ;
.L_x_184:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 94
        /*4650*/                   MOV R6, R6 ;
        /*4660*/                   MOV R7, R7 ;
        /*4670*/                   MOV R6, R6 ;
        /*4680*/                   MOV R7, R7 ;
        /*4690*/                   LD.E.64.SYS R6, [R6] ;
        /*46a0*/                   DMUL R6, R24, R6 ;
        /*46b0*/                   DADD R4, R4, R6 ;
        /*46c0*/                   DMUL R4, R4, R10 ;
        /*46d0*/                   MOV R12, R28 ;
        /*46e0*/                   MOV R13, R29 ;
        /*46f0*/                   IADD3 R6, P0, R16, 0x60, RZ ;
        /*4700*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4710*/                   MOV R6, R6 ;
        /*4720*/                   MOV R7, R7 ;
        /*4730*/                   MOV R6, R6 ;
        /*4740*/                   MOV R7, R7 ;
        /*4750*/                   ST.E.64.SYS [R6], R12 ;
        /*4760*/                   MOV R0, 0x1 ;
        /*4770*/                   MOV R0, R0 ;
        /*4780*/                   MOV R4, R4 ;
        /*4790*/                   MOV R5, R5 ;
        /*47a0*/                   MOV R0, R0 ;
        /*47b0*/                   BRA `(.L_x_106) ;
.L_x_106:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*47c0*/                   IADD3 R6, P0, R16, 0x60, RZ ;
        /*47d0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*47e0*/                   MOV R6, R6 ;
        /*47f0*/                   MOV R7, R7 ;
        /*4800*/                   MOV R6, R6 ;
        /*4810*/                   MOV R7, R7 ;
        /*4820*/                   LD.E.64.SYS R6, [R6] ;
        /*4830*/                   MOV R3, R6 ;
        /*4840*/                   MOV R6, R7 ;
        /*4850*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*4860*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*4870*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*4880*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*4890*/                   BMOV.32.CLEAR RZ, B0 ;
        /*48a0*/                   BSSY B0, `(.L_x_107) ;
        /*48b0*/               @P0 BRA `(.L_x_108) ;
        /*48c0*/                   BRA `(.L_x_109) ;
.L_x_109:
        /*48d0*/                   BRA `(.L_x_108) ;
.L_x_108:
        /*48e0*/                   BSYNC B0 ;
.L_x_107:
        /*48f0*/                   IADD3 R6, P0, R16, 0x60, RZ ;
        /*4900*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4910*/                   MOV R6, R6 ;
        /*4920*/                   MOV R7, R7 ;
        /*4930*/                   MOV R6, R6 ;
        /*4940*/                   MOV R7, R7 ;
        /*4950*/                   LD.E.64.SYS R6, [R6] ;
        /*4960*/                   MOV R3, R6 ;
        /*4970*/                   MOV R12, R7 ;
        /*4980*/                   MOV R0, R0 ;
        /*4990*/                   MOV R6, R0 ;
        /*49a0*/                   MOV R7, RZ ;
        /*49b0*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*49c0*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*49d0*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*49e0*/                   IADD3.X R7, R12, R7, RZ, P0, !PT ;
        /*49f0*/                   MOV R6, R6 ;
        /*4a00*/                   MOV R7, R7 ;
.L_x_185:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 94
        /*4a10*/                   MOV R6, R6 ;
        /*4a20*/                   MOV R7, R7 ;
        /*4a30*/                   MOV R6, R6 ;
        /*4a40*/                   MOV R7, R7 ;
        /*4a50*/                   LD.E.64.SYS R6, [R6] ;
        /*4a60*/                   DMUL R6, R8, R6 ;
        /*4a70*/                   DADD R4, R4, R6 ;
        /*4a80*/                   IADD3 R6, P0, R16, 0x90, RZ ;
        /*4a90*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4aa0*/                   MOV R6, R6 ;
        /*4ab0*/                   MOV R7, R7 ;
        /*4ac0*/                   MOV R6, R6 ;
        /*4ad0*/                   MOV R7, R7 ;
        /*4ae0*/                   ST.E.64.SYS [R6], R4 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 92
        /*4af0*/                   DADD R4, -RZ, -R24 ;
        /*4b00*/                   MOV R4, R4 ;
        /*4b10*/                   MOV R5, R5 ;
        /*4b20*/                   MOV R12, R28 ;
        /*4b30*/                   MOV R13, R29 ;
        /*4b40*/                   IADD3 R6, P0, R16, 0x68, RZ ;
        /*4b50*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4b60*/                   MOV R6, R6 ;
        /*4b70*/                   MOV R7, R7 ;
        /*4b80*/                   MOV R6, R6 ;
        /*4b90*/                   MOV R7, R7 ;
        /*4ba0*/                   ST.E.64.SYS [R6], R12 ;
        /*4bb0*/                   MOV R0, RZ ;
        /*4bc0*/                   MOV R0, R0 ;
        /*4bd0*/                   MOV R4, R4 ;
        /*4be0*/                   MOV R5, R5 ;
        /*4bf0*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 95
        /*4c00*/                   BRA `(.L_x_110) ;
.L_x_110:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*4c10*/                   IADD3 R6, P0, R16, 0x68, RZ ;
        /*4c20*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4c30*/                   MOV R6, R6 ;
        /*4c40*/                   MOV R7, R7 ;
        /*4c50*/                   MOV R6, R6 ;
        /*4c60*/                   MOV R7, R7 ;
        /*4c70*/                   LD.E.64.SYS R6, [R6] ;
        /*4c80*/                   MOV R3, R6 ;
        /*4c90*/                   MOV R6, R7 ;
        /*4ca0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*4cb0*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*4cc0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*4cd0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*4ce0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*4cf0*/                   BSSY B0, `(.L_x_111) ;
        /*4d00*/               @P0 BRA `(.L_x_112) ;
        /*4d10*/                   BRA `(.L_x_113) ;
.L_x_113:
        /*4d20*/                   BRA `(.L_x_112) ;
.L_x_112:
        /*4d30*/                   BSYNC B0 ;
.L_x_111:
        /*4d40*/                   IADD3 R6, P0, R16, 0x68, RZ ;
        /*4d50*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4d60*/                   MOV R6, R6 ;
        /*4d70*/                   MOV R7, R7 ;
        /*4d80*/                   MOV R6, R6 ;
        /*4d90*/                   MOV R7, R7 ;
        /*4da0*/                   LD.E.64.SYS R6, [R6] ;
        /*4db0*/                   MOV R3, R6 ;
        /*4dc0*/                   MOV R12, R7 ;
        /*4dd0*/                   MOV R0, R0 ;
        /*4de0*/                   MOV R6, R0 ;
        /*4df0*/                   MOV R7, RZ ;
        /*4e00*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*4e10*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*4e20*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*4e30*/                   IADD3.X R7, R12, R7, RZ, P0, !PT ;
        /*4e40*/                   MOV R6, R6 ;
        /*4e50*/                   MOV R7, R7 ;
.L_x_186:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 95
        /*4e60*/                   MOV R6, R6 ;
        /*4e70*/                   MOV R7, R7 ;
        /*4e80*/                   MOV R6, R6 ;
        /*4e90*/                   MOV R7, R7 ;
        /*4ea0*/                   LD.E.64.SYS R6, [R6] ;
        /*4eb0*/                   DMUL R4, R4, R6 ;
        /*4ec0*/                   MOV R6, R26 ;
        /*4ed0*/                   MOV R7, R27 ;
        /*4ee0*/                   IADD3 R12, P0, R16, 0x70, RZ ;
        /*4ef0*/                   IADD3.X R13, R2, RZ, RZ, P0, !PT ;
        /*4f00*/                   MOV R12, R12 ;
        /*4f10*/                   MOV R13, R13 ;
        /*4f20*/                   MOV R12, R12 ;
        /*4f30*/                   MOV R13, R13 ;
        /*4f40*/                   ST.E.64.SYS [R12], R6 ;
        /*4f50*/                   MOV R0, 0x2 ;
        /*4f60*/                   MOV R0, R0 ;
        /*4f70*/                   MOV R4, R4 ;
        /*4f80*/                   MOV R5, R5 ;
        /*4f90*/                   MOV R0, R0 ;
        /*4fa0*/                   BRA `(.L_x_114) ;
.L_x_114:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*4fb0*/                   IADD3 R6, P0, R16, 0x70, RZ ;
        /*4fc0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4fd0*/                   MOV R6, R6 ;
        /*4fe0*/                   MOV R7, R7 ;
        /*4ff0*/                   MOV R6, R6 ;
        /*5000*/                   MOV R7, R7 ;
        /*5010*/                   LD.E.64.SYS R6, [R6] ;
        /*5020*/                   MOV R3, R6 ;
        /*5030*/                   MOV R6, R7 ;
        /*5040*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*5050*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*5060*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*5070*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*5080*/                   BMOV.32.CLEAR RZ, B0 ;
        /*5090*/                   BSSY B0, `(.L_x_115) ;
        /*50a0*/               @P0 BRA `(.L_x_116) ;
        /*50b0*/                   BRA `(.L_x_117) ;
.L_x_117:
        /*50c0*/                   BRA `(.L_x_116) ;
.L_x_116:
        /*50d0*/                   BSYNC B0 ;
.L_x_115:
        /*50e0*/                   IADD3 R6, P0, R16, 0x70, RZ ;
        /*50f0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*5100*/                   MOV R6, R6 ;
        /*5110*/                   MOV R7, R7 ;
        /*5120*/                   MOV R6, R6 ;
        /*5130*/                   MOV R7, R7 ;
        /*5140*/                   LD.E.64.SYS R6, [R6] ;
        /*5150*/                   MOV R3, R6 ;
        /*5160*/                   MOV R12, R7 ;
        /*5170*/                   MOV R0, R0 ;
        /*5180*/                   MOV R6, R0 ;
        /*5190*/                   MOV R7, RZ ;
        /*51a0*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*51b0*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*51c0*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*51d0*/                   IADD3.X R7, R12, R7, RZ, P0, !PT ;
        /*51e0*/                   MOV R6, R6 ;
        /*51f0*/                   MOV R7, R7 ;
.L_x_187:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 95
        /*5200*/                   MOV R6, R6 ;
        /*5210*/                   MOV R7, R7 ;
        /*5220*/                   MOV R6, R6 ;
        /*5230*/                   MOV R7, R7 ;
        /*5240*/                   LD.E.64.SYS R6, [R6] ;
        /*5250*/                   MOV R12, R28 ;
        /*5260*/                   MOV R13, R29 ;
        /*5270*/                   IADD3 R14, P0, R16, 0x78, RZ ;
        /*5280*/                   IADD3.X R15, R2, RZ, RZ, P0, !PT ;
        /*5290*/                   MOV R14, R14 ;
        /*52a0*/                   MOV R15, R15 ;
        /*52b0*/                   MOV R14, R14 ;
        /*52c0*/                   MOV R15, R15 ;
        /*52d0*/                   ST.E.64.SYS [R14], R12 ;
        /*52e0*/                   MOV R0, 0x2 ;
        /*52f0*/                   MOV R0, R0 ;
        /*5300*/                   MOV R6, R6 ;
        /*5310*/                   MOV R7, R7 ;
        /*5320*/                   MOV R0, R0 ;
        /*5330*/                   BRA `(.L_x_118) ;
.L_x_118:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*5340*/                   IADD3 R12, P0, R16, 0x78, RZ ;
        /*5350*/                   IADD3.X R13, R2, RZ, RZ, P0, !PT ;
        /*5360*/                   MOV R12, R12 ;
        /*5370*/                   MOV R13, R13 ;
        /*5380*/                   MOV R12, R12 ;
        /*5390*/                   MOV R13, R13 ;
        /*53a0*/                   LD.E.64.SYS R12, [R12] ;
        /*53b0*/                   MOV R3, R12 ;
        /*53c0*/                   MOV R12, R13 ;
        /*53d0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*53e0*/                   ISETP.NE.AND.EX P0, PT, R12, RZ, PT, P0 ;
        /*53f0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*5400*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*5410*/                   BMOV.32.CLEAR RZ, B0 ;
        /*5420*/                   BSSY B0, `(.L_x_119) ;
        /*5430*/               @P0 BRA `(.L_x_120) ;
        /*5440*/                   BRA `(.L_x_121) ;
.L_x_121:
        /*5450*/                   BRA `(.L_x_120) ;
.L_x_120:
        /*5460*/                   BSYNC B0 ;
.L_x_119:
        /*5470*/                   IADD3 R12, P0, R16, 0x78, RZ ;
        /*5480*/                   IADD3.X R13, R2, RZ, RZ, P0, !PT ;
        /*5490*/                   MOV R12, R12 ;
        /*54a0*/                   MOV R13, R13 ;
        /*54b0*/                   MOV R12, R12 ;
        /*54c0*/                   MOV R13, R13 ;
        /*54d0*/                   LD.E.64.SYS R12, [R12] ;
        /*54e0*/                   MOV R3, R12 ;
        /*54f0*/                   MOV R14, R13 ;
        /*5500*/                   MOV R0, R0 ;
        /*5510*/                   MOV R12, R0 ;
        /*5520*/                   MOV R13, RZ ;
        /*5530*/                   SHF.L.U64.HI R13, R12, 0x3, R13 ;
        /*5540*/                   SHF.L.U32 R12, R12, 0x3, RZ ;
        /*5550*/                   IADD3 R12, P0, R3, R12, RZ ;
        /*5560*/                   IADD3.X R13, R14, R13, RZ, P0, !PT ;
        /*5570*/                   MOV R12, R12 ;
        /*5580*/                   MOV R13, R13 ;
.L_x_188:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 95
        /*5590*/                   MOV R12, R12 ;
        /*55a0*/                   MOV R13, R13 ;
        /*55b0*/                   MOV R12, R12 ;
        /*55c0*/                   MOV R13, R13 ;
        /*55d0*/                   LD.E.64.SYS R12, [R12] ;
        /*55e0*/                   DMUL R6, R6, R12 ;
        /*55f0*/                   DADD R4, R4, R6 ;
        /*5600*/                   IADD3 R6, P0, R16, 0x98, RZ ;
        /*5610*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*5620*/                   MOV R6, R6 ;
        /*5630*/                   MOV R7, R7 ;
        /*5640*/                   MOV R6, R6 ;
        /*5650*/                   MOV R7, R7 ;
        /*5660*/                   ST.E.64.SYS [R6], R4 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 97
        /*5670*/                   IADD3 R4, P0, R16, 0x98, RZ ;
        /*5680*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*5690*/                   MOV R4, R4 ;
        /*56a0*/                   MOV R5, R5 ;
        /*56b0*/                   MOV R4, R4 ;
        /*56c0*/                   MOV R5, R5 ;
        /*56d0*/                   LD.E.64.SYS R4, [R4] ;
        /*56e0*/                   MOV R0, R4 ;
        /*56f0*/                   MOV R3, R5 ;
        /*5700*/                   IADD3 R4, P0, R16, 0x90, RZ ;
        /*5710*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*5720*/                   MOV R4, R4 ;
        /*5730*/                   MOV R5, R5 ;
        /*5740*/                   MOV R4, R4 ;
        /*5750*/                   MOV R5, R5 ;
        /*5760*/                   LD.E.64.SYS R4, [R4] ;
        /*5770*/                   MOV R6, R4 ;
        /*5780*/                   MOV R12, R5 ;
        /*5790*/                   IADD3 R4, P0, R16, 0x88, RZ ;
        /*57a0*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*57b0*/                   MOV R4, R4 ;
        /*57c0*/                   MOV R5, R5 ;
        /*57d0*/                   MOV R4, R4 ;
        /*57e0*/                   MOV R5, R5 ;
        /*57f0*/                   LD.E.64.SYS R4, [R4] ;
        /*5800*/                   MOV R7, R4 ;
        /*5810*/                   MOV R5, R5 ;
        /*5820*/                   MOV R4, R7 ;
        /*5830*/                   MOV R5, R5 ;
        /*5840*/                   MOV R6, R6 ;
        /*5850*/                   MOV R7, R12 ;
        /*5860*/                   MOV R0, R0 ;
        /*5870*/                   MOV R3, R3 ;
        /*5880*/                   BRA `(.L_x_122) ;
.L_x_122:
        /*5890*/                   MOV R4, R4 ;
        /*58a0*/                   MOV R5, R5 ;
        /*58b0*/                   MOV R6, R6 ;
        /*58c0*/                   MOV R7, R7 ;
        /*58d0*/                   MOV R8, R0 ;
        /*58e0*/                   MOV R9, R3 ;
        /*58f0*/                   BMOV.32 B6, R17 ;
        /*5900*/                   BMOV.32 B7, R18 ;
        /*5910*/                   LDL R2, [R1+0xa0] ;
        /*5920*/                   LDL R16, [R1+0xa4] ;
        /*5930*/                   LDL R17, [R1+0xa8] ;
        /*5940*/                   LDL R18, [R1+0xac] ;
        /*5950*/                   LDL R20, [R1+0xb0] ;
        /*5960*/                   LDL R21, [R1+0xb4] ;
        /*5970*/                   LDL R22, [R1+0xb8] ;
        /*5980*/                   LDL R23, [R1+0xbc] ;
        /*5990*/                   LDL R24, [R1+0xc0] ;
        /*59a0*/                   LDL R25, [R1+0xc4] ;
        /*59b0*/                   LDL R26, [R1+0xc8] ;
        /*59c0*/                   LDL R27, [R1+0xcc] ;
        /*59d0*/                   LDL R28, [R1+0xd0] ;
        /*59e0*/                   LDL R29, [R1+0xd4] ;
        /*59f0*/                   LDL R30, [R1+0xd8] ;
        /*5a00*/                   LDL R31, [R1+0xdc] ;
        /*5a10*/                   IADD3 R1, R1, 0xe0, RZ ;
        /*5a20*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_123:
        /*5a30*/                   BRA `(.L_x_123);
        /*5a40*/                   NOP;
        /*5a50*/                   NOP;
        /*5a60*/                   NOP;
        /*5a70*/                   NOP;
.L_x_149:


//--------------------- .text._Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_ --------------------------
	.section	.text._Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
        .global         _Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_
        .type           _Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_,@function
        .size           _Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_,(.L_x_190 - _Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_)
        .other          _Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_,@"STO_CUDA_ENTRY STV_DEFAULT"
_Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_:
.text._Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 100
        /*0000*/                   MOV R1, c[0x0][0x28] ;
        /*0010*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0020*/                   MOV R2, 0x160 ;
        /*0030*/                   LDC.64 R2, c[0x0][R2] ;
        /*0040*/                   MOV R4, R2 ;
        /*0050*/                   MOV R5, R3 ;
        /*0060*/                   MOV R4, R4 ;
        /*0070*/                   MOV R5, R5 ;
        /*0080*/                   MOV R2, 0x168 ;
        /*0090*/                   LDC.64 R2, c[0x0][R2] ;
        /*00a0*/                   MOV R6, R2 ;
        /*00b0*/                   MOV R7, R3 ;
        /*00c0*/                   MOV R6, R6 ;
        /*00d0*/                   MOV R7, R7 ;
        /*00e0*/                   MOV R2, 0x170 ;
        /*00f0*/                   LDC.64 R2, c[0x0][R2] ;
        /*0100*/                   MOV R16, R2 ;
        /*0110*/                   MOV R2, R3 ;
        /*0120*/                   MOV R16, R16 ;
        /*0130*/                   MOV R2, R2 ;
        /*0140*/                   MOV R4, R4 ;
        /*0150*/                   MOV R5, R5 ;
        /*0160*/                   MOV R6, R6 ;
        /*0170*/                   MOV R7, R7 ;
        /*0180*/                   MOV R16, R16 ;
        /*0190*/                   MOV R2, R2 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 105
        /*01a0*/                   S2R R0, SR_TID.X ;
        /*01b0*/                   MOV R0, R0 ;
        /*01c0*/                   MOV R0, R0 ;
        /*01d0*/                   MOV R10, R0 ;
        /*01e0*/                   MOV R0, RZ ;
        /*01f0*/                   MOV R8, RZ ;
        /*0200*/                   MOV R9, RZ ;
        /*0210*/                   MOV R8, R8 ;
        /*0220*/                   MOV R9, R9 ;
        /*0230*/                   IMAD.WIDE.U32 R8, R10, 0x18, R8 ;
        /*0240*/                   MOV R3, R8 ;
        /*0250*/                   MOV R11, R9 ;
        /*0260*/                   MOV R3, R3 ;
        /*0270*/                   IMAD.WIDE.U32 R8, R0, 0x18, RZ ;
        /*0280*/                   MOV R12, R8 ;
        /*0290*/                   MOV R8, R9 ;
        /*02a0*/                   MOV R9, R8 ;
        /*02b0*/                   MOV R8, R12 ;
        /*02c0*/                   IMAD.WIDE.U32 R8, P0, R10, RZ, R8 ;
        /*02d0*/                   MOV R10, R8 ;
        /*02e0*/                   MOV R8, R9 ;
        /*02f0*/                   IADD3 R10, P1, R10, R11, RZ ;
        /*0300*/                   IADD3 R8, RZ, R8, RZ ;
        /*0310*/                   IADD3.X R9, RZ, RZ, RZ, P0, !PT ;
        /*0320*/                   MOV R8, R8 ;
        /*0330*/                   MOV R9, R9 ;
        /*0340*/                   MOV R8, R8 ;
        /*0350*/                   MOV R9, R9 ;
        /*0360*/                   IMAD.WIDE.U32.X R8, R0, RZ, R8, P1 ;
        /*0370*/                   MOV R0, R8 ;
        /*0380*/                   MOV R8, R9 ;
        /*0390*/                   IADD3 R16, P0, R16, R3, RZ ;
        /*03a0*/                   IADD3.X R2, R2, R10, RZ, P0, !PT ;
        /*03b0*/                   S2R R0, SR_TID.X ;
        /*03c0*/                   MOV R0, R0 ;
        /*03d0*/                   MOV R0, R0 ;
        /*03e0*/                   MOV R10, R0 ;
        /*03f0*/                   MOV R0, RZ ;
        /*0400*/                   MOV R8, RZ ;
        /*0410*/                   MOV R9, RZ ;
        /*0420*/                   MOV R8, R8 ;
        /*0430*/                   MOV R9, R9 ;
        /*0440*/                   IMAD.WIDE.U32 R8, R10, 0x18, R8 ;
        /*0450*/                   MOV R3, R8 ;
        /*0460*/                   MOV R11, R9 ;
        /*0470*/                   MOV R3, R3 ;
        /*0480*/                   IMAD.WIDE.U32 R8, R0, 0x18, RZ ;
        /*0490*/                   MOV R12, R8 ;
        /*04a0*/                   MOV R8, R9 ;
        /*04b0*/                   MOV R9, R8 ;
        /*04c0*/                   MOV R8, R12 ;
        /*04d0*/                   IMAD.WIDE.U32 R8, P0, R10, RZ, R8 ;
        /*04e0*/                   MOV R10, R8 ;
        /*04f0*/                   MOV R8, R9 ;
        /*0500*/                   IADD3 R10, P1, R10, R11, RZ ;
        /*0510*/                   IADD3 R8, RZ, R8, RZ ;
        /*0520*/                   IADD3.X R9, RZ, RZ, RZ, P0, !PT ;
        /*0530*/                   MOV R8, R8 ;
        /*0540*/                   MOV R9, R9 ;
        /*0550*/                   MOV R8, R8 ;
        /*0560*/                   MOV R9, R9 ;
        /*0570*/                   IMAD.WIDE.U32.X R8, R0, RZ, R8, P1 ;
        /*0580*/                   MOV R0, R8 ;
        /*0590*/                   MOV R8, R9 ;
        /*05a0*/                   IADD3 R4, P0, R4, R3, RZ ;
        /*05b0*/                   IADD3.X R5, R5, R10, RZ, P0, !PT ;
        /*05c0*/                   S2R R0, SR_TID.X ;
        /*05d0*/                   MOV R0, R0 ;
        /*05e0*/                   MOV R0, R0 ;
        /*05f0*/                   MOV R10, R0 ;
        /*0600*/                   MOV R0, RZ ;
        /*0610*/                   MOV R8, RZ ;
        /*0620*/                   MOV R9, RZ ;
        /*0630*/                   MOV R8, R8 ;
        /*0640*/                   MOV R9, R9 ;
        /*0650*/                   IMAD.WIDE.U32 R8, R10, 0x18, R8 ;
        /*0660*/                   MOV R3, R8 ;
        /*0670*/                   MOV R11, R9 ;
        /*0680*/                   MOV R3, R3 ;
        /*0690*/                   IMAD.WIDE.U32 R8, R0, 0x18, RZ ;
        /*06a0*/                   MOV R12, R8 ;
        /*06b0*/                   MOV R8, R9 ;
        /*06c0*/                   MOV R9, R8 ;
        /*06d0*/                   MOV R8, R12 ;
        /*06e0*/                   IMAD.WIDE.U32 R8, P0, R10, RZ, R8 ;
        /*06f0*/                   MOV R10, R8 ;
        /*0700*/                   MOV R8, R9 ;
        /*0710*/                   IADD3 R10, P1, R10, R11, RZ ;
        /*0720*/                   IADD3 R8, RZ, R8, RZ ;
        /*0730*/                   IADD3.X R9, RZ, RZ, RZ, P0, !PT ;
        /*0740*/                   MOV R8, R8 ;
        /*0750*/                   MOV R9, R9 ;
        /*0760*/                   MOV R8, R8 ;
        /*0770*/                   MOV R9, R9 ;
        /*0780*/                   IMAD.WIDE.U32.X R8, R0, RZ, R8, P1 ;
        /*0790*/                   MOV R0, R8 ;
        /*07a0*/                   MOV R8, R9 ;
        /*07b0*/                   IADD3 R6, P0, R6, R3, RZ ;
        /*07c0*/                   IADD3.X R7, R7, R10, RZ, P0, !PT ;
        /*07d0*/                   MOV R4, R4 ;
        /*07e0*/                   MOV R5, R5 ;
        /*07f0*/                   MOV R6, R6 ;
        /*0800*/                   MOV R7, R7 ;
        /*0810*/                   MOV R16, R16 ;
        /*0820*/                   MOV R2, R2 ;
        /*0830*/                   MOV R20, 32@lo((_Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_ + .L_x_5@srel)) ;
        /*0840*/                   MOV R21, 32@hi((_Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_ + .L_x_5@srel)) ;
        /*0850*/                   CALL.ABS.NOINC `(_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_) ;
.L_x_5:
        /*0860*/                   MOV R4, R4 ;
        /*0870*/                   MOV R5, R5 ;
        /*0880*/                   MOV R6, R6 ;
        /*0890*/                   MOV R7, R7 ;
        /*08a0*/                   MOV R8, R8 ;
        /*08b0*/                   MOV R9, R9 ;
        /*08c0*/                   IADD3 R10, P0, R16, 0x10, RZ ;
        /*08d0*/                   IADD3.X R11, R2, RZ, RZ, P0, !PT ;
        /*08e0*/                   MOV R10, R10 ;
        /*08f0*/                   MOV R11, R11 ;
        /*0900*/                   MOV R10, R10 ;
        /*0910*/                   MOV R11, R11 ;
        /*0920*/                   ST.E.64.SYS [R10], R8 ;
        /*0930*/                   IADD3 R8, P0, R16, 0x8, RZ ;
        /*0940*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*0950*/                   MOV R8, R8 ;
        /*0960*/                   MOV R9, R9 ;
        /*0970*/                   MOV R8, R8 ;
        /*0980*/                   MOV R9, R9 ;
        /*0990*/                   ST.E.64.SYS [R8], R6 ;
        /*09a0*/                   MOV R3, R16 ;
        /*09b0*/                   MOV R2, R2 ;
        /*09c0*/                   LOP3.LUT R3, R3, R2, RZ, 0x3c, !PT ;
        /*09d0*/                   LOP3.LUT R2, R3, R2, RZ, 0x3c, !PT ;
        /*09e0*/                   LOP3.LUT R3, R3, R2, RZ, 0x3c, !PT ;
        /*09f0*/                   ST.E.64.SYS [R2], R4 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-hypot.cu", line 106
        /*0a00*/                   MEMBAR.SC.VC ;
        /*0a10*/                   ERRBAR ;
        /*0a20*/                   EXIT ;
        /*0a30*/                   MEMBAR.SC.VC ;
        /*0a40*/                   ERRBAR ;
        /*0a50*/                   EXIT ;
.L_x_124:
        /*0a60*/                   BRA `(.L_x_124);
        /*0a70*/                   NOP;
.L_x_190:


//--------------------- .text.sqrt                --------------------------
	.section	.text.sqrt,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text.sqrt:
        .type           sqrt,@function
        .size           sqrt,(.L_x_196 - sqrt)
sqrt:
        /*0000*/                   IADD3 R1, R1, -0x18, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_125) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_125:
        /*0050*/                   STL [R1+0x10], R21 ;
        /*0060*/                   STL [R1+0xc], R20 ;
        /*0070*/                   STL [R1+0x8], R17 ;
        /*0080*/                   STL [R1+0x4], R16 ;
        /*0090*/                   STL [R1], R2 ;
        /*00a0*/                   BMOV.32.CLEAR R2, B6 ;
        /*00b0*/                   MOV R5, R5 ;
        /*00c0*/                   MOV R4, R4 ;
        /*00d0*/                   MOV R4, R4 ;
        /*00e0*/                   MOV R5, R5 ;
        /*00f0*/                   MOV R4, R4 ;
        /*0100*/                   MOV R5, R5 ;
        /*0110*/                   MOV R4, R4 ;
        /*0120*/                   MOV R5, R5 ;
        /*0130*/                   MOV R0, R5 ;
        /*0140*/                   MOV R0, R0 ;
        /*0150*/                   IADD3 R6, R0, -0x3500000, RZ ;
        /*0160*/                   MOV R0, R4 ;
        /*0170*/                   MOV R3, R5 ;
        /*0180*/                   MOV R0, RZ ;
        /*0190*/                   MUFU.RSQ64H R3, R3 ;
        /*01a0*/                   MOV R0, R0 ;
        /*01b0*/                   MOV R0, R0 ;
        /*01c0*/                   MOV R3, R3 ;
        /*01d0*/                   MOV R3, R3 ;
        /*01e0*/                   LOP3.LUT R0, R0, R6, RZ, 0xfc, !PT ;
        /*01f0*/                   MOV R8, R0 ;
        /*0200*/                   MOV R9, R3 ;
        /*0210*/                   DMUL R10, R8, R8 ;
        /*0220*/                   DADD R10, -RZ, -R10 ;
        /*0230*/                   MOV R10, R10 ;
        /*0240*/                   MOV R11, R11 ;
        /*0250*/                   MOV R12, 0x0 ;
        /*0260*/                   MOV R13, 0x3ff00000 ;
        /*0270*/                   DFMA R10, R4, R10, R12 ;
        /*0280*/                   MOV R12, 0x0 ;
        /*0290*/                   MOV R13, 0x3fe00000 ;
        /*02a0*/                   MOV R14, 0x0 ;
        /*02b0*/                   MOV R15, 0x3fd80000 ;
        /*02c0*/                   DFMA R12, R14, R10, R12 ;
        /*02d0*/                   DMUL R10, R10, R8 ;
        /*02e0*/                   DFMA R10, R12, R10, R8 ;
        /*02f0*/                   MOV R0, R10 ;
        /*0300*/                   MOV R3, R11 ;
        /*0310*/                   MOV R12, R0 ;
        /*0320*/                   MOV R13, R3 ;
        /*0330*/                   DMUL R12, R4, R12 ;
        /*0340*/                   MOV R0, R0 ;
        /*0350*/                   MOV R0, R0 ;
        /*0360*/                   MOV R3, R3 ;
        /*0370*/                   MOV R3, R3 ;
        /*0380*/                   IADD3 R3, R3, -0x100000, RZ ;
        /*0390*/                   MOV R10, R0 ;
        /*03a0*/                   MOV R11, R3 ;
        /*03b0*/                   DADD R8, -RZ, -R12 ;
        /*03c0*/                   MOV R8, R8 ;
        /*03d0*/                   MOV R9, R9 ;
        /*03e0*/                   DFMA R8, R12, R8, R4 ;
        /*03f0*/                   DFMA R14, R8, R10, R12 ;
        /*0400*/                   ISETP.LT.U32.AND P0, PT, R6, 0x7ca00000, PT ;
        /*0410*/                   MOV R16, R4 ;
        /*0420*/                   MOV R17, R5 ;
        /*0430*/                   MOV R4, R16 ;
        /*0440*/                   MOV R5, R17 ;
        /*0450*/                   MOV R6, R6 ;
        /*0460*/                   MOV R16, R12 ;
        /*0470*/                   MOV R17, R13 ;
        /*0480*/                   MOV R12, R16 ;
        /*0490*/                   MOV R13, R17 ;
        /*04a0*/                   MOV R0, R10 ;
        /*04b0*/                   MOV R11, R11 ;
        /*04c0*/                   MOV R10, R0 ;
        /*04d0*/                   MOV R11, R11 ;
        /*04e0*/                   MOV R16, R8 ;
        /*04f0*/                   MOV R17, R9 ;
        /*0500*/                   MOV R8, R16 ;
        /*0510*/                   MOV R9, R17 ;
        /*0520*/                   MOV R14, R14 ;
        /*0530*/                   MOV R15, R15 ;
        /*0540*/                   BMOV.32.CLEAR RZ, B6 ;
        /*0550*/                   BSSY B6, `(.L_x_126) ;
        /*0560*/               @P0 BRA `(.L_x_127) ;
        /*0570*/                   MOV R4, R4 ;
        /*0580*/                   MOV R5, R5 ;
        /*0590*/                   MOV R6, R6 ;
        /*05a0*/                   MOV R8, R8 ;
        /*05b0*/                   MOV R9, R9 ;
        /*05c0*/                   MOV R10, R10 ;
        /*05d0*/                   MOV R11, R11 ;
        /*05e0*/                   MOV R12, R12 ;
        /*05f0*/                   MOV R13, R13 ;
        /*0600*/                   MOV R20, 32@lo((sqrt + .L_x_6@srel)) ;
        /*0610*/                   MOV R21, 32@hi((sqrt + .L_x_6@srel)) ;
        /*0620*/                   CALL.ABS.NOINC `(__cuda_sm20_dsqrt_rn_f64_mediumpath_v1) ;
.L_x_6:
        /*0630*/                   MOV R4, R4 ;
        /*0640*/                   MOV R5, R5 ;
        /*0650*/                   MOV R14, R4 ;
        /*0660*/                   MOV R15, R5 ;
.L_x_127:
        /*0670*/                   BSYNC B6 ;
.L_x_126:
        /*0680*/                   MOV R14, R14 ;
        /*0690*/                   MOV R15, R15 ;
        /*06a0*/                   MOV R14, R14 ;
        /*06b0*/                   MOV R15, R15 ;
        /*06c0*/                   MOV R4, R14 ;
        /*06d0*/                   MOV R5, R15 ;
        /*06e0*/                   MOV R4, R4 ;
        /*06f0*/                   MOV R5, R5 ;
        /*0700*/                   BRA `(.L_x_128) ;
.L_x_128:
        /*0710*/                   MOV R4, R4 ;
        /*0720*/                   MOV R5, R5 ;
        /*0730*/                   BMOV.32 B6, R2 ;
        /*0740*/                   LDL R2, [R1] ;
        /*0750*/                   LDL R16, [R1+0x4] ;
        /*0760*/                   LDL R17, [R1+0x8] ;
        /*0770*/                   LDL R20, [R1+0xc] ;
        /*0780*/                   LDL R21, [R1+0x10] ;
        /*0790*/                   IADD3 R1, R1, 0x18, RZ ;
        /*07a0*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_129:
        /*07b0*/                   BRA `(.L_x_129);
        /*07c0*/                   NOP;
        /*07d0*/                   NOP;
        /*07e0*/                   NOP;
        /*07f0*/                   NOP;
.L_x_196:


//--------------------- .text.rhypot              --------------------------
	.section	.text.rhypot,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text.rhypot:
        .type           rhypot,@function
        .size           rhypot,(.L_x_194 - rhypot)
rhypot:
        /*0000*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0010*/                   MOV R7, R7 ;
        /*0020*/                   MOV R6, R6 ;
        /*0030*/                   MOV R5, R5 ;
        /*0040*/                   MOV R4, R4 ;
        /*0050*/                   MOV R4, R4 ;
        /*0060*/                   MOV R5, R5 ;
        /*0070*/                   MOV R6, R6 ;
        /*0080*/                   MOV R7, R7 ;
        /*0090*/                   DADD R4, -RZ, |R4| ;
        /*00a0*/                   MOV R8, R4 ;
        /*00b0*/                   MOV R9, R5 ;
        /*00c0*/                   DADD R4, -RZ, |R6| ;
        /*00d0*/                   MOV R4, R4 ;
        /*00e0*/                   MOV R5, R5 ;
        /*00f0*/                   MOV R6, R4 ;
        /*0100*/                   MOV R7, R5 ;
        /*0110*/                   MOV R6, R6 ;
        /*0120*/                   MOV R7, R7 ;
        /*0130*/                   MOV R3, R8 ;
        /*0140*/                   MOV R0, R9 ;
        /*0150*/                   MOV R3, R3 ;
        /*0160*/                   MOV R0, R0 ;
        /*0170*/                   ISETP.LT.U32.AND P0, PT, R6, R3, PT ;
        /*0180*/                   ISETP.LT.U32.AND.EX P0, PT, R7, R0, PT, P0 ;
        /*0190*/                   SEL R3, R6, R3, P0 ;
        /*01a0*/                   SEL R0, R7, R0, P0 ;
        /*01b0*/                   MOV R3, R3 ;
        /*01c0*/                   MOV R0, R0 ;
        /*01d0*/                   MOV R6, R8 ;
        /*01e0*/                   MOV R9, R9 ;
        /*01f0*/                   MOV R8, R6 ;
        /*0200*/                   MOV R9, R9 ;
        /*0210*/                   MOV R7, R4 ;
        /*0220*/                   MOV R6, R5 ;
        /*0230*/                   MOV R7, R7 ;
        /*0240*/                   MOV R6, R6 ;
        /*0250*/                   ISETP.GT.U32.AND P0, PT, R8, R7, PT ;
        /*0260*/                   ISETP.GT.U32.AND.EX P0, PT, R9, R6, PT, P0 ;
        /*0270*/                   SEL R7, R8, R7, P0 ;
        /*0280*/                   SEL R6, R9, R6, P0 ;
        /*0290*/                   MOV R7, R7 ;
        /*02a0*/                   MOV R6, R6 ;
        /*02b0*/                   MOV R4, R6 ;
        /*02c0*/                   MOV R4, R4 ;
        /*02d0*/                   LOP3.LUT R4, R4, 0xffc00000, RZ, 0xc0, !PT ;
        /*02e0*/                   IADD3 R4, R4, -0x3ff00000, RZ ;
        /*02f0*/                   MOV R5, 0x3ff00000 ;
        /*0300*/                   IADD3 R4, R4, 0x100000, RZ ;
        /*0310*/                   IADD3 R4, R5, -R4, RZ ;
        /*0320*/                   MOV R5, RZ ;
        /*0330*/                   LOP3.LUT R5, R5, R4, RZ, 0x3c, !PT ;
        /*0340*/                   LOP3.LUT R4, R5, R4, RZ, 0x3c, !PT ;
        /*0350*/                   LOP3.LUT R5, R5, R4, RZ, 0x3c, !PT ;
        /*0360*/                   MOV R8, R3 ;
        /*0370*/                   MOV R9, R0 ;
        /*0380*/                   DMUL R8, R8, R4 ;
        /*0390*/                   MOV R10, R7 ;
        /*03a0*/                   MOV R11, R6 ;
        /*03b0*/                   DMUL R10, R10, R4 ;
        /*03c0*/                   DMUL R8, R8, R8 ;
        /*03d0*/                   DFMA R8, R10, R10, R8 ;
        /*03e0*/                   MOV R10, R8 ;
        /*03f0*/                   MOV R10, R9 ;
        /*0400*/                   MOV R11, RZ ;
        /*0410*/                   MUFU.RSQ64H R10, R10 ;
        /*0420*/                   LOP3.LUT R11, R11, R10, RZ, 0x3c, !PT ;
        /*0430*/                   LOP3.LUT R10, R11, R10, RZ, 0x3c, !PT ;
        /*0440*/                   LOP3.LUT R11, R11, R10, RZ, 0x3c, !PT ;
        /*0450*/                   DMUL R12, R10, R10 ;
        /*0460*/                   DADD R12, -RZ, -R12 ;
        /*0470*/                   MOV R12, R12 ;
        /*0480*/                   MOV R13, R13 ;
        /*0490*/                   MOV R14, 0x0 ;
        /*04a0*/                   MOV R15, 0x3ff00000 ;
        /*04b0*/                   DFMA R12, R8, R12, R14 ;
        /*04c0*/                   MOV R8, 0x0 ;
        /*04d0*/                   MOV R9, 0x3fe00000 ;
        /*04e0*/                   MOV R14, 0x0 ;
        /*04f0*/                   MOV R15, 0x3fd80000 ;
        /*0500*/                   DFMA R8, R14, R12, R8 ;
        /*0510*/                   DMUL R12, R12, R10 ;
        /*0520*/                   DFMA R8, R8, R12, R10 ;
        /*0530*/                   DMUL R8, R8, R4 ;
        /*0540*/                   MOV R4, R9 ;
        /*0550*/                   MOV R10, R4 ;
        /*0560*/                   MOV R4, 0x0 ;
        /*0570*/                   MOV R5, 0x7ff00000 ;
        /*0580*/                   MOV R11, R4 ;
        /*0590*/                   MOV R4, R5 ;
        /*05a0*/                   MOV R4, R4 ;
        /*05b0*/                   MOV R4, R4 ;
        /*05c0*/                   ISETP.GE.U32.AND P0, PT, R10, R4, PT ;
        /*05d0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*05e0*/                   MOV R8, R8 ;
        /*05f0*/                   MOV R9, R9 ;
        /*0600*/                   MOV R4, R3 ;
        /*0610*/                   MOV R5, R0 ;
        /*0620*/                   MOV R4, R4 ;
        /*0630*/                   MOV R5, R5 ;
        /*0640*/                   LOP3.LUT R7, R7, R6, RZ, 0x3c, !PT ;
        /*0650*/                   LOP3.LUT R6, R7, R6, RZ, 0x3c, !PT ;
        /*0660*/                   LOP3.LUT R7, R7, R6, RZ, 0x3c, !PT ;
        /*0670*/                   MOV R6, R6 ;
        /*0680*/                   MOV R7, R7 ;
        /*0690*/                   MOV R8, R8 ;
        /*06a0*/                   MOV R9, R9 ;
        /*06b0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*06c0*/                   BSSY B0, `(.L_x_130) ;
        /*06d0*/               @P0 BRA `(.L_x_131) ;
        /*06e0*/                   BRA `(.L_x_132) ;
.L_x_132:
        /*06f0*/                   DADD R8, -RZ, |R6| ;
        /*0700*/                   MOV R8, R8 ;
        /*0710*/                   MOV R9, R9 ;
        /*0720*/                   DSETP.LE.AND P0, PT, R8, +INF , PT ;
        /*0730*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0740*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0750*/                   BMOV.32.CLEAR RZ, B1 ;
        /*0760*/                   BSSY B1, `(.L_x_133) ;
        /*0770*/               @P0 BRA `(.L_x_134) ;
        /*0780*/                   BRA `(.L_x_135) ;
.L_x_135:
        /*0790*/                   DADD R6, R6, R4 ;
        /*07a0*/                   MOV R6, R6 ;
        /*07b0*/                   MOV R7, R7 ;
        /*07c0*/                   MOV R6, R6 ;
        /*07d0*/                   MOV R7, R7 ;
        /*07e0*/                   BRA `(.L_x_136) ;
.L_x_134:
        /*07f0*/                   MOV R8, 0x0 ;
        /*0800*/                   MOV R9, 0x7ff00000 ;
        /*0810*/                   MOV R0, R8 ;
        /*0820*/                   MOV R0, R9 ;
        /*0830*/                   MOV R0, R0 ;
        /*0840*/                   MOV R0, R0 ;
        /*0850*/                   DSETP.NEU.AND P0, PT, R6, +INF , PT ;
        /*0860*/                   SEL R3, RZ, 0x1, !P0 ;
        /*0870*/                   IMAD R0, R0, R3, RZ ;
        /*0880*/                   MOV R6, RZ ;
        /*0890*/                   MOV R6, R6 ;
        /*08a0*/                   MOV R7, R0 ;
        /*08b0*/                   MOV R6, R6 ;
        /*08c0*/                   MOV R7, R7 ;
        /*08d0*/                   MOV R6, R6 ;
        /*08e0*/                   MOV R7, R7 ;
        /*08f0*/                   BRA `(.L_x_136) ;
.L_x_136:
        /*0900*/                   BSYNC B1 ;
.L_x_133:
        /*0910*/                   MOV R6, R6 ;
        /*0920*/                   MOV R7, R7 ;
        /*0930*/                   DSETP.EQ.AND P0, PT, R4, +INF , PT ;
        /*0940*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0950*/                   MOV R6, R6 ;
        /*0960*/                   MOV R7, R7 ;
        /*0970*/                   MOV R6, R6 ;
        /*0980*/                   MOV R7, R7 ;
        /*0990*/                   BMOV.32.CLEAR RZ, B1 ;
        /*09a0*/                   BSSY B1, `(.L_x_137) ;
        /*09b0*/               @P0 BRA `(.L_x_138) ;
        /*09c0*/                   BRA `(.L_x_139) ;
.L_x_139:
        /*09d0*/                   CS2R R4, SRZ ;
        /*09e0*/                   MOV R4, R4 ;
        /*09f0*/                   MOV R5, R5 ;
        /*0a00*/                   MOV R6, R4 ;
        /*0a10*/                   MOV R7, R5 ;
        /*0a20*/                   BRA `(.L_x_138) ;
.L_x_138:
        /*0a30*/                   BSYNC B1 ;
.L_x_137:
        /*0a40*/                   MOV R6, R6 ;
        /*0a50*/                   MOV R7, R7 ;
        /*0a60*/                   MOV R6, R6 ;
        /*0a70*/                   MOV R7, R7 ;
        /*0a80*/                   MOV R8, R6 ;
        /*0a90*/                   MOV R9, R7 ;
        /*0aa0*/                   BRA `(.L_x_131) ;
.L_x_131:
        /*0ab0*/                   BSYNC B0 ;
.L_x_130:
        /*0ac0*/                   MOV R8, R8 ;
        /*0ad0*/                   MOV R9, R9 ;
        /*0ae0*/                   MOV R4, R8 ;
        /*0af0*/                   MOV R5, R9 ;
        /*0b00*/                   MOV R4, R4 ;
        /*0b10*/                   MOV R5, R5 ;
        /*0b20*/                   BRA `(.L_x_140) ;
.L_x_140:
        /*0b30*/                   MOV R4, R4 ;
        /*0b40*/                   MOV R5, R5 ;
        /*0b50*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_141:
        /*0b60*/                   BRA `(.L_x_141);
        /*0b70*/                   NOP;
.L_x_194:
