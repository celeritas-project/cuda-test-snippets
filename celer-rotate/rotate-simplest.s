	.headerflags	@"EF_CUDA_TEXMODE_UNIFIED EF_CUDA_64BIT_ADDRESS EF_CUDA_SM70 EF_CUDA_VIRTUAL_SM(EF_CUDA_SM70)"
	.elftype	@"ET_REL"


//--------------------- .text.__cuda_sm20_dblrcp_rn_slowpath_v3 --------------------------
	.section	.text.__cuda_sm20_dblrcp_rn_slowpath_v3,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text.__cuda_sm20_dblrcp_rn_slowpath_v3:
        .weak           __cuda_sm20_dblrcp_rn_slowpath_v3
        .type           __cuda_sm20_dblrcp_rn_slowpath_v3,@function
        .size           __cuda_sm20_dblrcp_rn_slowpath_v3,(.L_x_188 - __cuda_sm20_dblrcp_rn_slowpath_v3)
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
        /*0210*/                   BSSY B0, `(.L_x_9) ;
        /*0220*/               @P0 BRA `(.L_x_10) ;
        /*0230*/                   IADD3 R6, R8, -0x1, RZ ;
        /*0240*/                   IADD3 R7, R10, -0x1, RZ ;
        /*0250*/                   ISETP.LT.U32.AND P0, PT, R6, R7, PT ;
        /*0260*/               @P0 BRA `(.L_x_11) ;
        /*0270*/                   LOP3.LUT R4, R10, R3, RZ, 0x3c, !PT ;
        /*0280*/                   MOV R5, RZ ;
        /*0290*/                   LOP3.LUT R5, R5, R4, RZ, 0x3c, !PT ;
        /*02a0*/                   LOP3.LUT R4, R5, R4, RZ, 0x3c, !PT ;
        /*02b0*/                   LOP3.LUT R5, R5, R4, RZ, 0x3c, !PT ;
        /*02c0*/                   MOV R4, R4 ;
        /*02d0*/                   MOV R5, R5 ;
        /*02e0*/                   BRA `(.L_x_12) ;
.L_x_11:
        /*02f0*/                   ISETP.LT.U32.AND P0, PT, R8, 0x1000001, PT ;
        /*0300*/               @P0 BRA `(.L_x_13) ;
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
        /*0570*/                   BRA `(.L_x_12) ;
.L_x_13:
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
        /*0760*/                   BRA `(.L_x_12) ;
.L_x_10:
        /*0770*/                   LOP3.LUT R4, R3, 0x80000, RZ, 0xfc, !PT ;
        /*0780*/                   MOV R5, R4 ;
        /*0790*/                   MOV R4, R9 ;
        /*07a0*/                   MOV R4, R4 ;
        /*07b0*/                   MOV R5, R5 ;
        /*07c0*/                   BRA `(.L_x_12) ;
.L_x_12:
        /*07d0*/                   BSYNC B0 ;
.L_x_9:
        /*07e0*/                   MOV R4, R4 ;
        /*07f0*/                   MOV R5, R5 ;
        /*0800*/                   MOV R0, R4 ;
        /*0810*/                   MOV R5, R5 ;
        /*0820*/                   MOV R4, R0 ;
        /*0830*/                   MOV R5, R5 ;
        /*0840*/                   MOV R4, R4 ;
        /*0850*/                   MOV R5, R5 ;
        /*0860*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_14:
        /*0870*/                   BRA `(.L_x_14);
.L_x_188:


//--------------------- .text.__cuda_sm20_dsqrt_rn_f64_mediumpath_v1 --------------------------
	.section	.text.__cuda_sm20_dsqrt_rn_f64_mediumpath_v1,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text.__cuda_sm20_dsqrt_rn_f64_mediumpath_v1:
        .weak           __cuda_sm20_dsqrt_rn_f64_mediumpath_v1
        .type           __cuda_sm20_dsqrt_rn_f64_mediumpath_v1,@function
        .size           __cuda_sm20_dsqrt_rn_f64_mediumpath_v1,(.L_x_189 - __cuda_sm20_dsqrt_rn_f64_mediumpath_v1)
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
        /*0260*/                   BSSY B0, `(.L_x_15) ;
        /*0270*/               @P0 BRA `(.L_x_16) ;
        /*0280*/                   BRA `(.L_x_17) ;
.L_x_16:
        /*0290*/                   DSETP.EQU.AND P0, PT, R4, RZ, PT ;
        /*02a0*/               @P0 BRA `(.L_x_18) ;
        /*02b0*/                   MOV R0, R5 ;
        /*02c0*/                   MOV R0, R0 ;
        /*02d0*/                   ISETP.LT.AND P0, PT, R0, RZ, PT ;
        /*02e0*/                   MOV R0, R0 ;
        /*02f0*/               @P0 BRA `(.L_x_19) ;
        /*0300*/                   ISETP.GT.AND P0, PT, R0, 0x7fefffff, PT ;
        /*0310*/               @P0 BRA `(.L_x_18) ;
        /*0320*/                   BRA `(.L_x_20) ;
.L_x_18:
        /*0330*/                   DADD R4, R4, R4 ;
        /*0340*/                   MOV R4, R4 ;
        /*0350*/                   MOV R5, R5 ;
        /*0360*/                   BRA `(.L_x_21) ;
.L_x_17:
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
        /*04f0*/                   BRA `(.L_x_21) ;
.L_x_21:
        /*0500*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0510*/                   BSYNC B0 ;
.L_x_15:
        /*0520*/                   MOV R4, R4 ;
        /*0530*/                   MOV R5, R5 ;
        /*0540*/                   MOV R4, R4 ;
        /*0550*/                   MOV R5, R5 ;
        /*0560*/                   MOV R0, R4 ;
        /*0570*/                   MOV R5, R5 ;
        /*0580*/                   BRA `(.L_x_22) ;
.L_x_19:
        /*0590*/                   MOV R4, 0xfff80000 ;
        /*05a0*/                   MOV R5, RZ ;
        /*05b0*/                   LOP3.LUT R5, R5, R4, RZ, 0x3c, !PT ;
        /*05c0*/                   LOP3.LUT R4, R5, R4, RZ, 0x3c, !PT ;
        /*05d0*/                   LOP3.LUT R5, R5, R4, RZ, 0x3c, !PT ;
        /*05e0*/                   MOV R4, R4 ;
        /*05f0*/                   MOV R5, R5 ;
        /*0600*/                   BRA `(.L_x_21) ;
.L_x_20:
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
        /*09b0*/                   BRA `(.L_x_21) ;
.L_x_22:
        /*09c0*/                   MOV R4, R0 ;
        /*09d0*/                   MOV R5, R5 ;
        /*09e0*/                   MOV R4, R4 ;
        /*09f0*/                   MOV R5, R5 ;
        /*0a00*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_23:
        /*0a10*/                   BRA `(.L_x_23);
        /*0a20*/                   NOP;
        /*0a30*/                   NOP;
        /*0a40*/                   NOP;
        /*0a50*/                   NOP;
        /*0a60*/                   NOP;
        /*0a70*/                   NOP;
.L_x_189:


//--------------------- .text._ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE --------------------------
	.section	.text._ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text._ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE:
        .weak           _ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE
        .type           _ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE,@function
        .size           _ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE,(.L_x_178 - _ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE)
_ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 137
        /*0000*/                   IADD3 R1, R1, -0x38, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_24) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_24:
        /*0050*/                   STL [R1+0x30], R21 ;
        /*0060*/                   STL [R1+0x2c], R20 ;
        /*0070*/                   STL [R1+0x28], R19 ;
        /*0080*/                   STL [R1+0x24], R18 ;
        /*0090*/                   STL [R1+0x20], R17 ;
        /*00a0*/                   STL [R1+0x1c], R16 ;
        /*00b0*/                   STL [R1+0x18], R2 ;
        /*00c0*/                   BMOV.32.CLEAR R19, B6 ;
        /*00d0*/                   MOV R5, R5 ;
        /*00e0*/                   MOV R4, R4 ;
        /*00f0*/                   IADD3 R0, R1, RZ, RZ ;
        /*0100*/                   MOV R0, R0 ;
        /*0110*/                   MOV R6, R0 ;
        /*0120*/                   MOV R7, RZ ;
        /*0130*/                   MOV R0, R6 ;
        /*0140*/                   MOV R7, R7 ;
        /*0150*/                   MOV R6, R0 ;
        /*0160*/                   MOV R7, R7 ;
        /*0170*/                   MOV R0, c[0x0][0x20] ;
        /*0180*/                   MOV R3, c[0x0][0x24] ;
        /*0190*/                   IADD3 R0, P0, R6, R0, RZ ;
        /*01a0*/                   IADD3.X R3, R7, R3, RZ, P0, !PT ;
        /*01b0*/                   MOV R4, R4 ;
        /*01c0*/                   MOV R5, R5 ;
        /*01d0*/                   MOV R18, R0 ;
        /*01e0*/                   MOV R17, R3 ;
        /*01f0*/                   MOV R0, R4 ;
        /*0200*/                   MOV R4, R5 ;
        /*0210*/                   MOV R16, R0 ;
        /*0220*/                   MOV R2, R4 ;
.L_x_179:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 139
        /*0230*/                   BRA `(.L_x_25) ;
.L_x_25:
        /*0240*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0250*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0 ;
        /*0260*/               @P0 BRA `(.L_x_26) ;
        /*0270*/                   BRA `(.L_x_27) ;
.L_x_27:
        /*0280*/                   BRA `(.L_x_26) ;
.L_x_26:
        /*0290*/                   BRA `(.L_x_28) ;
.L_x_28:
        /*02a0*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0 ;
        /*02b0*/               @P0 BRA `(.L_x_25) ;
        /*02c0*/                   BRA `(.L_x_29) ;
.L_x_29:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 140
        /*02d0*/                   MOV R4, R16 ;
        /*02e0*/                   MOV R5, R2 ;
        /*02f0*/                   MOV R20, 32@lo((_ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE + .L_x_0@srel)) ;
        /*0300*/                   MOV R21, 32@hi((_ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE + .L_x_0@srel)) ;
        /*0310*/                   CALL.ABS.NOINC `(_ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE) ;
.L_x_0:
        /*0320*/                   MOV R4, R4 ;
        /*0330*/                   MOV R5, R5 ;
        /*0340*/                   MOV R4, R4 ;
        /*0350*/                   MOV R5, R5 ;
        /*0360*/                   MOV R4, R4 ;
        /*0370*/                   MOV R5, R5 ;
        /*0380*/                   MOV R0, R5 ;
        /*0390*/                   MOV R0, R0 ;
        /*03a0*/                   IADD3 R3, R0, 0x300402, RZ ;
        /*03b0*/                   MOV R3, R3 ;
        /*03c0*/                   MOV R6, R4 ;
        /*03d0*/                   MOV R7, R5 ;
        /*03e0*/                   MOV R6, RZ ;
        /*03f0*/                   MUFU.RCP64H R7, R7 ;
        /*0400*/                   MOV R6, R6 ;
        /*0410*/                   MOV R6, R6 ;
        /*0420*/                   MOV R7, R7 ;
        /*0430*/                   MOV R7, R7 ;
        /*0440*/                   LOP3.LUT R6, R6, R3, RZ, 0xfc, !PT ;
        /*0450*/                   MOV R10, R6 ;
        /*0460*/                   MOV R11, R7 ;
        /*0470*/                   DADD R6, -RZ, -R4 ;
        /*0480*/                   MOV R6, R6 ;
        /*0490*/                   MOV R7, R7 ;
        /*04a0*/                   MOV R8, 0x0 ;
        /*04b0*/                   MOV R9, 0x3ff00000 ;
        /*04c0*/                   DFMA R12, R6, R10, R8 ;
        /*04d0*/                   DFMA R12, R12, R12, R12 ;
        /*04e0*/                   DFMA R12, R12, R10, R10 ;
        /*04f0*/                   DFMA R6, R6, R12, R8 ;
        /*0500*/                   DFMA R6, R6, R12, R12 ;
        /*0510*/                   FADD R3, -RZ, |R3| ;
        /*0520*/                   MOV R3, R3 ;
        /*0530*/                   FSETP.GEU.AND P0, PT, R3, 5.8789094863358348022e-39, PT ;
        /*0540*/                   MOV R8, R4 ;
        /*0550*/                   MOV R9, R5 ;
        /*0560*/                   MOV R4, R8 ;
        /*0570*/                   MOV R5, R9 ;
        /*0580*/                   MOV R0, R0 ;
        /*0590*/                   MOV R6, R6 ;
        /*05a0*/                   MOV R7, R7 ;
        /*05b0*/                   BMOV.32.CLEAR RZ, B6 ;
        /*05c0*/                   BSSY B6, `(.L_x_30) ;
        /*05d0*/               @P0 BRA `(.L_x_31) ;
        /*05e0*/                   LOP3.LUT R0, R0, 0x7fffffff, RZ, 0xc0, !PT ;
        /*05f0*/                   IADD3 R6, R0, -0x100000, RZ ;
        /*0600*/                   MOV R4, R4 ;
        /*0610*/                   MOV R5, R5 ;
        /*0620*/                   MOV R6, R6 ;
        /*0630*/                   MOV R20, 32@lo((_ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE + .L_x_1@srel)) ;
        /*0640*/                   MOV R21, 32@hi((_ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE + .L_x_1@srel)) ;
        /*0650*/                   CALL.ABS.NOINC `(__cuda_sm20_dblrcp_rn_slowpath_v3) ;
.L_x_1:
        /*0660*/                   MOV R4, R4 ;
        /*0670*/                   MOV R5, R5 ;
        /*0680*/                   MOV R6, R4 ;
        /*0690*/                   MOV R7, R5 ;
.L_x_31:
        /*06a0*/                   BSYNC B6 ;
.L_x_30:
        /*06b0*/                   MOV R6, R6 ;
        /*06c0*/                   MOV R7, R7 ;
        /*06d0*/                   MOV R6, R6 ;
        /*06e0*/                   MOV R7, R7 ;
        /*06f0*/                   MOV R4, R6 ;
        /*0700*/                   MOV R5, R7 ;
        /*0710*/                   MOV R6, R16 ;
        /*0720*/                   MOV R7, R2 ;
        /*0730*/                   IADD3 R8, P0, R18, 0x10, RZ ;
        /*0740*/                   IADD3.X R9, R17, RZ, RZ, P0, !PT ;
        /*0750*/                   MOV R8, R8 ;
        /*0760*/                   MOV R9, R9 ;
        /*0770*/                   MOV R6, R6 ;
        /*0780*/                   MOV R7, R7 ;
        /*0790*/                   MOV R8, R8 ;
        /*07a0*/                   MOV R9, R9 ;
        /*07b0*/                   ST.E.64.SYS [R8], R6 ;
        /*07c0*/                   MOV R0, RZ ;
        /*07d0*/                   MOV R0, R0 ;
        /*07e0*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 141
        /*07f0*/                   BRA `(.L_x_32) ;
.L_x_32:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 50
        /*0800*/                   IADD3 R6, P0, R18, 0x10, RZ ;
        /*0810*/                   IADD3.X R7, R17, RZ, RZ, P0, !PT ;
        /*0820*/                   MOV R6, R6 ;
        /*0830*/                   MOV R7, R7 ;
        /*0840*/                   MOV R6, R6 ;
        /*0850*/                   MOV R7, R7 ;
        /*0860*/                   LD.E.64.SYS R6, [R6] ;
        /*0870*/                   MOV R3, R6 ;
        /*0880*/                   MOV R6, R7 ;
        /*0890*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*08a0*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*08b0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*08c0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*08d0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*08e0*/                   BSSY B0, `(.L_x_33) ;
        /*08f0*/               @P0 BRA `(.L_x_34) ;
        /*0900*/                   BRA `(.L_x_35) ;
.L_x_35:
        /*0910*/                   BRA `(.L_x_34) ;
.L_x_34:
        /*0920*/                   BSYNC B0 ;
.L_x_33:
        /*0930*/                   IADD3 R6, P0, R18, 0x10, RZ ;
        /*0940*/                   IADD3.X R7, R17, RZ, RZ, P0, !PT ;
        /*0950*/                   MOV R6, R6 ;
        /*0960*/                   MOV R7, R7 ;
        /*0970*/                   MOV R6, R6 ;
        /*0980*/                   MOV R7, R7 ;
        /*0990*/                   LD.E.64.SYS R6, [R6] ;
        /*09a0*/                   MOV R3, R6 ;
        /*09b0*/                   MOV R6, R7 ;
        /*09c0*/                   MOV R0, R0 ;
        /*09d0*/                   MOV R8, R0 ;
        /*09e0*/                   MOV R9, RZ ;
        /*09f0*/                   SHF.L.U64.HI R9, R8, 0x3, R9 ;
        /*0a00*/                   SHF.L.U32 R8, R8, 0x3, RZ ;
        /*0a10*/                   IADD3 R8, P0, R3, R8, RZ ;
        /*0a20*/                   IADD3.X R9, R6, R9, RZ, P0, !PT ;
        /*0a30*/                   MOV R8, R8 ;
        /*0a40*/                   MOV R9, R9 ;
.L_x_180:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 141
        /*0a50*/                   MOV R6, R8 ;
        /*0a60*/                   MOV R7, R9 ;
        /*0a70*/                   MOV R6, R6 ;
        /*0a80*/                   MOV R7, R7 ;
        /*0a90*/                   LD.E.64.SYS R6, [R6] ;
        /*0aa0*/                   DMUL R6, R6, R4 ;
        /*0ab0*/                   MOV R8, R8 ;
        /*0ac0*/                   MOV R9, R9 ;
        /*0ad0*/                   MOV R8, R8 ;
        /*0ae0*/                   MOV R9, R9 ;
        /*0af0*/                   ST.E.64.SYS [R8], R6 ;
        /*0b00*/                   MOV R6, R16 ;
        /*0b10*/                   MOV R7, R2 ;
        /*0b20*/                   IADD3 R8, P0, R18, RZ, RZ ;
        /*0b30*/                   IADD3.X R9, R17, RZ, RZ, P0, !PT ;
        /*0b40*/                   MOV R8, R8 ;
        /*0b50*/                   MOV R9, R9 ;
        /*0b60*/                   MOV R6, R6 ;
        /*0b70*/                   MOV R7, R7 ;
        /*0b80*/                   MOV R8, R8 ;
        /*0b90*/                   MOV R9, R9 ;
        /*0ba0*/                   ST.E.64.SYS [R8], R6 ;
        /*0bb0*/                   MOV R0, 0x1 ;
        /*0bc0*/                   MOV R0, R0 ;
        /*0bd0*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 142
        /*0be0*/                   BRA `(.L_x_36) ;
.L_x_36:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 50
        /*0bf0*/                   IADD3 R6, P0, R18, RZ, RZ ;
        /*0c00*/                   IADD3.X R7, R17, RZ, RZ, P0, !PT ;
        /*0c10*/                   MOV R6, R6 ;
        /*0c20*/                   MOV R7, R7 ;
        /*0c30*/                   MOV R6, R6 ;
        /*0c40*/                   MOV R7, R7 ;
        /*0c50*/                   LD.E.64.SYS R6, [R6] ;
        /*0c60*/                   MOV R3, R6 ;
        /*0c70*/                   MOV R6, R7 ;
        /*0c80*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*0c90*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*0ca0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0cb0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0cc0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0cd0*/                   BSSY B0, `(.L_x_37) ;
        /*0ce0*/               @P0 BRA `(.L_x_38) ;
        /*0cf0*/                   BRA `(.L_x_39) ;
.L_x_39:
        /*0d00*/                   BRA `(.L_x_38) ;
.L_x_38:
        /*0d10*/                   BSYNC B0 ;
.L_x_37:
        /*0d20*/                   IADD3 R6, P0, R18, RZ, RZ ;
        /*0d30*/                   IADD3.X R7, R17, RZ, RZ, P0, !PT ;
        /*0d40*/                   MOV R6, R6 ;
        /*0d50*/                   MOV R7, R7 ;
        /*0d60*/                   MOV R6, R6 ;
        /*0d70*/                   MOV R7, R7 ;
        /*0d80*/                   LD.E.64.SYS R6, [R6] ;
        /*0d90*/                   MOV R3, R6 ;
        /*0da0*/                   MOV R6, R7 ;
        /*0db0*/                   MOV R0, R0 ;
        /*0dc0*/                   MOV R8, R0 ;
        /*0dd0*/                   MOV R9, RZ ;
        /*0de0*/                   SHF.L.U64.HI R9, R8, 0x3, R9 ;
        /*0df0*/                   SHF.L.U32 R8, R8, 0x3, RZ ;
        /*0e00*/                   IADD3 R8, P0, R3, R8, RZ ;
        /*0e10*/                   IADD3.X R9, R6, R9, RZ, P0, !PT ;
        /*0e20*/                   MOV R8, R8 ;
        /*0e30*/                   MOV R9, R9 ;
.L_x_181:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 142
        /*0e40*/                   MOV R6, R8 ;
        /*0e50*/                   MOV R7, R9 ;
        /*0e60*/                   MOV R6, R6 ;
        /*0e70*/                   MOV R7, R7 ;
        /*0e80*/                   LD.E.64.SYS R6, [R6] ;
        /*0e90*/                   DMUL R6, R6, R4 ;
        /*0ea0*/                   MOV R8, R8 ;
        /*0eb0*/                   MOV R9, R9 ;
        /*0ec0*/                   MOV R8, R8 ;
        /*0ed0*/                   MOV R9, R9 ;
        /*0ee0*/                   ST.E.64.SYS [R8], R6 ;
        /*0ef0*/                   MOV R6, R16 ;
        /*0f00*/                   MOV R7, R2 ;
        /*0f10*/                   IADD3 R8, P0, R18, 0x8, RZ ;
        /*0f20*/                   IADD3.X R9, R17, RZ, RZ, P0, !PT ;
        /*0f30*/                   MOV R8, R8 ;
        /*0f40*/                   MOV R9, R9 ;
        /*0f50*/                   MOV R6, R6 ;
        /*0f60*/                   MOV R7, R7 ;
        /*0f70*/                   MOV R8, R8 ;
        /*0f80*/                   MOV R9, R9 ;
        /*0f90*/                   ST.E.64.SYS [R8], R6 ;
        /*0fa0*/                   MOV R0, 0x2 ;
        /*0fb0*/                   MOV R0, R0 ;
        /*0fc0*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 143
        /*0fd0*/                   BRA `(.L_x_40) ;
.L_x_40:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 50
        /*0fe0*/                   IADD3 R6, P0, R18, 0x8, RZ ;
        /*0ff0*/                   IADD3.X R7, R17, RZ, RZ, P0, !PT ;
        /*1000*/                   MOV R6, R6 ;
        /*1010*/                   MOV R7, R7 ;
        /*1020*/                   MOV R6, R6 ;
        /*1030*/                   MOV R7, R7 ;
        /*1040*/                   LD.E.64.SYS R6, [R6] ;
        /*1050*/                   MOV R3, R6 ;
        /*1060*/                   MOV R6, R7 ;
        /*1070*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*1080*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*1090*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*10a0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*10b0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*10c0*/                   BSSY B0, `(.L_x_41) ;
        /*10d0*/               @P0 BRA `(.L_x_42) ;
        /*10e0*/                   BRA `(.L_x_43) ;
.L_x_43:
        /*10f0*/                   BRA `(.L_x_42) ;
.L_x_42:
        /*1100*/                   BSYNC B0 ;
.L_x_41:
        /*1110*/                   IADD3 R6, P0, R18, 0x8, RZ ;
        /*1120*/                   IADD3.X R7, R17, RZ, RZ, P0, !PT ;
        /*1130*/                   MOV R6, R6 ;
        /*1140*/                   MOV R7, R7 ;
        /*1150*/                   MOV R6, R6 ;
        /*1160*/                   MOV R7, R7 ;
        /*1170*/                   LD.E.64.SYS R6, [R6] ;
        /*1180*/                   MOV R3, R6 ;
        /*1190*/                   MOV R6, R7 ;
        /*11a0*/                   MOV R0, R0 ;
        /*11b0*/                   MOV R8, R0 ;
        /*11c0*/                   MOV R9, RZ ;
        /*11d0*/                   SHF.L.U64.HI R9, R8, 0x3, R9 ;
        /*11e0*/                   SHF.L.U32 R8, R8, 0x3, RZ ;
        /*11f0*/                   IADD3 R8, P0, R3, R8, RZ ;
        /*1200*/                   IADD3.X R9, R6, R9, RZ, P0, !PT ;
        /*1210*/                   MOV R8, R8 ;
        /*1220*/                   MOV R9, R9 ;
.L_x_182:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 143
        /*1230*/                   MOV R6, R8 ;
        /*1240*/                   MOV R7, R9 ;
        /*1250*/                   MOV R6, R6 ;
        /*1260*/                   MOV R7, R7 ;
        /*1270*/                   LD.E.64.SYS R6, [R6] ;
        /*1280*/                   DMUL R6, R6, R4 ;
        /*1290*/                   MOV R8, R8 ;
        /*12a0*/                   MOV R9, R9 ;
        /*12b0*/                   MOV R8, R8 ;
        /*12c0*/                   MOV R9, R9 ;
        /*12d0*/                   ST.E.64.SYS [R8], R6 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 144
        /*12e0*/                   BRA `(.L_x_44) ;
.L_x_44:
        /*12f0*/                   BMOV.32 B6, R19 ;
        /*1300*/                   LDL R2, [R1+0x18] ;
        /*1310*/                   LDL R16, [R1+0x1c] ;
        /*1320*/                   LDL R17, [R1+0x20] ;
        /*1330*/                   LDL R18, [R1+0x24] ;
        /*1340*/                   LDL R19, [R1+0x28] ;
        /*1350*/                   LDL R20, [R1+0x2c] ;
        /*1360*/                   LDL R21, [R1+0x30] ;
        /*1370*/                   IADD3 R1, R1, 0x38, RZ ;
        /*1380*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_45:
        /*1390*/                   BRA `(.L_x_45);
        /*13a0*/                   NOP;
        /*13b0*/                   NOP;
        /*13c0*/                   NOP;
        /*13d0*/                   NOP;
        /*13e0*/                   NOP;
        /*13f0*/                   NOP;
.L_x_178:


//--------------------- .text._ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE --------------------------
	.section	.text._ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text._ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE:
        .weak           _ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE
        .type           _ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE,@function
        .size           _ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE,(.L_x_184 - _ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE)
_ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 113
        /*0000*/                   IADD3 R1, R1, -0x8, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_46) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_46:
        /*0050*/                   STL [R1+0x4], R21 ;
        /*0060*/                   STL [R1], R20 ;
        /*0070*/                   MOV R5, R5 ;
        /*0080*/                   MOV R4, R4 ;
        /*0090*/                   MOV R4, R4 ;
        /*00a0*/                   MOV R5, R5 ;
        /*00b0*/                   MOV R6, R4 ;
        /*00c0*/                   MOV R7, R5 ;
        /*00d0*/                   MOV R6, R6 ;
        /*00e0*/                   MOV R7, R7 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 115
        /*00f0*/                   MOV R4, R6 ;
        /*0100*/                   MOV R5, R7 ;
        /*0110*/                   MOV R6, R6 ;
        /*0120*/                   MOV R7, R7 ;
        /*0130*/                   MOV R20, 32@lo((_ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE + .L_x_2@srel)) ;
        /*0140*/                   MOV R21, 32@hi((_ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE + .L_x_2@srel)) ;
        /*0150*/                   CALL.ABS.NOINC `(_ZN9celeritas11dot_productIdLj3EEET_RKNS_5ArrayIS1_XT0_EEES5_) ;
.L_x_2:
        /*0160*/                   MOV R4, R4 ;
        /*0170*/                   MOV R5, R5 ;
        /*0180*/                   MOV R4, R4 ;
        /*0190*/                   MOV R5, R5 ;
        /*01a0*/                   MOV R20, 32@lo((_ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE + .L_x_3@srel)) ;
        /*01b0*/                   MOV R21, 32@hi((_ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE + .L_x_3@srel)) ;
        /*01c0*/                   CALL.ABS.NOINC `(sqrt) ;
.L_x_3:
        /*01d0*/                   MOV R4, R4 ;
        /*01e0*/                   MOV R5, R5 ;
        /*01f0*/                   MOV R4, R4 ;
        /*0200*/                   MOV R5, R5 ;
        /*0210*/                   BRA `(.L_x_47) ;
.L_x_47:
        /*0220*/                   MOV R4, R4 ;
        /*0230*/                   MOV R5, R5 ;
        /*0240*/                   LDL R20, [R1] ;
        /*0250*/                   LDL R21, [R1+0x4] ;
        /*0260*/                   IADD3 R1, R1, 0x8, RZ ;
        /*0270*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_48:
        /*0280*/                   BRA `(.L_x_48);
        /*0290*/                   NOP;
        /*02a0*/                   NOP;
        /*02b0*/                   NOP;
        /*02c0*/                   NOP;
        /*02d0*/                   NOP;
        /*02e0*/                   NOP;
        /*02f0*/                   NOP;
.L_x_184:


//--------------------- .text._ZN9celeritas11dot_productIdLj3EEET_RKNS_5ArrayIS1_XT0_EEES5_ --------------------------
	.section	.text._ZN9celeritas11dot_productIdLj3EEET_RKNS_5ArrayIS1_XT0_EEES5_,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=36"
	.align	128
.text._ZN9celeritas11dot_productIdLj3EEET_RKNS_5ArrayIS1_XT0_EEES5_:
        .weak           _ZN9celeritas11dot_productIdLj3EEET_RKNS_5ArrayIS1_XT0_EEES5_
        .type           _ZN9celeritas11dot_productIdLj3EEET_RKNS_5ArrayIS1_XT0_EEES5_,@function
        .size           _ZN9celeritas11dot_productIdLj3EEET_RKNS_5ArrayIS1_XT0_EEES5_,(.L_x_150 - _ZN9celeritas11dot_productIdLj3EEET_RKNS_5ArrayIS1_XT0_EEES5_)
_ZN9celeritas11dot_productIdLj3EEET_RKNS_5ArrayIS1_XT0_EEES5_:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 85
        /*0000*/                   IADD3 R1, R1, -0x10, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_49) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_49:
        /*0050*/                   MOV R7, R7 ;
        /*0060*/                   MOV R6, R6 ;
        /*0070*/                   MOV R5, R5 ;
        /*0080*/                   MOV R4, R4 ;
        /*0090*/                   IADD3 R0, R1, RZ, RZ ;
        /*00a0*/                   MOV R0, R0 ;
        /*00b0*/                   MOV R8, R0 ;
        /*00c0*/                   MOV R9, RZ ;
        /*00d0*/                   MOV R0, R8 ;
        /*00e0*/                   MOV R9, R9 ;
        /*00f0*/                   MOV R8, R0 ;
        /*0100*/                   MOV R9, R9 ;
        /*0110*/                   MOV R3, c[0x0][0x20] ;
        /*0120*/                   MOV R0, c[0x0][0x24] ;
        /*0130*/                   IADD3 R3, P0, R8, R3, RZ ;
        /*0140*/                   IADD3.X R0, R9, R0, RZ, P0, !PT ;
        /*0150*/                   MOV R4, R4 ;
        /*0160*/                   MOV R5, R5 ;
        /*0170*/                   MOV R6, R6 ;
        /*0180*/                   MOV R7, R7 ;
        /*0190*/                   MOV R3, R3 ;
        /*01a0*/                   MOV R0, R0 ;
        /*01b0*/                   MOV R4, R4 ;
        /*01c0*/                   MOV R5, R5 ;
        /*01d0*/                   MOV R6, R6 ;
        /*01e0*/                   MOV R7, R7 ;
.L_x_185:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 87
        /*01f0*/                   CS2R R8, SRZ ;
        /*0200*/                   MOV R8, R8 ;
        /*0210*/                   MOV R9, R9 ;
        /*0220*/                   MOV R8, R8 ;
        /*0230*/                   MOV R9, R9 ;
.L_x_145:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 88
        /*0240*/                   MOV R10, RZ ;
        /*0250*/                   MOV R10, R10 ;
        /*0260*/                   MOV R10, R10 ;
.L_x_151:
        /*0270*/                   MOV R8, R8 ;
        /*0280*/                   MOV R9, R9 ;
        /*0290*/                   MOV R12, R8 ;
        /*02a0*/                   MOV R13, R9 ;
.L_x_146:
        /*02b0*/                   MOV R8, R10 ;
        /*02c0*/                   MOV R11, R8 ;
.L_x_152:
        /*02d0*/                   BRA `(.L_x_50) ;
.L_x_50:
        /*02e0*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*02f0*/                   MOV R10, R11 ;
        /*0300*/                   MOV R8, R12 ;
        /*0310*/                   MOV R9, R13 ;
        /*0320*/                   MOV R10, R10 ;
        /*0330*/                   MOV R8, R8 ;
        /*0340*/                   MOV R9, R9 ;
.L_x_147:
        /*0350*/                   ISETP.NE.AND P0, PT, R10, 0x3, PT ;
        /*0360*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0370*/               @P0 BRA `(.L_x_51) ;
        /*0380*/                   BRA `(.L_x_52) ;
.L_x_52:
        /*0390*/                   MOV R4, R4 ;
        /*03a0*/                   MOV R5, R5 ;
        /*03b0*/                   IADD3 R12, P0, R3, 0x8, RZ ;
        /*03c0*/                   IADD3.X R13, R0, RZ, RZ, P0, !PT ;
        /*03d0*/                   MOV R12, R12 ;
        /*03e0*/                   MOV R13, R13 ;
        /*03f0*/                   MOV R12, R12 ;
        /*0400*/                   MOV R13, R13 ;
        /*0410*/                   ST.E.64.SYS [R12], R4 ;
        /*0420*/                   MOV R10, R10 ;
        /*0430*/                   MOV R11, R10 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 90
        /*0440*/                   BRA `(.L_x_53) ;
.L_x_53:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*0450*/                   IADD3 R12, P0, R3, 0x8, RZ ;
        /*0460*/                   IADD3.X R13, R0, RZ, RZ, P0, !PT ;
        /*0470*/                   MOV R12, R12 ;
        /*0480*/                   MOV R13, R13 ;
        /*0490*/                   MOV R12, R12 ;
        /*04a0*/                   MOV R13, R13 ;
        /*04b0*/                   LD.E.64.SYS R12, [R12] ;
        /*04c0*/                   MOV R14, R12 ;
        /*04d0*/                   MOV R12, R13 ;
        /*04e0*/                   ISETP.NE.U32.AND P0, PT, R14, RZ, PT ;
        /*04f0*/                   ISETP.NE.AND.EX P0, PT, R12, RZ, PT, P0 ;
        /*0500*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0510*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0520*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0530*/                   BSSY B0, `(.L_x_54) ;
        /*0540*/               @P0 BRA `(.L_x_55) ;
        /*0550*/                   BRA `(.L_x_56) ;
.L_x_56:
        /*0560*/                   BRA `(.L_x_55) ;
.L_x_55:
        /*0570*/                   BSYNC B0 ;
.L_x_54:
        /*0580*/                   IADD3 R12, P0, R3, 0x8, RZ ;
        /*0590*/                   IADD3.X R13, R0, RZ, RZ, P0, !PT ;
        /*05a0*/                   MOV R12, R12 ;
        /*05b0*/                   MOV R13, R13 ;
        /*05c0*/                   MOV R12, R12 ;
        /*05d0*/                   MOV R13, R13 ;
        /*05e0*/                   LD.E.64.SYS R12, [R12] ;
        /*05f0*/                   MOV R14, R12 ;
        /*0600*/                   MOV R15, R13 ;
        /*0610*/                   MOV R11, R11 ;
        /*0620*/                   MOV R12, R11 ;
        /*0630*/                   MOV R13, RZ ;
        /*0640*/                   SHF.L.U64.HI R13, R12, 0x3, R13 ;
        /*0650*/                   SHF.L.U32 R12, R12, 0x3, RZ ;
        /*0660*/                   IADD3 R12, P0, R14, R12, RZ ;
        /*0670*/                   IADD3.X R13, R15, R13, RZ, P0, !PT ;
        /*0680*/                   MOV R12, R12 ;
        /*0690*/                   MOV R13, R13 ;
.L_x_186:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 90
        /*06a0*/                   MOV R12, R12 ;
        /*06b0*/                   MOV R13, R13 ;
        /*06c0*/                   MOV R12, R12 ;
        /*06d0*/                   MOV R13, R13 ;
        /*06e0*/                   LD.E.64.SYS R12, [R12] ;
        /*06f0*/                   MOV R6, R6 ;
        /*0700*/                   MOV R7, R7 ;
        /*0710*/                   IADD3 R14, P0, R3, RZ, RZ ;
        /*0720*/                   IADD3.X R15, R0, RZ, RZ, P0, !PT ;
        /*0730*/                   MOV R14, R14 ;
        /*0740*/                   MOV R15, R15 ;
        /*0750*/                   MOV R14, R14 ;
        /*0760*/                   MOV R15, R15 ;
        /*0770*/                   ST.E.64.SYS [R14], R6 ;
        /*0780*/                   MOV R10, R10 ;
        /*0790*/                   MOV R12, R12 ;
        /*07a0*/                   MOV R13, R13 ;
        /*07b0*/                   MOV R11, R10 ;
        /*07c0*/                   BRA `(.L_x_57) ;
.L_x_57:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*07d0*/                   IADD3 R14, P0, R3, RZ, RZ ;
        /*07e0*/                   IADD3.X R15, R0, RZ, RZ, P0, !PT ;
        /*07f0*/                   MOV R14, R14 ;
        /*0800*/                   MOV R15, R15 ;
        /*0810*/                   MOV R14, R14 ;
        /*0820*/                   MOV R15, R15 ;
        /*0830*/                   LD.E.64.SYS R14, [R14] ;
        /*0840*/                   MOV R32, R14 ;
        /*0850*/                   MOV R14, R15 ;
        /*0860*/                   ISETP.NE.U32.AND P0, PT, R32, RZ, PT ;
        /*0870*/                   ISETP.NE.AND.EX P0, PT, R14, RZ, PT, P0 ;
        /*0880*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0890*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*08a0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*08b0*/                   BSSY B0, `(.L_x_58) ;
        /*08c0*/               @P0 BRA `(.L_x_59) ;
        /*08d0*/                   BRA `(.L_x_60) ;
.L_x_60:
        /*08e0*/                   BRA `(.L_x_59) ;
.L_x_59:
        /*08f0*/                   BSYNC B0 ;
.L_x_58:
        /*0900*/                   IADD3 R14, P0, R3, RZ, RZ ;
        /*0910*/                   IADD3.X R15, R0, RZ, RZ, P0, !PT ;
        /*0920*/                   MOV R14, R14 ;
        /*0930*/                   MOV R15, R15 ;
        /*0940*/                   MOV R14, R14 ;
        /*0950*/                   MOV R15, R15 ;
        /*0960*/                   LD.E.64.SYS R14, [R14] ;
        /*0970*/                   MOV R32, R14 ;
        /*0980*/                   MOV R33, R15 ;
        /*0990*/                   MOV R11, R11 ;
        /*09a0*/                   MOV R14, R11 ;
        /*09b0*/                   MOV R15, RZ ;
        /*09c0*/                   SHF.L.U64.HI R15, R14, 0x3, R15 ;
        /*09d0*/                   SHF.L.U32 R14, R14, 0x3, RZ ;
        /*09e0*/                   IADD3 R14, P0, R32, R14, RZ ;
        /*09f0*/                   IADD3.X R15, R33, R15, RZ, P0, !PT ;
        /*0a00*/                   MOV R14, R14 ;
        /*0a10*/                   MOV R15, R15 ;
.L_x_187:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 90
        /*0a20*/                   MOV R14, R14 ;
        /*0a30*/                   MOV R15, R15 ;
        /*0a40*/                   MOV R14, R14 ;
        /*0a50*/                   MOV R15, R15 ;
        /*0a60*/                   LD.E.64.SYS R14, [R14] ;
        /*0a70*/                   DMUL R12, R12, R14 ;
        /*0a80*/                   DADD R12, R8, R12 ;
        /*0a90*/                   MOV R14, R12 ;
        /*0aa0*/                   MOV R15, R13 ;
.L_x_148:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 88
        /*0ab0*/                   BRA `(.L_x_61) ;
.L_x_61:
        /*0ac0*/                   IADD3 R8, R10, 0x1, RZ ;
        /*0ad0*/                   MOV R8, R8 ;
.L_x_153:
        /*0ae0*/                   MOV R12, R14 ;
        /*0af0*/                   MOV R13, R15 ;
        /*0b00*/                   MOV R12, R12 ;
        /*0b10*/                   MOV R13, R13 ;
.L_x_149:
        /*0b20*/                   MOV R11, R8 ;
        /*0b30*/                   MOV R11, R11 ;
.L_x_154:
        /*0b40*/                   BRA `(.L_x_50) ;
.L_x_51:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 92
        /*0b50*/                   MOV R8, R8 ;
        /*0b60*/                   MOV R9, R9 ;
        /*0b70*/                   MOV R4, R8 ;
        /*0b80*/                   MOV R5, R9 ;
        /*0b90*/                   MOV R4, R4 ;
        /*0ba0*/                   MOV R5, R5 ;
        /*0bb0*/                   BRA `(.L_x_62) ;
.L_x_62:
        /*0bc0*/                   MOV R4, R4 ;
        /*0bd0*/                   MOV R5, R5 ;
        /*0be0*/                   IADD3 R1, R1, 0x10, RZ ;
        /*0bf0*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_63:
        /*0c00*/                   BRA `(.L_x_63);
        /*0c10*/                   NOP;
        /*0c20*/                   NOP;
        /*0c30*/                   NOP;
        /*0c40*/                   NOP;
        /*0c50*/                   NOP;
        /*0c60*/                   NOP;
        /*0c70*/                   NOP;
.L_x_150:


//--------------------- .text._Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ --------------------------
	.section	.text._Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=36"
	.align	128
.text._Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_:
        .weak           _Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_
        .type           _Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_,@function
        .size           _Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_,(.L_x_155 - _Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_)
_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 42
        /*0000*/                   IADD3 R1, R1, -0xd0, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_64) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_64:
        /*0050*/                   STL [R1+0xc8], R31 ;
        /*0060*/                   STL [R1+0xc4], R30 ;
        /*0070*/                   STL [R1+0xc0], R29 ;
        /*0080*/                   STL [R1+0xbc], R28 ;
        /*0090*/                   STL [R1+0xb8], R27 ;
        /*00a0*/                   STL [R1+0xb4], R26 ;
        /*00b0*/                   STL [R1+0xb0], R25 ;
        /*00c0*/                   STL [R1+0xac], R24 ;
        /*00d0*/                   STL [R1+0xa8], R23 ;
        /*00e0*/                   STL [R1+0xa4], R22 ;
        /*00f0*/                   STL [R1+0xa0], R21 ;
        /*0100*/                   STL [R1+0x9c], R20 ;
        /*0110*/                   STL [R1+0x98], R19 ;
        /*0120*/                   STL [R1+0x94], R18 ;
        /*0130*/                   STL [R1+0x90], R17 ;
        /*0140*/                   STL [R1+0x8c], R16 ;
        /*0150*/                   STL [R1+0x88], R2 ;
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
        /*02d0*/                   MOV R30, R4 ;
        /*02e0*/                   MOV R31, R5 ;
        /*02f0*/                   MOV R28, R6 ;
        /*0300*/                   MOV R29, R7 ;
.L_x_156:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 44
        /*0310*/                   BRA `(.L_x_65) ;
.L_x_65:
        /*0320*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0330*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0 ;
        /*0340*/               @P0 BRA `(.L_x_66) ;
        /*0350*/                   BRA `(.L_x_67) ;
.L_x_67:
        /*0360*/                   BRA `(.L_x_66) ;
.L_x_66:
        /*0370*/                   BRA `(.L_x_68) ;
.L_x_68:
        /*0380*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0 ;
        /*0390*/               @P0 BRA `(.L_x_65) ;
        /*03a0*/                   BRA `(.L_x_69) ;
.L_x_69:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 45
        /*03b0*/                   BRA `(.L_x_70) ;
.L_x_70:
        /*03c0*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*03d0*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0 ;
        /*03e0*/               @P0 BRA `(.L_x_71) ;
        /*03f0*/                   BRA `(.L_x_72) ;
.L_x_72:
        /*0400*/                   BRA `(.L_x_71) ;
.L_x_71:
        /*0410*/                   BRA `(.L_x_73) ;
.L_x_73:
        /*0420*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0 ;
        /*0430*/               @P0 BRA `(.L_x_70) ;
        /*0440*/                   BRA `(.L_x_74) ;
.L_x_74:
        /*0450*/                   MOV R6, R28 ;
        /*0460*/                   MOV R7, R29 ;
        /*0470*/                   IADD3 R4, P0, R16, 0x68, RZ ;
        /*0480*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*0490*/                   MOV R4, R4 ;
        /*04a0*/                   MOV R5, R5 ;
        /*04b0*/                   MOV R4, R4 ;
        /*04c0*/                   MOV R5, R5 ;
        /*04d0*/                   ST.E.64.SYS [R4], R6 ;
        /*04e0*/                   MOV R0, 0x2 ;
        /*04f0*/                   MOV R0, R0 ;
        /*0500*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 57
        /*0510*/                   BRA `(.L_x_75) ;
.L_x_75:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*0520*/                   IADD3 R4, P0, R16, 0x68, RZ ;
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
        /*0600*/                   BSSY B0, `(.L_x_76) ;
        /*0610*/               @P0 BRA `(.L_x_77) ;
        /*0620*/                   BRA `(.L_x_78) ;
.L_x_78:
        /*0630*/                   BRA `(.L_x_77) ;
.L_x_77:
        /*0640*/                   BSYNC B0 ;
.L_x_76:
        /*0650*/                   IADD3 R4, P0, R16, 0x68, RZ ;
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
.L_x_157:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 57
        /*0770*/                   MOV R4, R4 ;
        /*0780*/                   MOV R5, R5 ;
        /*0790*/                   MOV R4, R4 ;
        /*07a0*/                   MOV R5, R5 ;
        /*07b0*/                   LD.E.64.SYS R4, [R4] ;
        /*07c0*/                   MOV R4, R4 ;
        /*07d0*/                   MOV R5, R5 ;
        /*07e0*/                   MOV R4, R4 ;
        /*07f0*/                   MOV R5, R5 ;
        /*0800*/                   MOV R8, R4 ;
        /*0810*/                   MOV R9, R5 ;
        /*0820*/                   MOV R8, R8 ;
        /*0830*/                   MOV R9, R9 ;
        /*0840*/                   MOV R6, R8 ;
        /*0850*/                   MOV R7, R9 ;
        /*0860*/                   MOV R10, R6 ;
        /*0870*/                   MOV R11, R7 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*0880*/                   BRA `(.L_x_79) ;
.L_x_79:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*0890*/                   MOV R6, 0x0 ;
        /*08a0*/                   MOV R7, 0x3ff00000 ;
        /*08b0*/                   MOV R12, R6 ;
        /*08c0*/                   MOV R13, R7 ;
        /*08d0*/                   MOV R6, R6 ;
        /*08e0*/                   MOV R7, R7 ;
        /*08f0*/                   MOV R12, R12 ;
        /*0900*/                   MOV R13, R13 ;
.L_x_160:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*0910*/                   DMUL R12, R8, R12 ;
        /*0920*/                   MOV R8, R8 ;
        /*0930*/                   MOV R9, R9 ;
        /*0940*/                   MOV R12, R12 ;
        /*0950*/                   MOV R13, R13 ;
        /*0960*/                   MOV R10, R8 ;
        /*0970*/                   MOV R11, R9 ;
        /*0980*/                   BRA `(.L_x_80) ;
.L_x_80:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*0990*/                   MOV R6, R6 ;
        /*09a0*/                   MOV R7, R7 ;
        /*09b0*/                   MOV R14, R6 ;
        /*09c0*/                   MOV R15, R7 ;
.L_x_161:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*09d0*/                   DMUL R10, R12, R14 ;
        /*09e0*/                   MOV R12, R4 ;
        /*09f0*/                   MOV R13, R5 ;
        /*0a00*/                   MOV R10, R10 ;
        /*0a10*/                   MOV R11, R11 ;
        /*0a20*/                   MOV R12, R12 ;
        /*0a30*/                   MOV R13, R13 ;
.L_x_159:
        /*0a40*/                   MOV R12, R12 ;
        /*0a50*/                   MOV R13, R13 ;
        /*0a60*/                   MOV R14, R12 ;
        /*0a70*/                   MOV R15, R13 ;
        /*0a80*/                   BRA `(.L_x_81) ;
.L_x_81:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*0a90*/                   MOV R6, R6 ;
        /*0aa0*/                   MOV R7, R7 ;
        /*0ab0*/                   MOV R8, R6 ;
        /*0ac0*/                   MOV R9, R7 ;
.L_x_163:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*0ad0*/                   DMUL R8, R12, R8 ;
        /*0ae0*/                   MOV R12, R12 ;
        /*0af0*/                   MOV R13, R13 ;
        /*0b00*/                   MOV R8, R8 ;
        /*0b10*/                   MOV R9, R9 ;
        /*0b20*/                   MOV R14, R12 ;
        /*0b30*/                   MOV R15, R13 ;
        /*0b40*/                   BRA `(.L_x_82) ;
.L_x_82:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*0b50*/                   MOV R6, R6 ;
        /*0b60*/                   MOV R7, R7 ;
        /*0b70*/                   MOV R32, R6 ;
        /*0b80*/                   MOV R33, R7 ;
.L_x_164:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*0b90*/                   DMUL R8, R8, R32 ;
        /*0ba0*/                   MOV R8, R8 ;
        /*0bb0*/                   MOV R9, R9 ;
.L_x_162:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 296
        /*0bc0*/                   DMUL R8, R10, R8 ;
        /*0bd0*/                   MOV R8, R8 ;
        /*0be0*/                   MOV R9, R9 ;
.L_x_158:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 57
        /*0bf0*/                   DADD R8, R6, -R8 ;
        /*0c00*/                   MOV R4, R8 ;
        /*0c10*/                   MOV R5, R9 ;
        /*0c20*/                   MOV R4, R4 ;
        /*0c30*/                   MOV R5, R5 ;
        /*0c40*/                   MOV R20, 32@lo((_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ + .L_x_4@srel)) ;
        /*0c50*/                   MOV R21, 32@hi((_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ + .L_x_4@srel)) ;
        /*0c60*/                   CALL.ABS.NOINC `(sqrt) ;
.L_x_4:
        /*0c70*/                   MOV R4, R4 ;
        /*0c80*/                   MOV R5, R5 ;
        /*0c90*/                   MOV R18, R4 ;
        /*0ca0*/                   MOV R19, R5 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 63
        /*0cb0*/                   MOV R4, R18 ;
        /*0cc0*/                   MOV R5, R19 ;
        /*0cd0*/                   MOV R4, R4 ;
        /*0ce0*/                   MOV R5, R5 ;
        /*0cf0*/                   MOV R0, R5 ;
        /*0d00*/                   MOV R0, R0 ;
        /*0d10*/                   IADD3 R3, R0, 0x300402, RZ ;
        /*0d20*/                   MOV R3, R3 ;
        /*0d30*/                   MOV R6, R4 ;
        /*0d40*/                   MOV R7, R5 ;
        /*0d50*/                   MOV R6, RZ ;
        /*0d60*/                   MUFU.RCP64H R7, R7 ;
        /*0d70*/                   MOV R6, R6 ;
        /*0d80*/                   MOV R6, R6 ;
        /*0d90*/                   MOV R7, R7 ;
        /*0da0*/                   MOV R7, R7 ;
        /*0db0*/                   LOP3.LUT R6, R6, R3, RZ, 0xfc, !PT ;
        /*0dc0*/                   MOV R10, R6 ;
        /*0dd0*/                   MOV R11, R7 ;
        /*0de0*/                   DADD R8, -RZ, -R4 ;
        /*0df0*/                   MOV R8, R8 ;
        /*0e00*/                   MOV R9, R9 ;
        /*0e10*/                   MOV R6, 0x0 ;
        /*0e20*/                   MOV R7, 0x3ff00000 ;
        /*0e30*/                   DFMA R12, R8, R10, R6 ;
        /*0e40*/                   DFMA R12, R12, R12, R12 ;
        /*0e50*/                   DFMA R12, R12, R10, R10 ;
        /*0e60*/                   DFMA R6, R8, R12, R6 ;
        /*0e70*/                   DFMA R6, R6, R12, R12 ;
        /*0e80*/                   FADD R3, -RZ, |R3| ;
        /*0e90*/                   MOV R3, R3 ;
        /*0ea0*/                   FSETP.GEU.AND P0, PT, R3, 5.8789094863358348022e-39, PT ;
        /*0eb0*/                   MOV R8, R4 ;
        /*0ec0*/                   MOV R9, R5 ;
        /*0ed0*/                   MOV R4, R8 ;
        /*0ee0*/                   MOV R5, R9 ;
        /*0ef0*/                   MOV R0, R0 ;
        /*0f00*/                   MOV R6, R6 ;
        /*0f10*/                   MOV R7, R7 ;
        /*0f20*/                   BMOV.32.CLEAR RZ, B6 ;
        /*0f30*/                   BSSY B6, `(.L_x_83) ;
        /*0f40*/               @P0 BRA `(.L_x_84) ;
        /*0f50*/                   LOP3.LUT R0, R0, 0x7fffffff, RZ, 0xc0, !PT ;
        /*0f60*/                   IADD3 R6, R0, -0x100000, RZ ;
        /*0f70*/                   MOV R4, R4 ;
        /*0f80*/                   MOV R5, R5 ;
        /*0f90*/                   MOV R6, R6 ;
        /*0fa0*/                   MOV R20, 32@lo((_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ + .L_x_5@srel)) ;
        /*0fb0*/                   MOV R21, 32@hi((_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ + .L_x_5@srel)) ;
        /*0fc0*/                   CALL.ABS.NOINC `(__cuda_sm20_dblrcp_rn_slowpath_v3) ;
.L_x_5:
        /*0fd0*/                   MOV R4, R4 ;
        /*0fe0*/                   MOV R5, R5 ;
        /*0ff0*/                   MOV R6, R4 ;
        /*1000*/                   MOV R7, R5 ;
.L_x_84:
        /*1010*/                   BSYNC B6 ;
.L_x_83:
        /*1020*/                   MOV R6, R6 ;
        /*1030*/                   MOV R7, R7 ;
        /*1040*/                   MOV R6, R6 ;
        /*1050*/                   MOV R7, R7 ;
        /*1060*/                   MOV R22, R6 ;
        /*1070*/                   MOV R23, R7 ;
        /*1080*/                   MOV R6, R28 ;
        /*1090*/                   MOV R7, R29 ;
        /*10a0*/                   IADD3 R4, P0, R16, RZ, RZ ;
        /*10b0*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*10c0*/                   MOV R4, R4 ;
        /*10d0*/                   MOV R5, R5 ;
        /*10e0*/                   MOV R4, R4 ;
        /*10f0*/                   MOV R5, R5 ;
        /*1100*/                   ST.E.64.SYS [R4], R6 ;
        /*1110*/                   MOV R0, RZ ;
        /*1120*/                   MOV R0, R0 ;
        /*1130*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 64
        /*1140*/                   BRA `(.L_x_85) ;
.L_x_85:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*1150*/                   IADD3 R4, P0, R16, RZ, RZ ;
        /*1160*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*1170*/                   MOV R4, R4 ;
        /*1180*/                   MOV R5, R5 ;
        /*1190*/                   MOV R4, R4 ;
        /*11a0*/                   MOV R5, R5 ;
        /*11b0*/                   LD.E.64.SYS R4, [R4] ;
        /*11c0*/                   MOV R3, R4 ;
        /*11d0*/                   MOV R4, R5 ;
        /*11e0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*11f0*/                   ISETP.NE.AND.EX P0, PT, R4, RZ, PT, P0 ;
        /*1200*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1210*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1220*/                   BMOV.32.CLEAR RZ, B0 ;
        /*1230*/                   BSSY B0, `(.L_x_86) ;
        /*1240*/               @P0 BRA `(.L_x_87) ;
        /*1250*/                   BRA `(.L_x_88) ;
.L_x_88:
        /*1260*/                   BRA `(.L_x_87) ;
.L_x_87:
        /*1270*/                   BSYNC B0 ;
.L_x_86:
        /*1280*/                   IADD3 R4, P0, R16, RZ, RZ ;
        /*1290*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*12a0*/                   MOV R4, R4 ;
        /*12b0*/                   MOV R5, R5 ;
        /*12c0*/                   MOV R4, R4 ;
        /*12d0*/                   MOV R5, R5 ;
        /*12e0*/                   LD.E.64.SYS R4, [R4] ;
        /*12f0*/                   MOV R3, R4 ;
        /*1300*/                   MOV R6, R5 ;
        /*1310*/                   MOV R0, R0 ;
        /*1320*/                   MOV R4, R0 ;
        /*1330*/                   MOV R5, RZ ;
        /*1340*/                   SHF.L.U64.HI R5, R4, 0x3, R5 ;
        /*1350*/                   SHF.L.U32 R4, R4, 0x3, RZ ;
        /*1360*/                   IADD3 R4, P0, R3, R4, RZ ;
        /*1370*/                   IADD3.X R5, R6, R5, RZ, P0, !PT ;
        /*1380*/                   MOV R4, R4 ;
        /*1390*/                   MOV R5, R5 ;
.L_x_165:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 64
        /*13a0*/                   MOV R4, R4 ;
        /*13b0*/                   MOV R5, R5 ;
        /*13c0*/                   MOV R4, R4 ;
        /*13d0*/                   MOV R5, R5 ;
        /*13e0*/                   LD.E.64.SYS R4, [R4] ;
        /*13f0*/                   DMUL R4, R4, R22 ;
        /*1400*/                   MOV R24, R4 ;
        /*1410*/                   MOV R25, R5 ;
        /*1420*/                   MOV R6, R28 ;
        /*1430*/                   MOV R7, R29 ;
        /*1440*/                   IADD3 R4, P0, R16, 0x8, RZ ;
        /*1450*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*1460*/                   MOV R4, R4 ;
        /*1470*/                   MOV R5, R5 ;
        /*1480*/                   MOV R4, R4 ;
        /*1490*/                   MOV R5, R5 ;
        /*14a0*/                   ST.E.64.SYS [R4], R6 ;
        /*14b0*/                   MOV R0, 0x1 ;
        /*14c0*/                   MOV R0, R0 ;
        /*14d0*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 65
        /*14e0*/                   BRA `(.L_x_89) ;
.L_x_89:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*14f0*/                   IADD3 R4, P0, R16, 0x8, RZ ;
        /*1500*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*1510*/                   MOV R4, R4 ;
        /*1520*/                   MOV R5, R5 ;
        /*1530*/                   MOV R4, R4 ;
        /*1540*/                   MOV R5, R5 ;
        /*1550*/                   LD.E.64.SYS R4, [R4] ;
        /*1560*/                   MOV R3, R4 ;
        /*1570*/                   MOV R4, R5 ;
        /*1580*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*1590*/                   ISETP.NE.AND.EX P0, PT, R4, RZ, PT, P0 ;
        /*15a0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*15b0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*15c0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*15d0*/                   BSSY B0, `(.L_x_90) ;
        /*15e0*/               @P0 BRA `(.L_x_91) ;
        /*15f0*/                   BRA `(.L_x_92) ;
.L_x_92:
        /*1600*/                   BRA `(.L_x_91) ;
.L_x_91:
        /*1610*/                   BSYNC B0 ;
.L_x_90:
        /*1620*/                   IADD3 R4, P0, R16, 0x8, RZ ;
        /*1630*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*1640*/                   MOV R4, R4 ;
        /*1650*/                   MOV R5, R5 ;
        /*1660*/                   MOV R4, R4 ;
        /*1670*/                   MOV R5, R5 ;
        /*1680*/                   LD.E.64.SYS R4, [R4] ;
        /*1690*/                   MOV R3, R4 ;
        /*16a0*/                   MOV R6, R5 ;
        /*16b0*/                   MOV R0, R0 ;
        /*16c0*/                   MOV R4, R0 ;
        /*16d0*/                   MOV R5, RZ ;
        /*16e0*/                   SHF.L.U64.HI R5, R4, 0x3, R5 ;
        /*16f0*/                   SHF.L.U32 R4, R4, 0x3, RZ ;
        /*1700*/                   IADD3 R4, P0, R3, R4, RZ ;
        /*1710*/                   IADD3.X R5, R6, R5, RZ, P0, !PT ;
        /*1720*/                   MOV R4, R4 ;
        /*1730*/                   MOV R5, R5 ;
.L_x_166:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 65
        /*1740*/                   MOV R4, R4 ;
        /*1750*/                   MOV R5, R5 ;
        /*1760*/                   MOV R4, R4 ;
        /*1770*/                   MOV R5, R5 ;
        /*1780*/                   LD.E.64.SYS R4, [R4] ;
        /*1790*/                   DMUL R4, R4, R22 ;
        /*17a0*/                   MOV R26, R4 ;
        /*17b0*/                   MOV R27, R5 ;
        /*17c0*/                   MOV R6, R28 ;
        /*17d0*/                   MOV R7, R29 ;
        /*17e0*/                   IADD3 R4, P0, R16, 0x10, RZ ;
        /*17f0*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*1800*/                   MOV R4, R4 ;
        /*1810*/                   MOV R5, R5 ;
        /*1820*/                   MOV R4, R4 ;
        /*1830*/                   MOV R5, R5 ;
        /*1840*/                   ST.E.64.SYS [R4], R6 ;
        /*1850*/                   MOV R0, 0x2 ;
        /*1860*/                   MOV R0, R0 ;
        /*1870*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 68
        /*1880*/                   BRA `(.L_x_93) ;
.L_x_93:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*1890*/                   IADD3 R4, P0, R16, 0x10, RZ ;
        /*18a0*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*18b0*/                   MOV R4, R4 ;
        /*18c0*/                   MOV R5, R5 ;
        /*18d0*/                   MOV R4, R4 ;
        /*18e0*/                   MOV R5, R5 ;
        /*18f0*/                   LD.E.64.SYS R4, [R4] ;
        /*1900*/                   MOV R3, R4 ;
        /*1910*/                   MOV R4, R5 ;
        /*1920*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*1930*/                   ISETP.NE.AND.EX P0, PT, R4, RZ, PT, P0 ;
        /*1940*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1950*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1960*/                   BMOV.32.CLEAR RZ, B0 ;
        /*1970*/                   BSSY B0, `(.L_x_94) ;
        /*1980*/               @P0 BRA `(.L_x_95) ;
        /*1990*/                   BRA `(.L_x_96) ;
.L_x_96:
        /*19a0*/                   BRA `(.L_x_95) ;
.L_x_95:
        /*19b0*/                   BSYNC B0 ;
.L_x_94:
        /*19c0*/                   IADD3 R4, P0, R16, 0x10, RZ ;
        /*19d0*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*19e0*/                   MOV R4, R4 ;
        /*19f0*/                   MOV R5, R5 ;
        /*1a00*/                   MOV R4, R4 ;
        /*1a10*/                   MOV R5, R5 ;
        /*1a20*/                   LD.E.64.SYS R4, [R4] ;
        /*1a30*/                   MOV R3, R4 ;
        /*1a40*/                   MOV R6, R5 ;
        /*1a50*/                   MOV R0, R0 ;
        /*1a60*/                   MOV R4, R0 ;
        /*1a70*/                   MOV R5, RZ ;
        /*1a80*/                   SHF.L.U64.HI R5, R4, 0x3, R5 ;
        /*1a90*/                   SHF.L.U32 R4, R4, 0x3, RZ ;
        /*1aa0*/                   IADD3 R4, P0, R3, R4, RZ ;
        /*1ab0*/                   IADD3.X R5, R6, R5, RZ, P0, !PT ;
        /*1ac0*/                   MOV R4, R4 ;
        /*1ad0*/                   MOV R5, R5 ;
.L_x_167:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 68
        /*1ae0*/                   MOV R4, R4 ;
        /*1af0*/                   MOV R5, R5 ;
        /*1b00*/                   MOV R4, R4 ;
        /*1b10*/                   MOV R5, R5 ;
        /*1b20*/                   LD.E.64.SYS R4, [R4] ;
        /*1b30*/                   MOV R8, R30 ;
        /*1b40*/                   MOV R9, R31 ;
        /*1b50*/                   IADD3 R6, P0, R16, 0x18, RZ ;
        /*1b60*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*1b70*/                   MOV R6, R6 ;
        /*1b80*/                   MOV R7, R7 ;
        /*1b90*/                   MOV R6, R6 ;
        /*1ba0*/                   MOV R7, R7 ;
        /*1bb0*/                   ST.E.64.SYS [R6], R8 ;
        /*1bc0*/                   MOV R0, RZ ;
        /*1bd0*/                   MOV R0, R0 ;
        /*1be0*/                   MOV R4, R4 ;
        /*1bf0*/                   MOV R5, R5 ;
        /*1c00*/                   MOV R0, R0 ;
        /*1c10*/                   BRA `(.L_x_97) ;
.L_x_97:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*1c20*/                   IADD3 R6, P0, R16, 0x18, RZ ;
        /*1c30*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*1c40*/                   MOV R6, R6 ;
        /*1c50*/                   MOV R7, R7 ;
        /*1c60*/                   MOV R6, R6 ;
        /*1c70*/                   MOV R7, R7 ;
        /*1c80*/                   LD.E.64.SYS R6, [R6] ;
        /*1c90*/                   MOV R3, R6 ;
        /*1ca0*/                   MOV R6, R7 ;
        /*1cb0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*1cc0*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*1cd0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1ce0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1cf0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*1d00*/                   BSSY B0, `(.L_x_98) ;
        /*1d10*/               @P0 BRA `(.L_x_99) ;
        /*1d20*/                   BRA `(.L_x_100) ;
.L_x_100:
        /*1d30*/                   BRA `(.L_x_99) ;
.L_x_99:
        /*1d40*/                   BSYNC B0 ;
.L_x_98:
        /*1d50*/                   IADD3 R6, P0, R16, 0x18, RZ ;
        /*1d60*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*1d70*/                   MOV R6, R6 ;
        /*1d80*/                   MOV R7, R7 ;
        /*1d90*/                   MOV R6, R6 ;
        /*1da0*/                   MOV R7, R7 ;
        /*1db0*/                   LD.E.64.SYS R6, [R6] ;
        /*1dc0*/                   MOV R3, R6 ;
        /*1dd0*/                   MOV R8, R7 ;
        /*1de0*/                   MOV R0, R0 ;
        /*1df0*/                   MOV R6, R0 ;
        /*1e00*/                   MOV R7, RZ ;
        /*1e10*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*1e20*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*1e30*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*1e40*/                   IADD3.X R7, R8, R7, RZ, P0, !PT ;
        /*1e50*/                   MOV R6, R6 ;
        /*1e60*/                   MOV R7, R7 ;
.L_x_168:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 68
        /*1e70*/                   MOV R6, R6 ;
        /*1e80*/                   MOV R7, R7 ;
        /*1e90*/                   MOV R6, R6 ;
        /*1ea0*/                   MOV R7, R7 ;
        /*1eb0*/                   LD.E.64.SYS R6, [R6] ;
        /*1ec0*/                   DMUL R4, R4, R6 ;
        /*1ed0*/                   MOV R8, R30 ;
        /*1ee0*/                   MOV R9, R31 ;
        /*1ef0*/                   IADD3 R6, P0, R16, 0x20, RZ ;
        /*1f00*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*1f10*/                   MOV R6, R6 ;
        /*1f20*/                   MOV R7, R7 ;
        /*1f30*/                   MOV R6, R6 ;
        /*1f40*/                   MOV R7, R7 ;
        /*1f50*/                   ST.E.64.SYS [R6], R8 ;
        /*1f60*/                   MOV R0, 0x2 ;
        /*1f70*/                   MOV R0, R0 ;
        /*1f80*/                   MOV R4, R4 ;
        /*1f90*/                   MOV R5, R5 ;
        /*1fa0*/                   MOV R0, R0 ;
        /*1fb0*/                   BRA `(.L_x_101) ;
.L_x_101:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*1fc0*/                   IADD3 R6, P0, R16, 0x20, RZ ;
        /*1fd0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*1fe0*/                   MOV R6, R6 ;
        /*1ff0*/                   MOV R7, R7 ;
        /*2000*/                   MOV R6, R6 ;
        /*2010*/                   MOV R7, R7 ;
        /*2020*/                   LD.E.64.SYS R6, [R6] ;
        /*2030*/                   MOV R3, R6 ;
        /*2040*/                   MOV R6, R7 ;
        /*2050*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*2060*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*2070*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*2080*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*2090*/                   BMOV.32.CLEAR RZ, B0 ;
        /*20a0*/                   BSSY B0, `(.L_x_102) ;
        /*20b0*/               @P0 BRA `(.L_x_103) ;
        /*20c0*/                   BRA `(.L_x_104) ;
.L_x_104:
        /*20d0*/                   BRA `(.L_x_103) ;
.L_x_103:
        /*20e0*/                   BSYNC B0 ;
.L_x_102:
        /*20f0*/                   IADD3 R6, P0, R16, 0x20, RZ ;
        /*2100*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*2110*/                   MOV R6, R6 ;
        /*2120*/                   MOV R7, R7 ;
        /*2130*/                   MOV R6, R6 ;
        /*2140*/                   MOV R7, R7 ;
        /*2150*/                   LD.E.64.SYS R6, [R6] ;
        /*2160*/                   MOV R3, R6 ;
        /*2170*/                   MOV R8, R7 ;
        /*2180*/                   MOV R0, R0 ;
        /*2190*/                   MOV R6, R0 ;
        /*21a0*/                   MOV R7, RZ ;
        /*21b0*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*21c0*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*21d0*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*21e0*/                   IADD3.X R7, R8, R7, RZ, P0, !PT ;
        /*21f0*/                   MOV R6, R6 ;
        /*2200*/                   MOV R7, R7 ;
.L_x_169:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 68
        /*2210*/                   MOV R6, R6 ;
        /*2220*/                   MOV R7, R7 ;
        /*2230*/                   MOV R6, R6 ;
        /*2240*/                   MOV R7, R7 ;
        /*2250*/                   LD.E.64.SYS R6, [R6] ;
        /*2260*/                   DMUL R6, R18, R6 ;
        /*2270*/                   DADD R4, R4, R6 ;
        /*2280*/                   DMUL R4, R4, R24 ;
        /*2290*/                   MOV R8, R30 ;
        /*22a0*/                   MOV R9, R31 ;
        /*22b0*/                   IADD3 R6, P0, R16, 0x28, RZ ;
        /*22c0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*22d0*/                   MOV R6, R6 ;
        /*22e0*/                   MOV R7, R7 ;
        /*22f0*/                   MOV R6, R6 ;
        /*2300*/                   MOV R7, R7 ;
        /*2310*/                   ST.E.64.SYS [R6], R8 ;
        /*2320*/                   MOV R0, 0x1 ;
        /*2330*/                   MOV R0, R0 ;
        /*2340*/                   MOV R4, R4 ;
        /*2350*/                   MOV R5, R5 ;
        /*2360*/                   MOV R0, R0 ;
        /*2370*/                   BRA `(.L_x_105) ;
.L_x_105:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*2380*/                   IADD3 R6, P0, R16, 0x28, RZ ;
        /*2390*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*23a0*/                   MOV R6, R6 ;
        /*23b0*/                   MOV R7, R7 ;
        /*23c0*/                   MOV R6, R6 ;
        /*23d0*/                   MOV R7, R7 ;
        /*23e0*/                   LD.E.64.SYS R6, [R6] ;
        /*23f0*/                   MOV R3, R6 ;
        /*2400*/                   MOV R6, R7 ;
        /*2410*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*2420*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*2430*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*2440*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*2450*/                   BMOV.32.CLEAR RZ, B0 ;
        /*2460*/                   BSSY B0, `(.L_x_106) ;
        /*2470*/               @P0 BRA `(.L_x_107) ;
        /*2480*/                   BRA `(.L_x_108) ;
.L_x_108:
        /*2490*/                   BRA `(.L_x_107) ;
.L_x_107:
        /*24a0*/                   BSYNC B0 ;
.L_x_106:
        /*24b0*/                   IADD3 R6, P0, R16, 0x28, RZ ;
        /*24c0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*24d0*/                   MOV R6, R6 ;
        /*24e0*/                   MOV R7, R7 ;
        /*24f0*/                   MOV R6, R6 ;
        /*2500*/                   MOV R7, R7 ;
        /*2510*/                   LD.E.64.SYS R6, [R6] ;
        /*2520*/                   MOV R3, R6 ;
        /*2530*/                   MOV R8, R7 ;
        /*2540*/                   MOV R0, R0 ;
        /*2550*/                   MOV R6, R0 ;
        /*2560*/                   MOV R7, RZ ;
        /*2570*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*2580*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*2590*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*25a0*/                   IADD3.X R7, R8, R7, RZ, P0, !PT ;
        /*25b0*/                   MOV R6, R6 ;
        /*25c0*/                   MOV R7, R7 ;
.L_x_170:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 68
        /*25d0*/                   MOV R6, R6 ;
        /*25e0*/                   MOV R7, R7 ;
        /*25f0*/                   MOV R6, R6 ;
        /*2600*/                   MOV R7, R7 ;
        /*2610*/                   LD.E.64.SYS R6, [R6] ;
        /*2620*/                   DMUL R6, R26, R6 ;
        /*2630*/                   DADD R4, R4, -R6 ;
        /*2640*/                   IADD3 R6, P0, R16, 0x70, RZ ;
        /*2650*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*2660*/                   MOV R6, R6 ;
        /*2670*/                   MOV R7, R7 ;
        /*2680*/                   MOV R6, R6 ;
        /*2690*/                   MOV R7, R7 ;
        /*26a0*/                   ST.E.64.SYS [R6], R4 ;
        /*26b0*/                   MOV R6, R28 ;
        /*26c0*/                   MOV R7, R29 ;
        /*26d0*/                   IADD3 R4, P0, R16, 0x30, RZ ;
        /*26e0*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*26f0*/                   MOV R4, R4 ;
        /*2700*/                   MOV R5, R5 ;
        /*2710*/                   MOV R4, R4 ;
        /*2720*/                   MOV R5, R5 ;
        /*2730*/                   ST.E.64.SYS [R4], R6 ;
        /*2740*/                   MOV R0, 0x2 ;
        /*2750*/                   MOV R0, R0 ;
        /*2760*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 69
        /*2770*/                   BRA `(.L_x_109) ;
.L_x_109:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*2780*/                   IADD3 R4, P0, R16, 0x30, RZ ;
        /*2790*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*27a0*/                   MOV R4, R4 ;
        /*27b0*/                   MOV R5, R5 ;
        /*27c0*/                   MOV R4, R4 ;
        /*27d0*/                   MOV R5, R5 ;
        /*27e0*/                   LD.E.64.SYS R4, [R4] ;
        /*27f0*/                   MOV R3, R4 ;
        /*2800*/                   MOV R4, R5 ;
        /*2810*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*2820*/                   ISETP.NE.AND.EX P0, PT, R4, RZ, PT, P0 ;
        /*2830*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*2840*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*2850*/                   BMOV.32.CLEAR RZ, B0 ;
        /*2860*/                   BSSY B0, `(.L_x_110) ;
        /*2870*/               @P0 BRA `(.L_x_111) ;
        /*2880*/                   BRA `(.L_x_112) ;
.L_x_112:
        /*2890*/                   BRA `(.L_x_111) ;
.L_x_111:
        /*28a0*/                   BSYNC B0 ;
.L_x_110:
        /*28b0*/                   IADD3 R4, P0, R16, 0x30, RZ ;
        /*28c0*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*28d0*/                   MOV R4, R4 ;
        /*28e0*/                   MOV R5, R5 ;
        /*28f0*/                   MOV R4, R4 ;
        /*2900*/                   MOV R5, R5 ;
        /*2910*/                   LD.E.64.SYS R4, [R4] ;
        /*2920*/                   MOV R3, R4 ;
        /*2930*/                   MOV R6, R5 ;
        /*2940*/                   MOV R0, R0 ;
        /*2950*/                   MOV R4, R0 ;
        /*2960*/                   MOV R5, RZ ;
        /*2970*/                   SHF.L.U64.HI R5, R4, 0x3, R5 ;
        /*2980*/                   SHF.L.U32 R4, R4, 0x3, RZ ;
        /*2990*/                   IADD3 R4, P0, R3, R4, RZ ;
        /*29a0*/                   IADD3.X R5, R6, R5, RZ, P0, !PT ;
        /*29b0*/                   MOV R4, R4 ;
        /*29c0*/                   MOV R5, R5 ;
.L_x_171:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 69
        /*29d0*/                   MOV R4, R4 ;
        /*29e0*/                   MOV R5, R5 ;
        /*29f0*/                   MOV R4, R4 ;
        /*2a00*/                   MOV R5, R5 ;
        /*2a10*/                   LD.E.64.SYS R4, [R4] ;
        /*2a20*/                   MOV R8, R30 ;
        /*2a30*/                   MOV R9, R31 ;
        /*2a40*/                   IADD3 R6, P0, R16, 0x38, RZ ;
        /*2a50*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*2a60*/                   MOV R6, R6 ;
        /*2a70*/                   MOV R7, R7 ;
        /*2a80*/                   MOV R6, R6 ;
        /*2a90*/                   MOV R7, R7 ;
        /*2aa0*/                   ST.E.64.SYS [R6], R8 ;
        /*2ab0*/                   MOV R0, RZ ;
        /*2ac0*/                   MOV R0, R0 ;
        /*2ad0*/                   MOV R4, R4 ;
        /*2ae0*/                   MOV R5, R5 ;
        /*2af0*/                   MOV R0, R0 ;
        /*2b00*/                   BRA `(.L_x_113) ;
.L_x_113:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*2b10*/                   IADD3 R6, P0, R16, 0x38, RZ ;
        /*2b20*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*2b30*/                   MOV R6, R6 ;
        /*2b40*/                   MOV R7, R7 ;
        /*2b50*/                   MOV R6, R6 ;
        /*2b60*/                   MOV R7, R7 ;
        /*2b70*/                   LD.E.64.SYS R6, [R6] ;
        /*2b80*/                   MOV R3, R6 ;
        /*2b90*/                   MOV R6, R7 ;
        /*2ba0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*2bb0*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*2bc0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*2bd0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*2be0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*2bf0*/                   BSSY B0, `(.L_x_114) ;
        /*2c00*/               @P0 BRA `(.L_x_115) ;
        /*2c10*/                   BRA `(.L_x_116) ;
.L_x_116:
        /*2c20*/                   BRA `(.L_x_115) ;
.L_x_115:
        /*2c30*/                   BSYNC B0 ;
.L_x_114:
        /*2c40*/                   IADD3 R6, P0, R16, 0x38, RZ ;
        /*2c50*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*2c60*/                   MOV R6, R6 ;
        /*2c70*/                   MOV R7, R7 ;
        /*2c80*/                   MOV R6, R6 ;
        /*2c90*/                   MOV R7, R7 ;
        /*2ca0*/                   LD.E.64.SYS R6, [R6] ;
        /*2cb0*/                   MOV R3, R6 ;
        /*2cc0*/                   MOV R8, R7 ;
        /*2cd0*/                   MOV R0, R0 ;
        /*2ce0*/                   MOV R6, R0 ;
        /*2cf0*/                   MOV R7, RZ ;
        /*2d00*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*2d10*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*2d20*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*2d30*/                   IADD3.X R7, R8, R7, RZ, P0, !PT ;
        /*2d40*/                   MOV R6, R6 ;
        /*2d50*/                   MOV R7, R7 ;
.L_x_172:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 69
        /*2d60*/                   MOV R6, R6 ;
        /*2d70*/                   MOV R7, R7 ;
        /*2d80*/                   MOV R6, R6 ;
        /*2d90*/                   MOV R7, R7 ;
        /*2da0*/                   LD.E.64.SYS R6, [R6] ;
        /*2db0*/                   DMUL R4, R4, R6 ;
        /*2dc0*/                   MOV R8, R30 ;
        /*2dd0*/                   MOV R9, R31 ;
        /*2de0*/                   IADD3 R6, P0, R16, 0x40, RZ ;
        /*2df0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*2e00*/                   MOV R6, R6 ;
        /*2e10*/                   MOV R7, R7 ;
        /*2e20*/                   MOV R6, R6 ;
        /*2e30*/                   MOV R7, R7 ;
        /*2e40*/                   ST.E.64.SYS [R6], R8 ;
        /*2e50*/                   MOV R0, 0x2 ;
        /*2e60*/                   MOV R0, R0 ;
        /*2e70*/                   MOV R4, R4 ;
        /*2e80*/                   MOV R5, R5 ;
        /*2e90*/                   MOV R0, R0 ;
        /*2ea0*/                   BRA `(.L_x_117) ;
.L_x_117:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*2eb0*/                   IADD3 R6, P0, R16, 0x40, RZ ;
        /*2ec0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*2ed0*/                   MOV R6, R6 ;
        /*2ee0*/                   MOV R7, R7 ;
        /*2ef0*/                   MOV R6, R6 ;
        /*2f00*/                   MOV R7, R7 ;
        /*2f10*/                   LD.E.64.SYS R6, [R6] ;
        /*2f20*/                   MOV R3, R6 ;
        /*2f30*/                   MOV R6, R7 ;
        /*2f40*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*2f50*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*2f60*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*2f70*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*2f80*/                   BMOV.32.CLEAR RZ, B0 ;
        /*2f90*/                   BSSY B0, `(.L_x_118) ;
        /*2fa0*/               @P0 BRA `(.L_x_119) ;
        /*2fb0*/                   BRA `(.L_x_120) ;
.L_x_120:
        /*2fc0*/                   BRA `(.L_x_119) ;
.L_x_119:
        /*2fd0*/                   BSYNC B0 ;
.L_x_118:
        /*2fe0*/                   IADD3 R6, P0, R16, 0x40, RZ ;
        /*2ff0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3000*/                   MOV R6, R6 ;
        /*3010*/                   MOV R7, R7 ;
        /*3020*/                   MOV R6, R6 ;
        /*3030*/                   MOV R7, R7 ;
        /*3040*/                   LD.E.64.SYS R6, [R6] ;
        /*3050*/                   MOV R3, R6 ;
        /*3060*/                   MOV R8, R7 ;
        /*3070*/                   MOV R0, R0 ;
        /*3080*/                   MOV R6, R0 ;
        /*3090*/                   MOV R7, RZ ;
        /*30a0*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*30b0*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*30c0*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*30d0*/                   IADD3.X R7, R8, R7, RZ, P0, !PT ;
        /*30e0*/                   MOV R6, R6 ;
        /*30f0*/                   MOV R7, R7 ;
.L_x_173:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 69
        /*3100*/                   MOV R6, R6 ;
        /*3110*/                   MOV R7, R7 ;
        /*3120*/                   MOV R6, R6 ;
        /*3130*/                   MOV R7, R7 ;
        /*3140*/                   LD.E.64.SYS R6, [R6] ;
        /*3150*/                   DMUL R6, R18, R6 ;
        /*3160*/                   DADD R4, R4, R6 ;
        /*3170*/                   DMUL R4, R4, R26 ;
        /*3180*/                   MOV R8, R30 ;
        /*3190*/                   MOV R9, R31 ;
        /*31a0*/                   IADD3 R6, P0, R16, 0x48, RZ ;
        /*31b0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*31c0*/                   MOV R6, R6 ;
        /*31d0*/                   MOV R7, R7 ;
        /*31e0*/                   MOV R6, R6 ;
        /*31f0*/                   MOV R7, R7 ;
        /*3200*/                   ST.E.64.SYS [R6], R8 ;
        /*3210*/                   MOV R0, 0x1 ;
        /*3220*/                   MOV R0, R0 ;
        /*3230*/                   MOV R4, R4 ;
        /*3240*/                   MOV R5, R5 ;
        /*3250*/                   MOV R0, R0 ;
        /*3260*/                   BRA `(.L_x_121) ;
.L_x_121:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*3270*/                   IADD3 R6, P0, R16, 0x48, RZ ;
        /*3280*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3290*/                   MOV R6, R6 ;
        /*32a0*/                   MOV R7, R7 ;
        /*32b0*/                   MOV R6, R6 ;
        /*32c0*/                   MOV R7, R7 ;
        /*32d0*/                   LD.E.64.SYS R6, [R6] ;
        /*32e0*/                   MOV R3, R6 ;
        /*32f0*/                   MOV R6, R7 ;
        /*3300*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*3310*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*3320*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3330*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3340*/                   BMOV.32.CLEAR RZ, B0 ;
        /*3350*/                   BSSY B0, `(.L_x_122) ;
        /*3360*/               @P0 BRA `(.L_x_123) ;
        /*3370*/                   BRA `(.L_x_124) ;
.L_x_124:
        /*3380*/                   BRA `(.L_x_123) ;
.L_x_123:
        /*3390*/                   BSYNC B0 ;
.L_x_122:
        /*33a0*/                   IADD3 R6, P0, R16, 0x48, RZ ;
        /*33b0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*33c0*/                   MOV R6, R6 ;
        /*33d0*/                   MOV R7, R7 ;
        /*33e0*/                   MOV R6, R6 ;
        /*33f0*/                   MOV R7, R7 ;
        /*3400*/                   LD.E.64.SYS R6, [R6] ;
        /*3410*/                   MOV R3, R6 ;
        /*3420*/                   MOV R8, R7 ;
        /*3430*/                   MOV R0, R0 ;
        /*3440*/                   MOV R6, R0 ;
        /*3450*/                   MOV R7, RZ ;
        /*3460*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*3470*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*3480*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*3490*/                   IADD3.X R7, R8, R7, RZ, P0, !PT ;
        /*34a0*/                   MOV R6, R6 ;
        /*34b0*/                   MOV R7, R7 ;
.L_x_174:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 69
        /*34c0*/                   MOV R6, R6 ;
        /*34d0*/                   MOV R7, R7 ;
        /*34e0*/                   MOV R6, R6 ;
        /*34f0*/                   MOV R7, R7 ;
        /*3500*/                   LD.E.64.SYS R6, [R6] ;
        /*3510*/                   DMUL R6, R24, R6 ;
        /*3520*/                   DADD R4, R4, R6 ;
        /*3530*/                   IADD3 R6, P0, R16, 0x78, RZ ;
        /*3540*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3550*/                   MOV R6, R6 ;
        /*3560*/                   MOV R7, R7 ;
        /*3570*/                   MOV R6, R6 ;
        /*3580*/                   MOV R7, R7 ;
        /*3590*/                   ST.E.64.SYS [R6], R4 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 67
        /*35a0*/                   DADD R4, -RZ, -R18 ;
        /*35b0*/                   MOV R4, R4 ;
        /*35c0*/                   MOV R5, R5 ;
        /*35d0*/                   MOV R8, R30 ;
        /*35e0*/                   MOV R9, R31 ;
        /*35f0*/                   IADD3 R6, P0, R16, 0x50, RZ ;
        /*3600*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3610*/                   MOV R6, R6 ;
        /*3620*/                   MOV R7, R7 ;
        /*3630*/                   MOV R6, R6 ;
        /*3640*/                   MOV R7, R7 ;
        /*3650*/                   ST.E.64.SYS [R6], R8 ;
        /*3660*/                   MOV R0, RZ ;
        /*3670*/                   MOV R0, R0 ;
        /*3680*/                   MOV R4, R4 ;
        /*3690*/                   MOV R5, R5 ;
        /*36a0*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 70
        /*36b0*/                   BRA `(.L_x_125) ;
.L_x_125:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*36c0*/                   IADD3 R6, P0, R16, 0x50, RZ ;
        /*36d0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*36e0*/                   MOV R6, R6 ;
        /*36f0*/                   MOV R7, R7 ;
        /*3700*/                   MOV R6, R6 ;
        /*3710*/                   MOV R7, R7 ;
        /*3720*/                   LD.E.64.SYS R6, [R6] ;
        /*3730*/                   MOV R3, R6 ;
        /*3740*/                   MOV R6, R7 ;
        /*3750*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*3760*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*3770*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3780*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3790*/                   BMOV.32.CLEAR RZ, B0 ;
        /*37a0*/                   BSSY B0, `(.L_x_126) ;
        /*37b0*/               @P0 BRA `(.L_x_127) ;
        /*37c0*/                   BRA `(.L_x_128) ;
.L_x_128:
        /*37d0*/                   BRA `(.L_x_127) ;
.L_x_127:
        /*37e0*/                   BSYNC B0 ;
.L_x_126:
        /*37f0*/                   IADD3 R6, P0, R16, 0x50, RZ ;
        /*3800*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3810*/                   MOV R6, R6 ;
        /*3820*/                   MOV R7, R7 ;
        /*3830*/                   MOV R6, R6 ;
        /*3840*/                   MOV R7, R7 ;
        /*3850*/                   LD.E.64.SYS R6, [R6] ;
        /*3860*/                   MOV R3, R6 ;
        /*3870*/                   MOV R8, R7 ;
        /*3880*/                   MOV R0, R0 ;
        /*3890*/                   MOV R6, R0 ;
        /*38a0*/                   MOV R7, RZ ;
        /*38b0*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*38c0*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*38d0*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*38e0*/                   IADD3.X R7, R8, R7, RZ, P0, !PT ;
        /*38f0*/                   MOV R6, R6 ;
        /*3900*/                   MOV R7, R7 ;
.L_x_175:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 70
        /*3910*/                   MOV R6, R6 ;
        /*3920*/                   MOV R7, R7 ;
        /*3930*/                   MOV R6, R6 ;
        /*3940*/                   MOV R7, R7 ;
        /*3950*/                   LD.E.64.SYS R6, [R6] ;
        /*3960*/                   DMUL R4, R4, R6 ;
        /*3970*/                   MOV R6, R28 ;
        /*3980*/                   MOV R7, R29 ;
        /*3990*/                   IADD3 R8, P0, R16, 0x58, RZ ;
        /*39a0*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*39b0*/                   MOV R8, R8 ;
        /*39c0*/                   MOV R9, R9 ;
        /*39d0*/                   MOV R8, R8 ;
        /*39e0*/                   MOV R9, R9 ;
        /*39f0*/                   ST.E.64.SYS [R8], R6 ;
        /*3a00*/                   MOV R0, 0x2 ;
        /*3a10*/                   MOV R0, R0 ;
        /*3a20*/                   MOV R4, R4 ;
        /*3a30*/                   MOV R5, R5 ;
        /*3a40*/                   MOV R0, R0 ;
        /*3a50*/                   BRA `(.L_x_129) ;
.L_x_129:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*3a60*/                   IADD3 R6, P0, R16, 0x58, RZ ;
        /*3a70*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3a80*/                   MOV R6, R6 ;
        /*3a90*/                   MOV R7, R7 ;
        /*3aa0*/                   MOV R6, R6 ;
        /*3ab0*/                   MOV R7, R7 ;
        /*3ac0*/                   LD.E.64.SYS R6, [R6] ;
        /*3ad0*/                   MOV R3, R6 ;
        /*3ae0*/                   MOV R6, R7 ;
        /*3af0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*3b00*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*3b10*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3b20*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3b30*/                   BMOV.32.CLEAR RZ, B0 ;
        /*3b40*/                   BSSY B0, `(.L_x_130) ;
        /*3b50*/               @P0 BRA `(.L_x_131) ;
        /*3b60*/                   BRA `(.L_x_132) ;
.L_x_132:
        /*3b70*/                   BRA `(.L_x_131) ;
.L_x_131:
        /*3b80*/                   BSYNC B0 ;
.L_x_130:
        /*3b90*/                   IADD3 R6, P0, R16, 0x58, RZ ;
        /*3ba0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3bb0*/                   MOV R6, R6 ;
        /*3bc0*/                   MOV R7, R7 ;
        /*3bd0*/                   MOV R6, R6 ;
        /*3be0*/                   MOV R7, R7 ;
        /*3bf0*/                   LD.E.64.SYS R6, [R6] ;
        /*3c00*/                   MOV R3, R6 ;
        /*3c10*/                   MOV R8, R7 ;
        /*3c20*/                   MOV R0, R0 ;
        /*3c30*/                   MOV R6, R0 ;
        /*3c40*/                   MOV R7, RZ ;
        /*3c50*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*3c60*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*3c70*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*3c80*/                   IADD3.X R7, R8, R7, RZ, P0, !PT ;
        /*3c90*/                   MOV R6, R6 ;
        /*3ca0*/                   MOV R7, R7 ;
.L_x_176:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 70
        /*3cb0*/                   MOV R6, R6 ;
        /*3cc0*/                   MOV R7, R7 ;
        /*3cd0*/                   MOV R6, R6 ;
        /*3ce0*/                   MOV R7, R7 ;
        /*3cf0*/                   LD.E.64.SYS R6, [R6] ;
        /*3d00*/                   MOV R8, R30 ;
        /*3d10*/                   MOV R9, R31 ;
        /*3d20*/                   IADD3 R10, P0, R16, 0x60, RZ ;
        /*3d30*/                   IADD3.X R11, R2, RZ, RZ, P0, !PT ;
        /*3d40*/                   MOV R10, R10 ;
        /*3d50*/                   MOV R11, R11 ;
        /*3d60*/                   MOV R10, R10 ;
        /*3d70*/                   MOV R11, R11 ;
        /*3d80*/                   ST.E.64.SYS [R10], R8 ;
        /*3d90*/                   MOV R0, 0x2 ;
        /*3da0*/                   MOV R0, R0 ;
        /*3db0*/                   MOV R6, R6 ;
        /*3dc0*/                   MOV R7, R7 ;
        /*3dd0*/                   MOV R0, R0 ;
        /*3de0*/                   BRA `(.L_x_133) ;
.L_x_133:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*3df0*/                   IADD3 R8, P0, R16, 0x60, RZ ;
        /*3e00*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*3e10*/                   MOV R8, R8 ;
        /*3e20*/                   MOV R9, R9 ;
        /*3e30*/                   MOV R8, R8 ;
        /*3e40*/                   MOV R9, R9 ;
        /*3e50*/                   LD.E.64.SYS R8, [R8] ;
        /*3e60*/                   MOV R3, R8 ;
        /*3e70*/                   MOV R8, R9 ;
        /*3e80*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*3e90*/                   ISETP.NE.AND.EX P0, PT, R8, RZ, PT, P0 ;
        /*3ea0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3eb0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3ec0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*3ed0*/                   BSSY B0, `(.L_x_134) ;
        /*3ee0*/               @P0 BRA `(.L_x_135) ;
        /*3ef0*/                   BRA `(.L_x_136) ;
.L_x_136:
        /*3f00*/                   BRA `(.L_x_135) ;
.L_x_135:
        /*3f10*/                   BSYNC B0 ;
.L_x_134:
        /*3f20*/                   IADD3 R8, P0, R16, 0x60, RZ ;
        /*3f30*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*3f40*/                   MOV R8, R8 ;
        /*3f50*/                   MOV R9, R9 ;
        /*3f60*/                   MOV R8, R8 ;
        /*3f70*/                   MOV R9, R9 ;
        /*3f80*/                   LD.E.64.SYS R8, [R8] ;
        /*3f90*/                   MOV R3, R8 ;
        /*3fa0*/                   MOV R10, R9 ;
        /*3fb0*/                   MOV R0, R0 ;
        /*3fc0*/                   MOV R8, R0 ;
        /*3fd0*/                   MOV R9, RZ ;
        /*3fe0*/                   SHF.L.U64.HI R9, R8, 0x3, R9 ;
        /*3ff0*/                   SHF.L.U32 R8, R8, 0x3, RZ ;
        /*4000*/                   IADD3 R8, P0, R3, R8, RZ ;
        /*4010*/                   IADD3.X R9, R10, R9, RZ, P0, !PT ;
        /*4020*/                   MOV R8, R8 ;
        /*4030*/                   MOV R9, R9 ;
.L_x_177:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 70
        /*4040*/                   MOV R8, R8 ;
        /*4050*/                   MOV R9, R9 ;
        /*4060*/                   MOV R8, R8 ;
        /*4070*/                   MOV R9, R9 ;
        /*4080*/                   LD.E.64.SYS R8, [R8] ;
        /*4090*/                   DMUL R6, R6, R8 ;
        /*40a0*/                   DADD R4, R4, R6 ;
        /*40b0*/                   IADD3 R6, P0, R16, 0x80, RZ ;
        /*40c0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*40d0*/                   MOV R6, R6 ;
        /*40e0*/                   MOV R7, R7 ;
        /*40f0*/                   MOV R6, R6 ;
        /*4100*/                   MOV R7, R7 ;
        /*4110*/                   ST.E.64.SYS [R6], R4 ;
        /*4120*/                   IADD3 R4, P0, R16, 0x70, RZ ;
        /*4130*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 73
        /*4140*/                   MOV R4, R4 ;
        /*4150*/                   MOV R5, R5 ;
        /*4160*/                   MOV R20, 32@lo((_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ + .L_x_6@srel)) ;
        /*4170*/                   MOV R21, 32@hi((_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_ + .L_x_6@srel)) ;
        /*4180*/                   CALL.ABS.NOINC `(_ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE) ;
.L_x_6:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 74
        /*4190*/                   IADD3 R4, P0, R16, 0x80, RZ ;
        /*41a0*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*41b0*/                   MOV R4, R4 ;
        /*41c0*/                   MOV R5, R5 ;
        /*41d0*/                   MOV R4, R4 ;
        /*41e0*/                   MOV R5, R5 ;
        /*41f0*/                   LD.E.64.SYS R4, [R4] ;
        /*4200*/                   MOV R8, R4 ;
        /*4210*/                   MOV R9, R5 ;
        /*4220*/                   IADD3 R4, P0, R16, 0x78, RZ ;
        /*4230*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*4240*/                   MOV R4, R4 ;
        /*4250*/                   MOV R5, R5 ;
        /*4260*/                   MOV R4, R4 ;
        /*4270*/                   MOV R5, R5 ;
        /*4280*/                   LD.E.64.SYS R4, [R4] ;
        /*4290*/                   MOV R6, R4 ;
        /*42a0*/                   MOV R7, R5 ;
        /*42b0*/                   IADD3 R4, P0, R16, 0x70, RZ ;
        /*42c0*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*42d0*/                   MOV R4, R4 ;
        /*42e0*/                   MOV R5, R5 ;
        /*42f0*/                   MOV R4, R4 ;
        /*4300*/                   MOV R5, R5 ;
        /*4310*/                   LD.E.64.SYS R4, [R4] ;
        /*4320*/                   MOV R0, R4 ;
        /*4330*/                   MOV R5, R5 ;
        /*4340*/                   MOV R4, R0 ;
        /*4350*/                   MOV R5, R5 ;
        /*4360*/                   MOV R6, R6 ;
        /*4370*/                   MOV R7, R7 ;
        /*4380*/                   MOV R8, R8 ;
        /*4390*/                   MOV R9, R9 ;
        /*43a0*/                   BRA `(.L_x_137) ;
.L_x_137:
        /*43b0*/                   MOV R4, R4 ;
        /*43c0*/                   MOV R5, R5 ;
        /*43d0*/                   MOV R6, R6 ;
        /*43e0*/                   MOV R7, R7 ;
        /*43f0*/                   MOV R8, R8 ;
        /*4400*/                   MOV R9, R9 ;
        /*4410*/                   BMOV.32 B6, R17 ;
        /*4420*/                   LDL R2, [R1+0x88] ;
        /*4430*/                   LDL R16, [R1+0x8c] ;
        /*4440*/                   LDL R17, [R1+0x90] ;
        /*4450*/                   LDL R18, [R1+0x94] ;
        /*4460*/                   LDL R19, [R1+0x98] ;
        /*4470*/                   LDL R20, [R1+0x9c] ;
        /*4480*/                   LDL R21, [R1+0xa0] ;
        /*4490*/                   LDL R22, [R1+0xa4] ;
        /*44a0*/                   LDL R23, [R1+0xa8] ;
        /*44b0*/                   LDL R24, [R1+0xac] ;
        /*44c0*/                   LDL R25, [R1+0xb0] ;
        /*44d0*/                   LDL R26, [R1+0xb4] ;
        /*44e0*/                   LDL R27, [R1+0xb8] ;
        /*44f0*/                   LDL R28, [R1+0xbc] ;
        /*4500*/                   LDL R29, [R1+0xc0] ;
        /*4510*/                   LDL R30, [R1+0xc4] ;
        /*4520*/                   LDL R31, [R1+0xc8] ;
        /*4530*/                   IADD3 R1, R1, 0xd0, RZ ;
        /*4540*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_138:
        /*4550*/                   BRA `(.L_x_138);
        /*4560*/                   NOP;
        /*4570*/                   NOP;
.L_x_155:


//--------------------- .text._Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_ --------------------------
	.section	.text._Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
        .global         _Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_
        .type           _Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_,@function
        .size           _Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_,(.L_x_183 - _Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_)
        .other          _Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_,@"STO_CUDA_ENTRY STV_DEFAULT"
_Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_:
.text._Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 77
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
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 82
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
        /*0830*/                   MOV R20, 32@lo((_Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_ + .L_x_7@srel)) ;
        /*0840*/                   MOV R21, 32@hi((_Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_ + .L_x_7@srel)) ;
        /*0850*/                   CALL.ABS.NOINC `(_Z10rotate_modRKN9celeritas5ArrayIdLj3EEES3_) ;
.L_x_7:
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
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-simplest.cu", line 83
        /*0a00*/                   MEMBAR.SC.VC ;
        /*0a10*/                   ERRBAR ;
        /*0a20*/                   EXIT ;
        /*0a30*/                   MEMBAR.SC.VC ;
        /*0a40*/                   ERRBAR ;
        /*0a50*/                   EXIT ;
.L_x_139:
        /*0a60*/                   BRA `(.L_x_139);
        /*0a70*/                   NOP;
.L_x_183:


//--------------------- .text.sqrt                --------------------------
	.section	.text.sqrt,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text.sqrt:
        .type           sqrt,@function
        .size           sqrt,(.L_x_193 - sqrt)
sqrt:
        /*0000*/                   IADD3 R1, R1, -0x18, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_140) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_140:
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
        /*0550*/                   BSSY B6, `(.L_x_141) ;
        /*0560*/               @P0 BRA `(.L_x_142) ;
        /*0570*/                   MOV R4, R4 ;
        /*0580*/                   MOV R5, R5 ;
        /*0590*/                   MOV R6, R6 ;
        /*05a0*/                   MOV R8, R8 ;
        /*05b0*/                   MOV R9, R9 ;
        /*05c0*/                   MOV R10, R10 ;
        /*05d0*/                   MOV R11, R11 ;
        /*05e0*/                   MOV R12, R12 ;
        /*05f0*/                   MOV R13, R13 ;
        /*0600*/                   MOV R20, 32@lo((sqrt + .L_x_8@srel)) ;
        /*0610*/                   MOV R21, 32@hi((sqrt + .L_x_8@srel)) ;
        /*0620*/                   CALL.ABS.NOINC `(__cuda_sm20_dsqrt_rn_f64_mediumpath_v1) ;
.L_x_8:
        /*0630*/                   MOV R4, R4 ;
        /*0640*/                   MOV R5, R5 ;
        /*0650*/                   MOV R14, R4 ;
        /*0660*/                   MOV R15, R5 ;
.L_x_142:
        /*0670*/                   BSYNC B6 ;
.L_x_141:
        /*0680*/                   MOV R14, R14 ;
        /*0690*/                   MOV R15, R15 ;
        /*06a0*/                   MOV R14, R14 ;
        /*06b0*/                   MOV R15, R15 ;
        /*06c0*/                   MOV R4, R14 ;
        /*06d0*/                   MOV R5, R15 ;
        /*06e0*/                   MOV R4, R4 ;
        /*06f0*/                   MOV R5, R5 ;
        /*0700*/                   BRA `(.L_x_143) ;
.L_x_143:
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
.L_x_144:
        /*07b0*/                   BRA `(.L_x_144);
        /*07c0*/                   NOP;
        /*07d0*/                   NOP;
        /*07e0*/                   NOP;
        /*07f0*/                   NOP;
.L_x_193:
