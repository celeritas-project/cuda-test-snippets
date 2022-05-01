	.headerflags	@"EF_CUDA_TEXMODE_UNIFIED EF_CUDA_64BIT_ADDRESS EF_CUDA_SM70 EF_CUDA_VIRTUAL_SM(EF_CUDA_SM70)"
	.elftype	@"ET_REL"


//--------------------- .text.__cuda_sm20_dblrcp_rn_slowpath_v3 --------------------------
	.section	.text.__cuda_sm20_dblrcp_rn_slowpath_v3,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text.__cuda_sm20_dblrcp_rn_slowpath_v3:
        .weak           __cuda_sm20_dblrcp_rn_slowpath_v3
        .type           __cuda_sm20_dblrcp_rn_slowpath_v3,@function
        .size           __cuda_sm20_dblrcp_rn_slowpath_v3,(.L_x_202 - __cuda_sm20_dblrcp_rn_slowpath_v3)
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
.L_x_202:


//--------------------- .text.__cuda_sm20_dsqrt_rn_f64_mediumpath_v1 --------------------------
	.section	.text.__cuda_sm20_dsqrt_rn_f64_mediumpath_v1,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text.__cuda_sm20_dsqrt_rn_f64_mediumpath_v1:
        .weak           __cuda_sm20_dsqrt_rn_f64_mediumpath_v1
        .type           __cuda_sm20_dsqrt_rn_f64_mediumpath_v1,@function
        .size           __cuda_sm20_dsqrt_rn_f64_mediumpath_v1,(.L_x_203 - __cuda_sm20_dsqrt_rn_f64_mediumpath_v1)
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
.L_x_203:


//--------------------- .text._Z9my_rsqrtff       --------------------------
	.section	.text._Z9my_rsqrtff,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
        .global         _Z9my_rsqrtff
        .type           _Z9my_rsqrtff,@function
        .size           _Z9my_rsqrtff,(.L_x_155 - _Z9my_rsqrtff)
_Z9my_rsqrtff:
.text._Z9my_rsqrtff:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 5
        /*0000*/                   IADD3 R1, R1, -0x10, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_22) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_22:
        /*0050*/                   STL [R1+0x8], R21 ;
        /*0060*/                   STL [R1+0x4], R20 ;
        /*0070*/                   STL [R1], R2 ;
        /*0080*/                   MOV R4, R4 ;
        /*0090*/                   MOV R4, R4 ;
        /*00a0*/                   MOV R2, R4 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 8
        /*00b0*/                   MOV R4, R2 ;
        /*00c0*/                   MOV R20, 32@lo((_Z9my_rsqrtff + .L_x_0@srel)) ;
        /*00d0*/                   MOV R21, 32@hi((_Z9my_rsqrtff + .L_x_0@srel)) ;
        /*00e0*/                   CALL.ABS.NOINC `(__frsqrt_rn) ;
.L_x_0:
        /*00f0*/                   MOV R4, R4 ;
        /*0100*/                   MOV R4, R4 ;
        /*0110*/                   BRA `(.L_x_23) ;
.L_x_23:
        /*0120*/                   MOV R4, R4 ;
        /*0130*/                   LDL R2, [R1] ;
        /*0140*/                   LDL R20, [R1+0x4] ;
        /*0150*/                   LDL R21, [R1+0x8] ;
        /*0160*/                   IADD3 R1, R1, 0x10, RZ ;
        /*0170*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_24:
        /*0180*/                   BRA `(.L_x_24);
        /*0190*/                   NOP;
        /*01a0*/                   NOP;
        /*01b0*/                   NOP;
        /*01c0*/                   NOP;
        /*01d0*/                   NOP;
        /*01e0*/                   NOP;
        /*01f0*/                   NOP;
.L_x_155:


//--------------------- .text._Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ --------------------------
	.section	.text._Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=36"
	.align	128
.text._Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_:
        .weak           _Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_
        .type           _Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_,@function
        .size           _Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_,(.L_x_147 - _Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_)
_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 51
        /*0000*/                   IADD3 R1, R1, -0xe0, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_25) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_25:
        /*0050*/                   STL [R1+0xd8], R31 ;
        /*0060*/                   STL [R1+0xd4], R30 ;
        /*0070*/                   STL [R1+0xd0], R29 ;
        /*0080*/                   STL [R1+0xcc], R28 ;
        /*0090*/                   STL [R1+0xc8], R27 ;
        /*00a0*/                   STL [R1+0xc4], R26 ;
        /*00b0*/                   STL [R1+0xc0], R25 ;
        /*00c0*/                   STL [R1+0xbc], R24 ;
        /*00d0*/                   STL [R1+0xb8], R23 ;
        /*00e0*/                   STL [R1+0xb4], R22 ;
        /*00f0*/                   STL [R1+0xb0], R21 ;
        /*0100*/                   STL [R1+0xac], R20 ;
        /*0110*/                   STL [R1+0xa8], R19 ;
        /*0120*/                   STL [R1+0xa4], R18 ;
        /*0130*/                   STL [R1+0xa0], R17 ;
        /*0140*/                   STL [R1+0x9c], R16 ;
        /*0150*/                   STL [R1+0x98], R2 ;
        /*0160*/                   BMOV.32.CLEAR R19, B7 ;
        /*0170*/                   BMOV.32.CLEAR R18, B6 ;
        /*0180*/                   MOV R7, R7 ;
        /*0190*/                   MOV R6, R6 ;
        /*01a0*/                   MOV R5, R5 ;
        /*01b0*/                   MOV R4, R4 ;
        /*01c0*/                   IADD3 R0, R1, RZ, RZ ;
        /*01d0*/                   MOV R0, R0 ;
        /*01e0*/                   MOV R8, R0 ;
        /*01f0*/                   MOV R9, RZ ;
        /*0200*/                   MOV R0, R8 ;
        /*0210*/                   MOV R9, R9 ;
        /*0220*/                   MOV R8, R0 ;
        /*0230*/                   MOV R9, R9 ;
        /*0240*/                   MOV R0, c[0x0][0x20] ;
        /*0250*/                   MOV R3, c[0x0][0x24] ;
        /*0260*/                   IADD3 R0, P0, R8, R0, RZ ;
        /*0270*/                   IADD3.X R3, R9, R3, RZ, P0, !PT ;
        /*0280*/                   MOV R4, R4 ;
        /*0290*/                   MOV R5, R5 ;
        /*02a0*/                   MOV R6, R6 ;
        /*02b0*/                   MOV R7, R7 ;
        /*02c0*/                   MOV R16, R0 ;
        /*02d0*/                   MOV R2, R3 ;
        /*02e0*/                   MOV R26, R4 ;
        /*02f0*/                   MOV R27, R5 ;
        /*0300*/                   MOV R24, R6 ;
        /*0310*/                   MOV R25, R7 ;
.L_x_156:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 53
        /*0320*/                   BRA `(.L_x_26) ;
.L_x_26:
        /*0330*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0340*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0 ;
        /*0350*/               @P0 BRA `(.L_x_27) ;
        /*0360*/                   BRA `(.L_x_28) ;
.L_x_28:
        /*0370*/                   BRA `(.L_x_27) ;
.L_x_27:
        /*0380*/                   BRA `(.L_x_29) ;
.L_x_29:
        /*0390*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0 ;
        /*03a0*/               @P0 BRA `(.L_x_26) ;
        /*03b0*/                   BRA `(.L_x_30) ;
.L_x_30:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 54
        /*03c0*/                   BRA `(.L_x_31) ;
.L_x_31:
        /*03d0*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*03e0*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0 ;
        /*03f0*/               @P0 BRA `(.L_x_32) ;
        /*0400*/                   BRA `(.L_x_33) ;
.L_x_33:
        /*0410*/                   BRA `(.L_x_32) ;
.L_x_32:
        /*0420*/                   BRA `(.L_x_34) ;
.L_x_34:
        /*0430*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0 ;
        /*0440*/               @P0 BRA `(.L_x_31) ;
        /*0450*/                   BRA `(.L_x_35) ;
.L_x_35:
        /*0460*/                   MOV R6, R24 ;
        /*0470*/                   MOV R7, R25 ;
        /*0480*/                   IADD3 R4, P0, R16, 0x78, RZ ;
        /*0490*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*04a0*/                   MOV R4, R4 ;
        /*04b0*/                   MOV R5, R5 ;
        /*04c0*/                   MOV R4, R4 ;
        /*04d0*/                   MOV R5, R5 ;
        /*04e0*/                   ST.E.64.SYS [R4], R6 ;
        /*04f0*/                   MOV R0, 0x2 ;
        /*0500*/                   MOV R0, R0 ;
        /*0510*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 66
        /*0520*/                   BRA `(.L_x_36) ;
.L_x_36:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*0530*/                   IADD3 R4, P0, R16, 0x78, RZ ;
        /*0540*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*0550*/                   MOV R4, R4 ;
        /*0560*/                   MOV R5, R5 ;
        /*0570*/                   MOV R4, R4 ;
        /*0580*/                   MOV R5, R5 ;
        /*0590*/                   LD.E.64.SYS R4, [R4] ;
        /*05a0*/                   MOV R3, R4 ;
        /*05b0*/                   MOV R4, R5 ;
        /*05c0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*05d0*/                   ISETP.NE.AND.EX P0, PT, R4, RZ, PT, P0 ;
        /*05e0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*05f0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0600*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0610*/                   BSSY B0, `(.L_x_37) ;
        /*0620*/               @P0 BRA `(.L_x_38) ;
        /*0630*/                   BRA `(.L_x_39) ;
.L_x_39:
        /*0640*/                   BRA `(.L_x_38) ;
.L_x_38:
        /*0650*/                   BSYNC B0 ;
.L_x_37:
        /*0660*/                   IADD3 R4, P0, R16, 0x78, RZ ;
        /*0670*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*0680*/                   MOV R4, R4 ;
        /*0690*/                   MOV R5, R5 ;
        /*06a0*/                   MOV R4, R4 ;
        /*06b0*/                   MOV R5, R5 ;
        /*06c0*/                   LD.E.64.SYS R4, [R4] ;
        /*06d0*/                   MOV R3, R4 ;
        /*06e0*/                   MOV R6, R5 ;
        /*06f0*/                   MOV R0, R0 ;
        /*0700*/                   MOV R4, R0 ;
        /*0710*/                   MOV R5, RZ ;
        /*0720*/                   SHF.L.U64.HI R5, R4, 0x3, R5 ;
        /*0730*/                   SHF.L.U32 R4, R4, 0x3, RZ ;
        /*0740*/                   IADD3 R4, P0, R3, R4, RZ ;
        /*0750*/                   IADD3.X R5, R6, R5, RZ, P0, !PT ;
        /*0760*/                   MOV R4, R4 ;
        /*0770*/                   MOV R5, R5 ;
.L_x_157:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 66
        /*0780*/                   MOV R4, R4 ;
        /*0790*/                   MOV R5, R5 ;
        /*07a0*/                   MOV R4, R4 ;
        /*07b0*/                   MOV R5, R5 ;
        /*07c0*/                   LD.E.64.SYS R4, [R4] ;
        /*07d0*/                   MOV R4, R4 ;
        /*07e0*/                   MOV R5, R5 ;
        /*07f0*/                   MOV R6, R4 ;
        /*0800*/                   MOV R7, R5 ;
        /*0810*/                   MOV R12, R6 ;
        /*0820*/                   MOV R13, R7 ;
        /*0830*/                   MOV R12, R12 ;
        /*0840*/                   MOV R13, R13 ;
        /*0850*/                   MOV R4, R12 ;
        /*0860*/                   MOV R5, R13 ;
        /*0870*/                   MOV R8, R4 ;
        /*0880*/                   MOV R9, R5 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*0890*/                   BRA `(.L_x_40) ;
.L_x_40:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*08a0*/                   MOV R4, 0x0 ;
        /*08b0*/                   MOV R5, 0x3ff00000 ;
        /*08c0*/                   MOV R10, R4 ;
        /*08d0*/                   MOV R11, R5 ;
        /*08e0*/                   MOV R4, R4 ;
        /*08f0*/                   MOV R5, R5 ;
        /*0900*/                   MOV R10, R10 ;
        /*0910*/                   MOV R11, R11 ;
.L_x_160:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*0920*/                   DMUL R8, R12, R10 ;
        /*0930*/                   MOV R10, R12 ;
        /*0940*/                   MOV R11, R13 ;
        /*0950*/                   MOV R8, R8 ;
        /*0960*/                   MOV R9, R9 ;
        /*0970*/                   MOV R10, R10 ;
        /*0980*/                   MOV R11, R11 ;
        /*0990*/                   BRA `(.L_x_41) ;
.L_x_41:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*09a0*/                   MOV R4, R4 ;
        /*09b0*/                   MOV R5, R5 ;
        /*09c0*/                   MOV R14, R4 ;
        /*09d0*/                   MOV R15, R5 ;
.L_x_161:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*09e0*/                   DMUL R8, R8, R14 ;
        /*09f0*/                   MOV R6, R6 ;
        /*0a00*/                   MOV R7, R7 ;
        /*0a10*/                   MOV R10, R8 ;
        /*0a20*/                   MOV R11, R9 ;
        /*0a30*/                   MOV R8, R6 ;
        /*0a40*/                   MOV R9, R7 ;
.L_x_159:
        /*0a50*/                   MOV R14, R8 ;
        /*0a60*/                   MOV R15, R9 ;
        /*0a70*/                   MOV R14, R14 ;
        /*0a80*/                   MOV R15, R15 ;
        /*0a90*/                   BRA `(.L_x_42) ;
.L_x_42:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*0aa0*/                   MOV R4, R4 ;
        /*0ab0*/                   MOV R5, R5 ;
        /*0ac0*/                   MOV R12, R4 ;
        /*0ad0*/                   MOV R13, R5 ;
.L_x_163:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*0ae0*/                   DMUL R12, R8, R12 ;
        /*0af0*/                   MOV R14, R8 ;
        /*0b00*/                   MOV R15, R9 ;
        /*0b10*/                   MOV R12, R12 ;
        /*0b20*/                   MOV R13, R13 ;
        /*0b30*/                   MOV R14, R14 ;
        /*0b40*/                   MOV R15, R15 ;
        /*0b50*/                   BRA `(.L_x_43) ;
.L_x_43:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*0b60*/                   MOV R4, R4 ;
        /*0b70*/                   MOV R5, R5 ;
        /*0b80*/                   MOV R32, R4 ;
        /*0b90*/                   MOV R33, R5 ;
.L_x_164:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*0ba0*/                   DMUL R12, R12, R32 ;
        /*0bb0*/                   MOV R12, R12 ;
        /*0bc0*/                   MOV R13, R13 ;
.L_x_162:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 296
        /*0bd0*/                   DMUL R10, R10, R12 ;
        /*0be0*/                   MOV R10, R10 ;
        /*0bf0*/                   MOV R11, R11 ;
.L_x_158:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 66
        /*0c00*/                   DADD R10, R4, -R10 ;
        /*0c10*/                   MOV R4, R10 ;
        /*0c20*/                   MOV R5, R11 ;
        /*0c30*/                   MOV R4, R4 ;
        /*0c40*/                   MOV R5, R5 ;
        /*0c50*/                   MOV R20, 32@lo((_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ + .L_x_1@srel)) ;
        /*0c60*/                   MOV R21, 32@hi((_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ + .L_x_1@srel)) ;
        /*0c70*/                   CALL.ABS.NOINC `(sqrt) ;
.L_x_1:
        /*0c80*/                   MOV R4, R4 ;
        /*0c90*/                   MOV R5, R5 ;
        /*0ca0*/                   MOV R22, R4 ;
        /*0cb0*/                   MOV R23, R5 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 70
        /*0cc0*/                   DSETP.GE.AND P0, PT, R22, c[`(_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_.const2.0.8)], PT ;
        /*0cd0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0ce0*/                   BMOV.32.CLEAR RZ, B7 ;
        /*0cf0*/                   BSSY B7, `(.L_x_44) ;
        /*0d00*/               @P0 BRA `(.L_x_45) ;
        /*0d10*/                   BRA `(.L_x_46) ;
.L_x_46:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 74
        /*0d20*/                   MOV R4, R22 ;
        /*0d30*/                   MOV R5, R23 ;
        /*0d40*/                   MOV R4, R4 ;
        /*0d50*/                   MOV R5, R5 ;
        /*0d60*/                   MOV R0, R5 ;
        /*0d70*/                   MOV R0, R0 ;
        /*0d80*/                   IADD3 R3, R0, 0x300402, RZ ;
        /*0d90*/                   MOV R3, R3 ;
        /*0da0*/                   MOV R6, R4 ;
        /*0db0*/                   MOV R7, R5 ;
        /*0dc0*/                   MOV R6, RZ ;
        /*0dd0*/                   MUFU.RCP64H R7, R7 ;
        /*0de0*/                   MOV R6, R6 ;
        /*0df0*/                   MOV R6, R6 ;
        /*0e00*/                   MOV R7, R7 ;
        /*0e10*/                   MOV R7, R7 ;
        /*0e20*/                   LOP3.LUT R6, R6, R3, RZ, 0xfc, !PT ;
        /*0e30*/                   MOV R6, R6 ;
        /*0e40*/                   MOV R7, R7 ;
        /*0e50*/                   DADD R8, -RZ, -R4 ;
        /*0e60*/                   MOV R8, R8 ;
        /*0e70*/                   MOV R9, R9 ;
        /*0e80*/                   MOV R10, 0x0 ;
        /*0e90*/                   MOV R11, 0x3ff00000 ;
        /*0ea0*/                   DFMA R12, R8, R6, R10 ;
        /*0eb0*/                   DFMA R12, R12, R12, R12 ;
        /*0ec0*/                   DFMA R12, R12, R6, R6 ;
        /*0ed0*/                   DFMA R8, R8, R12, R10 ;
        /*0ee0*/                   DFMA R12, R8, R12, R12 ;
        /*0ef0*/                   FADD R3, -RZ, |R3| ;
        /*0f00*/                   MOV R3, R3 ;
        /*0f10*/                   FSETP.GEU.AND P0, PT, R3, 5.8789094863358348022e-39, PT ;
        /*0f20*/                   MOV R6, R4 ;
        /*0f30*/                   MOV R7, R5 ;
        /*0f40*/                   MOV R4, R6 ;
        /*0f50*/                   MOV R5, R7 ;
        /*0f60*/                   MOV R0, R0 ;
        /*0f70*/                   MOV R12, R12 ;
        /*0f80*/                   MOV R13, R13 ;
        /*0f90*/                   BMOV.32.CLEAR RZ, B6 ;
        /*0fa0*/                   BSSY B6, `(.L_x_47) ;
        /*0fb0*/               @P0 BRA `(.L_x_48) ;
        /*0fc0*/                   LOP3.LUT R0, R0, 0x7fffffff, RZ, 0xc0, !PT ;
        /*0fd0*/                   IADD3 R6, R0, -0x100000, RZ ;
        /*0fe0*/                   MOV R4, R4 ;
        /*0ff0*/                   MOV R5, R5 ;
        /*1000*/                   MOV R6, R6 ;
        /*1010*/                   MOV R20, 32@lo((_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ + .L_x_2@srel)) ;
        /*1020*/                   MOV R21, 32@hi((_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ + .L_x_2@srel)) ;
        /*1030*/                   CALL.ABS.NOINC `(__cuda_sm20_dblrcp_rn_slowpath_v3) ;
.L_x_2:
        /*1040*/                   MOV R4, R4 ;
        /*1050*/                   MOV R5, R5 ;
        /*1060*/                   MOV R12, R4 ;
        /*1070*/                   MOV R13, R5 ;
.L_x_48:
        /*1080*/                   BSYNC B6 ;
.L_x_47:
        /*1090*/                   MOV R12, R12 ;
        /*10a0*/                   MOV R13, R13 ;
        /*10b0*/                   MOV R12, R12 ;
        /*10c0*/                   MOV R13, R13 ;
        /*10d0*/                   MOV R4, R12 ;
        /*10e0*/                   MOV R5, R13 ;
        /*10f0*/                   MOV R8, R24 ;
        /*1100*/                   MOV R9, R25 ;
        /*1110*/                   IADD3 R6, P0, R16, 0x18, RZ ;
        /*1120*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*1130*/                   MOV R6, R6 ;
        /*1140*/                   MOV R7, R7 ;
        /*1150*/                   MOV R6, R6 ;
        /*1160*/                   MOV R7, R7 ;
        /*1170*/                   ST.E.64.SYS [R6], R8 ;
        /*1180*/                   MOV R0, RZ ;
        /*1190*/                   MOV R0, R0 ;
        /*11a0*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 75
        /*11b0*/                   BRA `(.L_x_49) ;
.L_x_49:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*11c0*/                   IADD3 R6, P0, R16, 0x18, RZ ;
        /*11d0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*11e0*/                   MOV R6, R6 ;
        /*11f0*/                   MOV R7, R7 ;
        /*1200*/                   MOV R6, R6 ;
        /*1210*/                   MOV R7, R7 ;
        /*1220*/                   LD.E.64.SYS R6, [R6] ;
        /*1230*/                   MOV R3, R6 ;
        /*1240*/                   MOV R6, R7 ;
        /*1250*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*1260*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*1270*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1280*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1290*/                   BMOV.32.CLEAR RZ, B0 ;
        /*12a0*/                   BSSY B0, `(.L_x_50) ;
        /*12b0*/               @P0 BRA `(.L_x_51) ;
        /*12c0*/                   BRA `(.L_x_52) ;
.L_x_52:
        /*12d0*/                   BRA `(.L_x_51) ;
.L_x_51:
        /*12e0*/                   BSYNC B0 ;
.L_x_50:
        /*12f0*/                   IADD3 R6, P0, R16, 0x18, RZ ;
        /*1300*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*1310*/                   MOV R6, R6 ;
        /*1320*/                   MOV R7, R7 ;
        /*1330*/                   MOV R6, R6 ;
        /*1340*/                   MOV R7, R7 ;
        /*1350*/                   LD.E.64.SYS R6, [R6] ;
        /*1360*/                   MOV R3, R6 ;
        /*1370*/                   MOV R8, R7 ;
        /*1380*/                   MOV R0, R0 ;
        /*1390*/                   MOV R6, R0 ;
        /*13a0*/                   MOV R7, RZ ;
        /*13b0*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*13c0*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*13d0*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*13e0*/                   IADD3.X R7, R8, R7, RZ, P0, !PT ;
        /*13f0*/                   MOV R6, R6 ;
        /*1400*/                   MOV R7, R7 ;
.L_x_165:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 75
        /*1410*/                   MOV R6, R6 ;
        /*1420*/                   MOV R7, R7 ;
        /*1430*/                   MOV R6, R6 ;
        /*1440*/                   MOV R7, R7 ;
        /*1450*/                   LD.E.64.SYS R6, [R6] ;
        /*1460*/                   DMUL R6, R6, R4 ;
        /*1470*/                   MOV R6, R6 ;
        /*1480*/                   MOV R7, R7 ;
        /*1490*/                   MOV R10, R24 ;
        /*14a0*/                   MOV R11, R25 ;
        /*14b0*/                   IADD3 R8, P0, R16, RZ, RZ ;
        /*14c0*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*14d0*/                   MOV R8, R8 ;
        /*14e0*/                   MOV R9, R9 ;
        /*14f0*/                   MOV R8, R8 ;
        /*1500*/                   MOV R9, R9 ;
        /*1510*/                   ST.E.64.SYS [R8], R10 ;
        /*1520*/                   MOV R0, 0x1 ;
        /*1530*/                   MOV R0, R0 ;
        /*1540*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 76
        /*1550*/                   BRA `(.L_x_53) ;
.L_x_53:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*1560*/                   IADD3 R8, P0, R16, RZ, RZ ;
        /*1570*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*1580*/                   MOV R8, R8 ;
        /*1590*/                   MOV R9, R9 ;
        /*15a0*/                   MOV R8, R8 ;
        /*15b0*/                   MOV R9, R9 ;
        /*15c0*/                   LD.E.64.SYS R8, [R8] ;
        /*15d0*/                   MOV R3, R8 ;
        /*15e0*/                   MOV R8, R9 ;
        /*15f0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*1600*/                   ISETP.NE.AND.EX P0, PT, R8, RZ, PT, P0 ;
        /*1610*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1620*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1630*/                   BMOV.32.CLEAR RZ, B0 ;
        /*1640*/                   BSSY B0, `(.L_x_54) ;
        /*1650*/               @P0 BRA `(.L_x_55) ;
        /*1660*/                   BRA `(.L_x_56) ;
.L_x_56:
        /*1670*/                   BRA `(.L_x_55) ;
.L_x_55:
        /*1680*/                   BSYNC B0 ;
.L_x_54:
        /*1690*/                   IADD3 R8, P0, R16, RZ, RZ ;
        /*16a0*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*16b0*/                   MOV R8, R8 ;
        /*16c0*/                   MOV R9, R9 ;
        /*16d0*/                   MOV R8, R8 ;
        /*16e0*/                   MOV R9, R9 ;
        /*16f0*/                   LD.E.64.SYS R8, [R8] ;
        /*1700*/                   MOV R3, R8 ;
        /*1710*/                   MOV R10, R9 ;
        /*1720*/                   MOV R0, R0 ;
        /*1730*/                   MOV R8, R0 ;
        /*1740*/                   MOV R9, RZ ;
        /*1750*/                   SHF.L.U64.HI R9, R8, 0x3, R9 ;
        /*1760*/                   SHF.L.U32 R8, R8, 0x3, RZ ;
        /*1770*/                   IADD3 R8, P0, R3, R8, RZ ;
        /*1780*/                   IADD3.X R9, R10, R9, RZ, P0, !PT ;
        /*1790*/                   MOV R8, R8 ;
        /*17a0*/                   MOV R9, R9 ;
.L_x_166:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 76
        /*17b0*/                   MOV R8, R8 ;
        /*17c0*/                   MOV R9, R9 ;
        /*17d0*/                   MOV R8, R8 ;
        /*17e0*/                   MOV R9, R9 ;
        /*17f0*/                   LD.E.64.SYS R8, [R8] ;
        /*1800*/                   DMUL R8, R8, R4 ;
        /*1810*/                   MOV R8, R8 ;
        /*1820*/                   MOV R9, R9 ;
.L_x_148:
        /*1830*/                   MOV R4, R6 ;
        /*1840*/                   MOV R5, R7 ;
        /*1850*/                   MOV R4, R4 ;
        /*1860*/                   MOV R5, R5 ;
.L_x_140:
        /*1870*/                   MOV R12, R8 ;
        /*1880*/                   MOV R13, R9 ;
        /*1890*/                   MOV R12, R12 ;
        /*18a0*/                   MOV R13, R13 ;
.L_x_149:
        /*18b0*/                   BRA `(.L_x_57) ;
.L_x_45:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 78
        /*18c0*/                   DSETP.GT.AND P0, PT, R22, RZ, PT ;
        /*18d0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*18e0*/                   BMOV.32.CLEAR RZ, B6 ;
        /*18f0*/                   BSSY B6, `(.L_x_58) ;
        /*1900*/               @P0 BRA `(.L_x_59) ;
        /*1910*/                   BRA `(.L_x_60) ;
.L_x_60:
        /*1920*/                   MOV R6, R24 ;
        /*1930*/                   MOV R7, R25 ;
        /*1940*/                   IADD3 R4, P0, R16, 0x8, RZ ;
        /*1950*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*1960*/                   MOV R4, R4 ;
        /*1970*/                   MOV R5, R5 ;
        /*1980*/                   MOV R4, R4 ;
        /*1990*/                   MOV R5, R5 ;
        /*19a0*/                   ST.E.64.SYS [R4], R6 ;
        /*19b0*/                   MOV R0, RZ ;
        /*19c0*/                   MOV R0, R0 ;
        /*19d0*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 81
        /*19e0*/                   BRA `(.L_x_61) ;
.L_x_61:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*19f0*/                   IADD3 R4, P0, R16, 0x8, RZ ;
        /*1a00*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*1a10*/                   MOV R4, R4 ;
        /*1a20*/                   MOV R5, R5 ;
        /*1a30*/                   MOV R4, R4 ;
        /*1a40*/                   MOV R5, R5 ;
        /*1a50*/                   LD.E.64.SYS R4, [R4] ;
        /*1a60*/                   MOV R3, R4 ;
        /*1a70*/                   MOV R4, R5 ;
        /*1a80*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*1a90*/                   ISETP.NE.AND.EX P0, PT, R4, RZ, PT, P0 ;
        /*1aa0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1ab0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1ac0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*1ad0*/                   BSSY B0, `(.L_x_62) ;
        /*1ae0*/               @P0 BRA `(.L_x_63) ;
        /*1af0*/                   BRA `(.L_x_64) ;
.L_x_64:
        /*1b00*/                   BRA `(.L_x_63) ;
.L_x_63:
        /*1b10*/                   BSYNC B0 ;
.L_x_62:
        /*1b20*/                   IADD3 R4, P0, R16, 0x8, RZ ;
        /*1b30*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*1b40*/                   MOV R4, R4 ;
        /*1b50*/                   MOV R5, R5 ;
        /*1b60*/                   MOV R4, R4 ;
        /*1b70*/                   MOV R5, R5 ;
        /*1b80*/                   LD.E.64.SYS R4, [R4] ;
        /*1b90*/                   MOV R3, R4 ;
        /*1ba0*/                   MOV R6, R5 ;
        /*1bb0*/                   MOV R0, R0 ;
        /*1bc0*/                   MOV R4, R0 ;
        /*1bd0*/                   MOV R5, RZ ;
        /*1be0*/                   SHF.L.U64.HI R5, R4, 0x3, R5 ;
        /*1bf0*/                   SHF.L.U32 R4, R4, 0x3, RZ ;
        /*1c00*/                   IADD3 R4, P0, R3, R4, RZ ;
        /*1c10*/                   IADD3.X R5, R6, R5, RZ, P0, !PT ;
        /*1c20*/                   MOV R4, R4 ;
        /*1c30*/                   MOV R5, R5 ;
.L_x_167:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 81
        /*1c40*/                   MOV R4, R4 ;
        /*1c50*/                   MOV R5, R5 ;
        /*1c60*/                   MOV R4, R4 ;
        /*1c70*/                   MOV R5, R5 ;
        /*1c80*/                   LD.E.64.SYS R4, [R4] ;
        /*1c90*/                   MOV R4, R4 ;
        /*1ca0*/                   MOV R5, R5 ;
        /*1cb0*/                   MOV R4, R4 ;
        /*1cc0*/                   MOV R5, R5 ;
        /*1cd0*/                   MOV R4, R4 ;
        /*1ce0*/                   MOV R5, R5 ;
        /*1cf0*/                   F2F.F32.F64 R0, R4 ;
        /*1d00*/                   MOV R3, 0x800000 ;
        /*1d10*/                   FMUL R3, R0, R3 ;
        /*1d20*/                   DADD R4, -RZ, |R4| ;
        /*1d30*/                   MOV R4, R4 ;
        /*1d40*/                   MOV R5, R5 ;
        /*1d50*/                   MOV R6, 0x380fffff ;
        /*1d60*/                   MOV R7, 0xf0000000 ;
        /*1d70*/                   LOP3.LUT R7, R7, R6, RZ, 0x3c, !PT ;
        /*1d80*/                   LOP3.LUT R6, R7, R6, RZ, 0x3c, !PT ;
        /*1d90*/                   LOP3.LUT R7, R7, R6, RZ, 0x3c, !PT ;
        /*1da0*/                   DSETP.LT.AND P0, PT, R4, R6, PT ;
        /*1db0*/                   FSEL R3, R3, R0, P0 ;
        /*1dc0*/                   MOV R3, R3 ;
        /*1dd0*/                   MOV R3, R3 ;
        /*1de0*/                   MOV R17, R3 ;
        /*1df0*/                   MOV R0, R17 ;
        /*1e00*/                   MOV R0, R0 ;
        /*1e10*/                   MOV R3, R0 ;
        /*1e20*/                   MOV R3, R3 ;
        /*1e30*/                   MOV R3, R3 ;
        /*1e40*/                   MOV R5, R3 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*1e50*/                   BRA `(.L_x_65) ;
.L_x_65:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*1e60*/                   MOV R4, 0x3f800000 ;
        /*1e70*/                   MOV R6, R4 ;
        /*1e80*/                   MOV R4, R4 ;
        /*1e90*/                   MOV R6, R6 ;
.L_x_170:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*1ea0*/                   FMUL.FTZ R6, R3, R6 ;
        /*1eb0*/                   MOV R3, R3 ;
        /*1ec0*/                   MOV R6, R6 ;
        /*1ed0*/                   MOV R5, R3 ;
        /*1ee0*/                   BRA `(.L_x_66) ;
.L_x_66:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*1ef0*/                   MOV R4, R4 ;
        /*1f00*/                   MOV R7, R4 ;
.L_x_171:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*1f10*/                   FMUL.FTZ R5, R6, R7 ;
        /*1f20*/                   MOV R0, R0 ;
        /*1f30*/                   MOV R5, R5 ;
        /*1f40*/                   MOV R6, R0 ;
.L_x_169:
        /*1f50*/                   MOV R6, R6 ;
        /*1f60*/                   MOV R7, R6 ;
        /*1f70*/                   BRA `(.L_x_67) ;
.L_x_67:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*1f80*/                   MOV R3, R4 ;
        /*1f90*/                   MOV R3, R3 ;
.L_x_173:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*1fa0*/                   FMUL.FTZ R3, R6, R3 ;
        /*1fb0*/                   MOV R6, R6 ;
        /*1fc0*/                   MOV R3, R3 ;
        /*1fd0*/                   MOV R7, R6 ;
        /*1fe0*/                   BRA `(.L_x_68) ;
.L_x_68:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*1ff0*/                   MOV R4, R4 ;
        /*2000*/                   MOV R4, R4 ;
.L_x_174:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*2010*/                   FMUL.FTZ R3, R3, R4 ;
        /*2020*/                   MOV R3, R3 ;
.L_x_172:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 296
        /*2030*/                   FMUL.FTZ R3, R5, R3 ;
        /*2040*/                   MOV R6, R24 ;
        /*2050*/                   MOV R7, R25 ;
        /*2060*/                   IADD3 R4, P0, R16, 0x10, RZ ;
        /*2070*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*2080*/                   MOV R4, R4 ;
        /*2090*/                   MOV R5, R5 ;
        /*20a0*/                   MOV R4, R4 ;
        /*20b0*/                   MOV R5, R5 ;
        /*20c0*/                   ST.E.64.SYS [R4], R6 ;
        /*20d0*/                   MOV R4, 0x1 ;
        /*20e0*/                   MOV R5, R4 ;
        /*20f0*/                   MOV R4, R3 ;
        /*2100*/                   MOV R3, R5 ;
.L_x_168:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 82
        /*2110*/                   BRA `(.L_x_69) ;
.L_x_69:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*2120*/                   IADD3 R6, P0, R16, 0x10, RZ ;
        /*2130*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*2140*/                   MOV R6, R6 ;
        /*2150*/                   MOV R7, R7 ;
        /*2160*/                   MOV R6, R6 ;
        /*2170*/                   MOV R7, R7 ;
        /*2180*/                   LD.E.64.SYS R6, [R6] ;
        /*2190*/                   MOV R0, R6 ;
        /*21a0*/                   MOV R6, R7 ;
        /*21b0*/                   ISETP.NE.U32.AND P0, PT, R0, RZ, PT ;
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
        /*2250*/                   IADD3 R6, P0, R16, 0x10, RZ ;
        /*2260*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*2270*/                   MOV R6, R6 ;
        /*2280*/                   MOV R7, R7 ;
        /*2290*/                   MOV R6, R6 ;
        /*22a0*/                   MOV R7, R7 ;
        /*22b0*/                   LD.E.64.SYS R6, [R6] ;
        /*22c0*/                   MOV R5, R6 ;
        /*22d0*/                   MOV R8, R7 ;
        /*22e0*/                   MOV R0, R3 ;
        /*22f0*/                   MOV R0, R0 ;
        /*2300*/                   MOV R7, RZ ;
        /*2310*/                   SHF.L.U64.HI R7, R0, 0x3, R7 ;
        /*2320*/                   SHF.L.U32 R6, R0, 0x3, RZ ;
        /*2330*/                   IADD3 R6, P0, R5, R6, RZ ;
        /*2340*/                   IADD3.X R7, R8, R7, RZ, P0, !PT ;
        /*2350*/                   MOV R6, R6 ;
        /*2360*/                   MOV R7, R7 ;
.L_x_175:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 82
        /*2370*/                   MOV R6, R6 ;
        /*2380*/                   MOV R7, R7 ;
        /*2390*/                   MOV R6, R6 ;
        /*23a0*/                   MOV R7, R7 ;
        /*23b0*/                   LD.E.64.SYS R6, [R6] ;
        /*23c0*/                   MOV R6, R6 ;
        /*23d0*/                   MOV R7, R7 ;
        /*23e0*/                   MOV R6, R6 ;
        /*23f0*/                   MOV R7, R7 ;
        /*2400*/                   MOV R6, R6 ;
        /*2410*/                   MOV R7, R7 ;
        /*2420*/                   F2F.F32.F64 R0, R6 ;
        /*2430*/                   MOV R3, 0x800000 ;
        /*2440*/                   FMUL R3, R0, R3 ;
        /*2450*/                   DADD R6, -RZ, |R6| ;
        /*2460*/                   MOV R6, R6 ;
        /*2470*/                   MOV R7, R7 ;
        /*2480*/                   MOV R8, 0x380fffff ;
        /*2490*/                   MOV R9, 0xf0000000 ;
        /*24a0*/                   LOP3.LUT R9, R9, R8, RZ, 0x3c, !PT ;
        /*24b0*/                   LOP3.LUT R8, R9, R8, RZ, 0x3c, !PT ;
        /*24c0*/                   LOP3.LUT R9, R9, R8, RZ, 0x3c, !PT ;
        /*24d0*/                   DSETP.LT.AND P0, PT, R6, R8, PT ;
        /*24e0*/                   FSEL R3, R3, R0, P0 ;
        /*24f0*/                   MOV R3, R3 ;
        /*2500*/                   MOV R0, R3 ;
        /*2510*/                   MOV R0, R0 ;
        /*2520*/                   MOV R3, R0 ;
        /*2530*/                   MOV R3, R3 ;
        /*2540*/                   MOV R3, R3 ;
        /*2550*/                   MOV R6, R3 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*2560*/                   BRA `(.L_x_73) ;
.L_x_73:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*2570*/                   MOV R5, 0x3f800000 ;
        /*2580*/                   MOV R7, R5 ;
        /*2590*/                   MOV R5, R5 ;
        /*25a0*/                   MOV R7, R7 ;
.L_x_178:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*25b0*/                   FMUL.FTZ R7, R3, R7 ;
        /*25c0*/                   MOV R3, R3 ;
        /*25d0*/                   MOV R7, R7 ;
        /*25e0*/                   MOV R6, R3 ;
        /*25f0*/                   BRA `(.L_x_74) ;
.L_x_74:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*2600*/                   MOV R5, R5 ;
        /*2610*/                   MOV R8, R5 ;
.L_x_179:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*2620*/                   FMUL.FTZ R6, R7, R8 ;
        /*2630*/                   MOV R0, R0 ;
        /*2640*/                   MOV R6, R6 ;
        /*2650*/                   MOV R7, R0 ;
.L_x_177:
        /*2660*/                   MOV R7, R7 ;
        /*2670*/                   MOV R8, R7 ;
        /*2680*/                   BRA `(.L_x_75) ;
.L_x_75:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*2690*/                   MOV R3, R5 ;
        /*26a0*/                   MOV R3, R3 ;
.L_x_181:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*26b0*/                   FMUL.FTZ R3, R7, R3 ;
        /*26c0*/                   MOV R7, R7 ;
        /*26d0*/                   MOV R3, R3 ;
        /*26e0*/                   MOV R8, R7 ;
        /*26f0*/                   BRA `(.L_x_76) ;
.L_x_76:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*2700*/                   MOV R5, R5 ;
        /*2710*/                   MOV R5, R5 ;
.L_x_182:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*2720*/                   FMUL.FTZ R3, R3, R5 ;
        /*2730*/                   MOV R3, R3 ;
.L_x_180:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 296
        /*2740*/                   FMUL.FTZ R3, R6, R3 ;
        /*2750*/                   MOV R3, R3 ;
.L_x_176:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 82
        /*2760*/                   FADD.FTZ R4, R4, R3 ;
        /*2770*/                   MOV R4, R4 ;
        /*2780*/                   MOV R20, 32@lo((_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ + .L_x_3@srel)) ;
        /*2790*/                   MOV R21, 32@hi((_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ + .L_x_3@srel)) ;
        /*27a0*/                   CALL.ABS.NOINC `(_Z9my_rsqrtff) ;
.L_x_3:
        /*27b0*/                   MOV R4, R4 ;
        /*27c0*/                   FMUL.FTZ R4, R17, R4 ;
        /*27d0*/                   MOV R4, R4 ;
        /*27e0*/                   MOV R4, R4 ;
        /*27f0*/                   MOV R4, R4 ;
        /*2800*/                   MOV R4, R4 ;
        /*2810*/                   FMUL.FTZ R4, R4, 1 ;
        /*2820*/                   MOV R4, R4 ;
        /*2830*/                   F2F.F64.F32 R4, R4 ;
        /*2840*/                   MOV R4, R4 ;
        /*2850*/                   MOV R5, R5 ;
        /*2860*/                   MOV R4, R4 ;
        /*2870*/                   MOV R5, R5 ;
        /*2880*/                   MOV R4, R4 ;
        /*2890*/                   MOV R5, R5 ;
        /*28a0*/                   MOV R4, R4 ;
        /*28b0*/                   MOV R5, R5 ;
        /*28c0*/                   MOV R28, R4 ;
        /*28d0*/                   MOV R29, R5 ;
.L_x_141:
        /*28e0*/                   MOV R4, R28 ;
        /*28f0*/                   MOV R5, R29 ;
        /*2900*/                   MOV R30, R4 ;
        /*2910*/                   MOV R31, R5 ;
        /*2920*/                   MOV R8, R30 ;
        /*2930*/                   MOV R9, R31 ;
        /*2940*/                   MOV R8, R8 ;
        /*2950*/                   MOV R9, R9 ;
        /*2960*/                   MOV R4, R8 ;
        /*2970*/                   MOV R5, R9 ;
        /*2980*/                   MOV R4, R4 ;
        /*2990*/                   MOV R5, R5 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*29a0*/                   BRA `(.L_x_77) ;
.L_x_77:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*29b0*/                   MOV R14, 0x0 ;
        /*29c0*/                   MOV R15, 0x3ff00000 ;
        /*29d0*/                   MOV R6, R14 ;
        /*29e0*/                   MOV R7, R15 ;
        /*29f0*/                   MOV R14, R14 ;
        /*2a00*/                   MOV R15, R15 ;
        /*2a10*/                   MOV R6, R6 ;
        /*2a20*/                   MOV R7, R7 ;
.L_x_185:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*2a30*/                   DMUL R6, R8, R6 ;
        /*2a40*/                   MOV R4, R8 ;
        /*2a50*/                   MOV R5, R9 ;
        /*2a60*/                   MOV R10, R6 ;
        /*2a70*/                   MOV R11, R7 ;
        /*2a80*/                   MOV R4, R4 ;
        /*2a90*/                   MOV R5, R5 ;
        /*2aa0*/                   BRA `(.L_x_78) ;
.L_x_78:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*2ab0*/                   MOV R6, R14 ;
        /*2ac0*/                   MOV R7, R15 ;
        /*2ad0*/                   MOV R6, R6 ;
        /*2ae0*/                   MOV R7, R7 ;
.L_x_186:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*2af0*/                   DMUL R4, R10, R6 ;
        /*2b00*/                   MOV R6, R30 ;
        /*2b10*/                   MOV R7, R31 ;
        /*2b20*/                   MOV R4, R4 ;
        /*2b30*/                   MOV R5, R5 ;
        /*2b40*/                   MOV R6, R6 ;
        /*2b50*/                   MOV R7, R7 ;
.L_x_184:
        /*2b60*/                   MOV R10, R6 ;
        /*2b70*/                   MOV R11, R7 ;
        /*2b80*/                   MOV R10, R10 ;
        /*2b90*/                   MOV R11, R11 ;
        /*2ba0*/                   BRA `(.L_x_79) ;
.L_x_79:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*2bb0*/                   MOV R8, R14 ;
        /*2bc0*/                   MOV R9, R15 ;
        /*2bd0*/                   MOV R8, R8 ;
        /*2be0*/                   MOV R9, R9 ;
.L_x_188:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*2bf0*/                   DMUL R8, R6, R8 ;
        /*2c00*/                   MOV R10, R6 ;
        /*2c10*/                   MOV R11, R7 ;
        /*2c20*/                   MOV R8, R8 ;
        /*2c30*/                   MOV R9, R9 ;
        /*2c40*/                   MOV R10, R10 ;
        /*2c50*/                   MOV R11, R11 ;
        /*2c60*/                   BRA `(.L_x_80) ;
.L_x_80:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*2c70*/                   MOV R12, R14 ;
        /*2c80*/                   MOV R13, R15 ;
        /*2c90*/                   MOV R12, R12 ;
        /*2ca0*/                   MOV R13, R13 ;
.L_x_189:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*2cb0*/                   DMUL R8, R8, R12 ;
        /*2cc0*/                   MOV R8, R8 ;
        /*2cd0*/                   MOV R9, R9 ;
.L_x_187:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 296
        /*2ce0*/                   DMUL R4, R4, R8 ;
        /*2cf0*/                   MOV R4, R4 ;
        /*2d00*/                   MOV R5, R5 ;
.L_x_183:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 83
        /*2d10*/                   DADD R14, R14, -R4 ;
        /*2d20*/                   MOV R4, R14 ;
        /*2d30*/                   MOV R5, R15 ;
        /*2d40*/                   MOV R4, R4 ;
        /*2d50*/                   MOV R5, R5 ;
        /*2d60*/                   MOV R20, 32@lo((_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ + .L_x_4@srel)) ;
        /*2d70*/                   MOV R21, 32@hi((_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ + .L_x_4@srel)) ;
        /*2d80*/                   CALL.ABS.NOINC `(sqrt) ;
.L_x_4:
        /*2d90*/                   MOV R4, R4 ;
        /*2da0*/                   MOV R5, R5 ;
        /*2db0*/                   MOV R6, R4 ;
        /*2dc0*/                   MOV R7, R5 ;
.L_x_150:
        /*2dd0*/                   MOV R4, R28 ;
        /*2de0*/                   MOV R5, R29 ;
        /*2df0*/                   MOV R4, R4 ;
        /*2e00*/                   MOV R5, R5 ;
.L_x_142:
        /*2e10*/                   MOV R8, R6 ;
        /*2e20*/                   MOV R9, R7 ;
        /*2e30*/                   MOV R8, R8 ;
        /*2e40*/                   MOV R9, R9 ;
.L_x_151:
        /*2e50*/                   BRA `(.L_x_81) ;
.L_x_59:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 88
        /*2e60*/                   MOV R4, 0x0 ;
        /*2e70*/                   MOV R5, 0x3ff00000 ;
        /*2e80*/                   MOV R4, R4 ;
        /*2e90*/                   MOV R5, R5 ;
        /*2ea0*/                   MOV R6, R4 ;
        /*2eb0*/                   MOV R7, R5 ;
.L_x_143:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 89
        /*2ec0*/                   CS2R R4, SRZ ;
        /*2ed0*/                   MOV R4, R4 ;
        /*2ee0*/                   MOV R5, R5 ;
        /*2ef0*/                   MOV R10, R4 ;
        /*2f00*/                   MOV R11, R5 ;
.L_x_152:
        /*2f10*/                   MOV R4, R6 ;
        /*2f20*/                   MOV R5, R7 ;
        /*2f30*/                   MOV R4, R4 ;
        /*2f40*/                   MOV R5, R5 ;
.L_x_144:
        /*2f50*/                   MOV R8, R10 ;
        /*2f60*/                   MOV R9, R11 ;
        /*2f70*/                   MOV R8, R8 ;
        /*2f80*/                   MOV R9, R9 ;
.L_x_153:
        /*2f90*/                   BRA `(.L_x_81) ;
.L_x_81:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 83
        /*2fa0*/                   BSYNC B6 ;
.L_x_58:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 89
        /*2fb0*/                   MOV R6, R8 ;
        /*2fc0*/                   MOV R7, R9 ;
        /*2fd0*/                   MOV R4, R4 ;
        /*2fe0*/                   MOV R5, R5 ;
        /*2ff0*/                   MOV R6, R6 ;
        /*3000*/                   MOV R7, R7 ;
        /*3010*/                   MOV R10, R4 ;
        /*3020*/                   MOV R11, R5 ;
.L_x_145:
        /*3030*/                   MOV R4, R10 ;
        /*3040*/                   MOV R5, R11 ;
        /*3050*/                   MOV R4, R4 ;
        /*3060*/                   MOV R5, R5 ;
.L_x_146:
        /*3070*/                   MOV R12, R6 ;
        /*3080*/                   MOV R13, R7 ;
        /*3090*/                   MOV R12, R12 ;
        /*30a0*/                   MOV R13, R13 ;
.L_x_154:
        /*30b0*/                   BRA `(.L_x_57) ;
.L_x_57:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 76
        /*30c0*/                   BSYNC B7 ;
.L_x_44:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 92
        /*30d0*/                   MOV R10, R12 ;
        /*30e0*/                   MOV R11, R13 ;
        /*30f0*/                   MOV R8, R4 ;
        /*3100*/                   MOV R9, R5 ;
        /*3110*/                   MOV R10, R10 ;
        /*3120*/                   MOV R11, R11 ;
        /*3130*/                   MOV R8, R8 ;
        /*3140*/                   MOV R9, R9 ;
        /*3150*/                   MOV R6, R24 ;
        /*3160*/                   MOV R7, R25 ;
        /*3170*/                   IADD3 R4, P0, R16, 0x20, RZ ;
        /*3180*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*3190*/                   MOV R4, R4 ;
        /*31a0*/                   MOV R5, R5 ;
        /*31b0*/                   MOV R4, R4 ;
        /*31c0*/                   MOV R5, R5 ;
        /*31d0*/                   ST.E.64.SYS [R4], R6 ;
        /*31e0*/                   MOV R0, 0x2 ;
        /*31f0*/                   MOV R0, R0 ;
        /*3200*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 93
        /*3210*/                   BRA `(.L_x_82) ;
.L_x_82:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*3220*/                   IADD3 R4, P0, R16, 0x20, RZ ;
        /*3230*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*3240*/                   MOV R4, R4 ;
        /*3250*/                   MOV R5, R5 ;
        /*3260*/                   MOV R4, R4 ;
        /*3270*/                   MOV R5, R5 ;
        /*3280*/                   LD.E.64.SYS R4, [R4] ;
        /*3290*/                   MOV R3, R4 ;
        /*32a0*/                   MOV R4, R5 ;
        /*32b0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*32c0*/                   ISETP.NE.AND.EX P0, PT, R4, RZ, PT, P0 ;
        /*32d0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*32e0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*32f0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*3300*/                   BSSY B0, `(.L_x_83) ;
        /*3310*/               @P0 BRA `(.L_x_84) ;
        /*3320*/                   BRA `(.L_x_85) ;
.L_x_85:
        /*3330*/                   BRA `(.L_x_84) ;
.L_x_84:
        /*3340*/                   BSYNC B0 ;
.L_x_83:
        /*3350*/                   IADD3 R4, P0, R16, 0x20, RZ ;
        /*3360*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*3370*/                   MOV R4, R4 ;
        /*3380*/                   MOV R5, R5 ;
        /*3390*/                   MOV R4, R4 ;
        /*33a0*/                   MOV R5, R5 ;
        /*33b0*/                   LD.E.64.SYS R4, [R4] ;
        /*33c0*/                   MOV R3, R4 ;
        /*33d0*/                   MOV R6, R5 ;
        /*33e0*/                   MOV R0, R0 ;
        /*33f0*/                   MOV R4, R0 ;
        /*3400*/                   MOV R5, RZ ;
        /*3410*/                   SHF.L.U64.HI R5, R4, 0x3, R5 ;
        /*3420*/                   SHF.L.U32 R4, R4, 0x3, RZ ;
        /*3430*/                   IADD3 R4, P0, R3, R4, RZ ;
        /*3440*/                   IADD3.X R5, R6, R5, RZ, P0, !PT ;
        /*3450*/                   MOV R4, R4 ;
        /*3460*/                   MOV R5, R5 ;
.L_x_190:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 93
        /*3470*/                   MOV R4, R4 ;
        /*3480*/                   MOV R5, R5 ;
        /*3490*/                   MOV R4, R4 ;
        /*34a0*/                   MOV R5, R5 ;
        /*34b0*/                   LD.E.64.SYS R4, [R4] ;
        /*34c0*/                   MOV R12, R26 ;
        /*34d0*/                   MOV R13, R27 ;
        /*34e0*/                   IADD3 R6, P0, R16, 0x28, RZ ;
        /*34f0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3500*/                   MOV R6, R6 ;
        /*3510*/                   MOV R7, R7 ;
        /*3520*/                   MOV R6, R6 ;
        /*3530*/                   MOV R7, R7 ;
        /*3540*/                   ST.E.64.SYS [R6], R12 ;
        /*3550*/                   MOV R0, RZ ;
        /*3560*/                   MOV R0, R0 ;
        /*3570*/                   MOV R4, R4 ;
        /*3580*/                   MOV R5, R5 ;
        /*3590*/                   MOV R0, R0 ;
        /*35a0*/                   BRA `(.L_x_86) ;
.L_x_86:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*35b0*/                   IADD3 R6, P0, R16, 0x28, RZ ;
        /*35c0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*35d0*/                   MOV R6, R6 ;
        /*35e0*/                   MOV R7, R7 ;
        /*35f0*/                   MOV R6, R6 ;
        /*3600*/                   MOV R7, R7 ;
        /*3610*/                   LD.E.64.SYS R6, [R6] ;
        /*3620*/                   MOV R3, R6 ;
        /*3630*/                   MOV R6, R7 ;
        /*3640*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*3650*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*3660*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3670*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3680*/                   BMOV.32.CLEAR RZ, B0 ;
        /*3690*/                   BSSY B0, `(.L_x_87) ;
        /*36a0*/               @P0 BRA `(.L_x_88) ;
        /*36b0*/                   BRA `(.L_x_89) ;
.L_x_89:
        /*36c0*/                   BRA `(.L_x_88) ;
.L_x_88:
        /*36d0*/                   BSYNC B0 ;
.L_x_87:
        /*36e0*/                   IADD3 R6, P0, R16, 0x28, RZ ;
        /*36f0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3700*/                   MOV R6, R6 ;
        /*3710*/                   MOV R7, R7 ;
        /*3720*/                   MOV R6, R6 ;
        /*3730*/                   MOV R7, R7 ;
        /*3740*/                   LD.E.64.SYS R6, [R6] ;
        /*3750*/                   MOV R3, R6 ;
        /*3760*/                   MOV R12, R7 ;
        /*3770*/                   MOV R0, R0 ;
        /*3780*/                   MOV R6, R0 ;
        /*3790*/                   MOV R7, RZ ;
        /*37a0*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*37b0*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*37c0*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*37d0*/                   IADD3.X R7, R12, R7, RZ, P0, !PT ;
        /*37e0*/                   MOV R6, R6 ;
        /*37f0*/                   MOV R7, R7 ;
.L_x_191:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 93
        /*3800*/                   MOV R6, R6 ;
        /*3810*/                   MOV R7, R7 ;
        /*3820*/                   MOV R6, R6 ;
        /*3830*/                   MOV R7, R7 ;
        /*3840*/                   LD.E.64.SYS R6, [R6] ;
        /*3850*/                   DMUL R4, R4, R6 ;
        /*3860*/                   MOV R12, R26 ;
        /*3870*/                   MOV R13, R27 ;
        /*3880*/                   IADD3 R6, P0, R16, 0x30, RZ ;
        /*3890*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*38a0*/                   MOV R6, R6 ;
        /*38b0*/                   MOV R7, R7 ;
        /*38c0*/                   MOV R6, R6 ;
        /*38d0*/                   MOV R7, R7 ;
        /*38e0*/                   ST.E.64.SYS [R6], R12 ;
        /*38f0*/                   MOV R0, 0x2 ;
        /*3900*/                   MOV R0, R0 ;
        /*3910*/                   MOV R4, R4 ;
        /*3920*/                   MOV R5, R5 ;
        /*3930*/                   MOV R0, R0 ;
        /*3940*/                   BRA `(.L_x_90) ;
.L_x_90:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*3950*/                   IADD3 R6, P0, R16, 0x30, RZ ;
        /*3960*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3970*/                   MOV R6, R6 ;
        /*3980*/                   MOV R7, R7 ;
        /*3990*/                   MOV R6, R6 ;
        /*39a0*/                   MOV R7, R7 ;
        /*39b0*/                   LD.E.64.SYS R6, [R6] ;
        /*39c0*/                   MOV R3, R6 ;
        /*39d0*/                   MOV R6, R7 ;
        /*39e0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*39f0*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*3a00*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3a10*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3a20*/                   BMOV.32.CLEAR RZ, B0 ;
        /*3a30*/                   BSSY B0, `(.L_x_91) ;
        /*3a40*/               @P0 BRA `(.L_x_92) ;
        /*3a50*/                   BRA `(.L_x_93) ;
.L_x_93:
        /*3a60*/                   BRA `(.L_x_92) ;
.L_x_92:
        /*3a70*/                   BSYNC B0 ;
.L_x_91:
        /*3a80*/                   IADD3 R6, P0, R16, 0x30, RZ ;
        /*3a90*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3aa0*/                   MOV R6, R6 ;
        /*3ab0*/                   MOV R7, R7 ;
        /*3ac0*/                   MOV R6, R6 ;
        /*3ad0*/                   MOV R7, R7 ;
        /*3ae0*/                   LD.E.64.SYS R6, [R6] ;
        /*3af0*/                   MOV R3, R6 ;
        /*3b00*/                   MOV R12, R7 ;
        /*3b10*/                   MOV R0, R0 ;
        /*3b20*/                   MOV R6, R0 ;
        /*3b30*/                   MOV R7, RZ ;
        /*3b40*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*3b50*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*3b60*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*3b70*/                   IADD3.X R7, R12, R7, RZ, P0, !PT ;
        /*3b80*/                   MOV R6, R6 ;
        /*3b90*/                   MOV R7, R7 ;
.L_x_192:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 93
        /*3ba0*/                   MOV R6, R6 ;
        /*3bb0*/                   MOV R7, R7 ;
        /*3bc0*/                   MOV R6, R6 ;
        /*3bd0*/                   MOV R7, R7 ;
        /*3be0*/                   LD.E.64.SYS R6, [R6] ;
        /*3bf0*/                   DMUL R6, R22, R6 ;
        /*3c00*/                   DADD R4, R4, R6 ;
        /*3c10*/                   DMUL R4, R4, R8 ;
        /*3c20*/                   MOV R12, R26 ;
        /*3c30*/                   MOV R13, R27 ;
        /*3c40*/                   IADD3 R6, P0, R16, 0x38, RZ ;
        /*3c50*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3c60*/                   MOV R6, R6 ;
        /*3c70*/                   MOV R7, R7 ;
        /*3c80*/                   MOV R6, R6 ;
        /*3c90*/                   MOV R7, R7 ;
        /*3ca0*/                   ST.E.64.SYS [R6], R12 ;
        /*3cb0*/                   MOV R0, 0x1 ;
        /*3cc0*/                   MOV R0, R0 ;
        /*3cd0*/                   MOV R4, R4 ;
        /*3ce0*/                   MOV R5, R5 ;
        /*3cf0*/                   MOV R0, R0 ;
        /*3d00*/                   BRA `(.L_x_94) ;
.L_x_94:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*3d10*/                   IADD3 R6, P0, R16, 0x38, RZ ;
        /*3d20*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3d30*/                   MOV R6, R6 ;
        /*3d40*/                   MOV R7, R7 ;
        /*3d50*/                   MOV R6, R6 ;
        /*3d60*/                   MOV R7, R7 ;
        /*3d70*/                   LD.E.64.SYS R6, [R6] ;
        /*3d80*/                   MOV R3, R6 ;
        /*3d90*/                   MOV R6, R7 ;
        /*3da0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*3db0*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*3dc0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3dd0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3de0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*3df0*/                   BSSY B0, `(.L_x_95) ;
        /*3e00*/               @P0 BRA `(.L_x_96) ;
        /*3e10*/                   BRA `(.L_x_97) ;
.L_x_97:
        /*3e20*/                   BRA `(.L_x_96) ;
.L_x_96:
        /*3e30*/                   BSYNC B0 ;
.L_x_95:
        /*3e40*/                   IADD3 R6, P0, R16, 0x38, RZ ;
        /*3e50*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3e60*/                   MOV R6, R6 ;
        /*3e70*/                   MOV R7, R7 ;
        /*3e80*/                   MOV R6, R6 ;
        /*3e90*/                   MOV R7, R7 ;
        /*3ea0*/                   LD.E.64.SYS R6, [R6] ;
        /*3eb0*/                   MOV R3, R6 ;
        /*3ec0*/                   MOV R12, R7 ;
        /*3ed0*/                   MOV R0, R0 ;
        /*3ee0*/                   MOV R6, R0 ;
        /*3ef0*/                   MOV R7, RZ ;
        /*3f00*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*3f10*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*3f20*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*3f30*/                   IADD3.X R7, R12, R7, RZ, P0, !PT ;
        /*3f40*/                   MOV R6, R6 ;
        /*3f50*/                   MOV R7, R7 ;
.L_x_193:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 93
        /*3f60*/                   MOV R6, R6 ;
        /*3f70*/                   MOV R7, R7 ;
        /*3f80*/                   MOV R6, R6 ;
        /*3f90*/                   MOV R7, R7 ;
        /*3fa0*/                   LD.E.64.SYS R6, [R6] ;
        /*3fb0*/                   DMUL R6, R10, R6 ;
        /*3fc0*/                   DADD R4, R4, -R6 ;
        /*3fd0*/                   IADD3 R6, P0, R16, 0x80, RZ ;
        /*3fe0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3ff0*/                   MOV R6, R6 ;
        /*4000*/                   MOV R7, R7 ;
        /*4010*/                   MOV R6, R6 ;
        /*4020*/                   MOV R7, R7 ;
        /*4030*/                   ST.E.64.SYS [R6], R4 ;
        /*4040*/                   MOV R6, R24 ;
        /*4050*/                   MOV R7, R25 ;
        /*4060*/                   IADD3 R4, P0, R16, 0x40, RZ ;
        /*4070*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*4080*/                   MOV R4, R4 ;
        /*4090*/                   MOV R5, R5 ;
        /*40a0*/                   MOV R4, R4 ;
        /*40b0*/                   MOV R5, R5 ;
        /*40c0*/                   ST.E.64.SYS [R4], R6 ;
        /*40d0*/                   MOV R0, 0x2 ;
        /*40e0*/                   MOV R0, R0 ;
        /*40f0*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 94
        /*4100*/                   BRA `(.L_x_98) ;
.L_x_98:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*4110*/                   IADD3 R4, P0, R16, 0x40, RZ ;
        /*4120*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*4130*/                   MOV R4, R4 ;
        /*4140*/                   MOV R5, R5 ;
        /*4150*/                   MOV R4, R4 ;
        /*4160*/                   MOV R5, R5 ;
        /*4170*/                   LD.E.64.SYS R4, [R4] ;
        /*4180*/                   MOV R3, R4 ;
        /*4190*/                   MOV R4, R5 ;
        /*41a0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*41b0*/                   ISETP.NE.AND.EX P0, PT, R4, RZ, PT, P0 ;
        /*41c0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*41d0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*41e0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*41f0*/                   BSSY B0, `(.L_x_99) ;
        /*4200*/               @P0 BRA `(.L_x_100) ;
        /*4210*/                   BRA `(.L_x_101) ;
.L_x_101:
        /*4220*/                   BRA `(.L_x_100) ;
.L_x_100:
        /*4230*/                   BSYNC B0 ;
.L_x_99:
        /*4240*/                   IADD3 R4, P0, R16, 0x40, RZ ;
        /*4250*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*4260*/                   MOV R4, R4 ;
        /*4270*/                   MOV R5, R5 ;
        /*4280*/                   MOV R4, R4 ;
        /*4290*/                   MOV R5, R5 ;
        /*42a0*/                   LD.E.64.SYS R4, [R4] ;
        /*42b0*/                   MOV R3, R4 ;
        /*42c0*/                   MOV R6, R5 ;
        /*42d0*/                   MOV R0, R0 ;
        /*42e0*/                   MOV R4, R0 ;
        /*42f0*/                   MOV R5, RZ ;
        /*4300*/                   SHF.L.U64.HI R5, R4, 0x3, R5 ;
        /*4310*/                   SHF.L.U32 R4, R4, 0x3, RZ ;
        /*4320*/                   IADD3 R4, P0, R3, R4, RZ ;
        /*4330*/                   IADD3.X R5, R6, R5, RZ, P0, !PT ;
        /*4340*/                   MOV R4, R4 ;
        /*4350*/                   MOV R5, R5 ;
.L_x_194:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 94
        /*4360*/                   MOV R4, R4 ;
        /*4370*/                   MOV R5, R5 ;
        /*4380*/                   MOV R4, R4 ;
        /*4390*/                   MOV R5, R5 ;
        /*43a0*/                   LD.E.64.SYS R4, [R4] ;
        /*43b0*/                   MOV R12, R26 ;
        /*43c0*/                   MOV R13, R27 ;
        /*43d0*/                   IADD3 R6, P0, R16, 0x48, RZ ;
        /*43e0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*43f0*/                   MOV R6, R6 ;
        /*4400*/                   MOV R7, R7 ;
        /*4410*/                   MOV R6, R6 ;
        /*4420*/                   MOV R7, R7 ;
        /*4430*/                   ST.E.64.SYS [R6], R12 ;
        /*4440*/                   MOV R0, RZ ;
        /*4450*/                   MOV R0, R0 ;
        /*4460*/                   MOV R4, R4 ;
        /*4470*/                   MOV R5, R5 ;
        /*4480*/                   MOV R0, R0 ;
        /*4490*/                   BRA `(.L_x_102) ;
.L_x_102:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*44a0*/                   IADD3 R6, P0, R16, 0x48, RZ ;
        /*44b0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*44c0*/                   MOV R6, R6 ;
        /*44d0*/                   MOV R7, R7 ;
        /*44e0*/                   MOV R6, R6 ;
        /*44f0*/                   MOV R7, R7 ;
        /*4500*/                   LD.E.64.SYS R6, [R6] ;
        /*4510*/                   MOV R3, R6 ;
        /*4520*/                   MOV R6, R7 ;
        /*4530*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*4540*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*4550*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*4560*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*4570*/                   BMOV.32.CLEAR RZ, B0 ;
        /*4580*/                   BSSY B0, `(.L_x_103) ;
        /*4590*/               @P0 BRA `(.L_x_104) ;
        /*45a0*/                   BRA `(.L_x_105) ;
.L_x_105:
        /*45b0*/                   BRA `(.L_x_104) ;
.L_x_104:
        /*45c0*/                   BSYNC B0 ;
.L_x_103:
        /*45d0*/                   IADD3 R6, P0, R16, 0x48, RZ ;
        /*45e0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*45f0*/                   MOV R6, R6 ;
        /*4600*/                   MOV R7, R7 ;
        /*4610*/                   MOV R6, R6 ;
        /*4620*/                   MOV R7, R7 ;
        /*4630*/                   LD.E.64.SYS R6, [R6] ;
        /*4640*/                   MOV R3, R6 ;
        /*4650*/                   MOV R12, R7 ;
        /*4660*/                   MOV R0, R0 ;
        /*4670*/                   MOV R6, R0 ;
        /*4680*/                   MOV R7, RZ ;
        /*4690*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*46a0*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*46b0*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*46c0*/                   IADD3.X R7, R12, R7, RZ, P0, !PT ;
        /*46d0*/                   MOV R6, R6 ;
        /*46e0*/                   MOV R7, R7 ;
.L_x_195:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 94
        /*46f0*/                   MOV R6, R6 ;
        /*4700*/                   MOV R7, R7 ;
        /*4710*/                   MOV R6, R6 ;
        /*4720*/                   MOV R7, R7 ;
        /*4730*/                   LD.E.64.SYS R6, [R6] ;
        /*4740*/                   DMUL R4, R4, R6 ;
        /*4750*/                   MOV R12, R26 ;
        /*4760*/                   MOV R13, R27 ;
        /*4770*/                   IADD3 R6, P0, R16, 0x50, RZ ;
        /*4780*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4790*/                   MOV R6, R6 ;
        /*47a0*/                   MOV R7, R7 ;
        /*47b0*/                   MOV R6, R6 ;
        /*47c0*/                   MOV R7, R7 ;
        /*47d0*/                   ST.E.64.SYS [R6], R12 ;
        /*47e0*/                   MOV R0, 0x2 ;
        /*47f0*/                   MOV R0, R0 ;
        /*4800*/                   MOV R4, R4 ;
        /*4810*/                   MOV R5, R5 ;
        /*4820*/                   MOV R0, R0 ;
        /*4830*/                   BRA `(.L_x_106) ;
.L_x_106:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*4840*/                   IADD3 R6, P0, R16, 0x50, RZ ;
        /*4850*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4860*/                   MOV R6, R6 ;
        /*4870*/                   MOV R7, R7 ;
        /*4880*/                   MOV R6, R6 ;
        /*4890*/                   MOV R7, R7 ;
        /*48a0*/                   LD.E.64.SYS R6, [R6] ;
        /*48b0*/                   MOV R3, R6 ;
        /*48c0*/                   MOV R6, R7 ;
        /*48d0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*48e0*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*48f0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*4900*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*4910*/                   BMOV.32.CLEAR RZ, B0 ;
        /*4920*/                   BSSY B0, `(.L_x_107) ;
        /*4930*/               @P0 BRA `(.L_x_108) ;
        /*4940*/                   BRA `(.L_x_109) ;
.L_x_109:
        /*4950*/                   BRA `(.L_x_108) ;
.L_x_108:
        /*4960*/                   BSYNC B0 ;
.L_x_107:
        /*4970*/                   IADD3 R6, P0, R16, 0x50, RZ ;
        /*4980*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4990*/                   MOV R6, R6 ;
        /*49a0*/                   MOV R7, R7 ;
        /*49b0*/                   MOV R6, R6 ;
        /*49c0*/                   MOV R7, R7 ;
        /*49d0*/                   LD.E.64.SYS R6, [R6] ;
        /*49e0*/                   MOV R3, R6 ;
        /*49f0*/                   MOV R12, R7 ;
        /*4a00*/                   MOV R0, R0 ;
        /*4a10*/                   MOV R6, R0 ;
        /*4a20*/                   MOV R7, RZ ;
        /*4a30*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*4a40*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*4a50*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*4a60*/                   IADD3.X R7, R12, R7, RZ, P0, !PT ;
        /*4a70*/                   MOV R6, R6 ;
        /*4a80*/                   MOV R7, R7 ;
.L_x_196:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 94
        /*4a90*/                   MOV R6, R6 ;
        /*4aa0*/                   MOV R7, R7 ;
        /*4ab0*/                   MOV R6, R6 ;
        /*4ac0*/                   MOV R7, R7 ;
        /*4ad0*/                   LD.E.64.SYS R6, [R6] ;
        /*4ae0*/                   DMUL R6, R22, R6 ;
        /*4af0*/                   DADD R4, R4, R6 ;
        /*4b00*/                   DMUL R4, R4, R10 ;
        /*4b10*/                   MOV R12, R26 ;
        /*4b20*/                   MOV R13, R27 ;
        /*4b30*/                   IADD3 R6, P0, R16, 0x58, RZ ;
        /*4b40*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4b50*/                   MOV R6, R6 ;
        /*4b60*/                   MOV R7, R7 ;
        /*4b70*/                   MOV R6, R6 ;
        /*4b80*/                   MOV R7, R7 ;
        /*4b90*/                   ST.E.64.SYS [R6], R12 ;
        /*4ba0*/                   MOV R0, 0x1 ;
        /*4bb0*/                   MOV R0, R0 ;
        /*4bc0*/                   MOV R4, R4 ;
        /*4bd0*/                   MOV R5, R5 ;
        /*4be0*/                   MOV R0, R0 ;
        /*4bf0*/                   BRA `(.L_x_110) ;
.L_x_110:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*4c00*/                   IADD3 R6, P0, R16, 0x58, RZ ;
        /*4c10*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4c20*/                   MOV R6, R6 ;
        /*4c30*/                   MOV R7, R7 ;
        /*4c40*/                   MOV R6, R6 ;
        /*4c50*/                   MOV R7, R7 ;
        /*4c60*/                   LD.E.64.SYS R6, [R6] ;
        /*4c70*/                   MOV R3, R6 ;
        /*4c80*/                   MOV R6, R7 ;
        /*4c90*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*4ca0*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*4cb0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*4cc0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*4cd0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*4ce0*/                   BSSY B0, `(.L_x_111) ;
        /*4cf0*/               @P0 BRA `(.L_x_112) ;
        /*4d00*/                   BRA `(.L_x_113) ;
.L_x_113:
        /*4d10*/                   BRA `(.L_x_112) ;
.L_x_112:
        /*4d20*/                   BSYNC B0 ;
.L_x_111:
        /*4d30*/                   IADD3 R6, P0, R16, 0x58, RZ ;
        /*4d40*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4d50*/                   MOV R6, R6 ;
        /*4d60*/                   MOV R7, R7 ;
        /*4d70*/                   MOV R6, R6 ;
        /*4d80*/                   MOV R7, R7 ;
        /*4d90*/                   LD.E.64.SYS R6, [R6] ;
        /*4da0*/                   MOV R3, R6 ;
        /*4db0*/                   MOV R12, R7 ;
        /*4dc0*/                   MOV R0, R0 ;
        /*4dd0*/                   MOV R6, R0 ;
        /*4de0*/                   MOV R7, RZ ;
        /*4df0*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*4e00*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*4e10*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*4e20*/                   IADD3.X R7, R12, R7, RZ, P0, !PT ;
        /*4e30*/                   MOV R6, R6 ;
        /*4e40*/                   MOV R7, R7 ;
.L_x_197:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 94
        /*4e50*/                   MOV R6, R6 ;
        /*4e60*/                   MOV R7, R7 ;
        /*4e70*/                   MOV R6, R6 ;
        /*4e80*/                   MOV R7, R7 ;
        /*4e90*/                   LD.E.64.SYS R6, [R6] ;
        /*4ea0*/                   DMUL R6, R8, R6 ;
        /*4eb0*/                   DADD R4, R4, R6 ;
        /*4ec0*/                   IADD3 R6, P0, R16, 0x88, RZ ;
        /*4ed0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4ee0*/                   MOV R6, R6 ;
        /*4ef0*/                   MOV R7, R7 ;
        /*4f00*/                   MOV R6, R6 ;
        /*4f10*/                   MOV R7, R7 ;
        /*4f20*/                   ST.E.64.SYS [R6], R4 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 92
        /*4f30*/                   DADD R4, -RZ, -R22 ;
        /*4f40*/                   MOV R4, R4 ;
        /*4f50*/                   MOV R5, R5 ;
        /*4f60*/                   MOV R12, R26 ;
        /*4f70*/                   MOV R13, R27 ;
        /*4f80*/                   IADD3 R6, P0, R16, 0x60, RZ ;
        /*4f90*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4fa0*/                   MOV R6, R6 ;
        /*4fb0*/                   MOV R7, R7 ;
        /*4fc0*/                   MOV R6, R6 ;
        /*4fd0*/                   MOV R7, R7 ;
        /*4fe0*/                   ST.E.64.SYS [R6], R12 ;
        /*4ff0*/                   MOV R0, RZ ;
        /*5000*/                   MOV R0, R0 ;
        /*5010*/                   MOV R4, R4 ;
        /*5020*/                   MOV R5, R5 ;
        /*5030*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 95
        /*5040*/                   BRA `(.L_x_114) ;
.L_x_114:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*5050*/                   IADD3 R6, P0, R16, 0x60, RZ ;
        /*5060*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*5070*/                   MOV R6, R6 ;
        /*5080*/                   MOV R7, R7 ;
        /*5090*/                   MOV R6, R6 ;
        /*50a0*/                   MOV R7, R7 ;
        /*50b0*/                   LD.E.64.SYS R6, [R6] ;
        /*50c0*/                   MOV R3, R6 ;
        /*50d0*/                   MOV R6, R7 ;
        /*50e0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*50f0*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*5100*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*5110*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*5120*/                   BMOV.32.CLEAR RZ, B0 ;
        /*5130*/                   BSSY B0, `(.L_x_115) ;
        /*5140*/               @P0 BRA `(.L_x_116) ;
        /*5150*/                   BRA `(.L_x_117) ;
.L_x_117:
        /*5160*/                   BRA `(.L_x_116) ;
.L_x_116:
        /*5170*/                   BSYNC B0 ;
.L_x_115:
        /*5180*/                   IADD3 R6, P0, R16, 0x60, RZ ;
        /*5190*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*51a0*/                   MOV R6, R6 ;
        /*51b0*/                   MOV R7, R7 ;
        /*51c0*/                   MOV R6, R6 ;
        /*51d0*/                   MOV R7, R7 ;
        /*51e0*/                   LD.E.64.SYS R6, [R6] ;
        /*51f0*/                   MOV R3, R6 ;
        /*5200*/                   MOV R12, R7 ;
        /*5210*/                   MOV R0, R0 ;
        /*5220*/                   MOV R6, R0 ;
        /*5230*/                   MOV R7, RZ ;
        /*5240*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*5250*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*5260*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*5270*/                   IADD3.X R7, R12, R7, RZ, P0, !PT ;
        /*5280*/                   MOV R6, R6 ;
        /*5290*/                   MOV R7, R7 ;
.L_x_198:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 95
        /*52a0*/                   MOV R6, R6 ;
        /*52b0*/                   MOV R7, R7 ;
        /*52c0*/                   MOV R6, R6 ;
        /*52d0*/                   MOV R7, R7 ;
        /*52e0*/                   LD.E.64.SYS R6, [R6] ;
        /*52f0*/                   DMUL R4, R4, R6 ;
        /*5300*/                   MOV R6, R24 ;
        /*5310*/                   MOV R7, R25 ;
        /*5320*/                   IADD3 R12, P0, R16, 0x68, RZ ;
        /*5330*/                   IADD3.X R13, R2, RZ, RZ, P0, !PT ;
        /*5340*/                   MOV R12, R12 ;
        /*5350*/                   MOV R13, R13 ;
        /*5360*/                   MOV R12, R12 ;
        /*5370*/                   MOV R13, R13 ;
        /*5380*/                   ST.E.64.SYS [R12], R6 ;
        /*5390*/                   MOV R0, 0x2 ;
        /*53a0*/                   MOV R0, R0 ;
        /*53b0*/                   MOV R4, R4 ;
        /*53c0*/                   MOV R5, R5 ;
        /*53d0*/                   MOV R0, R0 ;
        /*53e0*/                   BRA `(.L_x_118) ;
.L_x_118:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*53f0*/                   IADD3 R6, P0, R16, 0x68, RZ ;
        /*5400*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*5410*/                   MOV R6, R6 ;
        /*5420*/                   MOV R7, R7 ;
        /*5430*/                   MOV R6, R6 ;
        /*5440*/                   MOV R7, R7 ;
        /*5450*/                   LD.E.64.SYS R6, [R6] ;
        /*5460*/                   MOV R3, R6 ;
        /*5470*/                   MOV R6, R7 ;
        /*5480*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*5490*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*54a0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*54b0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*54c0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*54d0*/                   BSSY B0, `(.L_x_119) ;
        /*54e0*/               @P0 BRA `(.L_x_120) ;
        /*54f0*/                   BRA `(.L_x_121) ;
.L_x_121:
        /*5500*/                   BRA `(.L_x_120) ;
.L_x_120:
        /*5510*/                   BSYNC B0 ;
.L_x_119:
        /*5520*/                   IADD3 R6, P0, R16, 0x68, RZ ;
        /*5530*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*5540*/                   MOV R6, R6 ;
        /*5550*/                   MOV R7, R7 ;
        /*5560*/                   MOV R6, R6 ;
        /*5570*/                   MOV R7, R7 ;
        /*5580*/                   LD.E.64.SYS R6, [R6] ;
        /*5590*/                   MOV R3, R6 ;
        /*55a0*/                   MOV R12, R7 ;
        /*55b0*/                   MOV R0, R0 ;
        /*55c0*/                   MOV R6, R0 ;
        /*55d0*/                   MOV R7, RZ ;
        /*55e0*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*55f0*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*5600*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*5610*/                   IADD3.X R7, R12, R7, RZ, P0, !PT ;
        /*5620*/                   MOV R6, R6 ;
        /*5630*/                   MOV R7, R7 ;
.L_x_199:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 95
        /*5640*/                   MOV R6, R6 ;
        /*5650*/                   MOV R7, R7 ;
        /*5660*/                   MOV R6, R6 ;
        /*5670*/                   MOV R7, R7 ;
        /*5680*/                   LD.E.64.SYS R6, [R6] ;
        /*5690*/                   MOV R12, R26 ;
        /*56a0*/                   MOV R13, R27 ;
        /*56b0*/                   IADD3 R14, P0, R16, 0x70, RZ ;
        /*56c0*/                   IADD3.X R15, R2, RZ, RZ, P0, !PT ;
        /*56d0*/                   MOV R14, R14 ;
        /*56e0*/                   MOV R15, R15 ;
        /*56f0*/                   MOV R14, R14 ;
        /*5700*/                   MOV R15, R15 ;
        /*5710*/                   ST.E.64.SYS [R14], R12 ;
        /*5720*/                   MOV R0, 0x2 ;
        /*5730*/                   MOV R0, R0 ;
        /*5740*/                   MOV R6, R6 ;
        /*5750*/                   MOV R7, R7 ;
        /*5760*/                   MOV R0, R0 ;
        /*5770*/                   BRA `(.L_x_122) ;
.L_x_122:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*5780*/                   IADD3 R12, P0, R16, 0x70, RZ ;
        /*5790*/                   IADD3.X R13, R2, RZ, RZ, P0, !PT ;
        /*57a0*/                   MOV R12, R12 ;
        /*57b0*/                   MOV R13, R13 ;
        /*57c0*/                   MOV R12, R12 ;
        /*57d0*/                   MOV R13, R13 ;
        /*57e0*/                   LD.E.64.SYS R12, [R12] ;
        /*57f0*/                   MOV R3, R12 ;
        /*5800*/                   MOV R12, R13 ;
        /*5810*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*5820*/                   ISETP.NE.AND.EX P0, PT, R12, RZ, PT, P0 ;
        /*5830*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*5840*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*5850*/                   BMOV.32.CLEAR RZ, B0 ;
        /*5860*/                   BSSY B0, `(.L_x_123) ;
        /*5870*/               @P0 BRA `(.L_x_124) ;
        /*5880*/                   BRA `(.L_x_125) ;
.L_x_125:
        /*5890*/                   BRA `(.L_x_124) ;
.L_x_124:
        /*58a0*/                   BSYNC B0 ;
.L_x_123:
        /*58b0*/                   IADD3 R12, P0, R16, 0x70, RZ ;
        /*58c0*/                   IADD3.X R13, R2, RZ, RZ, P0, !PT ;
        /*58d0*/                   MOV R12, R12 ;
        /*58e0*/                   MOV R13, R13 ;
        /*58f0*/                   MOV R12, R12 ;
        /*5900*/                   MOV R13, R13 ;
        /*5910*/                   LD.E.64.SYS R12, [R12] ;
        /*5920*/                   MOV R3, R12 ;
        /*5930*/                   MOV R14, R13 ;
        /*5940*/                   MOV R0, R0 ;
        /*5950*/                   MOV R12, R0 ;
        /*5960*/                   MOV R13, RZ ;
        /*5970*/                   SHF.L.U64.HI R13, R12, 0x3, R13 ;
        /*5980*/                   SHF.L.U32 R12, R12, 0x3, RZ ;
        /*5990*/                   IADD3 R12, P0, R3, R12, RZ ;
        /*59a0*/                   IADD3.X R13, R14, R13, RZ, P0, !PT ;
        /*59b0*/                   MOV R12, R12 ;
        /*59c0*/                   MOV R13, R13 ;
.L_x_200:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 95
        /*59d0*/                   MOV R12, R12 ;
        /*59e0*/                   MOV R13, R13 ;
        /*59f0*/                   MOV R12, R12 ;
        /*5a00*/                   MOV R13, R13 ;
        /*5a10*/                   LD.E.64.SYS R12, [R12] ;
        /*5a20*/                   DMUL R6, R6, R12 ;
        /*5a30*/                   DADD R4, R4, R6 ;
        /*5a40*/                   IADD3 R6, P0, R16, 0x90, RZ ;
        /*5a50*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*5a60*/                   MOV R6, R6 ;
        /*5a70*/                   MOV R7, R7 ;
        /*5a80*/                   MOV R6, R6 ;
        /*5a90*/                   MOV R7, R7 ;
        /*5aa0*/                   ST.E.64.SYS [R6], R4 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 97
        /*5ab0*/                   IADD3 R4, P0, R16, 0x90, RZ ;
        /*5ac0*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*5ad0*/                   MOV R4, R4 ;
        /*5ae0*/                   MOV R5, R5 ;
        /*5af0*/                   MOV R4, R4 ;
        /*5b00*/                   MOV R5, R5 ;
        /*5b10*/                   LD.E.64.SYS R4, [R4] ;
        /*5b20*/                   MOV R0, R4 ;
        /*5b30*/                   MOV R3, R5 ;
        /*5b40*/                   IADD3 R4, P0, R16, 0x88, RZ ;
        /*5b50*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*5b60*/                   MOV R4, R4 ;
        /*5b70*/                   MOV R5, R5 ;
        /*5b80*/                   MOV R4, R4 ;
        /*5b90*/                   MOV R5, R5 ;
        /*5ba0*/                   LD.E.64.SYS R4, [R4] ;
        /*5bb0*/                   MOV R6, R4 ;
        /*5bc0*/                   MOV R12, R5 ;
        /*5bd0*/                   IADD3 R4, P0, R16, 0x80, RZ ;
        /*5be0*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*5bf0*/                   MOV R4, R4 ;
        /*5c00*/                   MOV R5, R5 ;
        /*5c10*/                   MOV R4, R4 ;
        /*5c20*/                   MOV R5, R5 ;
        /*5c30*/                   LD.E.64.SYS R4, [R4] ;
        /*5c40*/                   MOV R7, R4 ;
        /*5c50*/                   MOV R5, R5 ;
        /*5c60*/                   MOV R4, R7 ;
        /*5c70*/                   MOV R5, R5 ;
        /*5c80*/                   MOV R6, R6 ;
        /*5c90*/                   MOV R7, R12 ;
        /*5ca0*/                   MOV R0, R0 ;
        /*5cb0*/                   MOV R3, R3 ;
        /*5cc0*/                   BRA `(.L_x_126) ;
.L_x_126:
        /*5cd0*/                   MOV R4, R4 ;
        /*5ce0*/                   MOV R5, R5 ;
        /*5cf0*/                   MOV R6, R6 ;
        /*5d00*/                   MOV R7, R7 ;
        /*5d10*/                   MOV R8, R0 ;
        /*5d20*/                   MOV R9, R3 ;
        /*5d30*/                   BMOV.32 B6, R18 ;
        /*5d40*/                   BMOV.32 B7, R19 ;
        /*5d50*/                   LDL R2, [R1+0x98] ;
        /*5d60*/                   LDL R16, [R1+0x9c] ;
        /*5d70*/                   LDL R17, [R1+0xa0] ;
        /*5d80*/                   LDL R18, [R1+0xa4] ;
        /*5d90*/                   LDL R19, [R1+0xa8] ;
        /*5da0*/                   LDL R20, [R1+0xac] ;
        /*5db0*/                   LDL R21, [R1+0xb0] ;
        /*5dc0*/                   LDL R22, [R1+0xb4] ;
        /*5dd0*/                   LDL R23, [R1+0xb8] ;
        /*5de0*/                   LDL R24, [R1+0xbc] ;
        /*5df0*/                   LDL R25, [R1+0xc0] ;
        /*5e00*/                   LDL R26, [R1+0xc4] ;
        /*5e10*/                   LDL R27, [R1+0xc8] ;
        /*5e20*/                   LDL R28, [R1+0xcc] ;
        /*5e30*/                   LDL R29, [R1+0xd0] ;
        /*5e40*/                   LDL R30, [R1+0xd4] ;
        /*5e50*/                   LDL R31, [R1+0xd8] ;
        /*5e60*/                   IADD3 R1, R1, 0xe0, RZ ;
        /*5e70*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_127:
        /*5e80*/                   BRA `(.L_x_127);
        /*5e90*/                   NOP;
        /*5ea0*/                   NOP;
        /*5eb0*/                   NOP;
        /*5ec0*/                   NOP;
        /*5ed0*/                   NOP;
        /*5ee0*/                   NOP;
        /*5ef0*/                   NOP;
.L_x_147:


//--------------------- .text._Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_ --------------------------
	.section	.text._Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
        .global         _Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_
        .type           _Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_,@function
        .size           _Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_,(.L_x_201 - _Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_)
        .other          _Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_,@"STO_CUDA_ENTRY STV_DEFAULT"
_Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_:
.text._Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 100
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
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 105
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
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-approx.cu", line 106
        /*0a00*/                   MEMBAR.SC.VC ;
        /*0a10*/                   ERRBAR ;
        /*0a20*/                   EXIT ;
        /*0a30*/                   MEMBAR.SC.VC ;
        /*0a40*/                   ERRBAR ;
        /*0a50*/                   EXIT ;
.L_x_128:
        /*0a60*/                   BRA `(.L_x_128);
        /*0a70*/                   NOP;
.L_x_201:


//--------------------- .text.sqrt                --------------------------
	.section	.text.sqrt,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text.sqrt:
        .type           sqrt,@function
        .size           sqrt,(.L_x_206 - sqrt)
sqrt:
        /*0000*/                   IADD3 R1, R1, -0x18, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_129) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_129:
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
        /*0550*/                   BSSY B6, `(.L_x_130) ;
        /*0560*/               @P0 BRA `(.L_x_131) ;
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
.L_x_131:
        /*0670*/                   BSYNC B6 ;
.L_x_130:
        /*0680*/                   MOV R14, R14 ;
        /*0690*/                   MOV R15, R15 ;
        /*06a0*/                   MOV R14, R14 ;
        /*06b0*/                   MOV R15, R15 ;
        /*06c0*/                   MOV R4, R14 ;
        /*06d0*/                   MOV R5, R15 ;
        /*06e0*/                   MOV R4, R4 ;
        /*06f0*/                   MOV R5, R5 ;
        /*0700*/                   BRA `(.L_x_132) ;
.L_x_132:
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
.L_x_133:
        /*07b0*/                   BRA `(.L_x_133);
        /*07c0*/                   NOP;
        /*07d0*/                   NOP;
        /*07e0*/                   NOP;
        /*07f0*/                   NOP;
.L_x_206:


//--------------------- .text.__frsqrt_rn         --------------------------
	.section	.text.__frsqrt_rn,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text.__frsqrt_rn:
        .type           __frsqrt_rn,@function
        .size           __frsqrt_rn,(.L_x_204 - __frsqrt_rn)
__frsqrt_rn:
        /*0000*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0010*/                   MOV R4, R4 ;
        /*0020*/                   MOV R4, R4 ;
        /*0030*/                   MOV R0, R4 ;
        /*0040*/                   IADD3 R3, R0, -0x800000, RZ ;
        /*0050*/                   ISETP.LT.U32.AND P0, PT, R3, 0x7f000000, PT ;
        /*0060*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0070*/                   MOV R4, R4 ;
        /*0080*/                   MOV R0, R0 ;
        /*0090*/                   BMOV.32.CLEAR RZ, B0 ;
        /*00a0*/                   BSSY B0, `(.L_x_134) ;
        /*00b0*/               @P0 BRA `(.L_x_135) ;
        /*00c0*/                   BRA `(.L_x_136) ;
.L_x_136:
        /*00d0*/                   MOV R4, R4 ;
        /*00e0*/                   LOP3.LUT R4, R4, 0xffffff, RZ, 0xc0, !PT ;
        /*00f0*/                   LOP3.LUT R4, R4, 0x3f000000, RZ, 0xfc, !PT ;
        /*0100*/                   MOV R3, R4 ;
        /*0110*/                   IADD3 R0, R4, -R0, RZ ;
        /*0120*/                   MUFU.RSQ R4, R3 ;
        /*0130*/                   FMUL.FTZ R5, R4, R4 ;
        /*0140*/                   FADD.FTZ R6, -RZ, -R5 ;
        /*0150*/                   FFMA.FTZ R6, R4, R4, R6 ;
        /*0160*/                   FADD.FTZ R7, -RZ, -R3 ;
        /*0170*/                   FADD.FTZ R3, -RZ, -R3 ;
        /*0180*/                   MOV R8, 0x3f800000 ;
        /*0190*/                   FFMA.FTZ R3, R5, R3, R8 ;
        /*01a0*/                   FFMA.FTZ R3, R6, R7, R3 ;
        /*01b0*/                   MOV R5, 0x3f000000 ;
        /*01c0*/                   MOV R6, 0x3ec00000 ;
        /*01d0*/                   FFMA.FTZ R5, R6, R3, R5 ;
        /*01e0*/                   FMUL.FTZ R3, R3, R4 ;
        /*01f0*/                   FFMA.FTZ R3, R5, R3, R4 ;
        /*0200*/                   SHF.R.S32.HI R0, RZ, 0x1, R0 ;
        /*0210*/                   MOV R3, R3 ;
        /*0220*/                   IADD3 R0, R3, R0, RZ ;
        /*0230*/                   MOV R0, R0 ;
        /*0240*/                   MOV R0, R0 ;
        /*0250*/                   MOV R0, R0 ;
        /*0260*/                   BRA `(.L_x_137) ;
.L_x_135:
        /*0270*/                   MUFU.RSQ R4, R4 ;
        /*0280*/                   MOV R4, R4 ;
        /*0290*/                   MOV R0, R4 ;
        /*02a0*/                   BRA `(.L_x_137) ;
.L_x_137:
        /*02b0*/                   BSYNC B0 ;
.L_x_134:
        /*02c0*/                   MOV R0, R0 ;
        /*02d0*/                   MOV R4, R0 ;
        /*02e0*/                   BRA `(.L_x_138) ;
.L_x_138:
        /*02f0*/                   MOV R4, R4 ;
        /*0300*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_139:
        /*0310*/                   BRA `(.L_x_139);
        /*0320*/                   NOP;
        /*0330*/                   NOP;
        /*0340*/                   NOP;
        /*0350*/                   NOP;
        /*0360*/                   NOP;
        /*0370*/                   NOP;
.L_x_204:
