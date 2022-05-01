	.headerflags	@"EF_CUDA_TEXMODE_UNIFIED EF_CUDA_64BIT_ADDRESS EF_CUDA_SM70 EF_CUDA_VIRTUAL_SM(EF_CUDA_SM70)"
	.elftype	@"ET_REL"


//--------------------- .text.__cuda_sm20_div_f64_slowpath_v2 --------------------------
	.section	.text.__cuda_sm20_div_f64_slowpath_v2,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=38"
	.align	128
.text.__cuda_sm20_div_f64_slowpath_v2:
        .weak           __cuda_sm20_div_f64_slowpath_v2
        .type           __cuda_sm20_div_f64_slowpath_v2,@function
        .size           __cuda_sm20_div_f64_slowpath_v2,(.L_x_274 - __cuda_sm20_div_f64_slowpath_v2)
__cuda_sm20_div_f64_slowpath_v2:
        /*0000*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0010*/                   MOV R7, R7 ;
        /*0020*/                   MOV R6, R6 ;
        /*0030*/                   MOV R5, R5 ;
        /*0040*/                   MOV R4, R4 ;
        /*0050*/                   MOV R4, R4 ;
        /*0060*/                   MOV R5, R5 ;
        /*0070*/                   MOV R8, R6 ;
        /*0080*/                   MOV R9, R7 ;
        /*0090*/                   MOV R6, R4 ;
        /*00a0*/                   MOV R7, R5 ;
        /*00b0*/                   MOV R8, R8 ;
        /*00c0*/                   MOV R9, R9 ;
        /*00d0*/                   MOV R0, R9 ;
        /*00e0*/                   MOV R0, R0 ;
        /*00f0*/                   LOP3.LUT R0, R0, 0x40000000, RZ, 0xc0, !PT ;
        /*0100*/                   ISETP.LT.U32.AND P0, PT, R0, 0x40000000, PT ;
        /*0110*/                   MOV R4, 0x5ff00000 ;
        /*0120*/                   SEL R4, R4, 0x1ff00000, P0 ;
        /*0130*/                   MOV R0, RZ ;
        /*0140*/                   MOV R5, R4 ;
        /*0150*/                   MOV R4, R0 ;
        /*0160*/                   MOV R3, R7 ;
        /*0170*/                   MOV R3, R3 ;
        /*0180*/                   LOP3.LUT R10, R3, 0x7f800000, RZ, 0xc0, !PT ;
        /*0190*/                   ISETP.LT.U32.AND P0, PT, R10, 0x3e800000, PT ;
        /*01a0*/                   MOV R12, 0x5ff00000 ;
        /*01b0*/                   SEL R12, R12, 0x1ff00000, P0 ;
        /*01c0*/                   MOV R13, R12 ;
        /*01d0*/                   MOV R12, R0 ;
        /*01e0*/                   DMUL R14, R4, R8 ;
        /*01f0*/                   DMUL R12, R12, R6 ;
        /*0200*/                   MOV R11, R14 ;
        /*0210*/                   MOV R32, R15 ;
        /*0220*/                   MOV R11, RZ ;
        /*0230*/                   MUFU.RCP64H R32, R32 ;
        /*0240*/                   MOV R11, R11 ;
        /*0250*/                   MOV R11, R11 ;
        /*0260*/                   MOV R32, R32 ;
        /*0270*/                   MOV R32, R32 ;
        /*0280*/                   LOP3.LUT R11, R11, 0x1, RZ, 0xfc, !PT ;
        /*0290*/                   MOV R33, R32 ;
        /*02a0*/                   MOV R32, R11 ;
        /*02b0*/                   DADD R14, -RZ, -R14 ;
        /*02c0*/                   MOV R14, R14 ;
        /*02d0*/                   MOV R15, R15 ;
        /*02e0*/                   MOV R34, 0x0 ;
        /*02f0*/                   MOV R35, 0x3ff00000 ;
        /*0300*/                   DFMA R34, R14, R32, R34 ;
        /*0310*/                   DFMA R34, R34, R34, R34 ;
        /*0320*/                   DFMA R34, R34, R32, R32 ;
        /*0330*/                   DMUL R32, R12, R34 ;
        /*0340*/                   DFMA R12, R14, R32, R12 ;
        /*0350*/                   DFMA R12, R12, R34, R32 ;
        /*0360*/                   DADD R14, -RZ, |R12| ;
        /*0370*/                   MOV R14, R14 ;
        /*0380*/                   MOV R15, R15 ;
        /*0390*/                   DSETP.LEU.AND P0, PT, R14, RZ, PT ;
        /*03a0*/                   MOV R6, R6 ;
        /*03b0*/                   MOV R7, R7 ;
        /*03c0*/                   MOV R8, R8 ;
        /*03d0*/                   MOV R9, R9 ;
        /*03e0*/                   MOV R0, R0 ;
        /*03f0*/                   MOV R4, R4 ;
        /*0400*/                   MOV R5, R5 ;
        /*0410*/                   MOV R3, R3 ;
        /*0420*/                   MOV R10, R10 ;
        /*0430*/                   MOV R12, R12 ;
        /*0440*/                   MOV R13, R13 ;
        /*0450*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0460*/                   BSSY B0, `(.L_x_12) ;
        /*0470*/               @P0 BRA `(.L_x_13) ;
        /*0480*/                   BRA `(.L_x_14) ;
.L_x_13:
        /*0490*/                   DSETP.EQ.AND P0, PT, R12, RZ, PT ;
        /*04a0*/               @P0 BRA `(.L_x_15) ;
        /*04b0*/                   BRA `(.L_x_16) ;
.L_x_15:
        /*04c0*/                   DMUL R6, R6, R8 ;
        /*04d0*/                   MOV R4, R6 ;
        /*04e0*/                   MOV R5, R7 ;
        /*04f0*/                   BRA `(.L_x_17) ;
.L_x_14:
        /*0500*/                   ISETP.GT.U32.AND P0, PT, R10, 0x3e7fffff, PT ;
        /*0510*/                   MOV R10, 0x5ff00000 ;
        /*0520*/                   SEL R10, R10, 0x1ff00000, P0 ;
        /*0530*/                   MOV R11, R10 ;
        /*0540*/                   MOV R10, R0 ;
        /*0550*/                   DMUL R14, R12, R4 ;
        /*0560*/                   DMUL R14, R14, R10 ;
        /*0570*/                   DMUL R10, R12, R10 ;
        /*0580*/                   DMUL R10, R4, R10 ;
        /*0590*/                   DADD R4, -RZ, -R6 ;
        /*05a0*/                   MOV R4, R4 ;
        /*05b0*/                   MOV R5, R5 ;
        /*05c0*/                   DFMA R12, R14, R8, R4 ;
        /*05d0*/                   DFMA R4, R10, R8, R4 ;
        /*05e0*/                   DADD R12, -RZ, |R12| ;
        /*05f0*/                   MOV R12, R12 ;
        /*0600*/                   MOV R13, R13 ;
        /*0610*/                   DADD R4, -RZ, |R4| ;
        /*0620*/                   MOV R4, R4 ;
        /*0630*/                   MOV R5, R5 ;
        /*0640*/                   DSETP.GT.AND P0, PT, R12, R4, PT ;
        /*0650*/                   MOV R5, R10 ;
        /*0660*/                   MOV R11, R11 ;
        /*0670*/                   MOV R4, R14 ;
        /*0680*/                   MOV R14, R15 ;
        /*0690*/                   FSEL R5, R5, R4, P0 ;
        /*06a0*/                   FSEL R11, R11, R14, P0 ;
        /*06b0*/                   MOV R4, R11 ;
        /*06c0*/                   MOV R10, R4 ;
        /*06d0*/                   MOV R4, R10 ;
        /*06e0*/                   FADD R4, -RZ, |R4| ;
        /*06f0*/                   MOV R4, R4 ;
        /*0700*/                   FSETP.GTU.AND P0, PT, R4, 1.469367938527859385e-39, PT ;
        /*0710*/                   MOV R4, R5 ;
        /*0720*/                   MOV R5, R11 ;
        /*0730*/                   MOV R4, R4 ;
        /*0740*/                   MOV R5, R5 ;
        /*0750*/                   MOV R10, R10 ;
        /*0760*/               @P0 BRA `(.L_x_17) ;
        /*0770*/                   MOV R4, R4 ;
        /*0780*/                   MOV R11, R4 ;
        /*0790*/                   LOP3.LUT R4, R11, 0xfffffffe, RZ, 0xc0, !PT ;
        /*07a0*/                   MOV R4, R4 ;
        /*07b0*/                   MOV R5, R10 ;
        /*07c0*/                   LOP3.LUT R11, R11, 0x1, RZ, 0xfc, !PT ;
        /*07d0*/                   LOP3.LUT R11, R11, R10, RZ, 0x3c, !PT ;
        /*07e0*/                   LOP3.LUT R10, R11, R10, RZ, 0x3c, !PT ;
        /*07f0*/                   LOP3.LUT R11, R11, R10, RZ, 0x3c, !PT ;
        /*0800*/                   MOV R3, R3 ;
        /*0810*/                   FADD R3, -RZ, |R3| ;
        /*0820*/                   MOV R3, R3 ;
        /*0830*/                   FSETP.LT.AND P0, PT, R3, 1.5046327690525280102e-36, PT ;
        /*0840*/                   MOV R12, 0x58500000 ;
        /*0850*/                   SEL R12, R12, 0x3ff00000, P0 ;
        /*0860*/                   MOV R13, R12 ;
        /*0870*/                   MOV R12, R0 ;
        /*0880*/                   DMUL R8, R12, R8 ;
        /*0890*/                   DMUL R6, R12, R6 ;
        /*08a0*/                   DADD R6, -RZ, -R6 ;
        /*08b0*/                   MOV R6, R6 ;
        /*08c0*/                   MOV R7, R7 ;
        /*08d0*/                   DFMA R12, R4, R8, R6 ;
        /*08e0*/                   DFMA R14, R10, R8, R6 ;
        /*08f0*/                   DADD R12, -RZ, |R12| ;
        /*0900*/                   MOV R12, R12 ;
        /*0910*/                   MOV R13, R13 ;
        /*0920*/                   DADD R14, -RZ, |R14| ;
        /*0930*/                   MOV R14, R14 ;
        /*0940*/                   MOV R15, R15 ;
        /*0950*/                   DSETP.GT.AND P0, PT, R12, R14, PT ;
        /*0960*/                   MOV R0, R10 ;
        /*0970*/                   MOV R10, R11 ;
        /*0980*/                   MOV R3, R4 ;
        /*0990*/                   MOV R5, R5 ;
        /*09a0*/                   FSEL R4, R0, R3, P0 ;
        /*09b0*/                   FSEL R5, R10, R5, P0 ;
        /*09c0*/                   MOV R0, R4 ;
        /*09d0*/                   MOV R0, R0 ;
        /*09e0*/                   LOP3.LUT R0, R0, 0x1, RZ, 0xc0, !PT ;
        /*09f0*/                   ISETP.EQ.U32.AND P0, PT, R0, 0x1, PT ;
        /*0a00*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0a10*/                   MOV R0, R4 ;
        /*0a20*/                   MOV R3, R5 ;
        /*0a30*/                   IADD3 R12, P1, R0, 0x1, RZ ;
        /*0a40*/                   IADD3.X R13, R3, RZ, RZ, P1, !PT ;
        /*0a50*/                   MOV R12, R12 ;
        /*0a60*/                   MOV R13, R13 ;
        /*0a70*/                   IADD3 R0, P1, R0, -0x1, RZ ;
        /*0a80*/                   IADD3.X R3, R3, -0x1, RZ, P1, !PT ;
        /*0a90*/                   MOV R0, R0 ;
        /*0aa0*/                   MOV R3, R3 ;
        /*0ab0*/                   FSEL R12, R4, R12, P0 ;
        /*0ac0*/                   FSEL R13, R5, R13, P0 ;
        /*0ad0*/                   FSEL R0, R0, R4, P0 ;
        /*0ae0*/                   FSEL R3, R3, R5, P0 ;
        /*0af0*/                   MOV R4, R12 ;
        /*0b00*/                   MOV R5, R13 ;
        /*0b10*/                   DFMA R4, R4, R8, R6 ;
        /*0b20*/                   MOV R10, R0 ;
        /*0b30*/                   MOV R11, R3 ;
        /*0b40*/                   DFMA R6, R10, R8, R6 ;
        /*0b50*/                   DADD R4, -RZ, |R4| ;
        /*0b60*/                   MOV R4, R4 ;
        /*0b70*/                   MOV R5, R5 ;
        /*0b80*/                   DADD R6, -RZ, |R6| ;
        /*0b90*/                   MOV R6, R6 ;
        /*0ba0*/                   MOV R7, R7 ;
        /*0bb0*/                   DSETP.GT.AND P0, PT, R4, R6, PT ;
        /*0bc0*/                   FSEL R4, R0, R12, P0 ;
        /*0bd0*/                   FSEL R5, R3, R13, P0 ;
        /*0be0*/                   MOV R4, R4 ;
        /*0bf0*/                   MOV R5, R5 ;
        /*0c00*/                   MOV R4, R4 ;
        /*0c10*/                   MOV R5, R5 ;
        /*0c20*/                   BRA `(.L_x_17) ;
.L_x_16:
        /*0c30*/                   MOV R0, R8 ;
        /*0c40*/                   MOV R0, R9 ;
        /*0c50*/                   MOV R4, RZ ;
        /*0c60*/                   MUFU.RCP64H R0, R0 ;
        /*0c70*/                   MOV R4, R4 ;
        /*0c80*/                   MOV R5, R0 ;
        /*0c90*/                   DADD R10, -RZ, |R4| ;
        /*0ca0*/                   MOV R10, R10 ;
        /*0cb0*/                   MOV R11, R11 ;
        /*0cc0*/                   DSETP.GT.AND P0, PT, R10, RZ, PT ;
        /*0cd0*/                   MOV R4, R4 ;
        /*0ce0*/                   MOV R5, R5 ;
        /*0cf0*/                   BMOV.32.CLEAR RZ, B1 ;
        /*0d00*/                   BSSY B1, `(.L_x_18) ;
        /*0d10*/               @P0 BRA `(.L_x_19) ;
        /*0d20*/                   DADD R10, -RZ, |R8| ;
        /*0d30*/                   MOV R10, R10 ;
        /*0d40*/                   MOV R11, R11 ;
        /*0d50*/                   DSETP.NEU.AND P0, PT, R10, +INF , PT ;
        /*0d60*/                   MOV R0, R8 ;
        /*0d70*/                   MOV R8, R9 ;
        /*0d80*/                   MOV R3, R4 ;
        /*0d90*/                   MOV R5, R5 ;
        /*0da0*/                   FSEL R4, R0, R3, P0 ;
        /*0db0*/                   FSEL R5, R8, R5, P0 ;
        /*0dc0*/                   MOV R4, R4 ;
        /*0dd0*/                   MOV R5, R5 ;
        /*0de0*/                   MOV R4, R4 ;
        /*0df0*/                   MOV R5, R5 ;
.L_x_19:
        /*0e00*/                   BSYNC B1 ;
.L_x_18:
        /*0e10*/                   DMUL R4, R4, R6 ;
        /*0e20*/                   MOV R4, R4 ;
        /*0e30*/                   MOV R5, R5 ;
        /*0e40*/                   BRA `(.L_x_17) ;
.L_x_17:
        /*0e50*/                   BSYNC B0 ;
.L_x_12:
        /*0e60*/                   MOV R4, R4 ;
        /*0e70*/                   MOV R5, R5 ;
        /*0e80*/                   MOV R0, R4 ;
        /*0e90*/                   MOV R5, R5 ;
        /*0ea0*/                   MOV R4, R0 ;
        /*0eb0*/                   MOV R5, R5 ;
        /*0ec0*/                   MOV R4, R4 ;
        /*0ed0*/                   MOV R5, R5 ;
        /*0ee0*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_20:
        /*0ef0*/                   BRA `(.L_x_20);
.L_x_274:


//--------------------- .text.__cuda_sm20_dblrcp_rn_slowpath_v3 --------------------------
	.section	.text.__cuda_sm20_dblrcp_rn_slowpath_v3,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text.__cuda_sm20_dblrcp_rn_slowpath_v3:
        .weak           __cuda_sm20_dblrcp_rn_slowpath_v3
        .type           __cuda_sm20_dblrcp_rn_slowpath_v3,@function
        .size           __cuda_sm20_dblrcp_rn_slowpath_v3,(.L_x_275 - __cuda_sm20_dblrcp_rn_slowpath_v3)
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
        /*0210*/                   BSSY B0, `(.L_x_21) ;
        /*0220*/               @P0 BRA `(.L_x_22) ;
        /*0230*/                   IADD3 R6, R8, -0x1, RZ ;
        /*0240*/                   IADD3 R7, R10, -0x1, RZ ;
        /*0250*/                   ISETP.LT.U32.AND P0, PT, R6, R7, PT ;
        /*0260*/               @P0 BRA `(.L_x_23) ;
        /*0270*/                   LOP3.LUT R4, R10, R3, RZ, 0x3c, !PT ;
        /*0280*/                   MOV R5, RZ ;
        /*0290*/                   LOP3.LUT R5, R5, R4, RZ, 0x3c, !PT ;
        /*02a0*/                   LOP3.LUT R4, R5, R4, RZ, 0x3c, !PT ;
        /*02b0*/                   LOP3.LUT R5, R5, R4, RZ, 0x3c, !PT ;
        /*02c0*/                   MOV R4, R4 ;
        /*02d0*/                   MOV R5, R5 ;
        /*02e0*/                   BRA `(.L_x_24) ;
.L_x_23:
        /*02f0*/                   ISETP.LT.U32.AND P0, PT, R8, 0x1000001, PT ;
        /*0300*/               @P0 BRA `(.L_x_25) ;
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
        /*0570*/                   BRA `(.L_x_24) ;
.L_x_25:
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
        /*0760*/                   BRA `(.L_x_24) ;
.L_x_22:
        /*0770*/                   LOP3.LUT R4, R3, 0x80000, RZ, 0xfc, !PT ;
        /*0780*/                   MOV R5, R4 ;
        /*0790*/                   MOV R4, R9 ;
        /*07a0*/                   MOV R4, R4 ;
        /*07b0*/                   MOV R5, R5 ;
        /*07c0*/                   BRA `(.L_x_24) ;
.L_x_24:
        /*07d0*/                   BSYNC B0 ;
.L_x_21:
        /*07e0*/                   MOV R4, R4 ;
        /*07f0*/                   MOV R5, R5 ;
        /*0800*/                   MOV R0, R4 ;
        /*0810*/                   MOV R5, R5 ;
        /*0820*/                   MOV R4, R0 ;
        /*0830*/                   MOV R5, R5 ;
        /*0840*/                   MOV R4, R4 ;
        /*0850*/                   MOV R5, R5 ;
        /*0860*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_26:
        /*0870*/                   BRA `(.L_x_26);
.L_x_275:


//--------------------- .text.__cuda_sm20_dsqrt_rn_f64_mediumpath_v1 --------------------------
	.section	.text.__cuda_sm20_dsqrt_rn_f64_mediumpath_v1,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text.__cuda_sm20_dsqrt_rn_f64_mediumpath_v1:
        .weak           __cuda_sm20_dsqrt_rn_f64_mediumpath_v1
        .type           __cuda_sm20_dsqrt_rn_f64_mediumpath_v1,@function
        .size           __cuda_sm20_dsqrt_rn_f64_mediumpath_v1,(.L_x_276 - __cuda_sm20_dsqrt_rn_f64_mediumpath_v1)
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
        /*0260*/                   BSSY B0, `(.L_x_27) ;
        /*0270*/               @P0 BRA `(.L_x_28) ;
        /*0280*/                   BRA `(.L_x_29) ;
.L_x_28:
        /*0290*/                   DSETP.EQU.AND P0, PT, R4, RZ, PT ;
        /*02a0*/               @P0 BRA `(.L_x_30) ;
        /*02b0*/                   MOV R0, R5 ;
        /*02c0*/                   MOV R0, R0 ;
        /*02d0*/                   ISETP.LT.AND P0, PT, R0, RZ, PT ;
        /*02e0*/                   MOV R0, R0 ;
        /*02f0*/               @P0 BRA `(.L_x_31) ;
        /*0300*/                   ISETP.GT.AND P0, PT, R0, 0x7fefffff, PT ;
        /*0310*/               @P0 BRA `(.L_x_30) ;
        /*0320*/                   BRA `(.L_x_32) ;
.L_x_30:
        /*0330*/                   DADD R4, R4, R4 ;
        /*0340*/                   MOV R4, R4 ;
        /*0350*/                   MOV R5, R5 ;
        /*0360*/                   BRA `(.L_x_33) ;
.L_x_29:
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
        /*04f0*/                   BRA `(.L_x_33) ;
.L_x_33:
        /*0500*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0510*/                   BSYNC B0 ;
.L_x_27:
        /*0520*/                   MOV R4, R4 ;
        /*0530*/                   MOV R5, R5 ;
        /*0540*/                   MOV R4, R4 ;
        /*0550*/                   MOV R5, R5 ;
        /*0560*/                   MOV R0, R4 ;
        /*0570*/                   MOV R5, R5 ;
        /*0580*/                   BRA `(.L_x_34) ;
.L_x_31:
        /*0590*/                   MOV R4, 0xfff80000 ;
        /*05a0*/                   MOV R5, RZ ;
        /*05b0*/                   LOP3.LUT R5, R5, R4, RZ, 0x3c, !PT ;
        /*05c0*/                   LOP3.LUT R4, R5, R4, RZ, 0x3c, !PT ;
        /*05d0*/                   LOP3.LUT R5, R5, R4, RZ, 0x3c, !PT ;
        /*05e0*/                   MOV R4, R4 ;
        /*05f0*/                   MOV R5, R5 ;
        /*0600*/                   BRA `(.L_x_33) ;
.L_x_32:
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
        /*09b0*/                   BRA `(.L_x_33) ;
.L_x_34:
        /*09c0*/                   MOV R4, R0 ;
        /*09d0*/                   MOV R5, R5 ;
        /*09e0*/                   MOV R4, R4 ;
        /*09f0*/                   MOV R5, R5 ;
        /*0a00*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_35:
        /*0a10*/                   BRA `(.L_x_35);
        /*0a20*/                   NOP;
        /*0a30*/                   NOP;
        /*0a40*/                   NOP;
        /*0a50*/                   NOP;
        /*0a60*/                   NOP;
        /*0a70*/                   NOP;
.L_x_276:


//--------------------- .text._ZN9celeritas6rotateERKNS_5ArrayIdLj3EEES3_ --------------------------
	.section	.text._ZN9celeritas6rotateERKNS_5ArrayIdLj3EEES3_,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=36"
	.align	128
.text._ZN9celeritas6rotateERKNS_5ArrayIdLj3EEES3_:
        .weak           _ZN9celeritas6rotateERKNS_5ArrayIdLj3EEES3_
        .type           _ZN9celeritas6rotateERKNS_5ArrayIdLj3EEES3_,@function
        .size           _ZN9celeritas6rotateERKNS_5ArrayIdLj3EEES3_,(.L_x_200 - _ZN9celeritas6rotateERKNS_5ArrayIdLj3EEES3_)
_ZN9celeritas6rotateERKNS_5ArrayIdLj3EEES3_:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 200
        /*0000*/                   IADD3 R1, R1, -0xe8, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_36) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_36:
        /*0050*/                   STL [R1+0xe0], R31 ;
        /*0060*/                   STL [R1+0xdc], R30 ;
        /*0070*/                   STL [R1+0xd8], R29 ;
        /*0080*/                   STL [R1+0xd4], R28 ;
        /*0090*/                   STL [R1+0xd0], R27 ;
        /*00a0*/                   STL [R1+0xcc], R26 ;
        /*00b0*/                   STL [R1+0xc8], R25 ;
        /*00c0*/                   STL [R1+0xc4], R24 ;
        /*00d0*/                   STL [R1+0xc0], R23 ;
        /*00e0*/                   STL [R1+0xbc], R22 ;
        /*00f0*/                   STL [R1+0xb8], R21 ;
        /*0100*/                   STL [R1+0xb4], R20 ;
        /*0110*/                   STL [R1+0xb0], R19 ;
        /*0120*/                   STL [R1+0xac], R18 ;
        /*0130*/                   STL [R1+0xa8], R17 ;
        /*0140*/                   STL [R1+0xa4], R16 ;
        /*0150*/                   STL [R1+0xa0], R2 ;
        /*0160*/                   BMOV.32.CLEAR R19, B8 ;
        /*0170*/                   BMOV.32.CLEAR R18, B7 ;
        /*0180*/                   BMOV.32.CLEAR R17, B6 ;
        /*0190*/                   MOV R7, R7 ;
        /*01a0*/                   MOV R6, R6 ;
        /*01b0*/                   MOV R5, R5 ;
        /*01c0*/                   MOV R4, R4 ;
        /*01d0*/                   IADD3 R0, R1, RZ, RZ ;
        /*01e0*/                   MOV R0, R0 ;
        /*01f0*/                   MOV R8, R0 ;
        /*0200*/                   MOV R9, RZ ;
        /*0210*/                   MOV R0, R8 ;
        /*0220*/                   MOV R9, R9 ;
        /*0230*/                   MOV R8, R0 ;
        /*0240*/                   MOV R9, R9 ;
        /*0250*/                   MOV R0, c[0x0][0x20] ;
        /*0260*/                   MOV R3, c[0x0][0x24] ;
        /*0270*/                   IADD3 R0, P0, R8, R0, RZ ;
        /*0280*/                   IADD3.X R3, R9, R3, RZ, P0, !PT ;
        /*0290*/                   MOV R4, R4 ;
        /*02a0*/                   MOV R5, R5 ;
        /*02b0*/                   MOV R6, R6 ;
        /*02c0*/                   MOV R7, R7 ;
        /*02d0*/                   MOV R16, R0 ;
        /*02e0*/                   MOV R2, R3 ;
        /*02f0*/                   MOV R30, R4 ;
        /*0300*/                   MOV R31, R5 ;
        /*0310*/                   MOV R28, R6 ;
        /*0320*/                   MOV R29, R7 ;
.L_x_219:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 202
        /*0330*/                   BRA `(.L_x_37) ;
.L_x_37:
        /*0340*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0350*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0 ;
        /*0360*/               @P0 BRA `(.L_x_38) ;
        /*0370*/                   BRA `(.L_x_39) ;
.L_x_39:
        /*0380*/                   BRA `(.L_x_38) ;
.L_x_38:
        /*0390*/                   BRA `(.L_x_40) ;
.L_x_40:
        /*03a0*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0 ;
        /*03b0*/               @P0 BRA `(.L_x_37) ;
        /*03c0*/                   BRA `(.L_x_41) ;
.L_x_41:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 203
        /*03d0*/                   BRA `(.L_x_42) ;
.L_x_42:
        /*03e0*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*03f0*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0 ;
        /*0400*/               @P0 BRA `(.L_x_43) ;
        /*0410*/                   BRA `(.L_x_44) ;
.L_x_44:
        /*0420*/                   BRA `(.L_x_43) ;
.L_x_43:
        /*0430*/                   BRA `(.L_x_45) ;
.L_x_45:
        /*0440*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0 ;
        /*0450*/               @P0 BRA `(.L_x_42) ;
        /*0460*/                   BRA `(.L_x_46) ;
.L_x_46:
        /*0470*/                   MOV R6, R28 ;
        /*0480*/                   MOV R7, R29 ;
        /*0490*/                   IADD3 R4, P0, R16, 0x80, RZ ;
        /*04a0*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*04b0*/                   MOV R4, R4 ;
        /*04c0*/                   MOV R5, R5 ;
        /*04d0*/                   MOV R4, R4 ;
        /*04e0*/                   MOV R5, R5 ;
        /*04f0*/                   ST.E.64.SYS [R4], R6 ;
        /*0500*/                   MOV R0, 0x2 ;
        /*0510*/                   MOV R0, R0 ;
        /*0520*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 215
        /*0530*/                   BRA `(.L_x_47) ;
.L_x_47:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*0540*/                   IADD3 R4, P0, R16, 0x80, RZ ;
        /*0550*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*0560*/                   MOV R4, R4 ;
        /*0570*/                   MOV R5, R5 ;
        /*0580*/                   MOV R4, R4 ;
        /*0590*/                   MOV R5, R5 ;
        /*05a0*/                   LD.E.64.SYS R4, [R4] ;
        /*05b0*/                   MOV R3, R4 ;
        /*05c0*/                   MOV R4, R5 ;
        /*05d0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*05e0*/                   ISETP.NE.AND.EX P0, PT, R4, RZ, PT, P0 ;
        /*05f0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0600*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0610*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0620*/                   BSSY B0, `(.L_x_48) ;
        /*0630*/               @P0 BRA `(.L_x_49) ;
        /*0640*/                   BRA `(.L_x_50) ;
.L_x_50:
        /*0650*/                   BRA `(.L_x_49) ;
.L_x_49:
        /*0660*/                   BSYNC B0 ;
.L_x_48:
        /*0670*/                   IADD3 R4, P0, R16, 0x80, RZ ;
        /*0680*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*0690*/                   MOV R4, R4 ;
        /*06a0*/                   MOV R5, R5 ;
        /*06b0*/                   MOV R4, R4 ;
        /*06c0*/                   MOV R5, R5 ;
        /*06d0*/                   LD.E.64.SYS R4, [R4] ;
        /*06e0*/                   MOV R3, R4 ;
        /*06f0*/                   MOV R6, R5 ;
        /*0700*/                   MOV R0, R0 ;
        /*0710*/                   MOV R4, R0 ;
        /*0720*/                   MOV R5, RZ ;
        /*0730*/                   SHF.L.U64.HI R5, R4, 0x3, R5 ;
        /*0740*/                   SHF.L.U32 R4, R4, 0x3, RZ ;
        /*0750*/                   IADD3 R4, P0, R3, R4, RZ ;
        /*0760*/                   IADD3.X R5, R6, R5, RZ, P0, !PT ;
        /*0770*/                   MOV R4, R4 ;
        /*0780*/                   MOV R5, R5 ;
.L_x_220:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 215
        /*0790*/                   MOV R4, R4 ;
        /*07a0*/                   MOV R5, R5 ;
        /*07b0*/                   MOV R4, R4 ;
        /*07c0*/                   MOV R5, R5 ;
        /*07d0*/                   LD.E.64.SYS R4, [R4] ;
        /*07e0*/                   MOV R4, R4 ;
        /*07f0*/                   MOV R5, R5 ;
        /*0800*/                   MOV R4, R4 ;
        /*0810*/                   MOV R5, R5 ;
        /*0820*/                   MOV R8, R4 ;
        /*0830*/                   MOV R9, R5 ;
        /*0840*/                   MOV R8, R8 ;
        /*0850*/                   MOV R9, R9 ;
        /*0860*/                   MOV R6, R8 ;
        /*0870*/                   MOV R7, R9 ;
        /*0880*/                   MOV R10, R6 ;
        /*0890*/                   MOV R11, R7 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*08a0*/                   BRA `(.L_x_51) ;
.L_x_51:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*08b0*/                   MOV R6, 0x0 ;
        /*08c0*/                   MOV R7, 0x3ff00000 ;
        /*08d0*/                   MOV R12, R6 ;
        /*08e0*/                   MOV R13, R7 ;
        /*08f0*/                   MOV R6, R6 ;
        /*0900*/                   MOV R7, R7 ;
        /*0910*/                   MOV R12, R12 ;
        /*0920*/                   MOV R13, R13 ;
.L_x_223:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*0930*/                   DMUL R12, R8, R12 ;
        /*0940*/                   MOV R8, R8 ;
        /*0950*/                   MOV R9, R9 ;
        /*0960*/                   MOV R12, R12 ;
        /*0970*/                   MOV R13, R13 ;
        /*0980*/                   MOV R10, R8 ;
        /*0990*/                   MOV R11, R9 ;
        /*09a0*/                   BRA `(.L_x_52) ;
.L_x_52:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*09b0*/                   MOV R6, R6 ;
        /*09c0*/                   MOV R7, R7 ;
        /*09d0*/                   MOV R14, R6 ;
        /*09e0*/                   MOV R15, R7 ;
.L_x_224:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*09f0*/                   DMUL R10, R12, R14 ;
        /*0a00*/                   MOV R12, R4 ;
        /*0a10*/                   MOV R13, R5 ;
        /*0a20*/                   MOV R10, R10 ;
        /*0a30*/                   MOV R11, R11 ;
        /*0a40*/                   MOV R12, R12 ;
        /*0a50*/                   MOV R13, R13 ;
.L_x_222:
        /*0a60*/                   MOV R12, R12 ;
        /*0a70*/                   MOV R13, R13 ;
        /*0a80*/                   MOV R14, R12 ;
        /*0a90*/                   MOV R15, R13 ;
        /*0aa0*/                   BRA `(.L_x_53) ;
.L_x_53:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*0ab0*/                   MOV R6, R6 ;
        /*0ac0*/                   MOV R7, R7 ;
        /*0ad0*/                   MOV R8, R6 ;
        /*0ae0*/                   MOV R9, R7 ;
.L_x_226:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*0af0*/                   DMUL R8, R12, R8 ;
        /*0b00*/                   MOV R12, R12 ;
        /*0b10*/                   MOV R13, R13 ;
        /*0b20*/                   MOV R8, R8 ;
        /*0b30*/                   MOV R9, R9 ;
        /*0b40*/                   MOV R14, R12 ;
        /*0b50*/                   MOV R15, R13 ;
        /*0b60*/                   BRA `(.L_x_54) ;
.L_x_54:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*0b70*/                   MOV R6, R6 ;
        /*0b80*/                   MOV R7, R7 ;
        /*0b90*/                   MOV R32, R6 ;
        /*0ba0*/                   MOV R33, R7 ;
.L_x_227:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*0bb0*/                   DMUL R8, R8, R32 ;
        /*0bc0*/                   MOV R8, R8 ;
        /*0bd0*/                   MOV R9, R9 ;
.L_x_225:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 296
        /*0be0*/                   DMUL R8, R10, R8 ;
        /*0bf0*/                   MOV R8, R8 ;
        /*0c00*/                   MOV R9, R9 ;
.L_x_221:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 215
        /*0c10*/                   DADD R8, R6, -R8 ;
        /*0c20*/                   MOV R4, R8 ;
        /*0c30*/                   MOV R5, R9 ;
        /*0c40*/                   MOV R4, R4 ;
        /*0c50*/                   MOV R5, R5 ;
        /*0c60*/                   MOV R20, 32@lo((_ZN9celeritas6rotateERKNS_5ArrayIdLj3EEES3_ + .L_x_0@srel)) ;
        /*0c70*/                   MOV R21, 32@hi((_ZN9celeritas6rotateERKNS_5ArrayIdLj3EEES3_ + .L_x_0@srel)) ;
        /*0c80*/                   CALL.ABS.NOINC `(sqrt) ;
.L_x_0:
        /*0c90*/                   MOV R4, R4 ;
        /*0ca0*/                   MOV R5, R5 ;
        /*0cb0*/                   MOV R26, R4 ;
        /*0cc0*/                   MOV R27, R5 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 219
        /*0cd0*/                   DSETP.GE.AND P0, PT, R26, c[`(_ZN9celeritas6rotateERKNS_5ArrayIdLj3EEES3_.const2.0.8)], PT ;
        /*0ce0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0cf0*/                   BMOV.32.CLEAR RZ, B8 ;
        /*0d00*/                   BSSY B8, `(.L_x_55) ;
        /*0d10*/               @P0 BRA `(.L_x_56) ;
        /*0d20*/                   BRA `(.L_x_57) ;
.L_x_57:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 223
        /*0d30*/                   MOV R4, R26 ;
        /*0d40*/                   MOV R5, R27 ;
        /*0d50*/                   MOV R4, R4 ;
        /*0d60*/                   MOV R5, R5 ;
        /*0d70*/                   MOV R0, R5 ;
        /*0d80*/                   MOV R0, R0 ;
        /*0d90*/                   IADD3 R3, R0, 0x300402, RZ ;
        /*0da0*/                   MOV R3, R3 ;
        /*0db0*/                   MOV R6, R4 ;
        /*0dc0*/                   MOV R7, R5 ;
        /*0dd0*/                   MOV R6, RZ ;
        /*0de0*/                   MUFU.RCP64H R7, R7 ;
        /*0df0*/                   MOV R6, R6 ;
        /*0e00*/                   MOV R6, R6 ;
        /*0e10*/                   MOV R7, R7 ;
        /*0e20*/                   MOV R7, R7 ;
        /*0e30*/                   LOP3.LUT R6, R6, R3, RZ, 0xfc, !PT ;
        /*0e40*/                   MOV R6, R6 ;
        /*0e50*/                   MOV R7, R7 ;
        /*0e60*/                   DADD R8, -RZ, -R4 ;
        /*0e70*/                   MOV R8, R8 ;
        /*0e80*/                   MOV R9, R9 ;
        /*0e90*/                   MOV R10, 0x0 ;
        /*0ea0*/                   MOV R11, 0x3ff00000 ;
        /*0eb0*/                   DFMA R12, R8, R6, R10 ;
        /*0ec0*/                   DFMA R12, R12, R12, R12 ;
        /*0ed0*/                   DFMA R6, R12, R6, R6 ;
        /*0ee0*/                   DFMA R8, R8, R6, R10 ;
        /*0ef0*/                   DFMA R6, R8, R6, R6 ;
        /*0f00*/                   FADD R3, -RZ, |R3| ;
        /*0f10*/                   MOV R3, R3 ;
        /*0f20*/                   FSETP.GEU.AND P0, PT, R3, 5.8789094863358348022e-39, PT ;
        /*0f30*/                   MOV R8, R4 ;
        /*0f40*/                   MOV R9, R5 ;
        /*0f50*/                   MOV R4, R8 ;
        /*0f60*/                   MOV R5, R9 ;
        /*0f70*/                   MOV R0, R0 ;
        /*0f80*/                   MOV R6, R6 ;
        /*0f90*/                   MOV R7, R7 ;
        /*0fa0*/                   BMOV.32.CLEAR RZ, B6 ;
        /*0fb0*/                   BSSY B6, `(.L_x_58) ;
        /*0fc0*/               @P0 BRA `(.L_x_59) ;
        /*0fd0*/                   LOP3.LUT R0, R0, 0x7fffffff, RZ, 0xc0, !PT ;
        /*0fe0*/                   IADD3 R6, R0, -0x100000, RZ ;
        /*0ff0*/                   MOV R4, R4 ;
        /*1000*/                   MOV R5, R5 ;
        /*1010*/                   MOV R6, R6 ;
        /*1020*/                   MOV R20, 32@lo((_ZN9celeritas6rotateERKNS_5ArrayIdLj3EEES3_ + .L_x_1@srel)) ;
        /*1030*/                   MOV R21, 32@hi((_ZN9celeritas6rotateERKNS_5ArrayIdLj3EEES3_ + .L_x_1@srel)) ;
        /*1040*/                   CALL.ABS.NOINC `(__cuda_sm20_dblrcp_rn_slowpath_v3) ;
.L_x_1:
        /*1050*/                   MOV R4, R4 ;
        /*1060*/                   MOV R5, R5 ;
        /*1070*/                   MOV R6, R4 ;
        /*1080*/                   MOV R7, R5 ;
.L_x_59:
        /*1090*/                   BSYNC B6 ;
.L_x_58:
        /*10a0*/                   MOV R6, R6 ;
        /*10b0*/                   MOV R7, R7 ;
        /*10c0*/                   MOV R6, R6 ;
        /*10d0*/                   MOV R7, R7 ;
        /*10e0*/                   MOV R4, R6 ;
        /*10f0*/                   MOV R5, R7 ;
        /*1100*/                   MOV R8, R28 ;
        /*1110*/                   MOV R9, R29 ;
        /*1120*/                   IADD3 R6, P0, R16, 0x20, RZ ;
        /*1130*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*1140*/                   MOV R6, R6 ;
        /*1150*/                   MOV R7, R7 ;
        /*1160*/                   MOV R6, R6 ;
        /*1170*/                   MOV R7, R7 ;
        /*1180*/                   ST.E.64.SYS [R6], R8 ;
        /*1190*/                   MOV R0, RZ ;
        /*11a0*/                   MOV R0, R0 ;
        /*11b0*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 224
        /*11c0*/                   BRA `(.L_x_60) ;
.L_x_60:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*11d0*/                   IADD3 R6, P0, R16, 0x20, RZ ;
        /*11e0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*11f0*/                   MOV R6, R6 ;
        /*1200*/                   MOV R7, R7 ;
        /*1210*/                   MOV R6, R6 ;
        /*1220*/                   MOV R7, R7 ;
        /*1230*/                   LD.E.64.SYS R6, [R6] ;
        /*1240*/                   MOV R3, R6 ;
        /*1250*/                   MOV R6, R7 ;
        /*1260*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*1270*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*1280*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1290*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*12a0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*12b0*/                   BSSY B0, `(.L_x_61) ;
        /*12c0*/               @P0 BRA `(.L_x_62) ;
        /*12d0*/                   BRA `(.L_x_63) ;
.L_x_63:
        /*12e0*/                   BRA `(.L_x_62) ;
.L_x_62:
        /*12f0*/                   BSYNC B0 ;
.L_x_61:
        /*1300*/                   IADD3 R6, P0, R16, 0x20, RZ ;
        /*1310*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*1320*/                   MOV R6, R6 ;
        /*1330*/                   MOV R7, R7 ;
        /*1340*/                   MOV R6, R6 ;
        /*1350*/                   MOV R7, R7 ;
        /*1360*/                   LD.E.64.SYS R6, [R6] ;
        /*1370*/                   MOV R3, R6 ;
        /*1380*/                   MOV R8, R7 ;
        /*1390*/                   MOV R0, R0 ;
        /*13a0*/                   MOV R6, R0 ;
        /*13b0*/                   MOV R7, RZ ;
        /*13c0*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*13d0*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*13e0*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*13f0*/                   IADD3.X R7, R8, R7, RZ, P0, !PT ;
        /*1400*/                   MOV R6, R6 ;
        /*1410*/                   MOV R7, R7 ;
.L_x_228:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 224
        /*1420*/                   MOV R6, R6 ;
        /*1430*/                   MOV R7, R7 ;
        /*1440*/                   MOV R6, R6 ;
        /*1450*/                   MOV R7, R7 ;
        /*1460*/                   LD.E.64.SYS R6, [R6] ;
        /*1470*/                   DMUL R6, R6, R4 ;
        /*1480*/                   MOV R6, R6 ;
        /*1490*/                   MOV R7, R7 ;
        /*14a0*/                   MOV R10, R28 ;
        /*14b0*/                   MOV R11, R29 ;
        /*14c0*/                   IADD3 R8, P0, R16, 0x18, RZ ;
        /*14d0*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*14e0*/                   MOV R8, R8 ;
        /*14f0*/                   MOV R9, R9 ;
        /*1500*/                   MOV R8, R8 ;
        /*1510*/                   MOV R9, R9 ;
        /*1520*/                   ST.E.64.SYS [R8], R10 ;
        /*1530*/                   MOV R0, 0x1 ;
        /*1540*/                   MOV R0, R0 ;
        /*1550*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 225
        /*1560*/                   BRA `(.L_x_64) ;
.L_x_64:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*1570*/                   IADD3 R8, P0, R16, 0x18, RZ ;
        /*1580*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*1590*/                   MOV R8, R8 ;
        /*15a0*/                   MOV R9, R9 ;
        /*15b0*/                   MOV R8, R8 ;
        /*15c0*/                   MOV R9, R9 ;
        /*15d0*/                   LD.E.64.SYS R8, [R8] ;
        /*15e0*/                   MOV R3, R8 ;
        /*15f0*/                   MOV R8, R9 ;
        /*1600*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*1610*/                   ISETP.NE.AND.EX P0, PT, R8, RZ, PT, P0 ;
        /*1620*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1630*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1640*/                   BMOV.32.CLEAR RZ, B0 ;
        /*1650*/                   BSSY B0, `(.L_x_65) ;
        /*1660*/               @P0 BRA `(.L_x_66) ;
        /*1670*/                   BRA `(.L_x_67) ;
.L_x_67:
        /*1680*/                   BRA `(.L_x_66) ;
.L_x_66:
        /*1690*/                   BSYNC B0 ;
.L_x_65:
        /*16a0*/                   IADD3 R8, P0, R16, 0x18, RZ ;
        /*16b0*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*16c0*/                   MOV R8, R8 ;
        /*16d0*/                   MOV R9, R9 ;
        /*16e0*/                   MOV R8, R8 ;
        /*16f0*/                   MOV R9, R9 ;
        /*1700*/                   LD.E.64.SYS R8, [R8] ;
        /*1710*/                   MOV R3, R8 ;
        /*1720*/                   MOV R10, R9 ;
        /*1730*/                   MOV R0, R0 ;
        /*1740*/                   MOV R8, R0 ;
        /*1750*/                   MOV R9, RZ ;
        /*1760*/                   SHF.L.U64.HI R9, R8, 0x3, R9 ;
        /*1770*/                   SHF.L.U32 R8, R8, 0x3, RZ ;
        /*1780*/                   IADD3 R8, P0, R3, R8, RZ ;
        /*1790*/                   IADD3.X R9, R10, R9, RZ, P0, !PT ;
        /*17a0*/                   MOV R8, R8 ;
        /*17b0*/                   MOV R9, R9 ;
.L_x_229:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 225
        /*17c0*/                   MOV R8, R8 ;
        /*17d0*/                   MOV R9, R9 ;
        /*17e0*/                   MOV R8, R8 ;
        /*17f0*/                   MOV R9, R9 ;
        /*1800*/                   LD.E.64.SYS R8, [R8] ;
        /*1810*/                   DMUL R8, R8, R4 ;
        /*1820*/                   MOV R8, R8 ;
        /*1830*/                   MOV R9, R9 ;
.L_x_201:
        /*1840*/                   MOV R4, R6 ;
        /*1850*/                   MOV R5, R7 ;
        /*1860*/                   MOV R4, R4 ;
        /*1870*/                   MOV R5, R5 ;
.L_x_193:
        /*1880*/                   MOV R6, R8 ;
        /*1890*/                   MOV R7, R9 ;
        /*18a0*/                   MOV R6, R6 ;
        /*18b0*/                   MOV R7, R7 ;
.L_x_202:
        /*18c0*/                   BRA `(.L_x_68) ;
.L_x_56:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 227
        /*18d0*/                   DSETP.GT.AND P0, PT, R26, RZ, PT ;
        /*18e0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*18f0*/                   BMOV.32.CLEAR RZ, B7 ;
        /*1900*/                   BSSY B7, `(.L_x_69) ;
        /*1910*/               @P0 BRA `(.L_x_70) ;
        /*1920*/                   BRA `(.L_x_71) ;
.L_x_71:
        /*1930*/                   MOV R6, R28 ;
        /*1940*/                   MOV R7, R29 ;
        /*1950*/                   IADD3 R4, P0, R16, RZ, RZ ;
        /*1960*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*1970*/                   MOV R4, R4 ;
        /*1980*/                   MOV R5, R5 ;
        /*1990*/                   MOV R4, R4 ;
        /*19a0*/                   MOV R5, R5 ;
        /*19b0*/                   ST.E.64.SYS [R4], R6 ;
        /*19c0*/                   MOV R0, RZ ;
        /*19d0*/                   MOV R0, R0 ;
        /*19e0*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 230
        /*19f0*/                   BRA `(.L_x_72) ;
.L_x_72:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*1a00*/                   IADD3 R4, P0, R16, RZ, RZ ;
        /*1a10*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*1a20*/                   MOV R4, R4 ;
        /*1a30*/                   MOV R5, R5 ;
        /*1a40*/                   MOV R4, R4 ;
        /*1a50*/                   MOV R5, R5 ;
        /*1a60*/                   LD.E.64.SYS R4, [R4] ;
        /*1a70*/                   MOV R3, R4 ;
        /*1a80*/                   MOV R4, R5 ;
        /*1a90*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*1aa0*/                   ISETP.NE.AND.EX P0, PT, R4, RZ, PT, P0 ;
        /*1ab0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1ac0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1ad0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*1ae0*/                   BSSY B0, `(.L_x_73) ;
        /*1af0*/               @P0 BRA `(.L_x_74) ;
        /*1b00*/                   BRA `(.L_x_75) ;
.L_x_75:
        /*1b10*/                   BRA `(.L_x_74) ;
.L_x_74:
        /*1b20*/                   BSYNC B0 ;
.L_x_73:
        /*1b30*/                   IADD3 R4, P0, R16, RZ, RZ ;
        /*1b40*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*1b50*/                   MOV R4, R4 ;
        /*1b60*/                   MOV R5, R5 ;
        /*1b70*/                   MOV R4, R4 ;
        /*1b80*/                   MOV R5, R5 ;
        /*1b90*/                   LD.E.64.SYS R4, [R4] ;
        /*1ba0*/                   MOV R3, R4 ;
        /*1bb0*/                   MOV R6, R5 ;
        /*1bc0*/                   MOV R0, R0 ;
        /*1bd0*/                   MOV R4, R0 ;
        /*1be0*/                   MOV R5, RZ ;
        /*1bf0*/                   SHF.L.U64.HI R5, R4, 0x3, R5 ;
        /*1c00*/                   SHF.L.U32 R4, R4, 0x3, RZ ;
        /*1c10*/                   IADD3 R4, P0, R3, R4, RZ ;
        /*1c20*/                   IADD3.X R5, R6, R5, RZ, P0, !PT ;
        /*1c30*/                   MOV R4, R4 ;
        /*1c40*/                   MOV R5, R5 ;
.L_x_230:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 230
        /*1c50*/                   MOV R4, R4 ;
        /*1c60*/                   MOV R5, R5 ;
        /*1c70*/                   MOV R4, R4 ;
        /*1c80*/                   MOV R5, R5 ;
        /*1c90*/                   LD.E.64.SYS R4, [R4] ;
        /*1ca0*/                   MOV R8, R28 ;
        /*1cb0*/                   MOV R9, R29 ;
        /*1cc0*/                   IADD3 R6, P0, R16, 0x8, RZ ;
        /*1cd0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*1ce0*/                   MOV R6, R6 ;
        /*1cf0*/                   MOV R7, R7 ;
        /*1d00*/                   MOV R6, R6 ;
        /*1d10*/                   MOV R7, R7 ;
        /*1d20*/                   ST.E.64.SYS [R6], R8 ;
        /*1d30*/                   MOV R0, RZ ;
        /*1d40*/                   MOV R0, R0 ;
        /*1d50*/                   MOV R22, R4 ;
        /*1d60*/                   MOV R23, R5 ;
        /*1d70*/                   MOV R0, R0 ;
        /*1d80*/                   BRA `(.L_x_76) ;
.L_x_76:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*1d90*/                   IADD3 R4, P0, R16, 0x8, RZ ;
        /*1da0*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*1db0*/                   MOV R4, R4 ;
        /*1dc0*/                   MOV R5, R5 ;
        /*1dd0*/                   MOV R4, R4 ;
        /*1de0*/                   MOV R5, R5 ;
        /*1df0*/                   LD.E.64.SYS R4, [R4] ;
        /*1e00*/                   MOV R3, R4 ;
        /*1e10*/                   MOV R4, R5 ;
        /*1e20*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*1e30*/                   ISETP.NE.AND.EX P0, PT, R4, RZ, PT, P0 ;
        /*1e40*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1e50*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1e60*/                   BMOV.32.CLEAR RZ, B0 ;
        /*1e70*/                   BSSY B0, `(.L_x_77) ;
        /*1e80*/               @P0 BRA `(.L_x_78) ;
        /*1e90*/                   BRA `(.L_x_79) ;
.L_x_79:
        /*1ea0*/                   BRA `(.L_x_78) ;
.L_x_78:
        /*1eb0*/                   BSYNC B0 ;
.L_x_77:
        /*1ec0*/                   IADD3 R4, P0, R16, 0x8, RZ ;
        /*1ed0*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*1ee0*/                   MOV R4, R4 ;
        /*1ef0*/                   MOV R5, R5 ;
        /*1f00*/                   MOV R4, R4 ;
        /*1f10*/                   MOV R5, R5 ;
        /*1f20*/                   LD.E.64.SYS R4, [R4] ;
        /*1f30*/                   MOV R3, R4 ;
        /*1f40*/                   MOV R6, R5 ;
        /*1f50*/                   MOV R0, R0 ;
        /*1f60*/                   MOV R4, R0 ;
        /*1f70*/                   MOV R5, RZ ;
        /*1f80*/                   SHF.L.U64.HI R5, R4, 0x3, R5 ;
        /*1f90*/                   SHF.L.U32 R4, R4, 0x3, RZ ;
        /*1fa0*/                   IADD3 R4, P0, R3, R4, RZ ;
        /*1fb0*/                   IADD3.X R5, R6, R5, RZ, P0, !PT ;
        /*1fc0*/                   MOV R4, R4 ;
        /*1fd0*/                   MOV R5, R5 ;
.L_x_231:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 230
        /*1fe0*/                   MOV R4, R4 ;
        /*1ff0*/                   MOV R5, R5 ;
        /*2000*/                   MOV R4, R4 ;
        /*2010*/                   MOV R5, R5 ;
        /*2020*/                   LD.E.64.SYS R4, [R4] ;
        /*2030*/                   MOV R4, R4 ;
        /*2040*/                   MOV R5, R5 ;
        /*2050*/                   MOV R6, R4 ;
        /*2060*/                   MOV R7, R5 ;
        /*2070*/                   MOV R8, R6 ;
        /*2080*/                   MOV R9, R7 ;
        /*2090*/                   MOV R8, R8 ;
        /*20a0*/                   MOV R9, R9 ;
        /*20b0*/                   MOV R4, R8 ;
        /*20c0*/                   MOV R5, R9 ;
        /*20d0*/                   MOV R10, R4 ;
        /*20e0*/                   MOV R11, R5 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*20f0*/                   BRA `(.L_x_80) ;
.L_x_80:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*2100*/                   MOV R4, 0x0 ;
        /*2110*/                   MOV R5, 0x3ff00000 ;
        /*2120*/                   MOV R12, R4 ;
        /*2130*/                   MOV R13, R5 ;
        /*2140*/                   MOV R4, R4 ;
        /*2150*/                   MOV R5, R5 ;
        /*2160*/                   MOV R12, R12 ;
        /*2170*/                   MOV R13, R13 ;
.L_x_234:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*2180*/                   DMUL R12, R8, R12 ;
        /*2190*/                   MOV R8, R8 ;
        /*21a0*/                   MOV R9, R9 ;
        /*21b0*/                   MOV R12, R12 ;
        /*21c0*/                   MOV R13, R13 ;
        /*21d0*/                   MOV R10, R8 ;
        /*21e0*/                   MOV R11, R9 ;
        /*21f0*/                   BRA `(.L_x_81) ;
.L_x_81:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*2200*/                   MOV R4, R4 ;
        /*2210*/                   MOV R5, R5 ;
        /*2220*/                   MOV R14, R4 ;
        /*2230*/                   MOV R15, R5 ;
.L_x_235:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*2240*/                   DMUL R10, R12, R14 ;
        /*2250*/                   MOV R12, R6 ;
        /*2260*/                   MOV R13, R7 ;
        /*2270*/                   MOV R10, R10 ;
        /*2280*/                   MOV R11, R11 ;
        /*2290*/                   MOV R12, R12 ;
        /*22a0*/                   MOV R13, R13 ;
.L_x_233:
        /*22b0*/                   MOV R12, R12 ;
        /*22c0*/                   MOV R13, R13 ;
        /*22d0*/                   MOV R14, R12 ;
        /*22e0*/                   MOV R15, R13 ;
        /*22f0*/                   BRA `(.L_x_82) ;
.L_x_82:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*2300*/                   MOV R4, R4 ;
        /*2310*/                   MOV R5, R5 ;
        /*2320*/                   MOV R8, R4 ;
        /*2330*/                   MOV R9, R5 ;
.L_x_237:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*2340*/                   DMUL R8, R12, R8 ;
        /*2350*/                   MOV R12, R12 ;
        /*2360*/                   MOV R13, R13 ;
        /*2370*/                   MOV R8, R8 ;
        /*2380*/                   MOV R9, R9 ;
        /*2390*/                   MOV R14, R12 ;
        /*23a0*/                   MOV R15, R13 ;
        /*23b0*/                   BRA `(.L_x_83) ;
.L_x_83:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*23c0*/                   MOV R4, R4 ;
        /*23d0*/                   MOV R5, R5 ;
        /*23e0*/                   MOV R4, R4 ;
        /*23f0*/                   MOV R5, R5 ;
.L_x_238:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*2400*/                   DMUL R4, R8, R4 ;
        /*2410*/                   MOV R4, R4 ;
        /*2420*/                   MOV R5, R5 ;
.L_x_236:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 296
        /*2430*/                   DMUL R4, R10, R4 ;
        /*2440*/                   MOV R10, R28 ;
        /*2450*/                   MOV R11, R29 ;
        /*2460*/                   IADD3 R8, P0, R16, 0x10, RZ ;
        /*2470*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*2480*/                   MOV R8, R8 ;
        /*2490*/                   MOV R9, R9 ;
        /*24a0*/                   MOV R8, R8 ;
        /*24b0*/                   MOV R9, R9 ;
        /*24c0*/                   ST.E.64.SYS [R8], R10 ;
        /*24d0*/                   MOV R0, 0x1 ;
        /*24e0*/                   MOV R0, R0 ;
        /*24f0*/                   MOV R4, R4 ;
        /*2500*/                   MOV R5, R5 ;
        /*2510*/                   MOV R0, R0 ;
.L_x_232:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 230
        /*2520*/                   BRA `(.L_x_84) ;
.L_x_84:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*2530*/                   IADD3 R6, P0, R16, 0x10, RZ ;
        /*2540*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*2550*/                   MOV R6, R6 ;
        /*2560*/                   MOV R7, R7 ;
        /*2570*/                   MOV R6, R6 ;
        /*2580*/                   MOV R7, R7 ;
        /*2590*/                   LD.E.64.SYS R6, [R6] ;
        /*25a0*/                   MOV R3, R6 ;
        /*25b0*/                   MOV R6, R7 ;
        /*25c0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*25d0*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*25e0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*25f0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*2600*/                   BMOV.32.CLEAR RZ, B0 ;
        /*2610*/                   BSSY B0, `(.L_x_85) ;
        /*2620*/               @P0 BRA `(.L_x_86) ;
        /*2630*/                   BRA `(.L_x_87) ;
.L_x_87:
        /*2640*/                   BRA `(.L_x_86) ;
.L_x_86:
        /*2650*/                   BSYNC B0 ;
.L_x_85:
        /*2660*/                   IADD3 R6, P0, R16, 0x10, RZ ;
        /*2670*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*2680*/                   MOV R6, R6 ;
        /*2690*/                   MOV R7, R7 ;
        /*26a0*/                   MOV R6, R6 ;
        /*26b0*/                   MOV R7, R7 ;
        /*26c0*/                   LD.E.64.SYS R6, [R6] ;
        /*26d0*/                   MOV R3, R6 ;
        /*26e0*/                   MOV R8, R7 ;
        /*26f0*/                   MOV R0, R0 ;
        /*2700*/                   MOV R6, R0 ;
        /*2710*/                   MOV R7, RZ ;
        /*2720*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*2730*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*2740*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*2750*/                   IADD3.X R7, R8, R7, RZ, P0, !PT ;
        /*2760*/                   MOV R6, R6 ;
        /*2770*/                   MOV R7, R7 ;
.L_x_239:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 230
        /*2780*/                   MOV R6, R6 ;
        /*2790*/                   MOV R7, R7 ;
        /*27a0*/                   MOV R6, R6 ;
        /*27b0*/                   MOV R7, R7 ;
        /*27c0*/                   LD.E.64.SYS R6, [R6] ;
        /*27d0*/                   MOV R6, R6 ;
        /*27e0*/                   MOV R7, R7 ;
        /*27f0*/                   MOV R6, R6 ;
        /*2800*/                   MOV R7, R7 ;
        /*2810*/                   MOV R12, R6 ;
        /*2820*/                   MOV R13, R7 ;
        /*2830*/                   MOV R12, R12 ;
        /*2840*/                   MOV R13, R13 ;
        /*2850*/                   MOV R8, R12 ;
        /*2860*/                   MOV R9, R13 ;
        /*2870*/                   MOV R8, R8 ;
        /*2880*/                   MOV R9, R9 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*2890*/                   BRA `(.L_x_88) ;
.L_x_88:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*28a0*/                   MOV R10, 0x0 ;
        /*28b0*/                   MOV R11, 0x3ff00000 ;
        /*28c0*/                   MOV R10, R10 ;
        /*28d0*/                   MOV R11, R11 ;
        /*28e0*/                   MOV R24, R10 ;
        /*28f0*/                   MOV R25, R11 ;
        /*2900*/                   MOV R10, R10 ;
        /*2910*/                   MOV R11, R11 ;
.L_x_242:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*2920*/                   DMUL R8, R12, R10 ;
        /*2930*/                   MOV R10, R12 ;
        /*2940*/                   MOV R11, R13 ;
        /*2950*/                   MOV R8, R8 ;
        /*2960*/                   MOV R9, R9 ;
        /*2970*/                   MOV R10, R10 ;
        /*2980*/                   MOV R11, R11 ;
        /*2990*/                   BRA `(.L_x_89) ;
.L_x_89:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*29a0*/                   MOV R14, R24 ;
        /*29b0*/                   MOV R15, R25 ;
        /*29c0*/                   MOV R14, R14 ;
        /*29d0*/                   MOV R15, R15 ;
.L_x_243:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*29e0*/                   DMUL R8, R8, R14 ;
        /*29f0*/                   MOV R6, R6 ;
        /*2a00*/                   MOV R7, R7 ;
        /*2a10*/                   MOV R10, R8 ;
        /*2a20*/                   MOV R11, R9 ;
        /*2a30*/                   MOV R8, R6 ;
        /*2a40*/                   MOV R9, R7 ;
.L_x_241:
        /*2a50*/                   MOV R14, R8 ;
        /*2a60*/                   MOV R15, R9 ;
        /*2a70*/                   MOV R14, R14 ;
        /*2a80*/                   MOV R15, R15 ;
        /*2a90*/                   BRA `(.L_x_90) ;
.L_x_90:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*2aa0*/                   MOV R12, R24 ;
        /*2ab0*/                   MOV R13, R25 ;
        /*2ac0*/                   MOV R12, R12 ;
        /*2ad0*/                   MOV R13, R13 ;
.L_x_245:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*2ae0*/                   DMUL R12, R8, R12 ;
        /*2af0*/                   MOV R14, R8 ;
        /*2b00*/                   MOV R15, R9 ;
        /*2b10*/                   MOV R12, R12 ;
        /*2b20*/                   MOV R13, R13 ;
        /*2b30*/                   MOV R14, R14 ;
        /*2b40*/                   MOV R15, R15 ;
        /*2b50*/                   BRA `(.L_x_91) ;
.L_x_91:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*2b60*/                   MOV R32, R24 ;
        /*2b70*/                   MOV R33, R25 ;
        /*2b80*/                   MOV R32, R32 ;
        /*2b90*/                   MOV R33, R33 ;
.L_x_246:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*2ba0*/                   DMUL R12, R12, R32 ;
        /*2bb0*/                   MOV R12, R12 ;
        /*2bc0*/                   MOV R13, R13 ;
.L_x_244:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 296
        /*2bd0*/                   DMUL R10, R10, R12 ;
        /*2be0*/                   MOV R10, R10 ;
        /*2bf0*/                   MOV R11, R11 ;
.L_x_240:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 230
        /*2c00*/                   DADD R10, R4, R10 ;
        /*2c10*/                   MOV R4, R10 ;
        /*2c20*/                   MOV R5, R11 ;
        /*2c30*/                   MOV R4, R4 ;
        /*2c40*/                   MOV R5, R5 ;
        /*2c50*/                   MOV R20, 32@lo((_ZN9celeritas6rotateERKNS_5ArrayIdLj3EEES3_ + .L_x_2@srel)) ;
        /*2c60*/                   MOV R21, 32@hi((_ZN9celeritas6rotateERKNS_5ArrayIdLj3EEES3_ + .L_x_2@srel)) ;
        /*2c70*/                   CALL.ABS.NOINC `(sqrt) ;
.L_x_2:
        /*2c80*/                   MOV R4, R4 ;
        /*2c90*/                   MOV R5, R5 ;
        /*2ca0*/                   MOV R6, R22 ;
        /*2cb0*/                   MOV R7, R23 ;
        /*2cc0*/                   MOV R8, R4 ;
        /*2cd0*/                   MOV R9, R5 ;
        /*2ce0*/                   MOV R4, R6 ;
        /*2cf0*/                   MOV R5, R7 ;
        /*2d00*/                   MOV R6, R8 ;
        /*2d10*/                   MOV R7, R9 ;
        /*2d20*/                   MOV R0, R6 ;
        /*2d30*/                   MOV R3, R7 ;
        /*2d40*/                   MOV R0, RZ ;
        /*2d50*/                   MUFU.RCP64H R3, R3 ;
        /*2d60*/                   MOV R0, R0 ;
        /*2d70*/                   MOV R0, R0 ;
        /*2d80*/                   MOV R3, R3 ;
        /*2d90*/                   MOV R3, R3 ;
        /*2da0*/                   LOP3.LUT R0, R0, 0x1, RZ, 0xfc, !PT ;
        /*2db0*/                   MOV R10, R0 ;
        /*2dc0*/                   MOV R11, R3 ;
        /*2dd0*/                   DADD R8, -RZ, -R6 ;
        /*2de0*/                   MOV R8, R8 ;
        /*2df0*/                   MOV R9, R9 ;
        /*2e00*/                   MOV R12, 0x0 ;
        /*2e10*/                   MOV R13, 0x3ff00000 ;
        /*2e20*/                   DFMA R12, R8, R10, R12 ;
        /*2e30*/                   DFMA R12, R12, R12, R12 ;
        /*2e40*/                   DFMA R12, R12, R10, R10 ;
        /*2e50*/                   DMUL R10, R12, R4 ;
        /*2e60*/                   DFMA R8, R8, R10, R4 ;
        /*2e70*/                   DFMA R8, R8, R12, R10 ;
        /*2e80*/                   MOV R0, R5 ;
        /*2e90*/                   MOV R0, R0 ;
        /*2ea0*/                   MOV R0, R0 ;
        /*2eb0*/                   FADD R0, -RZ, |R0| ;
        /*2ec0*/                   MOV R0, R0 ;
        /*2ed0*/                   FSETP.LE.AND P0, PT, R0, 6.4490557925156731238e-37, PT ;
        /*2ee0*/                   MOV R10, R4 ;
        /*2ef0*/                   MOV R11, R5 ;
        /*2f00*/                   MOV R4, R10 ;
        /*2f10*/                   MOV R5, R11 ;
        /*2f20*/                   MOV R10, R6 ;
        /*2f30*/                   MOV R11, R7 ;
        /*2f40*/                   MOV R6, R10 ;
        /*2f50*/                   MOV R7, R11 ;
        /*2f60*/                   MOV R8, R8 ;
        /*2f70*/                   MOV R9, R9 ;
        /*2f80*/                   BMOV.32.CLEAR RZ, B6 ;
        /*2f90*/                   BSSY B6, `(.L_x_92) ;
        /*2fa0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*2fb0*/                   BSSY B0, `(.L_x_93) ;
        /*2fc0*/               @P0 BRA `(.L_x_94) ;
        /*2fd0*/                   MOV R0, R9 ;
        /*2fe0*/                   MOV R0, R0 ;
        /*2ff0*/                   MOV R0, R0 ;
        /*3000*/                   MOV R3, R7 ;
        /*3010*/                   MOV R3, R3 ;
        /*3020*/                   MOV R3, R3 ;
        /*3030*/                   MOV R10, RZ ;
        /*3040*/                   FFMA R0, R10, R3, R0 ;
        /*3050*/                   FADD R0, -RZ, |R0| ;
        /*3060*/                   MOV R0, R0 ;
        /*3070*/                   FSETP.GT.AND P0, PT, R0, 4.8978884574313168671e-40, PT ;
        /*3080*/               @P0 BREAK B0 ;
        /*3090*/               @P0 BRA `(.L_x_95) ;
.L_x_94:
        /*30a0*/                   BSYNC B0 ;
.L_x_93:
        /*30b0*/                   MOV R4, R4 ;
        /*30c0*/                   MOV R5, R5 ;
        /*30d0*/                   MOV R6, R6 ;
        /*30e0*/                   MOV R7, R7 ;
        /*30f0*/                   MOV R20, 32@lo((_ZN9celeritas6rotateERKNS_5ArrayIdLj3EEES3_ + .L_x_3@srel)) ;
        /*3100*/                   MOV R21, 32@hi((_ZN9celeritas6rotateERKNS_5ArrayIdLj3EEES3_ + .L_x_3@srel)) ;
        /*3110*/                   CALL.ABS.NOINC `(__cuda_sm20_div_f64_slowpath_v2) ;
.L_x_3:
        /*3120*/                   MOV R4, R4 ;
        /*3130*/                   MOV R5, R5 ;
        /*3140*/                   MOV R8, R4 ;
        /*3150*/                   MOV R9, R5 ;
        /*3160*/                   BRA `(.L_x_95) ;
.L_x_95:
        /*3170*/                   BSYNC B6 ;
.L_x_92:
        /*3180*/                   MOV R8, R8 ;
        /*3190*/                   MOV R9, R9 ;
        /*31a0*/                   MOV R8, R8 ;
        /*31b0*/                   MOV R9, R9 ;
        /*31c0*/                   MOV R22, R8 ;
        /*31d0*/                   MOV R23, R9 ;
.L_x_194:
        /*31e0*/                   MOV R4, R22 ;
        /*31f0*/                   MOV R5, R23 ;
        /*3200*/                   MOV R4, R4 ;
        /*3210*/                   MOV R5, R5 ;
        /*3220*/                   MOV R6, R4 ;
        /*3230*/                   MOV R7, R5 ;
        /*3240*/                   MOV R6, R6 ;
        /*3250*/                   MOV R7, R7 ;
        /*3260*/                   MOV R6, R6 ;
        /*3270*/                   MOV R7, R7 ;
        /*3280*/                   MOV R8, R6 ;
        /*3290*/                   MOV R9, R7 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*32a0*/                   BRA `(.L_x_96) ;
.L_x_96:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*32b0*/                   MOV R10, R24 ;
        /*32c0*/                   MOV R11, R25 ;
        /*32d0*/                   MOV R10, R10 ;
        /*32e0*/                   MOV R11, R11 ;
.L_x_249:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*32f0*/                   DMUL R10, R6, R10 ;
        /*3300*/                   MOV R6, R6 ;
        /*3310*/                   MOV R7, R7 ;
        /*3320*/                   MOV R10, R10 ;
        /*3330*/                   MOV R11, R11 ;
        /*3340*/                   MOV R8, R6 ;
        /*3350*/                   MOV R9, R7 ;
        /*3360*/                   BRA `(.L_x_97) ;
.L_x_97:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*3370*/                   MOV R12, R24 ;
        /*3380*/                   MOV R13, R25 ;
        /*3390*/                   MOV R12, R12 ;
        /*33a0*/                   MOV R13, R13 ;
.L_x_250:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*33b0*/                   DMUL R8, R10, R12 ;
        /*33c0*/                   MOV R10, R4 ;
        /*33d0*/                   MOV R11, R5 ;
        /*33e0*/                   MOV R8, R8 ;
        /*33f0*/                   MOV R9, R9 ;
        /*3400*/                   MOV R10, R10 ;
        /*3410*/                   MOV R11, R11 ;
.L_x_248:
        /*3420*/                   MOV R10, R10 ;
        /*3430*/                   MOV R11, R11 ;
        /*3440*/                   MOV R12, R10 ;
        /*3450*/                   MOV R13, R11 ;
        /*3460*/                   BRA `(.L_x_98) ;
.L_x_98:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*3470*/                   MOV R6, R24 ;
        /*3480*/                   MOV R7, R25 ;
        /*3490*/                   MOV R6, R6 ;
        /*34a0*/                   MOV R7, R7 ;
.L_x_252:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*34b0*/                   DMUL R6, R10, R6 ;
        /*34c0*/                   MOV R10, R10 ;
        /*34d0*/                   MOV R11, R11 ;
        /*34e0*/                   MOV R6, R6 ;
        /*34f0*/                   MOV R7, R7 ;
        /*3500*/                   MOV R12, R10 ;
        /*3510*/                   MOV R13, R11 ;
        /*3520*/                   BRA `(.L_x_99) ;
.L_x_99:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 295
        /*3530*/                   MOV R14, R24 ;
        /*3540*/                   MOV R15, R25 ;
        /*3550*/                   MOV R14, R14 ;
        /*3560*/                   MOV R15, R15 ;
.L_x_253:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 297
        /*3570*/                   DMUL R6, R6, R14 ;
        /*3580*/                   MOV R6, R6 ;
        /*3590*/                   MOV R7, R7 ;
.L_x_251:
	//## File "/home/s3j/.local/src/celeritas/src/base/Algorithms.hh", line 296
        /*35a0*/                   DMUL R6, R8, R6 ;
        /*35b0*/                   MOV R6, R6 ;
        /*35c0*/                   MOV R7, R7 ;
.L_x_247:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 231
        /*35d0*/                   DADD R6, R24, -R6 ;
        /*35e0*/                   MOV R4, R6 ;
        /*35f0*/                   MOV R5, R7 ;
        /*3600*/                   MOV R4, R4 ;
        /*3610*/                   MOV R5, R5 ;
        /*3620*/                   MOV R20, 32@lo((_ZN9celeritas6rotateERKNS_5ArrayIdLj3EEES3_ + .L_x_4@srel)) ;
        /*3630*/                   MOV R21, 32@hi((_ZN9celeritas6rotateERKNS_5ArrayIdLj3EEES3_ + .L_x_4@srel)) ;
        /*3640*/                   CALL.ABS.NOINC `(sqrt) ;
.L_x_4:
        /*3650*/                   MOV R4, R4 ;
        /*3660*/                   MOV R5, R5 ;
        /*3670*/                   MOV R6, R4 ;
        /*3680*/                   MOV R7, R5 ;
.L_x_203:
        /*3690*/                   MOV R4, R22 ;
        /*36a0*/                   MOV R5, R23 ;
        /*36b0*/                   MOV R4, R4 ;
        /*36c0*/                   MOV R5, R5 ;
.L_x_195:
        /*36d0*/                   MOV R6, R6 ;
        /*36e0*/                   MOV R7, R7 ;
        /*36f0*/                   MOV R8, R6 ;
        /*3700*/                   MOV R9, R7 ;
.L_x_204:
        /*3710*/                   BRA `(.L_x_100) ;
.L_x_70:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 236
        /*3720*/                   MOV R4, 0x0 ;
        /*3730*/                   MOV R5, 0x3ff00000 ;
        /*3740*/                   MOV R4, R4 ;
        /*3750*/                   MOV R5, R5 ;
        /*3760*/                   MOV R6, R4 ;
        /*3770*/                   MOV R7, R5 ;
.L_x_196:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 237
        /*3780*/                   CS2R R4, SRZ ;
        /*3790*/                   MOV R4, R4 ;
        /*37a0*/                   MOV R5, R5 ;
        /*37b0*/                   MOV R10, R4 ;
        /*37c0*/                   MOV R11, R5 ;
.L_x_205:
        /*37d0*/                   MOV R4, R6 ;
        /*37e0*/                   MOV R5, R7 ;
        /*37f0*/                   MOV R4, R4 ;
        /*3800*/                   MOV R5, R5 ;
.L_x_197:
        /*3810*/                   MOV R8, R10 ;
        /*3820*/                   MOV R9, R11 ;
        /*3830*/                   MOV R8, R8 ;
        /*3840*/                   MOV R9, R9 ;
.L_x_206:
        /*3850*/                   BRA `(.L_x_100) ;
.L_x_100:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 231
        /*3860*/                   BSYNC B7 ;
.L_x_69:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 237
        /*3870*/                   MOV R6, R8 ;
        /*3880*/                   MOV R7, R9 ;
        /*3890*/                   MOV R4, R4 ;
        /*38a0*/                   MOV R5, R5 ;
        /*38b0*/                   MOV R10, R6 ;
        /*38c0*/                   MOV R11, R7 ;
        /*38d0*/                   MOV R6, R4 ;
        /*38e0*/                   MOV R7, R5 ;
.L_x_198:
        /*38f0*/                   MOV R4, R6 ;
        /*3900*/                   MOV R5, R7 ;
        /*3910*/                   MOV R4, R4 ;
        /*3920*/                   MOV R5, R5 ;
.L_x_199:
        /*3930*/                   MOV R6, R10 ;
        /*3940*/                   MOV R7, R11 ;
        /*3950*/                   MOV R6, R6 ;
        /*3960*/                   MOV R7, R7 ;
.L_x_207:
        /*3970*/                   BRA `(.L_x_68) ;
.L_x_68:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 225
        /*3980*/                   BSYNC B8 ;
.L_x_55:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 240
        /*3990*/                   MOV R6, R6 ;
        /*39a0*/                   MOV R7, R7 ;
        /*39b0*/                   MOV R4, R4 ;
        /*39c0*/                   MOV R5, R5 ;
        /*39d0*/                   MOV R24, R6 ;
        /*39e0*/                   MOV R25, R7 ;
        /*39f0*/                   MOV R22, R4 ;
        /*3a00*/                   MOV R23, R5 ;
        /*3a10*/                   MOV R6, R28 ;
        /*3a20*/                   MOV R7, R29 ;
        /*3a30*/                   IADD3 R4, P0, R16, 0x28, RZ ;
        /*3a40*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*3a50*/                   MOV R4, R4 ;
        /*3a60*/                   MOV R5, R5 ;
        /*3a70*/                   MOV R4, R4 ;
        /*3a80*/                   MOV R5, R5 ;
        /*3a90*/                   ST.E.64.SYS [R4], R6 ;
        /*3aa0*/                   MOV R0, 0x2 ;
        /*3ab0*/                   MOV R0, R0 ;
        /*3ac0*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 241
        /*3ad0*/                   BRA `(.L_x_101) ;
.L_x_101:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*3ae0*/                   IADD3 R4, P0, R16, 0x28, RZ ;
        /*3af0*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*3b00*/                   MOV R4, R4 ;
        /*3b10*/                   MOV R5, R5 ;
        /*3b20*/                   MOV R4, R4 ;
        /*3b30*/                   MOV R5, R5 ;
        /*3b40*/                   LD.E.64.SYS R4, [R4] ;
        /*3b50*/                   MOV R3, R4 ;
        /*3b60*/                   MOV R4, R5 ;
        /*3b70*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*3b80*/                   ISETP.NE.AND.EX P0, PT, R4, RZ, PT, P0 ;
        /*3b90*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3ba0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3bb0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*3bc0*/                   BSSY B0, `(.L_x_102) ;
        /*3bd0*/               @P0 BRA `(.L_x_103) ;
        /*3be0*/                   BRA `(.L_x_104) ;
.L_x_104:
        /*3bf0*/                   BRA `(.L_x_103) ;
.L_x_103:
        /*3c00*/                   BSYNC B0 ;
.L_x_102:
        /*3c10*/                   IADD3 R4, P0, R16, 0x28, RZ ;
        /*3c20*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*3c30*/                   MOV R4, R4 ;
        /*3c40*/                   MOV R5, R5 ;
        /*3c50*/                   MOV R4, R4 ;
        /*3c60*/                   MOV R5, R5 ;
        /*3c70*/                   LD.E.64.SYS R4, [R4] ;
        /*3c80*/                   MOV R3, R4 ;
        /*3c90*/                   MOV R6, R5 ;
        /*3ca0*/                   MOV R0, R0 ;
        /*3cb0*/                   MOV R4, R0 ;
        /*3cc0*/                   MOV R5, RZ ;
        /*3cd0*/                   SHF.L.U64.HI R5, R4, 0x3, R5 ;
        /*3ce0*/                   SHF.L.U32 R4, R4, 0x3, RZ ;
        /*3cf0*/                   IADD3 R4, P0, R3, R4, RZ ;
        /*3d00*/                   IADD3.X R5, R6, R5, RZ, P0, !PT ;
        /*3d10*/                   MOV R4, R4 ;
        /*3d20*/                   MOV R5, R5 ;
.L_x_254:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 241
        /*3d30*/                   MOV R4, R4 ;
        /*3d40*/                   MOV R5, R5 ;
        /*3d50*/                   MOV R4, R4 ;
        /*3d60*/                   MOV R5, R5 ;
        /*3d70*/                   LD.E.64.SYS R4, [R4] ;
        /*3d80*/                   MOV R8, R30 ;
        /*3d90*/                   MOV R9, R31 ;
        /*3da0*/                   IADD3 R6, P0, R16, 0x30, RZ ;
        /*3db0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3dc0*/                   MOV R6, R6 ;
        /*3dd0*/                   MOV R7, R7 ;
        /*3de0*/                   MOV R6, R6 ;
        /*3df0*/                   MOV R7, R7 ;
        /*3e00*/                   ST.E.64.SYS [R6], R8 ;
        /*3e10*/                   MOV R0, RZ ;
        /*3e20*/                   MOV R0, R0 ;
        /*3e30*/                   MOV R4, R4 ;
        /*3e40*/                   MOV R5, R5 ;
        /*3e50*/                   MOV R0, R0 ;
        /*3e60*/                   BRA `(.L_x_105) ;
.L_x_105:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*3e70*/                   IADD3 R6, P0, R16, 0x30, RZ ;
        /*3e80*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3e90*/                   MOV R6, R6 ;
        /*3ea0*/                   MOV R7, R7 ;
        /*3eb0*/                   MOV R6, R6 ;
        /*3ec0*/                   MOV R7, R7 ;
        /*3ed0*/                   LD.E.64.SYS R6, [R6] ;
        /*3ee0*/                   MOV R3, R6 ;
        /*3ef0*/                   MOV R6, R7 ;
        /*3f00*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*3f10*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*3f20*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3f30*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3f40*/                   BMOV.32.CLEAR RZ, B0 ;
        /*3f50*/                   BSSY B0, `(.L_x_106) ;
        /*3f60*/               @P0 BRA `(.L_x_107) ;
        /*3f70*/                   BRA `(.L_x_108) ;
.L_x_108:
        /*3f80*/                   BRA `(.L_x_107) ;
.L_x_107:
        /*3f90*/                   BSYNC B0 ;
.L_x_106:
        /*3fa0*/                   IADD3 R6, P0, R16, 0x30, RZ ;
        /*3fb0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*3fc0*/                   MOV R6, R6 ;
        /*3fd0*/                   MOV R7, R7 ;
        /*3fe0*/                   MOV R6, R6 ;
        /*3ff0*/                   MOV R7, R7 ;
        /*4000*/                   LD.E.64.SYS R6, [R6] ;
        /*4010*/                   MOV R3, R6 ;
        /*4020*/                   MOV R8, R7 ;
        /*4030*/                   MOV R0, R0 ;
        /*4040*/                   MOV R6, R0 ;
        /*4050*/                   MOV R7, RZ ;
        /*4060*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*4070*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*4080*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*4090*/                   IADD3.X R7, R8, R7, RZ, P0, !PT ;
        /*40a0*/                   MOV R6, R6 ;
        /*40b0*/                   MOV R7, R7 ;
.L_x_255:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 241
        /*40c0*/                   MOV R6, R6 ;
        /*40d0*/                   MOV R7, R7 ;
        /*40e0*/                   MOV R6, R6 ;
        /*40f0*/                   MOV R7, R7 ;
        /*4100*/                   LD.E.64.SYS R6, [R6] ;
        /*4110*/                   DMUL R4, R4, R6 ;
        /*4120*/                   MOV R8, R30 ;
        /*4130*/                   MOV R9, R31 ;
        /*4140*/                   IADD3 R6, P0, R16, 0x38, RZ ;
        /*4150*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4160*/                   MOV R6, R6 ;
        /*4170*/                   MOV R7, R7 ;
        /*4180*/                   MOV R6, R6 ;
        /*4190*/                   MOV R7, R7 ;
        /*41a0*/                   ST.E.64.SYS [R6], R8 ;
        /*41b0*/                   MOV R0, 0x2 ;
        /*41c0*/                   MOV R0, R0 ;
        /*41d0*/                   MOV R4, R4 ;
        /*41e0*/                   MOV R5, R5 ;
        /*41f0*/                   MOV R0, R0 ;
        /*4200*/                   BRA `(.L_x_109) ;
.L_x_109:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*4210*/                   IADD3 R6, P0, R16, 0x38, RZ ;
        /*4220*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4230*/                   MOV R6, R6 ;
        /*4240*/                   MOV R7, R7 ;
        /*4250*/                   MOV R6, R6 ;
        /*4260*/                   MOV R7, R7 ;
        /*4270*/                   LD.E.64.SYS R6, [R6] ;
        /*4280*/                   MOV R3, R6 ;
        /*4290*/                   MOV R6, R7 ;
        /*42a0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*42b0*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*42c0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*42d0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*42e0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*42f0*/                   BSSY B0, `(.L_x_110) ;
        /*4300*/               @P0 BRA `(.L_x_111) ;
        /*4310*/                   BRA `(.L_x_112) ;
.L_x_112:
        /*4320*/                   BRA `(.L_x_111) ;
.L_x_111:
        /*4330*/                   BSYNC B0 ;
.L_x_110:
        /*4340*/                   IADD3 R6, P0, R16, 0x38, RZ ;
        /*4350*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4360*/                   MOV R6, R6 ;
        /*4370*/                   MOV R7, R7 ;
        /*4380*/                   MOV R6, R6 ;
        /*4390*/                   MOV R7, R7 ;
        /*43a0*/                   LD.E.64.SYS R6, [R6] ;
        /*43b0*/                   MOV R3, R6 ;
        /*43c0*/                   MOV R8, R7 ;
        /*43d0*/                   MOV R0, R0 ;
        /*43e0*/                   MOV R6, R0 ;
        /*43f0*/                   MOV R7, RZ ;
        /*4400*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*4410*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*4420*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*4430*/                   IADD3.X R7, R8, R7, RZ, P0, !PT ;
        /*4440*/                   MOV R6, R6 ;
        /*4450*/                   MOV R7, R7 ;
.L_x_256:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 241
        /*4460*/                   MOV R6, R6 ;
        /*4470*/                   MOV R7, R7 ;
        /*4480*/                   MOV R6, R6 ;
        /*4490*/                   MOV R7, R7 ;
        /*44a0*/                   LD.E.64.SYS R6, [R6] ;
        /*44b0*/                   DMUL R6, R26, R6 ;
        /*44c0*/                   DADD R4, R4, R6 ;
        /*44d0*/                   DMUL R4, R4, R22 ;
        /*44e0*/                   MOV R8, R30 ;
        /*44f0*/                   MOV R9, R31 ;
        /*4500*/                   IADD3 R6, P0, R16, 0x40, RZ ;
        /*4510*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4520*/                   MOV R6, R6 ;
        /*4530*/                   MOV R7, R7 ;
        /*4540*/                   MOV R6, R6 ;
        /*4550*/                   MOV R7, R7 ;
        /*4560*/                   ST.E.64.SYS [R6], R8 ;
        /*4570*/                   MOV R0, 0x1 ;
        /*4580*/                   MOV R0, R0 ;
        /*4590*/                   MOV R4, R4 ;
        /*45a0*/                   MOV R5, R5 ;
        /*45b0*/                   MOV R0, R0 ;
        /*45c0*/                   BRA `(.L_x_113) ;
.L_x_113:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*45d0*/                   IADD3 R6, P0, R16, 0x40, RZ ;
        /*45e0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*45f0*/                   MOV R6, R6 ;
        /*4600*/                   MOV R7, R7 ;
        /*4610*/                   MOV R6, R6 ;
        /*4620*/                   MOV R7, R7 ;
        /*4630*/                   LD.E.64.SYS R6, [R6] ;
        /*4640*/                   MOV R3, R6 ;
        /*4650*/                   MOV R6, R7 ;
        /*4660*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*4670*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*4680*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*4690*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*46a0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*46b0*/                   BSSY B0, `(.L_x_114) ;
        /*46c0*/               @P0 BRA `(.L_x_115) ;
        /*46d0*/                   BRA `(.L_x_116) ;
.L_x_116:
        /*46e0*/                   BRA `(.L_x_115) ;
.L_x_115:
        /*46f0*/                   BSYNC B0 ;
.L_x_114:
        /*4700*/                   IADD3 R6, P0, R16, 0x40, RZ ;
        /*4710*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4720*/                   MOV R6, R6 ;
        /*4730*/                   MOV R7, R7 ;
        /*4740*/                   MOV R6, R6 ;
        /*4750*/                   MOV R7, R7 ;
        /*4760*/                   LD.E.64.SYS R6, [R6] ;
        /*4770*/                   MOV R3, R6 ;
        /*4780*/                   MOV R8, R7 ;
        /*4790*/                   MOV R0, R0 ;
        /*47a0*/                   MOV R6, R0 ;
        /*47b0*/                   MOV R7, RZ ;
        /*47c0*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*47d0*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*47e0*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*47f0*/                   IADD3.X R7, R8, R7, RZ, P0, !PT ;
        /*4800*/                   MOV R6, R6 ;
        /*4810*/                   MOV R7, R7 ;
.L_x_257:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 241
        /*4820*/                   MOV R6, R6 ;
        /*4830*/                   MOV R7, R7 ;
        /*4840*/                   MOV R6, R6 ;
        /*4850*/                   MOV R7, R7 ;
        /*4860*/                   LD.E.64.SYS R6, [R6] ;
        /*4870*/                   DMUL R6, R24, R6 ;
        /*4880*/                   DADD R4, R4, -R6 ;
        /*4890*/                   IADD3 R6, P0, R16, 0x88, RZ ;
        /*48a0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*48b0*/                   MOV R6, R6 ;
        /*48c0*/                   MOV R7, R7 ;
        /*48d0*/                   MOV R6, R6 ;
        /*48e0*/                   MOV R7, R7 ;
        /*48f0*/                   ST.E.64.SYS [R6], R4 ;
        /*4900*/                   MOV R6, R28 ;
        /*4910*/                   MOV R7, R29 ;
        /*4920*/                   IADD3 R4, P0, R16, 0x48, RZ ;
        /*4930*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*4940*/                   MOV R4, R4 ;
        /*4950*/                   MOV R5, R5 ;
        /*4960*/                   MOV R4, R4 ;
        /*4970*/                   MOV R5, R5 ;
        /*4980*/                   ST.E.64.SYS [R4], R6 ;
        /*4990*/                   MOV R0, 0x2 ;
        /*49a0*/                   MOV R0, R0 ;
        /*49b0*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 242
        /*49c0*/                   BRA `(.L_x_117) ;
.L_x_117:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*49d0*/                   IADD3 R4, P0, R16, 0x48, RZ ;
        /*49e0*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*49f0*/                   MOV R4, R4 ;
        /*4a00*/                   MOV R5, R5 ;
        /*4a10*/                   MOV R4, R4 ;
        /*4a20*/                   MOV R5, R5 ;
        /*4a30*/                   LD.E.64.SYS R4, [R4] ;
        /*4a40*/                   MOV R3, R4 ;
        /*4a50*/                   MOV R4, R5 ;
        /*4a60*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*4a70*/                   ISETP.NE.AND.EX P0, PT, R4, RZ, PT, P0 ;
        /*4a80*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*4a90*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*4aa0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*4ab0*/                   BSSY B0, `(.L_x_118) ;
        /*4ac0*/               @P0 BRA `(.L_x_119) ;
        /*4ad0*/                   BRA `(.L_x_120) ;
.L_x_120:
        /*4ae0*/                   BRA `(.L_x_119) ;
.L_x_119:
        /*4af0*/                   BSYNC B0 ;
.L_x_118:
        /*4b00*/                   IADD3 R4, P0, R16, 0x48, RZ ;
        /*4b10*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*4b20*/                   MOV R4, R4 ;
        /*4b30*/                   MOV R5, R5 ;
        /*4b40*/                   MOV R4, R4 ;
        /*4b50*/                   MOV R5, R5 ;
        /*4b60*/                   LD.E.64.SYS R4, [R4] ;
        /*4b70*/                   MOV R3, R4 ;
        /*4b80*/                   MOV R6, R5 ;
        /*4b90*/                   MOV R0, R0 ;
        /*4ba0*/                   MOV R4, R0 ;
        /*4bb0*/                   MOV R5, RZ ;
        /*4bc0*/                   SHF.L.U64.HI R5, R4, 0x3, R5 ;
        /*4bd0*/                   SHF.L.U32 R4, R4, 0x3, RZ ;
        /*4be0*/                   IADD3 R4, P0, R3, R4, RZ ;
        /*4bf0*/                   IADD3.X R5, R6, R5, RZ, P0, !PT ;
        /*4c00*/                   MOV R4, R4 ;
        /*4c10*/                   MOV R5, R5 ;
.L_x_258:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 242
        /*4c20*/                   MOV R4, R4 ;
        /*4c30*/                   MOV R5, R5 ;
        /*4c40*/                   MOV R4, R4 ;
        /*4c50*/                   MOV R5, R5 ;
        /*4c60*/                   LD.E.64.SYS R4, [R4] ;
        /*4c70*/                   MOV R8, R30 ;
        /*4c80*/                   MOV R9, R31 ;
        /*4c90*/                   IADD3 R6, P0, R16, 0x50, RZ ;
        /*4ca0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4cb0*/                   MOV R6, R6 ;
        /*4cc0*/                   MOV R7, R7 ;
        /*4cd0*/                   MOV R6, R6 ;
        /*4ce0*/                   MOV R7, R7 ;
        /*4cf0*/                   ST.E.64.SYS [R6], R8 ;
        /*4d00*/                   MOV R0, RZ ;
        /*4d10*/                   MOV R0, R0 ;
        /*4d20*/                   MOV R4, R4 ;
        /*4d30*/                   MOV R5, R5 ;
        /*4d40*/                   MOV R0, R0 ;
        /*4d50*/                   BRA `(.L_x_121) ;
.L_x_121:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*4d60*/                   IADD3 R6, P0, R16, 0x50, RZ ;
        /*4d70*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4d80*/                   MOV R6, R6 ;
        /*4d90*/                   MOV R7, R7 ;
        /*4da0*/                   MOV R6, R6 ;
        /*4db0*/                   MOV R7, R7 ;
        /*4dc0*/                   LD.E.64.SYS R6, [R6] ;
        /*4dd0*/                   MOV R3, R6 ;
        /*4de0*/                   MOV R6, R7 ;
        /*4df0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*4e00*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*4e10*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*4e20*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*4e30*/                   BMOV.32.CLEAR RZ, B0 ;
        /*4e40*/                   BSSY B0, `(.L_x_122) ;
        /*4e50*/               @P0 BRA `(.L_x_123) ;
        /*4e60*/                   BRA `(.L_x_124) ;
.L_x_124:
        /*4e70*/                   BRA `(.L_x_123) ;
.L_x_123:
        /*4e80*/                   BSYNC B0 ;
.L_x_122:
        /*4e90*/                   IADD3 R6, P0, R16, 0x50, RZ ;
        /*4ea0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*4eb0*/                   MOV R6, R6 ;
        /*4ec0*/                   MOV R7, R7 ;
        /*4ed0*/                   MOV R6, R6 ;
        /*4ee0*/                   MOV R7, R7 ;
        /*4ef0*/                   LD.E.64.SYS R6, [R6] ;
        /*4f00*/                   MOV R3, R6 ;
        /*4f10*/                   MOV R8, R7 ;
        /*4f20*/                   MOV R0, R0 ;
        /*4f30*/                   MOV R6, R0 ;
        /*4f40*/                   MOV R7, RZ ;
        /*4f50*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*4f60*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*4f70*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*4f80*/                   IADD3.X R7, R8, R7, RZ, P0, !PT ;
        /*4f90*/                   MOV R6, R6 ;
        /*4fa0*/                   MOV R7, R7 ;
.L_x_259:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 242
        /*4fb0*/                   MOV R6, R6 ;
        /*4fc0*/                   MOV R7, R7 ;
        /*4fd0*/                   MOV R6, R6 ;
        /*4fe0*/                   MOV R7, R7 ;
        /*4ff0*/                   LD.E.64.SYS R6, [R6] ;
        /*5000*/                   DMUL R4, R4, R6 ;
        /*5010*/                   MOV R8, R30 ;
        /*5020*/                   MOV R9, R31 ;
        /*5030*/                   IADD3 R6, P0, R16, 0x58, RZ ;
        /*5040*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*5050*/                   MOV R6, R6 ;
        /*5060*/                   MOV R7, R7 ;
        /*5070*/                   MOV R6, R6 ;
        /*5080*/                   MOV R7, R7 ;
        /*5090*/                   ST.E.64.SYS [R6], R8 ;
        /*50a0*/                   MOV R0, 0x2 ;
        /*50b0*/                   MOV R0, R0 ;
        /*50c0*/                   MOV R4, R4 ;
        /*50d0*/                   MOV R5, R5 ;
        /*50e0*/                   MOV R0, R0 ;
        /*50f0*/                   BRA `(.L_x_125) ;
.L_x_125:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*5100*/                   IADD3 R6, P0, R16, 0x58, RZ ;
        /*5110*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*5120*/                   MOV R6, R6 ;
        /*5130*/                   MOV R7, R7 ;
        /*5140*/                   MOV R6, R6 ;
        /*5150*/                   MOV R7, R7 ;
        /*5160*/                   LD.E.64.SYS R6, [R6] ;
        /*5170*/                   MOV R3, R6 ;
        /*5180*/                   MOV R6, R7 ;
        /*5190*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*51a0*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*51b0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*51c0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*51d0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*51e0*/                   BSSY B0, `(.L_x_126) ;
        /*51f0*/               @P0 BRA `(.L_x_127) ;
        /*5200*/                   BRA `(.L_x_128) ;
.L_x_128:
        /*5210*/                   BRA `(.L_x_127) ;
.L_x_127:
        /*5220*/                   BSYNC B0 ;
.L_x_126:
        /*5230*/                   IADD3 R6, P0, R16, 0x58, RZ ;
        /*5240*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*5250*/                   MOV R6, R6 ;
        /*5260*/                   MOV R7, R7 ;
        /*5270*/                   MOV R6, R6 ;
        /*5280*/                   MOV R7, R7 ;
        /*5290*/                   LD.E.64.SYS R6, [R6] ;
        /*52a0*/                   MOV R3, R6 ;
        /*52b0*/                   MOV R8, R7 ;
        /*52c0*/                   MOV R0, R0 ;
        /*52d0*/                   MOV R6, R0 ;
        /*52e0*/                   MOV R7, RZ ;
        /*52f0*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*5300*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*5310*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*5320*/                   IADD3.X R7, R8, R7, RZ, P0, !PT ;
        /*5330*/                   MOV R6, R6 ;
        /*5340*/                   MOV R7, R7 ;
.L_x_260:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 242
        /*5350*/                   MOV R6, R6 ;
        /*5360*/                   MOV R7, R7 ;
        /*5370*/                   MOV R6, R6 ;
        /*5380*/                   MOV R7, R7 ;
        /*5390*/                   LD.E.64.SYS R6, [R6] ;
        /*53a0*/                   DMUL R6, R26, R6 ;
        /*53b0*/                   DADD R4, R4, R6 ;
        /*53c0*/                   DMUL R4, R4, R24 ;
        /*53d0*/                   MOV R8, R30 ;
        /*53e0*/                   MOV R9, R31 ;
        /*53f0*/                   IADD3 R6, P0, R16, 0x60, RZ ;
        /*5400*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*5410*/                   MOV R6, R6 ;
        /*5420*/                   MOV R7, R7 ;
        /*5430*/                   MOV R6, R6 ;
        /*5440*/                   MOV R7, R7 ;
        /*5450*/                   ST.E.64.SYS [R6], R8 ;
        /*5460*/                   MOV R0, 0x1 ;
        /*5470*/                   MOV R0, R0 ;
        /*5480*/                   MOV R4, R4 ;
        /*5490*/                   MOV R5, R5 ;
        /*54a0*/                   MOV R0, R0 ;
        /*54b0*/                   BRA `(.L_x_129) ;
.L_x_129:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*54c0*/                   IADD3 R6, P0, R16, 0x60, RZ ;
        /*54d0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*54e0*/                   MOV R6, R6 ;
        /*54f0*/                   MOV R7, R7 ;
        /*5500*/                   MOV R6, R6 ;
        /*5510*/                   MOV R7, R7 ;
        /*5520*/                   LD.E.64.SYS R6, [R6] ;
        /*5530*/                   MOV R3, R6 ;
        /*5540*/                   MOV R6, R7 ;
        /*5550*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*5560*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*5570*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*5580*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*5590*/                   BMOV.32.CLEAR RZ, B0 ;
        /*55a0*/                   BSSY B0, `(.L_x_130) ;
        /*55b0*/               @P0 BRA `(.L_x_131) ;
        /*55c0*/                   BRA `(.L_x_132) ;
.L_x_132:
        /*55d0*/                   BRA `(.L_x_131) ;
.L_x_131:
        /*55e0*/                   BSYNC B0 ;
.L_x_130:
        /*55f0*/                   IADD3 R6, P0, R16, 0x60, RZ ;
        /*5600*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*5610*/                   MOV R6, R6 ;
        /*5620*/                   MOV R7, R7 ;
        /*5630*/                   MOV R6, R6 ;
        /*5640*/                   MOV R7, R7 ;
        /*5650*/                   LD.E.64.SYS R6, [R6] ;
        /*5660*/                   MOV R3, R6 ;
        /*5670*/                   MOV R8, R7 ;
        /*5680*/                   MOV R0, R0 ;
        /*5690*/                   MOV R6, R0 ;
        /*56a0*/                   MOV R7, RZ ;
        /*56b0*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*56c0*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*56d0*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*56e0*/                   IADD3.X R7, R8, R7, RZ, P0, !PT ;
        /*56f0*/                   MOV R6, R6 ;
        /*5700*/                   MOV R7, R7 ;
.L_x_261:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 242
        /*5710*/                   MOV R6, R6 ;
        /*5720*/                   MOV R7, R7 ;
        /*5730*/                   MOV R6, R6 ;
        /*5740*/                   MOV R7, R7 ;
        /*5750*/                   LD.E.64.SYS R6, [R6] ;
        /*5760*/                   DMUL R6, R22, R6 ;
        /*5770*/                   DADD R4, R4, R6 ;
        /*5780*/                   IADD3 R6, P0, R16, 0x90, RZ ;
        /*5790*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*57a0*/                   MOV R6, R6 ;
        /*57b0*/                   MOV R7, R7 ;
        /*57c0*/                   MOV R6, R6 ;
        /*57d0*/                   MOV R7, R7 ;
        /*57e0*/                   ST.E.64.SYS [R6], R4 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 240
        /*57f0*/                   DADD R4, -RZ, -R26 ;
        /*5800*/                   MOV R4, R4 ;
        /*5810*/                   MOV R5, R5 ;
        /*5820*/                   MOV R8, R30 ;
        /*5830*/                   MOV R9, R31 ;
        /*5840*/                   IADD3 R6, P0, R16, 0x68, RZ ;
        /*5850*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*5860*/                   MOV R6, R6 ;
        /*5870*/                   MOV R7, R7 ;
        /*5880*/                   MOV R6, R6 ;
        /*5890*/                   MOV R7, R7 ;
        /*58a0*/                   ST.E.64.SYS [R6], R8 ;
        /*58b0*/                   MOV R0, RZ ;
        /*58c0*/                   MOV R0, R0 ;
        /*58d0*/                   MOV R4, R4 ;
        /*58e0*/                   MOV R5, R5 ;
        /*58f0*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 243
        /*5900*/                   BRA `(.L_x_133) ;
.L_x_133:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*5910*/                   IADD3 R6, P0, R16, 0x68, RZ ;
        /*5920*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*5930*/                   MOV R6, R6 ;
        /*5940*/                   MOV R7, R7 ;
        /*5950*/                   MOV R6, R6 ;
        /*5960*/                   MOV R7, R7 ;
        /*5970*/                   LD.E.64.SYS R6, [R6] ;
        /*5980*/                   MOV R3, R6 ;
        /*5990*/                   MOV R6, R7 ;
        /*59a0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*59b0*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*59c0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*59d0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*59e0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*59f0*/                   BSSY B0, `(.L_x_134) ;
        /*5a00*/               @P0 BRA `(.L_x_135) ;
        /*5a10*/                   BRA `(.L_x_136) ;
.L_x_136:
        /*5a20*/                   BRA `(.L_x_135) ;
.L_x_135:
        /*5a30*/                   BSYNC B0 ;
.L_x_134:
        /*5a40*/                   IADD3 R6, P0, R16, 0x68, RZ ;
        /*5a50*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*5a60*/                   MOV R6, R6 ;
        /*5a70*/                   MOV R7, R7 ;
        /*5a80*/                   MOV R6, R6 ;
        /*5a90*/                   MOV R7, R7 ;
        /*5aa0*/                   LD.E.64.SYS R6, [R6] ;
        /*5ab0*/                   MOV R3, R6 ;
        /*5ac0*/                   MOV R8, R7 ;
        /*5ad0*/                   MOV R0, R0 ;
        /*5ae0*/                   MOV R6, R0 ;
        /*5af0*/                   MOV R7, RZ ;
        /*5b00*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*5b10*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*5b20*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*5b30*/                   IADD3.X R7, R8, R7, RZ, P0, !PT ;
        /*5b40*/                   MOV R6, R6 ;
        /*5b50*/                   MOV R7, R7 ;
.L_x_262:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 243
        /*5b60*/                   MOV R6, R6 ;
        /*5b70*/                   MOV R7, R7 ;
        /*5b80*/                   MOV R6, R6 ;
        /*5b90*/                   MOV R7, R7 ;
        /*5ba0*/                   LD.E.64.SYS R6, [R6] ;
        /*5bb0*/                   DMUL R4, R4, R6 ;
        /*5bc0*/                   MOV R6, R28 ;
        /*5bd0*/                   MOV R7, R29 ;
        /*5be0*/                   IADD3 R8, P0, R16, 0x70, RZ ;
        /*5bf0*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*5c00*/                   MOV R8, R8 ;
        /*5c10*/                   MOV R9, R9 ;
        /*5c20*/                   MOV R8, R8 ;
        /*5c30*/                   MOV R9, R9 ;
        /*5c40*/                   ST.E.64.SYS [R8], R6 ;
        /*5c50*/                   MOV R0, 0x2 ;
        /*5c60*/                   MOV R0, R0 ;
        /*5c70*/                   MOV R4, R4 ;
        /*5c80*/                   MOV R5, R5 ;
        /*5c90*/                   MOV R0, R0 ;
        /*5ca0*/                   BRA `(.L_x_137) ;
.L_x_137:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*5cb0*/                   IADD3 R6, P0, R16, 0x70, RZ ;
        /*5cc0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*5cd0*/                   MOV R6, R6 ;
        /*5ce0*/                   MOV R7, R7 ;
        /*5cf0*/                   MOV R6, R6 ;
        /*5d00*/                   MOV R7, R7 ;
        /*5d10*/                   LD.E.64.SYS R6, [R6] ;
        /*5d20*/                   MOV R3, R6 ;
        /*5d30*/                   MOV R6, R7 ;
        /*5d40*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*5d50*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*5d60*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*5d70*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*5d80*/                   BMOV.32.CLEAR RZ, B0 ;
        /*5d90*/                   BSSY B0, `(.L_x_138) ;
        /*5da0*/               @P0 BRA `(.L_x_139) ;
        /*5db0*/                   BRA `(.L_x_140) ;
.L_x_140:
        /*5dc0*/                   BRA `(.L_x_139) ;
.L_x_139:
        /*5dd0*/                   BSYNC B0 ;
.L_x_138:
        /*5de0*/                   IADD3 R6, P0, R16, 0x70, RZ ;
        /*5df0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*5e00*/                   MOV R6, R6 ;
        /*5e10*/                   MOV R7, R7 ;
        /*5e20*/                   MOV R6, R6 ;
        /*5e30*/                   MOV R7, R7 ;
        /*5e40*/                   LD.E.64.SYS R6, [R6] ;
        /*5e50*/                   MOV R3, R6 ;
        /*5e60*/                   MOV R8, R7 ;
        /*5e70*/                   MOV R0, R0 ;
        /*5e80*/                   MOV R6, R0 ;
        /*5e90*/                   MOV R7, RZ ;
        /*5ea0*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*5eb0*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*5ec0*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*5ed0*/                   IADD3.X R7, R8, R7, RZ, P0, !PT ;
        /*5ee0*/                   MOV R6, R6 ;
        /*5ef0*/                   MOV R7, R7 ;
.L_x_263:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 243
        /*5f00*/                   MOV R6, R6 ;
        /*5f10*/                   MOV R7, R7 ;
        /*5f20*/                   MOV R6, R6 ;
        /*5f30*/                   MOV R7, R7 ;
        /*5f40*/                   LD.E.64.SYS R6, [R6] ;
        /*5f50*/                   MOV R8, R30 ;
        /*5f60*/                   MOV R9, R31 ;
        /*5f70*/                   IADD3 R10, P0, R16, 0x78, RZ ;
        /*5f80*/                   IADD3.X R11, R2, RZ, RZ, P0, !PT ;
        /*5f90*/                   MOV R10, R10 ;
        /*5fa0*/                   MOV R11, R11 ;
        /*5fb0*/                   MOV R10, R10 ;
        /*5fc0*/                   MOV R11, R11 ;
        /*5fd0*/                   ST.E.64.SYS [R10], R8 ;
        /*5fe0*/                   MOV R0, 0x2 ;
        /*5ff0*/                   MOV R0, R0 ;
        /*6000*/                   MOV R6, R6 ;
        /*6010*/                   MOV R7, R7 ;
        /*6020*/                   MOV R0, R0 ;
        /*6030*/                   BRA `(.L_x_141) ;
.L_x_141:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 49
        /*6040*/                   IADD3 R8, P0, R16, 0x78, RZ ;
        /*6050*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*6060*/                   MOV R8, R8 ;
        /*6070*/                   MOV R9, R9 ;
        /*6080*/                   MOV R8, R8 ;
        /*6090*/                   MOV R9, R9 ;
        /*60a0*/                   LD.E.64.SYS R8, [R8] ;
        /*60b0*/                   MOV R3, R8 ;
        /*60c0*/                   MOV R8, R9 ;
        /*60d0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*60e0*/                   ISETP.NE.AND.EX P0, PT, R8, RZ, PT, P0 ;
        /*60f0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*6100*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*6110*/                   BMOV.32.CLEAR RZ, B0 ;
        /*6120*/                   BSSY B0, `(.L_x_142) ;
        /*6130*/               @P0 BRA `(.L_x_143) ;
        /*6140*/                   BRA `(.L_x_144) ;
.L_x_144:
        /*6150*/                   BRA `(.L_x_143) ;
.L_x_143:
        /*6160*/                   BSYNC B0 ;
.L_x_142:
        /*6170*/                   IADD3 R8, P0, R16, 0x78, RZ ;
        /*6180*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*6190*/                   MOV R8, R8 ;
        /*61a0*/                   MOV R9, R9 ;
        /*61b0*/                   MOV R8, R8 ;
        /*61c0*/                   MOV R9, R9 ;
        /*61d0*/                   LD.E.64.SYS R8, [R8] ;
        /*61e0*/                   MOV R3, R8 ;
        /*61f0*/                   MOV R10, R9 ;
        /*6200*/                   MOV R0, R0 ;
        /*6210*/                   MOV R8, R0 ;
        /*6220*/                   MOV R9, RZ ;
        /*6230*/                   SHF.L.U64.HI R9, R8, 0x3, R9 ;
        /*6240*/                   SHF.L.U32 R8, R8, 0x3, RZ ;
        /*6250*/                   IADD3 R8, P0, R3, R8, RZ ;
        /*6260*/                   IADD3.X R9, R10, R9, RZ, P0, !PT ;
        /*6270*/                   MOV R8, R8 ;
        /*6280*/                   MOV R9, R9 ;
.L_x_264:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 243
        /*6290*/                   MOV R8, R8 ;
        /*62a0*/                   MOV R9, R9 ;
        /*62b0*/                   MOV R8, R8 ;
        /*62c0*/                   MOV R9, R9 ;
        /*62d0*/                   LD.E.64.SYS R8, [R8] ;
        /*62e0*/                   DMUL R6, R6, R8 ;
        /*62f0*/                   DADD R4, R4, R6 ;
        /*6300*/                   IADD3 R6, P0, R16, 0x98, RZ ;
        /*6310*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*6320*/                   MOV R6, R6 ;
        /*6330*/                   MOV R7, R7 ;
        /*6340*/                   MOV R6, R6 ;
        /*6350*/                   MOV R7, R7 ;
        /*6360*/                   ST.E.64.SYS [R6], R4 ;
        /*6370*/                   IADD3 R4, P0, R16, 0x88, RZ ;
        /*6380*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 246
        /*6390*/                   MOV R4, R4 ;
        /*63a0*/                   MOV R5, R5 ;
        /*63b0*/                   MOV R20, 32@lo((_ZN9celeritas6rotateERKNS_5ArrayIdLj3EEES3_ + .L_x_5@srel)) ;
        /*63c0*/                   MOV R21, 32@hi((_ZN9celeritas6rotateERKNS_5ArrayIdLj3EEES3_ + .L_x_5@srel)) ;
        /*63d0*/                   CALL.ABS.NOINC `(_ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE) ;
.L_x_5:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 247
        /*63e0*/                   IADD3 R4, P0, R16, 0x98, RZ ;
        /*63f0*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*6400*/                   MOV R4, R4 ;
        /*6410*/                   MOV R5, R5 ;
        /*6420*/                   MOV R4, R4 ;
        /*6430*/                   MOV R5, R5 ;
        /*6440*/                   LD.E.64.SYS R4, [R4] ;
        /*6450*/                   MOV R8, R4 ;
        /*6460*/                   MOV R9, R5 ;
        /*6470*/                   IADD3 R4, P0, R16, 0x90, RZ ;
        /*6480*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*6490*/                   MOV R4, R4 ;
        /*64a0*/                   MOV R5, R5 ;
        /*64b0*/                   MOV R4, R4 ;
        /*64c0*/                   MOV R5, R5 ;
        /*64d0*/                   LD.E.64.SYS R4, [R4] ;
        /*64e0*/                   MOV R6, R4 ;
        /*64f0*/                   MOV R7, R5 ;
        /*6500*/                   IADD3 R4, P0, R16, 0x88, RZ ;
        /*6510*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*6520*/                   MOV R4, R4 ;
        /*6530*/                   MOV R5, R5 ;
        /*6540*/                   MOV R4, R4 ;
        /*6550*/                   MOV R5, R5 ;
        /*6560*/                   LD.E.64.SYS R4, [R4] ;
        /*6570*/                   MOV R0, R4 ;
        /*6580*/                   MOV R5, R5 ;
        /*6590*/                   MOV R4, R0 ;
        /*65a0*/                   MOV R5, R5 ;
        /*65b0*/                   MOV R6, R6 ;
        /*65c0*/                   MOV R7, R7 ;
        /*65d0*/                   MOV R8, R8 ;
        /*65e0*/                   MOV R9, R9 ;
        /*65f0*/                   BRA `(.L_x_145) ;
.L_x_145:
        /*6600*/                   MOV R4, R4 ;
        /*6610*/                   MOV R5, R5 ;
        /*6620*/                   MOV R6, R6 ;
        /*6630*/                   MOV R7, R7 ;
        /*6640*/                   MOV R8, R8 ;
        /*6650*/                   MOV R9, R9 ;
        /*6660*/                   BMOV.32 B6, R17 ;
        /*6670*/                   BMOV.32 B7, R18 ;
        /*6680*/                   BMOV.32 B8, R19 ;
        /*6690*/                   LDL R2, [R1+0xa0] ;
        /*66a0*/                   LDL R16, [R1+0xa4] ;
        /*66b0*/                   LDL R17, [R1+0xa8] ;
        /*66c0*/                   LDL R18, [R1+0xac] ;
        /*66d0*/                   LDL R19, [R1+0xb0] ;
        /*66e0*/                   LDL R20, [R1+0xb4] ;
        /*66f0*/                   LDL R21, [R1+0xb8] ;
        /*6700*/                   LDL R22, [R1+0xbc] ;
        /*6710*/                   LDL R23, [R1+0xc0] ;
        /*6720*/                   LDL R24, [R1+0xc4] ;
        /*6730*/                   LDL R25, [R1+0xc8] ;
        /*6740*/                   LDL R26, [R1+0xcc] ;
        /*6750*/                   LDL R27, [R1+0xd0] ;
        /*6760*/                   LDL R28, [R1+0xd4] ;
        /*6770*/                   LDL R29, [R1+0xd8] ;
        /*6780*/                   LDL R30, [R1+0xdc] ;
        /*6790*/                   LDL R31, [R1+0xe0] ;
        /*67a0*/                   IADD3 R1, R1, 0xe8, RZ ;
        /*67b0*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_146:
        /*67c0*/                   BRA `(.L_x_146);
        /*67d0*/                   NOP;
        /*67e0*/                   NOP;
        /*67f0*/                   NOP;
.L_x_200:


//--------------------- .text._ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE --------------------------
	.section	.text._ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text._ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE:
        .weak           _ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE
        .type           _ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE,@function
        .size           _ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE,(.L_x_265 - _ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE)
_ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 137
        /*0000*/                   IADD3 R1, R1, -0x38, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_147) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_147:
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
.L_x_266:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 139
        /*0230*/                   BRA `(.L_x_148) ;
.L_x_148:
        /*0240*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0250*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0 ;
        /*0260*/               @P0 BRA `(.L_x_149) ;
        /*0270*/                   BRA `(.L_x_150) ;
.L_x_150:
        /*0280*/                   BRA `(.L_x_149) ;
.L_x_149:
        /*0290*/                   BRA `(.L_x_151) ;
.L_x_151:
        /*02a0*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0 ;
        /*02b0*/               @P0 BRA `(.L_x_148) ;
        /*02c0*/                   BRA `(.L_x_152) ;
.L_x_152:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 140
        /*02d0*/                   MOV R4, R16 ;
        /*02e0*/                   MOV R5, R2 ;
        /*02f0*/                   MOV R20, 32@lo((_ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE + .L_x_6@srel)) ;
        /*0300*/                   MOV R21, 32@hi((_ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE + .L_x_6@srel)) ;
        /*0310*/                   CALL.ABS.NOINC `(_ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE) ;
.L_x_6:
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
        /*05c0*/                   BSSY B6, `(.L_x_153) ;
        /*05d0*/               @P0 BRA `(.L_x_154) ;
        /*05e0*/                   LOP3.LUT R0, R0, 0x7fffffff, RZ, 0xc0, !PT ;
        /*05f0*/                   IADD3 R6, R0, -0x100000, RZ ;
        /*0600*/                   MOV R4, R4 ;
        /*0610*/                   MOV R5, R5 ;
        /*0620*/                   MOV R6, R6 ;
        /*0630*/                   MOV R20, 32@lo((_ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE + .L_x_7@srel)) ;
        /*0640*/                   MOV R21, 32@hi((_ZN9celeritas19normalize_directionEPNS_5ArrayIdLj3EEE + .L_x_7@srel)) ;
        /*0650*/                   CALL.ABS.NOINC `(__cuda_sm20_dblrcp_rn_slowpath_v3) ;
.L_x_7:
        /*0660*/                   MOV R4, R4 ;
        /*0670*/                   MOV R5, R5 ;
        /*0680*/                   MOV R6, R4 ;
        /*0690*/                   MOV R7, R5 ;
.L_x_154:
        /*06a0*/                   BSYNC B6 ;
.L_x_153:
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
        /*07f0*/                   BRA `(.L_x_155) ;
.L_x_155:
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
        /*08e0*/                   BSSY B0, `(.L_x_156) ;
        /*08f0*/               @P0 BRA `(.L_x_157) ;
        /*0900*/                   BRA `(.L_x_158) ;
.L_x_158:
        /*0910*/                   BRA `(.L_x_157) ;
.L_x_157:
        /*0920*/                   BSYNC B0 ;
.L_x_156:
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
.L_x_267:
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
        /*0be0*/                   BRA `(.L_x_159) ;
.L_x_159:
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
        /*0cd0*/                   BSSY B0, `(.L_x_160) ;
        /*0ce0*/               @P0 BRA `(.L_x_161) ;
        /*0cf0*/                   BRA `(.L_x_162) ;
.L_x_162:
        /*0d00*/                   BRA `(.L_x_161) ;
.L_x_161:
        /*0d10*/                   BSYNC B0 ;
.L_x_160:
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
.L_x_268:
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
        /*0fd0*/                   BRA `(.L_x_163) ;
.L_x_163:
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
        /*10c0*/                   BSSY B0, `(.L_x_164) ;
        /*10d0*/               @P0 BRA `(.L_x_165) ;
        /*10e0*/                   BRA `(.L_x_166) ;
.L_x_166:
        /*10f0*/                   BRA `(.L_x_165) ;
.L_x_165:
        /*1100*/                   BSYNC B0 ;
.L_x_164:
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
.L_x_269:
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
        /*12e0*/                   BRA `(.L_x_167) ;
.L_x_167:
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
.L_x_168:
        /*1390*/                   BRA `(.L_x_168);
        /*13a0*/                   NOP;
        /*13b0*/                   NOP;
        /*13c0*/                   NOP;
        /*13d0*/                   NOP;
        /*13e0*/                   NOP;
        /*13f0*/                   NOP;
.L_x_265:


//--------------------- .text._ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE --------------------------
	.section	.text._ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text._ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE:
        .weak           _ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE
        .type           _ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE,@function
        .size           _ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE,(.L_x_270 - _ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE)
_ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 113
        /*0000*/                   IADD3 R1, R1, -0x8, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_169) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_169:
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
        /*0130*/                   MOV R20, 32@lo((_ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE + .L_x_8@srel)) ;
        /*0140*/                   MOV R21, 32@hi((_ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE + .L_x_8@srel)) ;
        /*0150*/                   CALL.ABS.NOINC `(_ZN9celeritas11dot_productIdLj3EEET_RKNS_5ArrayIS1_XT0_EEES5_) ;
.L_x_8:
        /*0160*/                   MOV R4, R4 ;
        /*0170*/                   MOV R5, R5 ;
        /*0180*/                   MOV R4, R4 ;
        /*0190*/                   MOV R5, R5 ;
        /*01a0*/                   MOV R20, 32@lo((_ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE + .L_x_9@srel)) ;
        /*01b0*/                   MOV R21, 32@hi((_ZN9celeritas4normIdLj3EEET_RKNS_5ArrayIS1_XT0_EEE + .L_x_9@srel)) ;
        /*01c0*/                   CALL.ABS.NOINC `(sqrt) ;
.L_x_9:
        /*01d0*/                   MOV R4, R4 ;
        /*01e0*/                   MOV R5, R5 ;
        /*01f0*/                   MOV R4, R4 ;
        /*0200*/                   MOV R5, R5 ;
        /*0210*/                   BRA `(.L_x_170) ;
.L_x_170:
        /*0220*/                   MOV R4, R4 ;
        /*0230*/                   MOV R5, R5 ;
        /*0240*/                   LDL R20, [R1] ;
        /*0250*/                   LDL R21, [R1+0x4] ;
        /*0260*/                   IADD3 R1, R1, 0x8, RZ ;
        /*0270*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_171:
        /*0280*/                   BRA `(.L_x_171);
        /*0290*/                   NOP;
        /*02a0*/                   NOP;
        /*02b0*/                   NOP;
        /*02c0*/                   NOP;
        /*02d0*/                   NOP;
        /*02e0*/                   NOP;
        /*02f0*/                   NOP;
.L_x_270:


//--------------------- .text._ZN9celeritas11dot_productIdLj3EEET_RKNS_5ArrayIS1_XT0_EEES5_ --------------------------
	.section	.text._ZN9celeritas11dot_productIdLj3EEET_RKNS_5ArrayIS1_XT0_EEES5_,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=36"
	.align	128
.text._ZN9celeritas11dot_productIdLj3EEET_RKNS_5ArrayIS1_XT0_EEES5_:
        .weak           _ZN9celeritas11dot_productIdLj3EEET_RKNS_5ArrayIS1_XT0_EEES5_
        .type           _ZN9celeritas11dot_productIdLj3EEET_RKNS_5ArrayIS1_XT0_EEES5_,@function
        .size           _ZN9celeritas11dot_productIdLj3EEET_RKNS_5ArrayIS1_XT0_EEES5_,(.L_x_213 - _ZN9celeritas11dot_productIdLj3EEET_RKNS_5ArrayIS1_XT0_EEES5_)
_ZN9celeritas11dot_productIdLj3EEET_RKNS_5ArrayIS1_XT0_EEES5_:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 85
        /*0000*/                   IADD3 R1, R1, -0x10, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_172) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_172:
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
.L_x_271:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 87
        /*01f0*/                   CS2R R8, SRZ ;
        /*0200*/                   MOV R8, R8 ;
        /*0210*/                   MOV R9, R9 ;
        /*0220*/                   MOV R8, R8 ;
        /*0230*/                   MOV R9, R9 ;
.L_x_208:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 88
        /*0240*/                   MOV R10, RZ ;
        /*0250*/                   MOV R10, R10 ;
        /*0260*/                   MOV R10, R10 ;
.L_x_214:
        /*0270*/                   MOV R8, R8 ;
        /*0280*/                   MOV R9, R9 ;
        /*0290*/                   MOV R12, R8 ;
        /*02a0*/                   MOV R13, R9 ;
.L_x_209:
        /*02b0*/                   MOV R8, R10 ;
        /*02c0*/                   MOV R11, R8 ;
.L_x_215:
        /*02d0*/                   BRA `(.L_x_173) ;
.L_x_173:
        /*02e0*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*02f0*/                   MOV R10, R11 ;
        /*0300*/                   MOV R8, R12 ;
        /*0310*/                   MOV R9, R13 ;
        /*0320*/                   MOV R10, R10 ;
        /*0330*/                   MOV R8, R8 ;
        /*0340*/                   MOV R9, R9 ;
.L_x_210:
        /*0350*/                   ISETP.NE.AND P0, PT, R10, 0x3, PT ;
        /*0360*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0370*/               @P0 BRA `(.L_x_174) ;
        /*0380*/                   BRA `(.L_x_175) ;
.L_x_175:
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
        /*0440*/                   BRA `(.L_x_176) ;
.L_x_176:
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
        /*0530*/                   BSSY B0, `(.L_x_177) ;
        /*0540*/               @P0 BRA `(.L_x_178) ;
        /*0550*/                   BRA `(.L_x_179) ;
.L_x_179:
        /*0560*/                   BRA `(.L_x_178) ;
.L_x_178:
        /*0570*/                   BSYNC B0 ;
.L_x_177:
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
.L_x_272:
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
        /*07c0*/                   BRA `(.L_x_180) ;
.L_x_180:
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
        /*08b0*/                   BSSY B0, `(.L_x_181) ;
        /*08c0*/               @P0 BRA `(.L_x_182) ;
        /*08d0*/                   BRA `(.L_x_183) ;
.L_x_183:
        /*08e0*/                   BRA `(.L_x_182) ;
.L_x_182:
        /*08f0*/                   BSYNC B0 ;
.L_x_181:
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
.L_x_273:
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
.L_x_211:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 88
        /*0ab0*/                   BRA `(.L_x_184) ;
.L_x_184:
        /*0ac0*/                   IADD3 R8, R10, 0x1, RZ ;
        /*0ad0*/                   MOV R8, R8 ;
.L_x_216:
        /*0ae0*/                   MOV R12, R14 ;
        /*0af0*/                   MOV R13, R15 ;
        /*0b00*/                   MOV R12, R12 ;
        /*0b10*/                   MOV R13, R13 ;
.L_x_212:
        /*0b20*/                   MOV R11, R8 ;
        /*0b30*/                   MOV R11, R11 ;
.L_x_217:
        /*0b40*/                   BRA `(.L_x_173) ;
.L_x_174:
	//## File "/home/s3j/.local/src/celeritas/src/base/ArrayUtils.hh", line 92
        /*0b50*/                   MOV R8, R8 ;
        /*0b60*/                   MOV R9, R9 ;
        /*0b70*/                   MOV R4, R8 ;
        /*0b80*/                   MOV R5, R9 ;
        /*0b90*/                   MOV R4, R4 ;
        /*0ba0*/                   MOV R5, R5 ;
        /*0bb0*/                   BRA `(.L_x_185) ;
.L_x_185:
        /*0bc0*/                   MOV R4, R4 ;
        /*0bd0*/                   MOV R5, R5 ;
        /*0be0*/                   IADD3 R1, R1, 0x10, RZ ;
        /*0bf0*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_186:
        /*0c00*/                   BRA `(.L_x_186);
        /*0c10*/                   NOP;
        /*0c20*/                   NOP;
        /*0c30*/                   NOP;
        /*0c40*/                   NOP;
        /*0c50*/                   NOP;
        /*0c60*/                   NOP;
        /*0c70*/                   NOP;
.L_x_213:


//--------------------- .text._Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_ --------------------------
	.section	.text._Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
        .global         _Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_
        .type           _Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_,@function
        .size           _Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_,(.L_x_218 - _Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_)
        .other          _Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_,@"STO_CUDA_ENTRY STV_DEFAULT"
_Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_:
.text._Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-exact.cu", line 5
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
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-exact.cu", line 10
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
        /*0830*/                   MOV R20, 32@lo((_Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_ + .L_x_10@srel)) ;
        /*0840*/                   MOV R21, 32@hi((_Z13rotate_kernelPKN9celeritas5ArrayIdLj3EEES3_PS1_ + .L_x_10@srel)) ;
        /*0850*/                   CALL.ABS.NOINC `(_ZN9celeritas6rotateERKNS_5ArrayIdLj3EEES3_) ;
.L_x_10:
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
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rotate/rotate-exact.cu", line 11
        /*0a00*/                   MEMBAR.SC.VC ;
        /*0a10*/                   ERRBAR ;
        /*0a20*/                   EXIT ;
        /*0a30*/                   MEMBAR.SC.VC ;
        /*0a40*/                   ERRBAR ;
        /*0a50*/                   EXIT ;
.L_x_187:
        /*0a60*/                   BRA `(.L_x_187);
        /*0a70*/                   NOP;
.L_x_218:


//--------------------- .text.sqrt                --------------------------
	.section	.text.sqrt,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text.sqrt:
        .type           sqrt,@function
        .size           sqrt,(.L_x_279 - sqrt)
sqrt:
        /*0000*/                   IADD3 R1, R1, -0x18, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_188) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_188:
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
        /*0550*/                   BSSY B6, `(.L_x_189) ;
        /*0560*/               @P0 BRA `(.L_x_190) ;
        /*0570*/                   MOV R4, R4 ;
        /*0580*/                   MOV R5, R5 ;
        /*0590*/                   MOV R6, R6 ;
        /*05a0*/                   MOV R8, R8 ;
        /*05b0*/                   MOV R9, R9 ;
        /*05c0*/                   MOV R10, R10 ;
        /*05d0*/                   MOV R11, R11 ;
        /*05e0*/                   MOV R12, R12 ;
        /*05f0*/                   MOV R13, R13 ;
        /*0600*/                   MOV R20, 32@lo((sqrt + .L_x_11@srel)) ;
        /*0610*/                   MOV R21, 32@hi((sqrt + .L_x_11@srel)) ;
        /*0620*/                   CALL.ABS.NOINC `(__cuda_sm20_dsqrt_rn_f64_mediumpath_v1) ;
.L_x_11:
        /*0630*/                   MOV R4, R4 ;
        /*0640*/                   MOV R5, R5 ;
        /*0650*/                   MOV R14, R4 ;
        /*0660*/                   MOV R15, R5 ;
.L_x_190:
        /*0670*/                   BSYNC B6 ;
.L_x_189:
        /*0680*/                   MOV R14, R14 ;
        /*0690*/                   MOV R15, R15 ;
        /*06a0*/                   MOV R14, R14 ;
        /*06b0*/                   MOV R15, R15 ;
        /*06c0*/                   MOV R4, R14 ;
        /*06d0*/                   MOV R5, R15 ;
        /*06e0*/                   MOV R4, R4 ;
        /*06f0*/                   MOV R5, R5 ;
        /*0700*/                   BRA `(.L_x_191) ;
.L_x_191:
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
.L_x_192:
        /*07b0*/                   BRA `(.L_x_192);
        /*07c0*/                   NOP;
        /*07d0*/                   NOP;
        /*07e0*/                   NOP;
        /*07f0*/                   NOP;
.L_x_279:
