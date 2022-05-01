	.headerflags	@"EF_CUDA_TEXMODE_UNIFIED EF_CUDA_64BIT_ADDRESS EF_CUDA_SM70 EF_CUDA_VIRTUAL_SM(EF_CUDA_SM70)"
	.elftype	@"ET_REL"


//--------------------- .text._ZN9celeritas21KernelParamCalculator9thread_idEv --------------------------
	.section	.text._ZN9celeritas21KernelParamCalculator9thread_idEv,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text._ZN9celeritas21KernelParamCalculator9thread_idEv:
        .weak           _ZN9celeritas21KernelParamCalculator9thread_idEv
        .type           _ZN9celeritas21KernelParamCalculator9thread_idEv,@function
        .size           _ZN9celeritas21KernelParamCalculator9thread_idEv,(.L_x_131 - _ZN9celeritas21KernelParamCalculator9thread_idEv)
_ZN9celeritas21KernelParamCalculator9thread_idEv:
	//## File "/home/s3j/.local/src/celeritas/src/base/KernelParamCalculator.device.hh", line 124
        /*0000*/                   IADD3 R1, R1, -0x10, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_8) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_8:
        /*0050*/                   IADD3 R0, R1, RZ, RZ ;
        /*0060*/                   MOV R0, R0 ;
        /*0070*/                   MOV R4, R0 ;
        /*0080*/                   MOV R5, RZ ;
        /*0090*/                   MOV R0, R4 ;
        /*00a0*/                   MOV R5, R5 ;
        /*00b0*/                   MOV R4, R0 ;
        /*00c0*/                   MOV R5, R5 ;
        /*00d0*/                   MOV R3, c[0x0][0x20] ;
        /*00e0*/                   MOV R0, c[0x0][0x24] ;
        /*00f0*/                   IADD3 R3, P0, R4, R3, RZ ;
        /*0100*/                   IADD3.X R0, R5, R0, RZ, P0, !PT ;
        /*0110*/                   MOV R3, R3 ;
        /*0120*/                   MOV R0, R0 ;
	//## File "/home/s3j/.local/src/celeritas/src/base/KernelParamCalculator.device.hh", line 127
        /*0130*/                   S2R R4, SR_CTAID.X ;
        /*0140*/                   MOV R4, R4 ;
        /*0150*/                   MOV R5, c[0x0][0x0] ;
        /*0160*/                   IMAD R4, R4, R5, RZ ;
        /*0170*/                   S2R R5, SR_TID.X ;
        /*0180*/                   MOV R5, R5 ;
        /*0190*/                   IADD3 R8, R4, R5, RZ ;
        /*01a0*/                   IADD3 R4, P0, R3, 0x8, RZ ;
        /*01b0*/                   IADD3.X R5, R0, RZ, RZ, P0, !PT ;
        /*01c0*/                   MOV R4, R4 ;
        /*01d0*/                   MOV R5, R5 ;
        /*01e0*/                   IADD3 R6, P0, R3, RZ, RZ ;
        /*01f0*/                   IADD3.X R7, R0, RZ, RZ, P0, !PT ;
        /*0200*/                   MOV R6, R6 ;
        /*0210*/                   MOV R7, R7 ;
        /*0220*/                   MOV R4, R4 ;
        /*0230*/                   MOV R5, R5 ;
        /*0240*/                   MOV R6, R6 ;
        /*0250*/                   MOV R7, R7 ;
        /*0260*/                   ST.E.64.SYS [R6], R4 ;
        /*0270*/                   MOV R8, R8 ;
        /*0280*/                   BRA `(.L_x_9) ;
.L_x_9:
	//## File "/home/s3j/.local/src/celeritas/src/base/OpaqueId.hh", line 50
        /*0290*/                   IADD3 R4, P0, R3, RZ, RZ ;
        /*02a0*/                   IADD3.X R5, R0, RZ, RZ, P0, !PT ;
        /*02b0*/                   MOV R4, R4 ;
        /*02c0*/                   MOV R5, R5 ;
        /*02d0*/                   MOV R4, R4 ;
        /*02e0*/                   MOV R5, R5 ;
        /*02f0*/                   LD.E.64.SYS R4, [R4] ;
        /*0300*/                   MOV R4, R4 ;
        /*0310*/                   MOV R5, R5 ;
        /*0320*/                   ST.E.SYS [R4], R8 ;
.L_x_132:
	//## File "/home/s3j/.local/src/celeritas/src/base/KernelParamCalculator.device.hh", line 127
        /*0330*/                   IADD3 R4, P0, R3, 0x8, RZ ;
        /*0340*/                   IADD3.X R5, R0, RZ, RZ, P0, !PT ;
        /*0350*/                   MOV R4, R4 ;
        /*0360*/                   MOV R5, R5 ;
        /*0370*/                   MOV R4, R4 ;
        /*0380*/                   MOV R5, R5 ;
        /*0390*/                   LD.E.SYS R4, [R4] ;
        /*03a0*/                   MOV R4, R4 ;
        /*03b0*/                   BRA `(.L_x_10) ;
.L_x_10:
        /*03c0*/                   MOV R4, R4 ;
        /*03d0*/                   IADD3 R1, R1, 0x10, RZ ;
        /*03e0*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_11:
        /*03f0*/                   BRA `(.L_x_11);
.L_x_131:


//--------------------- .text._ZN9celeritas15XorwowRngEngineC1ERKNS_18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEERKNS_8OpaqueIdINS_6ThreadEjEE --------------------------
	.section	.text._ZN9celeritas15XorwowRngEngineC1ERKNS_18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEERKNS_8OpaqueIdINS_6ThreadEjEE,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=43"
	.align	128
.text._ZN9celeritas15XorwowRngEngineC1ERKNS_18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEERKNS_8OpaqueIdINS_6ThreadEjEE:
        .weak           _ZN9celeritas15XorwowRngEngineC1ERKNS_18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEERKNS_8OpaqueIdINS_6ThreadEjEE
        .type           _ZN9celeritas15XorwowRngEngineC1ERKNS_18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEERKNS_8OpaqueIdINS_6ThreadEjEE,@function
        .size           _ZN9celeritas15XorwowRngEngineC1ERKNS_18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEERKNS_8OpaqueIdINS_6ThreadEjEE,(.L_x_133 - _ZN9celeritas15XorwowRngEngineC1ERKNS_18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEERKNS_8OpaqueIdINS_6ThreadEjEE)
_ZN9celeritas15XorwowRngEngineC1ERKNS_18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEERKNS_8OpaqueIdINS_6ThreadEjEE:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 93
        /*0000*/                   IADD3 R1, R1, -0x28, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_12) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_12:
        /*0050*/                   MOV R9, R9 ;
        /*0060*/                   MOV R8, R8 ;
        /*0070*/                   MOV R7, R7 ;
        /*0080*/                   MOV R6, R6 ;
        /*0090*/                   MOV R5, R5 ;
        /*00a0*/                   MOV R4, R4 ;
        /*00b0*/                   IADD3 R0, R1, RZ, RZ ;
        /*00c0*/                   MOV R0, R0 ;
        /*00d0*/                   MOV R10, R0 ;
        /*00e0*/                   MOV R11, RZ ;
        /*00f0*/                   MOV R0, R10 ;
        /*0100*/                   MOV R11, R11 ;
        /*0110*/                   MOV R10, R0 ;
        /*0120*/                   MOV R11, R11 ;
        /*0130*/                   MOV R0, c[0x0][0x20] ;
        /*0140*/                   MOV R3, c[0x0][0x24] ;
        /*0150*/                   IADD3 R0, P0, R10, R0, RZ ;
        /*0160*/                   IADD3.X R3, R11, R3, RZ, P0, !PT ;
        /*0170*/                   MOV R4, R4 ;
        /*0180*/                   MOV R5, R5 ;
        /*0190*/                   MOV R6, R6 ;
        /*01a0*/                   MOV R7, R7 ;
        /*01b0*/                   MOV R8, R8 ;
        /*01c0*/                   MOV R9, R9 ;
        /*01d0*/                   MOV R0, R0 ;
        /*01e0*/                   MOV R3, R3 ;
        /*01f0*/                   MOV R4, R4 ;
        /*0200*/                   MOV R5, R5 ;
        /*0210*/                   MOV R6, R6 ;
        /*0220*/                   MOV R7, R7 ;
        /*0230*/                   MOV R8, R8 ;
        /*0240*/                   MOV R9, R9 ;
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 95
        /*0250*/                   BRA `(.L_x_13) ;
.L_x_13:
        /*0260*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0270*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0 ;
        /*0280*/               @P0 BRA `(.L_x_14) ;
        /*0290*/                   BRA `(.L_x_15) ;
.L_x_15:
        /*02a0*/                   BRA `(.L_x_14) ;
.L_x_14:
        /*02b0*/                   BRA `(.L_x_16) ;
.L_x_16:
        /*02c0*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0 ;
        /*02d0*/               @P0 BRA `(.L_x_13) ;
        /*02e0*/                   BRA `(.L_x_17) ;
.L_x_17:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 96
        /*02f0*/                   MOV R8, R8 ;
        /*0300*/                   MOV R9, R9 ;
        /*0310*/                   LD.E.SYS R10, [R8] ;
        /*0320*/                   MOV R12, R10 ;
.L_x_134:
        /*0330*/                   IADD3 R10, P0, R0, 0x20, RZ ;
        /*0340*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*0350*/                   MOV R10, R10 ;
        /*0360*/                   MOV R11, R11 ;
        /*0370*/                   MOV R10, R10 ;
        /*0380*/                   MOV R11, R11 ;
        /*0390*/                   ST.E.SYS [R10], R12 ;
        /*03a0*/                   BRA `(.L_x_18) ;
.L_x_18:
	//## File "/home/s3j/.local/src/celeritas/src/base/Collection.hh", line 364
        /*03b0*/                   MOV R10, R6 ;
        /*03c0*/                   MOV R11, R7 ;
        /*03d0*/                   ISETP.NE.U32.AND P0, PT, R10, RZ, PT ;
        /*03e0*/                   ISETP.NE.AND.EX P0, PT, R11, RZ, PT, P0 ;
        /*03f0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0400*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0410*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0420*/                   BSSY B0, `(.L_x_19) ;
        /*0430*/               @P0 BRA `(.L_x_20) ;
        /*0440*/                   BRA `(.L_x_21) ;
.L_x_21:
        /*0450*/                   BRA `(.L_x_20) ;
.L_x_20:
        /*0460*/                   BSYNC B0 ;
.L_x_19:
        /*0470*/                   MOV R6, R6 ;
        /*0480*/                   MOV R7, R7 ;
        /*0490*/                   IADD3 R10, P0, R0, 0x10, RZ ;
        /*04a0*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*04b0*/                   MOV R10, R10 ;
        /*04c0*/                   MOV R11, R11 ;
        /*04d0*/                   MOV R10, R10 ;
        /*04e0*/                   MOV R11, R11 ;
        /*04f0*/                   ST.E.64.SYS [R10], R6 ;
        /*0500*/                   BRA `(.L_x_22) ;
.L_x_22:
	//## File "/home/s3j/.local/src/celeritas/src/base/Collection.hh", line 280
        /*0510*/                   IADD3 R10, P0, R0, 0x10, RZ ;
        /*0520*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*0530*/                   MOV R10, R10 ;
        /*0540*/                   MOV R11, R11 ;
        /*0550*/                   MOV R10, R10 ;
        /*0560*/                   MOV R11, R11 ;
        /*0570*/                   LD.E.64.SYS R10, [R10] ;
        /*0580*/                   MOV R12, R10 ;
        /*0590*/                   MOV R10, R11 ;
        /*05a0*/                   ISETP.NE.U32.AND P0, PT, R12, RZ, PT ;
        /*05b0*/                   ISETP.NE.AND.EX P0, PT, R10, RZ, PT, P0 ;
        /*05c0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*05d0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*05e0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*05f0*/                   BSSY B0, `(.L_x_23) ;
        /*0600*/               @P0 BRA `(.L_x_24) ;
        /*0610*/                   BRA `(.L_x_25) ;
.L_x_25:
        /*0620*/                   BRA `(.L_x_24) ;
.L_x_24:
        /*0630*/                   BSYNC B0 ;
.L_x_23:
        /*0640*/                   IADD3 R10, P0, R0, 0x10, RZ ;
        /*0650*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*0660*/                   MOV R10, R10 ;
        /*0670*/                   MOV R11, R11 ;
        /*0680*/                   MOV R10, R10 ;
        /*0690*/                   MOV R11, R11 ;
        /*06a0*/                   LD.E.64.SYS R10, [R10] ;
        /*06b0*/                   IADD3 R12, P0, R0, 0x20, RZ ;
        /*06c0*/                   IADD3.X R13, R3, RZ, RZ, P0, !PT ;
        /*06d0*/                   MOV R12, R12 ;
        /*06e0*/                   MOV R13, R13 ;
        /*06f0*/                   IADD3 R14, P0, R0, RZ, RZ ;
        /*0700*/                   IADD3.X R15, R3, RZ, RZ, P0, !PT ;
        /*0710*/                   MOV R14, R14 ;
        /*0720*/                   MOV R15, R15 ;
        /*0730*/                   MOV R12, R12 ;
        /*0740*/                   MOV R13, R13 ;
        /*0750*/                   MOV R14, R14 ;
        /*0760*/                   MOV R15, R15 ;
        /*0770*/                   ST.E.64.SYS [R14], R12 ;
        /*0780*/                   MOV R10, R10 ;
        /*0790*/                   MOV R11, R11 ;
.L_x_136:
	//## File "/home/s3j/.local/src/celeritas/src/base/Collection.hh", line 364
        /*07a0*/                   BRA `(.L_x_26) ;
.L_x_26:
	//## File "/home/s3j/.local/src/celeritas/src/base/OpaqueId.hh", line 64
        /*07b0*/                   IADD3 R12, P0, R0, RZ, RZ ;
        /*07c0*/                   IADD3.X R13, R3, RZ, RZ, P0, !PT ;
        /*07d0*/                   MOV R12, R12 ;
        /*07e0*/                   MOV R13, R13 ;
        /*07f0*/                   MOV R12, R12 ;
        /*0800*/                   MOV R13, R13 ;
        /*0810*/                   LD.E.64.SYS R12, [R12] ;
        /*0820*/                   MOV R14, R12 ;
        /*0830*/                   MOV R12, R13 ;
        /*0840*/                   ISETP.NE.U32.AND P0, PT, R14, RZ, PT ;
        /*0850*/                   ISETP.NE.AND.EX P0, PT, R12, RZ, PT, P0 ;
        /*0860*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0870*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0880*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0890*/                   BSSY B0, `(.L_x_27) ;
        /*08a0*/               @P0 BRA `(.L_x_28) ;
        /*08b0*/                   BRA `(.L_x_29) ;
.L_x_29:
        /*08c0*/                   BRA `(.L_x_28) ;
.L_x_28:
        /*08d0*/                   BSYNC B0 ;
.L_x_27:
        /*08e0*/                   IADD3 R12, P0, R0, RZ, RZ ;
        /*08f0*/                   IADD3.X R13, R3, RZ, RZ, P0, !PT ;
        /*0900*/                   MOV R12, R12 ;
        /*0910*/                   MOV R13, R13 ;
        /*0920*/                   MOV R12, R12 ;
        /*0930*/                   MOV R13, R13 ;
        /*0940*/                   LD.E.64.SYS R12, [R12] ;
        /*0950*/                   MOV R12, R12 ;
        /*0960*/                   MOV R13, R13 ;
        /*0970*/                   LD.E.SYS R12, [R12] ;
        /*0980*/                   MOV R12, R12 ;
        /*0990*/                   MOV R12, R12 ;
.L_x_137:
	//## File "/home/s3j/.local/src/celeritas/src/base/Collection.hh", line 364
        /*09a0*/                   MOV R12, R12 ;
        /*09b0*/                   MOV R12, R12 ;
        /*09c0*/                   MOV R13, RZ ;
        /*09d0*/                   MOV R10, R10 ;
        /*09e0*/                   MOV R11, R11 ;
        /*09f0*/                   IADD3 R14, P0, R0, 0x8, RZ ;
        /*0a00*/                   IADD3.X R15, R3, RZ, RZ, P0, !PT ;
        /*0a10*/                   MOV R14, R14 ;
        /*0a20*/                   MOV R15, R15 ;
        /*0a30*/                   MOV R14, R14 ;
        /*0a40*/                   MOV R15, R15 ;
        /*0a50*/                   ST.E.64.SYS [R14], R10 ;
        /*0a60*/                   MOV R10, R12 ;
        /*0a70*/                   MOV R11, R13 ;
        /*0a80*/                   BRA `(.L_x_30) ;
.L_x_30:
	//## File "/home/s3j/.local/src/celeritas/src/base/Span.hh", line 104
        /*0a90*/                   IADD3 R12, P0, R0, 0x8, RZ ;
        /*0aa0*/                   IADD3.X R13, R3, RZ, RZ, P0, !PT ;
        /*0ab0*/                   MOV R12, R12 ;
        /*0ac0*/                   MOV R13, R13 ;
        /*0ad0*/                   MOV R12, R12 ;
        /*0ae0*/                   MOV R13, R13 ;
        /*0af0*/                   LD.E.64.SYS R12, [R12] ;
        /*0b00*/                   MOV R14, R12 ;
        /*0b10*/                   MOV R12, R13 ;
        /*0b20*/                   ISETP.NE.U32.AND P0, PT, R14, RZ, PT ;
        /*0b30*/                   ISETP.NE.AND.EX P0, PT, R12, RZ, PT, P0 ;
        /*0b40*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0b50*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0b60*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0b70*/                   BSSY B0, `(.L_x_31) ;
        /*0b80*/               @P0 BRA `(.L_x_32) ;
        /*0b90*/                   BRA `(.L_x_33) ;
.L_x_33:
        /*0ba0*/                   BRA `(.L_x_32) ;
.L_x_32:
        /*0bb0*/                   BSYNC B0 ;
.L_x_31:
        /*0bc0*/                   IADD3 R12, P0, R0, 0x8, RZ ;
        /*0bd0*/                   IADD3.X R13, R3, RZ, RZ, P0, !PT ;
        /*0be0*/                   MOV R12, R12 ;
        /*0bf0*/                   MOV R13, R13 ;
        /*0c00*/                   MOV R12, R12 ;
        /*0c10*/                   MOV R13, R13 ;
        /*0c20*/                   LD.E.64.SYS R12, [R12] ;
        /*0c30*/                   MOV R12, R12 ;
        /*0c40*/                   MOV R13, R13 ;
        /*0c50*/                   LD.E.64.SYS R14, [R12] ;
        /*0c60*/                   MOV R12, R14 ;
        /*0c70*/                   MOV R13, R15 ;
        /*0c80*/                   MOV R33, R10 ;
        /*0c90*/                   MOV R34, R11 ;
        /*0ca0*/                   MOV R14, RZ ;
        /*0cb0*/                   MOV R15, RZ ;
        /*0cc0*/                   MOV R14, R14 ;
        /*0cd0*/                   MOV R15, R15 ;
        /*0ce0*/                   IMAD.WIDE.U32 R14, R33, 0x18, R14 ;
        /*0cf0*/                   MOV R32, R14 ;
        /*0d00*/                   MOV R35, R15 ;
        /*0d10*/                   MOV R32, R32 ;
        /*0d20*/                   IMAD.WIDE.U32 R14, R34, 0x18, RZ ;
        /*0d30*/                   MOV R40, R14 ;
        /*0d40*/                   MOV R14, R15 ;
        /*0d50*/                   MOV R15, R14 ;
        /*0d60*/                   MOV R14, R40 ;
        /*0d70*/                   IMAD.WIDE.U32 R14, P0, R33, RZ, R14 ;
        /*0d80*/                   MOV R33, R14 ;
        /*0d90*/                   MOV R14, R15 ;
        /*0da0*/                   IADD3 R33, P1, R33, R35, RZ ;
        /*0db0*/                   IADD3 R14, RZ, R14, RZ ;
        /*0dc0*/                   IADD3.X R15, RZ, RZ, RZ, P0, !PT ;
        /*0dd0*/                   MOV R14, R14 ;
        /*0de0*/                   MOV R15, R15 ;
        /*0df0*/                   MOV R14, R14 ;
        /*0e00*/                   MOV R15, R15 ;
        /*0e10*/                   IMAD.WIDE.U32.X R14, R34, RZ, R14, P1 ;
        /*0e20*/                   MOV R34, R14 ;
        /*0e30*/                   MOV R14, R15 ;
        /*0e40*/                   IADD3 R12, P0, R12, R32, RZ ;
        /*0e50*/                   IADD3.X R13, R13, R33, RZ, P0, !PT ;
        /*0e60*/                   MOV R12, R12 ;
        /*0e70*/                   MOV R13, R13 ;
.L_x_138:
	//## File "/home/s3j/.local/src/celeritas/src/base/Collection.hh", line 364
        /*0e80*/                   MOV R10, R12 ;
        /*0e90*/                   MOV R11, R13 ;
        /*0ea0*/                   IADD3 R12, P0, R0, 0x18, RZ ;
        /*0eb0*/                   IADD3.X R13, R3, RZ, RZ, P0, !PT ;
        /*0ec0*/                   MOV R12, R12 ;
        /*0ed0*/                   MOV R13, R13 ;
        /*0ee0*/                   MOV R10, R10 ;
        /*0ef0*/                   MOV R11, R11 ;
        /*0f00*/                   MOV R12, R12 ;
        /*0f10*/                   MOV R13, R13 ;
        /*0f20*/                   ST.E.64.SYS [R12], R10 ;
        /*0f30*/                   IADD3 R10, P0, R0, 0x18, RZ ;
        /*0f40*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*0f50*/                   MOV R10, R10 ;
        /*0f60*/                   MOV R11, R11 ;
        /*0f70*/                   MOV R10, R10 ;
        /*0f80*/                   MOV R11, R11 ;
        /*0f90*/                   LD.E.64.SYS R10, [R10] ;
        /*0fa0*/                   MOV R10, R10 ;
        /*0fb0*/                   MOV R11, R11 ;
.L_x_135:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 96
        /*0fc0*/                   MOV R4, R4 ;
        /*0fd0*/                   MOV R5, R5 ;
        /*0fe0*/                   ST.E.64.SYS [R4], R10 ;
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 97
        /*0ff0*/                   BRA `(.L_x_34) ;
.L_x_34:
        /*1000*/                   IADD3 R1, R1, 0x28, RZ ;
        /*1010*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_35:
        /*1020*/                   BRA `(.L_x_35);
        /*1030*/                   NOP;
        /*1040*/                   NOP;
        /*1050*/                   NOP;
        /*1060*/                   NOP;
        /*1070*/                   NOP;
.L_x_133:


//--------------------- .text._ZN9celeritas18generate_canonicalINS_15XorwowRngEngineEEEdRT_ --------------------------
	.section	.text._ZN9celeritas18generate_canonicalINS_15XorwowRngEngineEEEdRT_,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text._ZN9celeritas18generate_canonicalINS_15XorwowRngEngineEEEdRT_:
        .weak           _ZN9celeritas18generate_canonicalINS_15XorwowRngEngineEEEdRT_
        .type           _ZN9celeritas18generate_canonicalINS_15XorwowRngEngineEEEdRT_,@function
        .size           _ZN9celeritas18generate_canonicalINS_15XorwowRngEngineEEEdRT_,(.L_x_139 - _ZN9celeritas18generate_canonicalINS_15XorwowRngEngineEEEdRT_)
_ZN9celeritas18generate_canonicalINS_15XorwowRngEngineEEEdRT_:
	//## File "/home/s3j/.local/src/celeritas/src/random/distributions/GenerateCanonical.hh", line 85
        /*0000*/                   IADD3 R1, R1, -0x28, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_36) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_36:
        /*0050*/                   STL [R1+0x24], R21 ;
        /*0060*/                   STL [R1+0x20], R20 ;
        /*0070*/                   STL [R1+0x1c], R17 ;
        /*0080*/                   STL [R1+0x18], R16 ;
        /*0090*/                   MOV R5, R5 ;
        /*00a0*/                   MOV R4, R4 ;
        /*00b0*/                   IADD3 R0, R1, RZ, RZ ;
        /*00c0*/                   MOV R0, R0 ;
        /*00d0*/                   MOV R6, R0 ;
        /*00e0*/                   MOV R7, RZ ;
        /*00f0*/                   MOV R0, R6 ;
        /*0100*/                   MOV R7, R7 ;
        /*0110*/                   MOV R6, R0 ;
        /*0120*/                   MOV R7, R7 ;
        /*0130*/                   MOV R0, c[0x0][0x20] ;
        /*0140*/                   MOV R3, c[0x0][0x24] ;
        /*0150*/                   IADD3 R0, P0, R6, R0, RZ ;
        /*0160*/                   IADD3.X R3, R7, R3, RZ, P0, !PT ;
        /*0170*/                   MOV R4, R4 ;
        /*0180*/                   MOV R5, R5 ;
        /*0190*/                   IADD3 R6, P0, R0, 0x11, RZ ;
        /*01a0*/                   IADD3.X R7, R3, RZ, RZ, P0, !PT ;
        /*01b0*/                   MOV R6, R6 ;
        /*01c0*/                   MOV R7, R7 ;
        /*01d0*/                   IADD3 R8, P0, R0, RZ, RZ ;
        /*01e0*/                   IADD3.X R9, R3, RZ, RZ, P0, !PT ;
        /*01f0*/                   MOV R8, R8 ;
        /*0200*/                   MOV R9, R9 ;
        /*0210*/                   MOV R6, R6 ;
        /*0220*/                   MOV R7, R7 ;
        /*0230*/                   MOV R8, R8 ;
        /*0240*/                   MOV R9, R9 ;
        /*0250*/                   ST.E.64.SYS [R8], R6 ;
        /*0260*/                   MOV R4, R4 ;
        /*0270*/                   MOV R5, R5 ;
        /*0280*/                   IADD3 R6, P0, R0, 0x8, RZ ;
        /*0290*/                   IADD3.X R7, R3, RZ, RZ, P0, !PT ;
        /*02a0*/                   MOV R6, R6 ;
        /*02b0*/                   MOV R7, R7 ;
        /*02c0*/                   MOV R6, R6 ;
        /*02d0*/                   MOV R7, R7 ;
        /*02e0*/                   ST.E.64.SYS [R6], R4 ;
	//## File "/home/s3j/.local/src/celeritas/src/random/distributions/GenerateCanonical.hh", line 87
        /*02f0*/                   MOV R0, R0 ;
        /*0300*/                   MOV R3, R3 ;
        /*0310*/                   MOV R16, R4 ;
        /*0320*/                   MOV R17, R5 ;
        /*0330*/                   BRA `(.L_x_37) ;
.L_x_37:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 82
        /*0340*/                   IADD3 R4, P0, R0, RZ, RZ ;
        /*0350*/                   IADD3.X R5, R3, RZ, RZ, P0, !PT ;
        /*0360*/                   MOV R4, R4 ;
        /*0370*/                   MOV R5, R5 ;
        /*0380*/                   MOV R4, R4 ;
        /*0390*/                   MOV R5, R5 ;
        /*03a0*/                   LD.E.64.SYS R4, [R4] ;
        /*03b0*/                   MOV R6, R4 ;
        /*03c0*/                   MOV R4, R5 ;
        /*03d0*/                   ISETP.NE.U32.AND P0, PT, R6, RZ, PT ;
        /*03e0*/                   ISETP.NE.AND.EX P0, PT, R4, RZ, PT, P0 ;
        /*03f0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0400*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0410*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0420*/                   BSSY B0, `(.L_x_38) ;
        /*0430*/               @P0 BRA `(.L_x_39) ;
        /*0440*/                   BRA `(.L_x_40) ;
.L_x_40:
        /*0450*/                   BRA `(.L_x_39) ;
.L_x_39:
        /*0460*/                   BSYNC B0 ;
.L_x_38:
        /*0470*/                   IADD3 R4, P0, R0, 0x8, RZ ;
        /*0480*/                   IADD3.X R5, R3, RZ, RZ, P0, !PT ;
        /*0490*/                   MOV R4, R4 ;
        /*04a0*/                   MOV R5, R5 ;
        /*04b0*/                   MOV R4, R4 ;
        /*04c0*/                   MOV R5, R5 ;
        /*04d0*/                   LD.E.64.SYS R4, [R4] ;
        /*04e0*/                   IADD3 R0, P0, R0, 0x10, RZ ;
        /*04f0*/                   IADD3.X R3, R3, RZ, RZ, P0, !PT ;
        /*0500*/                   MOV R6, R4 ;
        /*0510*/                   MOV R7, R5 ;
        /*0520*/                   MOV R6, R6 ;
        /*0530*/                   MOV R7, R7 ;
        /*0540*/                   MOV R4, R0 ;
        /*0550*/                   MOV R5, R3 ;
        /*0560*/                   MOV R4, R4 ;
        /*0570*/                   MOV R5, R5 ;
        /*0580*/                   MOV R6, R6 ;
        /*0590*/                   MOV R7, R7 ;
        /*05a0*/                   MOV R20, 32@lo((_ZN9celeritas18generate_canonicalINS_15XorwowRngEngineEEEdRT_ + .L_x_0@srel)) ;
        /*05b0*/                   MOV R21, 32@hi((_ZN9celeritas18generate_canonicalINS_15XorwowRngEngineEEEdRT_ + .L_x_0@srel)) ;
        /*05c0*/                   CALL.ABS.NOINC `(_ZN9celeritas6detail19GenerateCanonical32IdEclINS_15XorwowRngEngineEEEdRT_) ;
.L_x_0:
        /*05d0*/                   MOV R4, R4 ;
        /*05e0*/                   MOV R5, R5 ;
        /*05f0*/                   MOV R4, R4 ;
        /*0600*/                   MOV R5, R5 ;
.L_x_140:
	//## File "/home/s3j/.local/src/celeritas/src/random/distributions/GenerateCanonical.hh", line 87
        /*0610*/                   MOV R4, R4 ;
        /*0620*/                   MOV R5, R5 ;
        /*0630*/                   MOV R0, R4 ;
        /*0640*/                   MOV R5, R5 ;
        /*0650*/                   MOV R4, R0 ;
        /*0660*/                   MOV R5, R5 ;
        /*0670*/                   BRA `(.L_x_41) ;
.L_x_41:
        /*0680*/                   MOV R4, R4 ;
        /*0690*/                   MOV R5, R5 ;
        /*06a0*/                   LDL R16, [R1+0x18] ;
        /*06b0*/                   LDL R17, [R1+0x1c] ;
        /*06c0*/                   LDL R20, [R1+0x20] ;
        /*06d0*/                   LDL R21, [R1+0x24] ;
        /*06e0*/                   IADD3 R1, R1, 0x28, RZ ;
        /*06f0*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_42:
        /*0700*/                   BRA `(.L_x_42);
        /*0710*/                   NOP;
        /*0720*/                   NOP;
        /*0730*/                   NOP;
        /*0740*/                   NOP;
        /*0750*/                   NOP;
        /*0760*/                   NOP;
        /*0770*/                   NOP;
.L_x_139:


//--------------------- .text._ZN9celeritas6detail19GenerateCanonical32IdEclINS_15XorwowRngEngineEEEdRT_ --------------------------
	.section	.text._ZN9celeritas6detail19GenerateCanonical32IdEclINS_15XorwowRngEngineEEEdRT_,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text._ZN9celeritas6detail19GenerateCanonical32IdEclINS_15XorwowRngEngineEEEdRT_:
        .weak           _ZN9celeritas6detail19GenerateCanonical32IdEclINS_15XorwowRngEngineEEEdRT_
        .type           _ZN9celeritas6detail19GenerateCanonical32IdEclINS_15XorwowRngEngineEEEdRT_,@function
        .size           _ZN9celeritas6detail19GenerateCanonical32IdEclINS_15XorwowRngEngineEEEdRT_,(.L_x_157 - _ZN9celeritas6detail19GenerateCanonical32IdEclINS_15XorwowRngEngineEEEdRT_)
_ZN9celeritas6detail19GenerateCanonical32IdEclINS_15XorwowRngEngineEEEdRT_:
	//## File "/home/s3j/.local/src/celeritas/src/random/detail/GenerateCanonical32.hh", line 76
        /*0000*/                   IADD3 R1, R1, -0x20, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_43) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_43:
        /*0050*/                   STL [R1+0x18], R21 ;
        /*0060*/                   STL [R1+0x14], R20 ;
        /*0070*/                   STL [R1+0x10], R19 ;
        /*0080*/                   STL [R1+0xc], R18 ;
        /*0090*/                   STL [R1+0x8], R17 ;
        /*00a0*/                   STL [R1+0x4], R16 ;
        /*00b0*/                   STL [R1], R2 ;
        /*00c0*/                   MOV R7, R7 ;
        /*00d0*/                   MOV R6, R6 ;
        /*00e0*/                   MOV R5, R5 ;
        /*00f0*/                   MOV R4, R4 ;
        /*0100*/                   MOV R4, R4 ;
        /*0110*/                   MOV R5, R5 ;
        /*0120*/                   MOV R6, R6 ;
        /*0130*/                   MOV R7, R7 ;
        /*0140*/                   MOV R18, R4 ;
        /*0150*/                   MOV R19, R5 ;
        /*0160*/                   MOV R0, R6 ;
        /*0170*/                   MOV R6, R7 ;
        /*0180*/                   MOV R16, R0 ;
        /*0190*/                   MOV R2, R6 ;
.L_x_158:
	//## File "/home/s3j/.local/src/celeritas/src/random/detail/GenerateCanonical32.hh", line 82
        /*01a0*/                   MOV R4, R16 ;
        /*01b0*/                   MOV R5, R2 ;
        /*01c0*/                   MOV R20, 32@lo((_ZN9celeritas6detail19GenerateCanonical32IdEclINS_15XorwowRngEngineEEEdRT_ + .L_x_1@srel)) ;
        /*01d0*/                   MOV R21, 32@hi((_ZN9celeritas6detail19GenerateCanonical32IdEclINS_15XorwowRngEngineEEEdRT_ + .L_x_1@srel)) ;
        /*01e0*/                   CALL.ABS.NOINC `(_ZN9celeritas15XorwowRngEngineclEv) ;
.L_x_1:
        /*01f0*/                   MOV R4, R4 ;
        /*0200*/                   MOV R17, R4 ;
	//## File "/home/s3j/.local/src/celeritas/src/random/detail/GenerateCanonical32.hh", line 83
        /*0210*/                   MOV R4, R16 ;
        /*0220*/                   MOV R5, R2 ;
        /*0230*/                   MOV R20, 32@lo((_ZN9celeritas6detail19GenerateCanonical32IdEclINS_15XorwowRngEngineEEEdRT_ + .L_x_2@srel)) ;
        /*0240*/                   MOV R21, 32@hi((_ZN9celeritas6detail19GenerateCanonical32IdEclINS_15XorwowRngEngineEEEdRT_ + .L_x_2@srel)) ;
        /*0250*/                   CALL.ABS.NOINC `(_ZN9celeritas15XorwowRngEngineclEv) ;
.L_x_2:
        /*0260*/                   MOV R4, R4 ;
        /*0270*/                   MOV R0, R4 ;
	//## File "/home/s3j/.local/src/celeritas/src/random/detail/GenerateCanonical32.hh", line 89
        /*0280*/                   MOV R3, R18 ;
        /*0290*/                   MOV R4, R19 ;
        /*02a0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*02b0*/                   ISETP.NE.AND.EX P0, PT, R4, RZ, PT, P0 ;
        /*02c0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*02d0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*02e0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*02f0*/                   BSSY B0, `(.L_x_44) ;
        /*0300*/               @P0 BRA `(.L_x_45) ;
        /*0310*/                   BRA `(.L_x_46) ;
.L_x_46:
        /*0320*/                   BRA `(.L_x_45) ;
.L_x_45:
        /*0330*/                   BSYNC B0 ;
.L_x_44:
        /*0340*/                   MOV R3, R17 ;
        /*0350*/                   MOV R3, R3 ;
        /*0360*/                   MOV R6, RZ ;
        /*0370*/                   SHF.L.U64.HI R6, R3, 0x15, R6 ;
        /*0380*/                   SHF.L.U32 R3, R3, 0x15, RZ ;
        /*0390*/                   MOV R0, R0 ;
        /*03a0*/                   MOV R4, R0 ;
        /*03b0*/                   MOV R5, RZ ;
        /*03c0*/                   LOP3.LUT R4, R3, R4, RZ, 0x3c, !PT ;
        /*03d0*/                   LOP3.LUT R5, R6, R5, RZ, 0x3c, !PT ;
        /*03e0*/                   MOV R4, R4 ;
        /*03f0*/                   MOV R5, R5 ;
        /*0400*/                   I2F.F64.U64 R4, R4 ;
        /*0410*/                   DMUL R4, R4, 1.1102230246251565404e-16 ;
        /*0420*/                   MOV R3, R4 ;
        /*0430*/                   MOV R5, R5 ;
        /*0440*/                   MOV R4, R3 ;
        /*0450*/                   MOV R5, R5 ;
        /*0460*/                   BRA `(.L_x_47) ;
.L_x_47:
        /*0470*/                   MOV R4, R4 ;
        /*0480*/                   MOV R5, R5 ;
        /*0490*/                   LDL R2, [R1] ;
        /*04a0*/                   LDL R16, [R1+0x4] ;
        /*04b0*/                   LDL R17, [R1+0x8] ;
        /*04c0*/                   LDL R18, [R1+0xc] ;
        /*04d0*/                   LDL R19, [R1+0x10] ;
        /*04e0*/                   LDL R20, [R1+0x14] ;
        /*04f0*/                   LDL R21, [R1+0x18] ;
        /*0500*/                   IADD3 R1, R1, 0x20, RZ ;
        /*0510*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_48:
        /*0520*/                   BRA `(.L_x_48);
        /*0530*/                   NOP;
        /*0540*/                   NOP;
        /*0550*/                   NOP;
        /*0560*/                   NOP;
        /*0570*/                   NOP;
.L_x_157:


//--------------------- .text._Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd --------------------------
	.section	.text._Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=27"
	.align	128
        .global         _Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd
        .type           _Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd,@function
        .size           _Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd,(.L_x_125 - _Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd)
        .other          _Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd,@"STO_CUDA_ENTRY STV_DEFAULT"
_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd:
.text._Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/canonical.cu", line 6
        /*0000*/                   MOV R1, c[0x0][0x28] ;
        /*0010*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0020*/                   IADD3 R1, R1, -0x38, RZ ;
        /*0030*/                   S2R R0, SR_LMEMHIOFF ;
        /*0040*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0050*/               @P0 BRA `(.L_x_49) ;
        /*0060*/                   BPT.TRAP 0x1 ;
.L_x_49:
        /*0070*/                   IADD3 R0, R1, RZ, RZ ;
        /*0080*/                   MOV R0, R0 ;
        /*0090*/                   MOV R2, R0 ;
        /*00a0*/                   MOV R3, RZ ;
        /*00b0*/                   MOV R0, R2 ;
        /*00c0*/                   MOV R3, R3 ;
        /*00d0*/                   MOV R0, R0 ;
        /*00e0*/                   MOV R3, R3 ;
        /*00f0*/                   MOV R16, c[0x0][0x20] ;
        /*0100*/                   MOV R2, c[0x0][0x24] ;
        /*0110*/                   IADD3 R16, P0, R0, R16, RZ ;
        /*0120*/                   IADD3.X R2, R3, R2, RZ, P0, !PT ;
        /*0130*/                   MOV R0, 0x160 ;
        /*0140*/                   IADD3 R0, R0, 0x8, RZ ;
        /*0150*/                   MOV R0, R0 ;
        /*0160*/                   LDC.64 R4, c[0x0][R0] ;
        /*0170*/                   MOV R6, R4 ;
        /*0180*/                   MOV R7, R5 ;
        /*0190*/                   MOV R6, R6 ;
        /*01a0*/                   MOV R7, R7 ;
        /*01b0*/                   MOV R6, R6 ;
        /*01c0*/                   MOV R7, R7 ;
        /*01d0*/                   MOV R4, 0x170 ;
        /*01e0*/                   LDC.64 R4, c[0x0][R4] ;
        /*01f0*/                   MOV R18, R4 ;
        /*0200*/                   MOV R17, R5 ;
        /*0210*/                   MOV R18, R18 ;
        /*0220*/                   MOV R17, R17 ;
        /*0230*/                   MOV R4, 0x160 ;
        /*0240*/                   LDC.64 R4, c[0x0][R4] ;
        /*0250*/                   MOV R0, R4 ;
        /*0260*/                   MOV R4, R5 ;
        /*0270*/                   MOV R5, R4 ;
        /*0280*/                   MOV R4, R0 ;
        /*0290*/                   MOV R4, R4 ;
        /*02a0*/                   MOV R5, R5 ;
        /*02b0*/                   IADD3 R8, P0, R16, 0x20, RZ ;
        /*02c0*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*02d0*/                   MOV R8, R8 ;
        /*02e0*/                   MOV R9, R9 ;
        /*02f0*/                   MOV R8, R8 ;
        /*0300*/                   MOV R9, R9 ;
        /*0310*/                   ST.E.64.SYS [R8], R6 ;
        /*0320*/                   IADD3 R6, P0, R16, 0x18, RZ ;
        /*0330*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*0340*/                   MOV R6, R6 ;
        /*0350*/                   MOV R7, R7 ;
        /*0360*/                   MOV R6, R6 ;
        /*0370*/                   MOV R7, R7 ;
        /*0380*/                   ST.E.64.SYS [R6], R4 ;
        /*0390*/                   MOV R16, R16 ;
        /*03a0*/                   MOV R2, R2 ;
        /*03b0*/                   MOV R18, R18 ;
        /*03c0*/                   MOV R17, R17 ;
.L_x_126:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/canonical.cu", line 8
        /*03d0*/                   MOV R20, 32@lo((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_3@srel)) ;
        /*03e0*/                   MOV R21, 32@hi((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_3@srel)) ;
        /*03f0*/                   CALL.ABS.NOINC `(_ZN9celeritas21KernelParamCalculator9thread_idEv) ;
.L_x_3:
        /*0400*/                   MOV R4, R4 ;
        /*0410*/                   IADD3 R6, P0, R16, 0x28, RZ ;
        /*0420*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*0430*/                   MOV R6, R6 ;
        /*0440*/                   MOV R7, R7 ;
        /*0450*/                   MOV R6, R6 ;
        /*0460*/                   MOV R7, R7 ;
        /*0470*/                   ST.E.SYS [R6], R4 ;
        /*0480*/                   IADD3 R22, P0, R16, 0x30, RZ ;
        /*0490*/                   IADD3.X R19, R2, RZ, RZ, P0, !PT ;
        /*04a0*/                   IADD3 R6, P0, R16, 0x18, RZ ;
        /*04b0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*04c0*/                   IADD3 R24, P0, R16, 0x28, RZ ;
        /*04d0*/                   IADD3.X R23, R2, RZ, RZ, P0, !PT ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/canonical.cu", line 9
        /*04e0*/                   MOV R4, R22 ;
        /*04f0*/                   MOV R5, R19 ;
        /*0500*/                   MOV R6, R6 ;
        /*0510*/                   MOV R7, R7 ;
        /*0520*/                   MOV R8, R24 ;
        /*0530*/                   MOV R9, R23 ;
        /*0540*/                   MOV R22, R22 ;
        /*0550*/                   MOV R19, R19 ;
        /*0560*/                   MOV R24, R24 ;
        /*0570*/                   MOV R23, R23 ;
        /*0580*/                   MOV R20, 32@lo((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_4@srel)) ;
        /*0590*/                   MOV R21, 32@hi((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_4@srel)) ;
        /*05a0*/                   CALL.ABS.NOINC `(_ZN9celeritas15XorwowRngEngineC1ERKNS_18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEERKNS_8OpaqueIdINS_6ThreadEjEE) ;
.L_x_4:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/canonical.cu", line 11
        /*05b0*/                   MOV R4, R22 ;
        /*05c0*/                   MOV R5, R19 ;
        /*05d0*/                   MOV R20, 32@lo((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_5@srel)) ;
        /*05e0*/                   MOV R21, 32@hi((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_5@srel)) ;
        /*05f0*/                   CALL.ABS.NOINC `(_ZN9celeritas18generate_canonicalINS_15XorwowRngEngineEEEdRT_) ;
.L_x_5:
        /*0600*/                   MOV R4, R4 ;
        /*0610*/                   MOV R5, R5 ;
        /*0620*/                   MOV R6, R24 ;
        /*0630*/                   MOV R7, R23 ;
        /*0640*/                   IADD3 R8, P0, R16, 0x10, RZ ;
        /*0650*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*0660*/                   MOV R8, R8 ;
        /*0670*/                   MOV R9, R9 ;
        /*0680*/                   MOV R6, R6 ;
        /*0690*/                   MOV R7, R7 ;
        /*06a0*/                   MOV R8, R8 ;
        /*06b0*/                   MOV R9, R9 ;
        /*06c0*/                   ST.E.64.SYS [R8], R6 ;
        /*06d0*/                   MOV R4, R4 ;
        /*06e0*/                   MOV R5, R5 ;
        /*06f0*/                   BRA `(.L_x_50) ;
.L_x_50:
	//## File "/home/s3j/.local/src/celeritas/src/base/OpaqueId.hh", line 64
        /*0700*/                   IADD3 R6, P0, R16, 0x10, RZ ;
        /*0710*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*0720*/                   MOV R6, R6 ;
        /*0730*/                   MOV R7, R7 ;
        /*0740*/                   MOV R6, R6 ;
        /*0750*/                   MOV R7, R7 ;
        /*0760*/                   LD.E.64.SYS R6, [R6] ;
        /*0770*/                   MOV R0, R6 ;
        /*0780*/                   MOV R6, R7 ;
        /*0790*/                   ISETP.NE.U32.AND P0, PT, R0, RZ, PT ;
        /*07a0*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*07b0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*07c0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*07d0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*07e0*/                   BSSY B0, `(.L_x_51) ;
        /*07f0*/               @P0 BRA `(.L_x_52) ;
        /*0800*/                   BRA `(.L_x_53) ;
.L_x_53:
        /*0810*/                   BRA `(.L_x_52) ;
.L_x_52:
        /*0820*/                   BSYNC B0 ;
.L_x_51:
        /*0830*/                   IADD3 R6, P0, R16, 0x10, RZ ;
        /*0840*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*0850*/                   MOV R6, R6 ;
        /*0860*/                   MOV R7, R7 ;
        /*0870*/                   MOV R6, R6 ;
        /*0880*/                   MOV R7, R7 ;
        /*0890*/                   LD.E.64.SYS R6, [R6] ;
        /*08a0*/                   MOV R6, R6 ;
        /*08b0*/                   MOV R7, R7 ;
        /*08c0*/                   LD.E.SYS R6, [R6] ;
        /*08d0*/                   MOV R6, R6 ;
        /*08e0*/                   MOV R6, R6 ;
.L_x_128:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/canonical.cu", line 11
        /*08f0*/                   IMAD R6, R6, 0x3, RZ ;
        /*0900*/                   MOV R6, R6 ;
        /*0910*/                   MOV R6, R6 ;
        /*0920*/                   MOV R7, RZ ;
        /*0930*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*0940*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*0950*/                   IADD3 R6, P0, R18, R6, RZ ;
        /*0960*/                   IADD3.X R7, R17, R7, RZ, P0, !PT ;
        /*0970*/                   MOV R6, R6 ;
        /*0980*/                   MOV R7, R7 ;
        /*0990*/                   MOV R6, R6 ;
        /*09a0*/                   MOV R7, R7 ;
        /*09b0*/                   ST.E.64.SYS [R6], R4 ;
        /*09c0*/                   IADD3 R4, P0, R16, 0x30, RZ ;
        /*09d0*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/canonical.cu", line 12
        /*09e0*/                   MOV R4, R4 ;
        /*09f0*/                   MOV R5, R5 ;
        /*0a00*/                   MOV R20, 32@lo((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_6@srel)) ;
        /*0a10*/                   MOV R21, 32@hi((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_6@srel)) ;
        /*0a20*/                   CALL.ABS.NOINC `(_ZN9celeritas18generate_canonicalINS_15XorwowRngEngineEEEdRT_) ;
.L_x_6:
        /*0a30*/                   MOV R4, R4 ;
        /*0a40*/                   MOV R5, R5 ;
        /*0a50*/                   DMUL R4, R4, 5 ;
        /*0a60*/                   IADD3 R6, P0, R16, 0x28, RZ ;
        /*0a70*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*0a80*/                   MOV R6, R6 ;
        /*0a90*/                   MOV R7, R7 ;
        /*0aa0*/                   IADD3 R8, P0, R16, RZ, RZ ;
        /*0ab0*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*0ac0*/                   MOV R8, R8 ;
        /*0ad0*/                   MOV R9, R9 ;
        /*0ae0*/                   MOV R6, R6 ;
        /*0af0*/                   MOV R7, R7 ;
        /*0b00*/                   MOV R8, R8 ;
        /*0b10*/                   MOV R9, R9 ;
        /*0b20*/                   ST.E.64.SYS [R8], R6 ;
        /*0b30*/                   MOV R4, R4 ;
        /*0b40*/                   MOV R5, R5 ;
        /*0b50*/                   BRA `(.L_x_54) ;
.L_x_54:
	//## File "/home/s3j/.local/src/celeritas/src/base/OpaqueId.hh", line 64
        /*0b60*/                   IADD3 R6, P0, R16, RZ, RZ ;
        /*0b70*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*0b80*/                   MOV R6, R6 ;
        /*0b90*/                   MOV R7, R7 ;
        /*0ba0*/                   MOV R6, R6 ;
        /*0bb0*/                   MOV R7, R7 ;
        /*0bc0*/                   LD.E.64.SYS R6, [R6] ;
        /*0bd0*/                   MOV R0, R6 ;
        /*0be0*/                   MOV R6, R7 ;
        /*0bf0*/                   ISETP.NE.U32.AND P0, PT, R0, RZ, PT ;
        /*0c00*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*0c10*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0c20*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0c30*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0c40*/                   BSSY B0, `(.L_x_55) ;
        /*0c50*/               @P0 BRA `(.L_x_56) ;
        /*0c60*/                   BRA `(.L_x_57) ;
.L_x_57:
        /*0c70*/                   BRA `(.L_x_56) ;
.L_x_56:
        /*0c80*/                   BSYNC B0 ;
.L_x_55:
        /*0c90*/                   IADD3 R6, P0, R16, RZ, RZ ;
        /*0ca0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*0cb0*/                   MOV R6, R6 ;
        /*0cc0*/                   MOV R7, R7 ;
        /*0cd0*/                   MOV R6, R6 ;
        /*0ce0*/                   MOV R7, R7 ;
        /*0cf0*/                   LD.E.64.SYS R6, [R6] ;
        /*0d00*/                   MOV R6, R6 ;
        /*0d10*/                   MOV R7, R7 ;
        /*0d20*/                   LD.E.SYS R6, [R6] ;
        /*0d30*/                   MOV R6, R6 ;
        /*0d40*/                   MOV R6, R6 ;
.L_x_129:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/canonical.cu", line 12
        /*0d50*/                   IMAD R6, R6, 0x3, RZ ;
        /*0d60*/                   IADD3 R6, R6, 0x1, RZ ;
        /*0d70*/                   MOV R6, R6 ;
        /*0d80*/                   MOV R6, R6 ;
        /*0d90*/                   MOV R7, RZ ;
        /*0da0*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*0db0*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*0dc0*/                   IADD3 R6, P0, R18, R6, RZ ;
        /*0dd0*/                   IADD3.X R7, R17, R7, RZ, P0, !PT ;
        /*0de0*/                   MOV R6, R6 ;
        /*0df0*/                   MOV R7, R7 ;
        /*0e00*/                   MOV R6, R6 ;
        /*0e10*/                   MOV R7, R7 ;
        /*0e20*/                   ST.E.64.SYS [R6], R4 ;
        /*0e30*/                   IADD3 R4, P0, R16, 0x30, RZ ;
        /*0e40*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/canonical.cu", line 13
        /*0e50*/                   MOV R4, R4 ;
        /*0e60*/                   MOV R5, R5 ;
        /*0e70*/                   MOV R20, 32@lo((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_7@srel)) ;
        /*0e80*/                   MOV R21, 32@hi((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_7@srel)) ;
        /*0e90*/                   CALL.ABS.NOINC `(_ZN9celeritas18generate_canonicalINS_15XorwowRngEngineEEEdRT_) ;
.L_x_7:
        /*0ea0*/                   MOV R4, R4 ;
        /*0eb0*/                   MOV R5, R5 ;
        /*0ec0*/                   DMUL R4, R4, 5.25 ;
        /*0ed0*/                   DADD R4, R4, 2.5 ;
        /*0ee0*/                   IADD3 R6, P0, R16, 0x28, RZ ;
        /*0ef0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*0f00*/                   MOV R6, R6 ;
        /*0f10*/                   MOV R7, R7 ;
        /*0f20*/                   IADD3 R8, P0, R16, 0x8, RZ ;
        /*0f30*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*0f40*/                   MOV R8, R8 ;
        /*0f50*/                   MOV R9, R9 ;
        /*0f60*/                   MOV R6, R6 ;
        /*0f70*/                   MOV R7, R7 ;
        /*0f80*/                   MOV R8, R8 ;
        /*0f90*/                   MOV R9, R9 ;
        /*0fa0*/                   ST.E.64.SYS [R8], R6 ;
        /*0fb0*/                   MOV R4, R4 ;
        /*0fc0*/                   MOV R5, R5 ;
        /*0fd0*/                   BRA `(.L_x_58) ;
.L_x_58:
	//## File "/home/s3j/.local/src/celeritas/src/base/OpaqueId.hh", line 64
        /*0fe0*/                   IADD3 R6, P0, R16, 0x8, RZ ;
        /*0ff0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*1000*/                   MOV R6, R6 ;
        /*1010*/                   MOV R7, R7 ;
        /*1020*/                   MOV R6, R6 ;
        /*1030*/                   MOV R7, R7 ;
        /*1040*/                   LD.E.64.SYS R6, [R6] ;
        /*1050*/                   MOV R0, R6 ;
        /*1060*/                   MOV R6, R7 ;
        /*1070*/                   ISETP.NE.U32.AND P0, PT, R0, RZ, PT ;
        /*1080*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*1090*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*10a0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*10b0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*10c0*/                   BSSY B0, `(.L_x_59) ;
        /*10d0*/               @P0 BRA `(.L_x_60) ;
        /*10e0*/                   BRA `(.L_x_61) ;
.L_x_61:
        /*10f0*/                   BRA `(.L_x_60) ;
.L_x_60:
        /*1100*/                   BSYNC B0 ;
.L_x_59:
        /*1110*/                   IADD3 R16, P0, R16, 0x8, RZ ;
        /*1120*/                   IADD3.X R3, R2, RZ, RZ, P0, !PT ;
        /*1130*/                   MOV R2, R16 ;
        /*1140*/                   MOV R3, R3 ;
        /*1150*/                   MOV R2, R2 ;
        /*1160*/                   MOV R3, R3 ;
        /*1170*/                   LD.E.64.SYS R2, [R2] ;
        /*1180*/                   MOV R2, R2 ;
        /*1190*/                   MOV R3, R3 ;
        /*11a0*/                   LD.E.SYS R2, [R2] ;
        /*11b0*/                   MOV R2, R2 ;
        /*11c0*/                   MOV R2, R2 ;
.L_x_130:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/canonical.cu", line 13
        /*11d0*/                   IMAD R2, R2, 0x3, RZ ;
        /*11e0*/                   IADD3 R2, R2, 0x2, RZ ;
        /*11f0*/                   MOV R2, R2 ;
        /*1200*/                   MOV R2, R2 ;
        /*1210*/                   MOV R3, RZ ;
        /*1220*/                   SHF.L.U64.HI R3, R2, 0x3, R3 ;
        /*1230*/                   SHF.L.U32 R2, R2, 0x3, RZ ;
        /*1240*/                   IADD3 R2, P0, R18, R2, RZ ;
        /*1250*/                   IADD3.X R3, R17, R3, RZ, P0, !PT ;
        /*1260*/                   MOV R2, R2 ;
        /*1270*/                   MOV R3, R3 ;
        /*1280*/                   MOV R2, R2 ;
        /*1290*/                   MOV R3, R3 ;
        /*12a0*/                   ST.E.64.SYS [R2], R4 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/canonical.cu", line 14
        /*12b0*/                   MEMBAR.SC.VC ;
        /*12c0*/                   ERRBAR ;
        /*12d0*/                   EXIT ;
.L_x_127:
        /*12e0*/                   MEMBAR.SC.VC ;
        /*12f0*/                   ERRBAR ;
        /*1300*/                   EXIT ;
.L_x_62:
        /*1310*/                   BRA `(.L_x_62);
        /*1320*/                   NOP;
        /*1330*/                   NOP;
        /*1340*/                   NOP;
        /*1350*/                   NOP;
        /*1360*/                   NOP;
        /*1370*/                   NOP;
.L_x_125:


//--------------------- .text._ZN9celeritas15XorwowRngEngineclEv --------------------------
	.section	.text._ZN9celeritas15XorwowRngEngineclEv,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text._ZN9celeritas15XorwowRngEngineclEv:
        .weak           _ZN9celeritas15XorwowRngEngineclEv
        .type           _ZN9celeritas15XorwowRngEngineclEv,@function
        .size           _ZN9celeritas15XorwowRngEngineclEv,(.L_x_141 - _ZN9celeritas15XorwowRngEngineclEv)
_ZN9celeritas15XorwowRngEngineclEv:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 103
        /*0000*/                   IADD3 R1, R1, -0x70, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_63) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_63:
        /*0050*/                   MOV R5, R5 ;
        /*0060*/                   MOV R4, R4 ;
        /*0070*/                   IADD3 R0, R1, RZ, RZ ;
        /*0080*/                   MOV R0, R0 ;
        /*0090*/                   MOV R6, R0 ;
        /*00a0*/                   MOV R7, RZ ;
        /*00b0*/                   MOV R0, R6 ;
        /*00c0*/                   MOV R7, R7 ;
        /*00d0*/                   MOV R6, R0 ;
        /*00e0*/                   MOV R7, R7 ;
        /*00f0*/                   MOV R0, c[0x0][0x20] ;
        /*0100*/                   MOV R3, c[0x0][0x24] ;
        /*0110*/                   IADD3 R0, P0, R6, R0, RZ ;
        /*0120*/                   IADD3.X R3, R7, R3, RZ, P0, !PT ;
        /*0130*/                   MOV R4, R4 ;
        /*0140*/                   MOV R5, R5 ;
        /*0150*/                   MOV R0, R0 ;
        /*0160*/                   MOV R3, R3 ;
        /*0170*/                   MOV R6, R4 ;
        /*0180*/                   MOV R7, R5 ;
.L_x_142:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 105
        /*0190*/                   MOV R4, R6 ;
        /*01a0*/                   MOV R5, R7 ;
        /*01b0*/                   LD.E.64.SYS R4, [R4] ;
        /*01c0*/                   MOV R4, R4 ;
        /*01d0*/                   MOV R5, R5 ;
        /*01e0*/                   MOV R4, R4 ;
        /*01f0*/                   MOV R5, R5 ;
        /*0200*/                   IADD3 R8, P0, R0, 0x68, RZ ;
        /*0210*/                   IADD3.X R9, R3, RZ, RZ, P0, !PT ;
        /*0220*/                   MOV R8, R8 ;
        /*0230*/                   MOV R9, R9 ;
        /*0240*/                   MOV R8, R8 ;
        /*0250*/                   MOV R9, R9 ;
        /*0260*/                   ST.E.64.SYS [R8], R4 ;
        /*0270*/                   MOV R8, RZ ;
        /*0280*/                   MOV R8, R8 ;
        /*0290*/                   MOV R10, R8 ;
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 106
        /*02a0*/                   BRA `(.L_x_64) ;
.L_x_64:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 50
        /*02b0*/                   IADD3 R8, P0, R0, 0x68, RZ ;
        /*02c0*/                   IADD3.X R9, R3, RZ, RZ, P0, !PT ;
        /*02d0*/                   MOV R8, R8 ;
        /*02e0*/                   MOV R9, R9 ;
        /*02f0*/                   MOV R8, R8 ;
        /*0300*/                   MOV R9, R9 ;
        /*0310*/                   LD.E.64.SYS R8, [R8] ;
        /*0320*/                   MOV R11, R8 ;
        /*0330*/                   MOV R8, R9 ;
        /*0340*/                   ISETP.NE.U32.AND P0, PT, R11, RZ, PT ;
        /*0350*/                   ISETP.NE.AND.EX P0, PT, R8, RZ, PT, P0 ;
        /*0360*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0370*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0380*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0390*/                   BSSY B0, `(.L_x_65) ;
        /*03a0*/               @P0 BRA `(.L_x_66) ;
        /*03b0*/                   BRA `(.L_x_67) ;
.L_x_67:
        /*03c0*/                   BRA `(.L_x_66) ;
.L_x_66:
        /*03d0*/                   BSYNC B0 ;
.L_x_65:
        /*03e0*/                   IADD3 R8, P0, R0, 0x68, RZ ;
        /*03f0*/                   IADD3.X R9, R3, RZ, RZ, P0, !PT ;
        /*0400*/                   MOV R8, R8 ;
        /*0410*/                   MOV R9, R9 ;
        /*0420*/                   MOV R8, R8 ;
        /*0430*/                   MOV R9, R9 ;
        /*0440*/                   LD.E.64.SYS R8, [R8] ;
        /*0450*/                   MOV R11, R8 ;
        /*0460*/                   MOV R12, R9 ;
        /*0470*/                   MOV R8, R10 ;
        /*0480*/                   MOV R8, R8 ;
        /*0490*/                   MOV R9, RZ ;
        /*04a0*/                   SHF.L.U64.HI R9, R8, 0x2, R9 ;
        /*04b0*/                   SHF.L.U32 R8, R8, 0x2, RZ ;
        /*04c0*/                   IADD3 R8, P0, R11, R8, RZ ;
        /*04d0*/                   IADD3.X R9, R12, R9, RZ, P0, !PT ;
        /*04e0*/                   MOV R8, R8 ;
        /*04f0*/                   MOV R9, R9 ;
.L_x_143:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 106
        /*0500*/                   MOV R8, R8 ;
        /*0510*/                   MOV R9, R9 ;
        /*0520*/                   MOV R8, R8 ;
        /*0530*/                   MOV R9, R9 ;
        /*0540*/                   LD.E.SYS R10, [R8] ;
        /*0550*/                   MOV R4, R4 ;
        /*0560*/                   MOV R5, R5 ;
        /*0570*/                   IADD3 R8, P0, R0, RZ, RZ ;
        /*0580*/                   IADD3.X R9, R3, RZ, RZ, P0, !PT ;
        /*0590*/                   MOV R8, R8 ;
        /*05a0*/                   MOV R9, R9 ;
        /*05b0*/                   MOV R8, R8 ;
        /*05c0*/                   MOV R9, R9 ;
        /*05d0*/                   ST.E.64.SYS [R8], R4 ;
        /*05e0*/                   MOV R8, RZ ;
        /*05f0*/                   MOV R9, R8 ;
        /*0600*/                   MOV R8, R10 ;
        /*0610*/                   MOV R9, R9 ;
        /*0620*/                   BRA `(.L_x_68) ;
.L_x_68:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 50
        /*0630*/                   IADD3 R10, P0, R0, RZ, RZ ;
        /*0640*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*0650*/                   MOV R10, R10 ;
        /*0660*/                   MOV R11, R11 ;
        /*0670*/                   MOV R10, R10 ;
        /*0680*/                   MOV R11, R11 ;
        /*0690*/                   LD.E.64.SYS R10, [R10] ;
        /*06a0*/                   MOV R12, R10 ;
        /*06b0*/                   MOV R10, R11 ;
        /*06c0*/                   ISETP.NE.U32.AND P0, PT, R12, RZ, PT ;
        /*06d0*/                   ISETP.NE.AND.EX P0, PT, R10, RZ, PT, P0 ;
        /*06e0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*06f0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0700*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0710*/                   BSSY B0, `(.L_x_69) ;
        /*0720*/               @P0 BRA `(.L_x_70) ;
        /*0730*/                   BRA `(.L_x_71) ;
.L_x_71:
        /*0740*/                   BRA `(.L_x_70) ;
.L_x_70:
        /*0750*/                   BSYNC B0 ;
.L_x_69:
        /*0760*/                   IADD3 R10, P0, R0, RZ, RZ ;
        /*0770*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*0780*/                   MOV R10, R10 ;
        /*0790*/                   MOV R11, R11 ;
        /*07a0*/                   MOV R10, R10 ;
        /*07b0*/                   MOV R11, R11 ;
        /*07c0*/                   LD.E.64.SYS R10, [R10] ;
        /*07d0*/                   MOV R12, R10 ;
        /*07e0*/                   MOV R13, R11 ;
        /*07f0*/                   MOV R9, R9 ;
        /*0800*/                   MOV R10, R9 ;
        /*0810*/                   MOV R11, RZ ;
        /*0820*/                   SHF.L.U64.HI R11, R10, 0x2, R11 ;
        /*0830*/                   SHF.L.U32 R10, R10, 0x2, RZ ;
        /*0840*/                   IADD3 R10, P0, R12, R10, RZ ;
        /*0850*/                   IADD3.X R11, R13, R11, RZ, P0, !PT ;
        /*0860*/                   MOV R10, R10 ;
        /*0870*/                   MOV R11, R11 ;
.L_x_144:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 106
        /*0880*/                   MOV R10, R10 ;
        /*0890*/                   MOV R11, R11 ;
        /*08a0*/                   MOV R10, R10 ;
        /*08b0*/                   MOV R11, R11 ;
        /*08c0*/                   LD.E.SYS R10, [R10] ;
        /*08d0*/                   SHF.R.U32.HI R10, RZ, 0x2, R10 ;
        /*08e0*/                   LOP3.LUT R8, R8, R10, RZ, 0x3c, !PT ;
        /*08f0*/                   MOV R8, R8 ;
        /*0900*/                   MOV R4, R4 ;
        /*0910*/                   MOV R5, R5 ;
        /*0920*/                   IADD3 R10, P0, R0, 0x8, RZ ;
        /*0930*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*0940*/                   MOV R10, R10 ;
        /*0950*/                   MOV R11, R11 ;
        /*0960*/                   MOV R10, R10 ;
        /*0970*/                   MOV R11, R11 ;
        /*0980*/                   ST.E.64.SYS [R10], R4 ;
        /*0990*/                   MOV R9, 0x1 ;
        /*09a0*/                   MOV R9, R9 ;
        /*09b0*/                   MOV R9, R9 ;
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 108
        /*09c0*/                   BRA `(.L_x_72) ;
.L_x_72:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 50
        /*09d0*/                   IADD3 R10, P0, R0, 0x8, RZ ;
        /*09e0*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*09f0*/                   MOV R10, R10 ;
        /*0a00*/                   MOV R11, R11 ;
        /*0a10*/                   MOV R10, R10 ;
        /*0a20*/                   MOV R11, R11 ;
        /*0a30*/                   LD.E.64.SYS R10, [R10] ;
        /*0a40*/                   MOV R12, R10 ;
        /*0a50*/                   MOV R10, R11 ;
        /*0a60*/                   ISETP.NE.U32.AND P0, PT, R12, RZ, PT ;
        /*0a70*/                   ISETP.NE.AND.EX P0, PT, R10, RZ, PT, P0 ;
        /*0a80*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0a90*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0aa0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0ab0*/                   BSSY B0, `(.L_x_73) ;
        /*0ac0*/               @P0 BRA `(.L_x_74) ;
        /*0ad0*/                   BRA `(.L_x_75) ;
.L_x_75:
        /*0ae0*/                   BRA `(.L_x_74) ;
.L_x_74:
        /*0af0*/                   BSYNC B0 ;
.L_x_73:
        /*0b00*/                   IADD3 R10, P0, R0, 0x8, RZ ;
        /*0b10*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*0b20*/                   MOV R10, R10 ;
        /*0b30*/                   MOV R11, R11 ;
        /*0b40*/                   MOV R10, R10 ;
        /*0b50*/                   MOV R11, R11 ;
        /*0b60*/                   LD.E.64.SYS R10, [R10] ;
        /*0b70*/                   MOV R12, R10 ;
        /*0b80*/                   MOV R13, R11 ;
        /*0b90*/                   MOV R9, R9 ;
        /*0ba0*/                   MOV R10, R9 ;
        /*0bb0*/                   MOV R11, RZ ;
        /*0bc0*/                   SHF.L.U64.HI R11, R10, 0x2, R11 ;
        /*0bd0*/                   SHF.L.U32 R10, R10, 0x2, RZ ;
        /*0be0*/                   IADD3 R10, P0, R12, R10, RZ ;
        /*0bf0*/                   IADD3.X R11, R13, R11, RZ, P0, !PT ;
        /*0c00*/                   MOV R10, R10 ;
        /*0c10*/                   MOV R11, R11 ;
.L_x_145:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 108
        /*0c20*/                   MOV R10, R10 ;
        /*0c30*/                   MOV R11, R11 ;
        /*0c40*/                   MOV R10, R10 ;
        /*0c50*/                   MOV R11, R11 ;
        /*0c60*/                   LD.E.SYS R9, [R10] ;
        /*0c70*/                   MOV R4, R4 ;
        /*0c80*/                   MOV R5, R5 ;
        /*0c90*/                   IADD3 R10, P0, R0, 0x10, RZ ;
        /*0ca0*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*0cb0*/                   MOV R10, R10 ;
        /*0cc0*/                   MOV R11, R11 ;
        /*0cd0*/                   MOV R10, R10 ;
        /*0ce0*/                   MOV R11, R11 ;
        /*0cf0*/                   ST.E.64.SYS [R10], R4 ;
        /*0d00*/                   MOV R10, RZ ;
        /*0d10*/                   MOV R10, R10 ;
        /*0d20*/                   MOV R9, R9 ;
        /*0d30*/                   MOV R10, R10 ;
        /*0d40*/                   BRA `(.L_x_76) ;
.L_x_76:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 50
        /*0d50*/                   IADD3 R12, P0, R0, 0x10, RZ ;
        /*0d60*/                   IADD3.X R13, R3, RZ, RZ, P0, !PT ;
        /*0d70*/                   MOV R12, R12 ;
        /*0d80*/                   MOV R13, R13 ;
        /*0d90*/                   MOV R12, R12 ;
        /*0da0*/                   MOV R13, R13 ;
        /*0db0*/                   LD.E.64.SYS R12, [R12] ;
        /*0dc0*/                   MOV R11, R12 ;
        /*0dd0*/                   MOV R12, R13 ;
        /*0de0*/                   ISETP.NE.U32.AND P0, PT, R11, RZ, PT ;
        /*0df0*/                   ISETP.NE.AND.EX P0, PT, R12, RZ, PT, P0 ;
        /*0e00*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0e10*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0e20*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0e30*/                   BSSY B0, `(.L_x_77) ;
        /*0e40*/               @P0 BRA `(.L_x_78) ;
        /*0e50*/                   BRA `(.L_x_79) ;
.L_x_79:
        /*0e60*/                   BRA `(.L_x_78) ;
.L_x_78:
        /*0e70*/                   BSYNC B0 ;
.L_x_77:
        /*0e80*/                   IADD3 R12, P0, R0, 0x10, RZ ;
        /*0e90*/                   IADD3.X R13, R3, RZ, RZ, P0, !PT ;
        /*0ea0*/                   MOV R12, R12 ;
        /*0eb0*/                   MOV R13, R13 ;
        /*0ec0*/                   MOV R12, R12 ;
        /*0ed0*/                   MOV R13, R13 ;
        /*0ee0*/                   LD.E.64.SYS R12, [R12] ;
        /*0ef0*/                   MOV R14, R12 ;
        /*0f00*/                   MOV R13, R13 ;
        /*0f10*/                   MOV R10, R10 ;
        /*0f20*/                   MOV R11, R10 ;
        /*0f30*/                   MOV R12, RZ ;
        /*0f40*/                   SHF.L.U64.HI R12, R11, 0x2, R12 ;
        /*0f50*/                   SHF.L.U32 R11, R11, 0x2, RZ ;
        /*0f60*/                   IADD3 R11, P0, R14, R11, RZ ;
        /*0f70*/                   IADD3.X R12, R13, R12, RZ, P0, !PT ;
        /*0f80*/                   MOV R11, R11 ;
        /*0f90*/                   MOV R12, R12 ;
.L_x_146:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 108
        /*0fa0*/                   MOV R10, R11 ;
        /*0fb0*/                   MOV R11, R12 ;
        /*0fc0*/                   MOV R10, R10 ;
        /*0fd0*/                   MOV R11, R11 ;
        /*0fe0*/                   ST.E.SYS [R10], R9 ;
        /*0ff0*/                   MOV R4, R4 ;
        /*1000*/                   MOV R5, R5 ;
        /*1010*/                   IADD3 R10, P0, R0, 0x18, RZ ;
        /*1020*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*1030*/                   MOV R10, R10 ;
        /*1040*/                   MOV R11, R11 ;
        /*1050*/                   MOV R10, R10 ;
        /*1060*/                   MOV R11, R11 ;
        /*1070*/                   ST.E.64.SYS [R10], R4 ;
        /*1080*/                   MOV R9, 0x2 ;
        /*1090*/                   MOV R9, R9 ;
        /*10a0*/                   MOV R9, R9 ;
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 109
        /*10b0*/                   BRA `(.L_x_80) ;
.L_x_80:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 50
        /*10c0*/                   IADD3 R10, P0, R0, 0x18, RZ ;
        /*10d0*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*10e0*/                   MOV R10, R10 ;
        /*10f0*/                   MOV R11, R11 ;
        /*1100*/                   MOV R10, R10 ;
        /*1110*/                   MOV R11, R11 ;
        /*1120*/                   LD.E.64.SYS R10, [R10] ;
        /*1130*/                   MOV R12, R10 ;
        /*1140*/                   MOV R10, R11 ;
        /*1150*/                   ISETP.NE.U32.AND P0, PT, R12, RZ, PT ;
        /*1160*/                   ISETP.NE.AND.EX P0, PT, R10, RZ, PT, P0 ;
        /*1170*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1180*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1190*/                   BMOV.32.CLEAR RZ, B0 ;
        /*11a0*/                   BSSY B0, `(.L_x_81) ;
        /*11b0*/               @P0 BRA `(.L_x_82) ;
        /*11c0*/                   BRA `(.L_x_83) ;
.L_x_83:
        /*11d0*/                   BRA `(.L_x_82) ;
.L_x_82:
        /*11e0*/                   BSYNC B0 ;
.L_x_81:
        /*11f0*/                   IADD3 R10, P0, R0, 0x18, RZ ;
        /*1200*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*1210*/                   MOV R10, R10 ;
        /*1220*/                   MOV R11, R11 ;
        /*1230*/                   MOV R10, R10 ;
        /*1240*/                   MOV R11, R11 ;
        /*1250*/                   LD.E.64.SYS R10, [R10] ;
        /*1260*/                   MOV R12, R10 ;
        /*1270*/                   MOV R13, R11 ;
        /*1280*/                   MOV R9, R9 ;
        /*1290*/                   MOV R10, R9 ;
        /*12a0*/                   MOV R11, RZ ;
        /*12b0*/                   SHF.L.U64.HI R11, R10, 0x2, R11 ;
        /*12c0*/                   SHF.L.U32 R10, R10, 0x2, RZ ;
        /*12d0*/                   IADD3 R10, P0, R12, R10, RZ ;
        /*12e0*/                   IADD3.X R11, R13, R11, RZ, P0, !PT ;
        /*12f0*/                   MOV R10, R10 ;
        /*1300*/                   MOV R11, R11 ;
.L_x_147:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 109
        /*1310*/                   MOV R10, R10 ;
        /*1320*/                   MOV R11, R11 ;
        /*1330*/                   MOV R10, R10 ;
        /*1340*/                   MOV R11, R11 ;
        /*1350*/                   LD.E.SYS R9, [R10] ;
        /*1360*/                   MOV R4, R4 ;
        /*1370*/                   MOV R5, R5 ;
        /*1380*/                   IADD3 R10, P0, R0, 0x20, RZ ;
        /*1390*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*13a0*/                   MOV R10, R10 ;
        /*13b0*/                   MOV R11, R11 ;
        /*13c0*/                   MOV R10, R10 ;
        /*13d0*/                   MOV R11, R11 ;
        /*13e0*/                   ST.E.64.SYS [R10], R4 ;
        /*13f0*/                   MOV R10, 0x1 ;
        /*1400*/                   MOV R10, R10 ;
        /*1410*/                   MOV R9, R9 ;
        /*1420*/                   MOV R10, R10 ;
        /*1430*/                   BRA `(.L_x_84) ;
.L_x_84:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 50
        /*1440*/                   IADD3 R12, P0, R0, 0x20, RZ ;
        /*1450*/                   IADD3.X R13, R3, RZ, RZ, P0, !PT ;
        /*1460*/                   MOV R12, R12 ;
        /*1470*/                   MOV R13, R13 ;
        /*1480*/                   MOV R12, R12 ;
        /*1490*/                   MOV R13, R13 ;
        /*14a0*/                   LD.E.64.SYS R12, [R12] ;
        /*14b0*/                   MOV R11, R12 ;
        /*14c0*/                   MOV R12, R13 ;
        /*14d0*/                   ISETP.NE.U32.AND P0, PT, R11, RZ, PT ;
        /*14e0*/                   ISETP.NE.AND.EX P0, PT, R12, RZ, PT, P0 ;
        /*14f0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1500*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1510*/                   BMOV.32.CLEAR RZ, B0 ;
        /*1520*/                   BSSY B0, `(.L_x_85) ;
        /*1530*/               @P0 BRA `(.L_x_86) ;
        /*1540*/                   BRA `(.L_x_87) ;
.L_x_87:
        /*1550*/                   BRA `(.L_x_86) ;
.L_x_86:
        /*1560*/                   BSYNC B0 ;
.L_x_85:
        /*1570*/                   IADD3 R12, P0, R0, 0x20, RZ ;
        /*1580*/                   IADD3.X R13, R3, RZ, RZ, P0, !PT ;
        /*1590*/                   MOV R12, R12 ;
        /*15a0*/                   MOV R13, R13 ;
        /*15b0*/                   MOV R12, R12 ;
        /*15c0*/                   MOV R13, R13 ;
        /*15d0*/                   LD.E.64.SYS R12, [R12] ;
        /*15e0*/                   MOV R14, R12 ;
        /*15f0*/                   MOV R13, R13 ;
        /*1600*/                   MOV R10, R10 ;
        /*1610*/                   MOV R11, R10 ;
        /*1620*/                   MOV R12, RZ ;
        /*1630*/                   SHF.L.U64.HI R12, R11, 0x2, R12 ;
        /*1640*/                   SHF.L.U32 R11, R11, 0x2, RZ ;
        /*1650*/                   IADD3 R11, P0, R14, R11, RZ ;
        /*1660*/                   IADD3.X R12, R13, R12, RZ, P0, !PT ;
        /*1670*/                   MOV R11, R11 ;
        /*1680*/                   MOV R12, R12 ;
.L_x_148:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 109
        /*1690*/                   MOV R10, R11 ;
        /*16a0*/                   MOV R11, R12 ;
        /*16b0*/                   MOV R10, R10 ;
        /*16c0*/                   MOV R11, R11 ;
        /*16d0*/                   ST.E.SYS [R10], R9 ;
        /*16e0*/                   MOV R4, R4 ;
        /*16f0*/                   MOV R5, R5 ;
        /*1700*/                   IADD3 R10, P0, R0, 0x28, RZ ;
        /*1710*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*1720*/                   MOV R10, R10 ;
        /*1730*/                   MOV R11, R11 ;
        /*1740*/                   MOV R10, R10 ;
        /*1750*/                   MOV R11, R11 ;
        /*1760*/                   ST.E.64.SYS [R10], R4 ;
        /*1770*/                   MOV R9, 0x3 ;
        /*1780*/                   MOV R9, R9 ;
        /*1790*/                   MOV R9, R9 ;
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 110
        /*17a0*/                   BRA `(.L_x_88) ;
.L_x_88:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 50
        /*17b0*/                   IADD3 R10, P0, R0, 0x28, RZ ;
        /*17c0*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*17d0*/                   MOV R10, R10 ;
        /*17e0*/                   MOV R11, R11 ;
        /*17f0*/                   MOV R10, R10 ;
        /*1800*/                   MOV R11, R11 ;
        /*1810*/                   LD.E.64.SYS R10, [R10] ;
        /*1820*/                   MOV R12, R10 ;
        /*1830*/                   MOV R10, R11 ;
        /*1840*/                   ISETP.NE.U32.AND P0, PT, R12, RZ, PT ;
        /*1850*/                   ISETP.NE.AND.EX P0, PT, R10, RZ, PT, P0 ;
        /*1860*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1870*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1880*/                   BMOV.32.CLEAR RZ, B0 ;
        /*1890*/                   BSSY B0, `(.L_x_89) ;
        /*18a0*/               @P0 BRA `(.L_x_90) ;
        /*18b0*/                   BRA `(.L_x_91) ;
.L_x_91:
        /*18c0*/                   BRA `(.L_x_90) ;
.L_x_90:
        /*18d0*/                   BSYNC B0 ;
.L_x_89:
        /*18e0*/                   IADD3 R10, P0, R0, 0x28, RZ ;
        /*18f0*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*1900*/                   MOV R10, R10 ;
        /*1910*/                   MOV R11, R11 ;
        /*1920*/                   MOV R10, R10 ;
        /*1930*/                   MOV R11, R11 ;
        /*1940*/                   LD.E.64.SYS R10, [R10] ;
        /*1950*/                   MOV R12, R10 ;
        /*1960*/                   MOV R13, R11 ;
        /*1970*/                   MOV R9, R9 ;
        /*1980*/                   MOV R10, R9 ;
        /*1990*/                   MOV R11, RZ ;
        /*19a0*/                   SHF.L.U64.HI R11, R10, 0x2, R11 ;
        /*19b0*/                   SHF.L.U32 R10, R10, 0x2, RZ ;
        /*19c0*/                   IADD3 R10, P0, R12, R10, RZ ;
        /*19d0*/                   IADD3.X R11, R13, R11, RZ, P0, !PT ;
        /*19e0*/                   MOV R10, R10 ;
        /*19f0*/                   MOV R11, R11 ;
.L_x_149:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 110
        /*1a00*/                   MOV R10, R10 ;
        /*1a10*/                   MOV R11, R11 ;
        /*1a20*/                   MOV R10, R10 ;
        /*1a30*/                   MOV R11, R11 ;
        /*1a40*/                   LD.E.SYS R9, [R10] ;
        /*1a50*/                   MOV R4, R4 ;
        /*1a60*/                   MOV R5, R5 ;
        /*1a70*/                   IADD3 R10, P0, R0, 0x30, RZ ;
        /*1a80*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*1a90*/                   MOV R10, R10 ;
        /*1aa0*/                   MOV R11, R11 ;
        /*1ab0*/                   MOV R10, R10 ;
        /*1ac0*/                   MOV R11, R11 ;
        /*1ad0*/                   ST.E.64.SYS [R10], R4 ;
        /*1ae0*/                   MOV R10, 0x2 ;
        /*1af0*/                   MOV R10, R10 ;
        /*1b00*/                   MOV R9, R9 ;
        /*1b10*/                   MOV R10, R10 ;
        /*1b20*/                   BRA `(.L_x_92) ;
.L_x_92:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 50
        /*1b30*/                   IADD3 R12, P0, R0, 0x30, RZ ;
        /*1b40*/                   IADD3.X R13, R3, RZ, RZ, P0, !PT ;
        /*1b50*/                   MOV R12, R12 ;
        /*1b60*/                   MOV R13, R13 ;
        /*1b70*/                   MOV R12, R12 ;
        /*1b80*/                   MOV R13, R13 ;
        /*1b90*/                   LD.E.64.SYS R12, [R12] ;
        /*1ba0*/                   MOV R11, R12 ;
        /*1bb0*/                   MOV R12, R13 ;
        /*1bc0*/                   ISETP.NE.U32.AND P0, PT, R11, RZ, PT ;
        /*1bd0*/                   ISETP.NE.AND.EX P0, PT, R12, RZ, PT, P0 ;
        /*1be0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1bf0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1c00*/                   BMOV.32.CLEAR RZ, B0 ;
        /*1c10*/                   BSSY B0, `(.L_x_93) ;
        /*1c20*/               @P0 BRA `(.L_x_94) ;
        /*1c30*/                   BRA `(.L_x_95) ;
.L_x_95:
        /*1c40*/                   BRA `(.L_x_94) ;
.L_x_94:
        /*1c50*/                   BSYNC B0 ;
.L_x_93:
        /*1c60*/                   IADD3 R12, P0, R0, 0x30, RZ ;
        /*1c70*/                   IADD3.X R13, R3, RZ, RZ, P0, !PT ;
        /*1c80*/                   MOV R12, R12 ;
        /*1c90*/                   MOV R13, R13 ;
        /*1ca0*/                   MOV R12, R12 ;
        /*1cb0*/                   MOV R13, R13 ;
        /*1cc0*/                   LD.E.64.SYS R12, [R12] ;
        /*1cd0*/                   MOV R14, R12 ;
        /*1ce0*/                   MOV R13, R13 ;
        /*1cf0*/                   MOV R10, R10 ;
        /*1d00*/                   MOV R11, R10 ;
        /*1d10*/                   MOV R12, RZ ;
        /*1d20*/                   SHF.L.U64.HI R12, R11, 0x2, R12 ;
        /*1d30*/                   SHF.L.U32 R11, R11, 0x2, RZ ;
        /*1d40*/                   IADD3 R11, P0, R14, R11, RZ ;
        /*1d50*/                   IADD3.X R12, R13, R12, RZ, P0, !PT ;
        /*1d60*/                   MOV R11, R11 ;
        /*1d70*/                   MOV R12, R12 ;
.L_x_150:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 110
        /*1d80*/                   MOV R10, R11 ;
        /*1d90*/                   MOV R11, R12 ;
        /*1da0*/                   MOV R10, R10 ;
        /*1db0*/                   MOV R11, R11 ;
        /*1dc0*/                   ST.E.SYS [R10], R9 ;
        /*1dd0*/                   MOV R4, R4 ;
        /*1de0*/                   MOV R5, R5 ;
        /*1df0*/                   IADD3 R10, P0, R0, 0x38, RZ ;
        /*1e00*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*1e10*/                   MOV R10, R10 ;
        /*1e20*/                   MOV R11, R11 ;
        /*1e30*/                   MOV R10, R10 ;
        /*1e40*/                   MOV R11, R11 ;
        /*1e50*/                   ST.E.64.SYS [R10], R4 ;
        /*1e60*/                   MOV R9, 0x4 ;
        /*1e70*/                   MOV R9, R9 ;
        /*1e80*/                   MOV R9, R9 ;
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 111
        /*1e90*/                   BRA `(.L_x_96) ;
.L_x_96:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 50
        /*1ea0*/                   IADD3 R10, P0, R0, 0x38, RZ ;
        /*1eb0*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*1ec0*/                   MOV R10, R10 ;
        /*1ed0*/                   MOV R11, R11 ;
        /*1ee0*/                   MOV R10, R10 ;
        /*1ef0*/                   MOV R11, R11 ;
        /*1f00*/                   LD.E.64.SYS R10, [R10] ;
        /*1f10*/                   MOV R12, R10 ;
        /*1f20*/                   MOV R10, R11 ;
        /*1f30*/                   ISETP.NE.U32.AND P0, PT, R12, RZ, PT ;
        /*1f40*/                   ISETP.NE.AND.EX P0, PT, R10, RZ, PT, P0 ;
        /*1f50*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1f60*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1f70*/                   BMOV.32.CLEAR RZ, B0 ;
        /*1f80*/                   BSSY B0, `(.L_x_97) ;
        /*1f90*/               @P0 BRA `(.L_x_98) ;
        /*1fa0*/                   BRA `(.L_x_99) ;
.L_x_99:
        /*1fb0*/                   BRA `(.L_x_98) ;
.L_x_98:
        /*1fc0*/                   BSYNC B0 ;
.L_x_97:
        /*1fd0*/                   IADD3 R10, P0, R0, 0x38, RZ ;
        /*1fe0*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*1ff0*/                   MOV R10, R10 ;
        /*2000*/                   MOV R11, R11 ;
        /*2010*/                   MOV R10, R10 ;
        /*2020*/                   MOV R11, R11 ;
        /*2030*/                   LD.E.64.SYS R10, [R10] ;
        /*2040*/                   MOV R12, R10 ;
        /*2050*/                   MOV R13, R11 ;
        /*2060*/                   MOV R9, R9 ;
        /*2070*/                   MOV R10, R9 ;
        /*2080*/                   MOV R11, RZ ;
        /*2090*/                   SHF.L.U64.HI R11, R10, 0x2, R11 ;
        /*20a0*/                   SHF.L.U32 R10, R10, 0x2, RZ ;
        /*20b0*/                   IADD3 R10, P0, R12, R10, RZ ;
        /*20c0*/                   IADD3.X R11, R13, R11, RZ, P0, !PT ;
        /*20d0*/                   MOV R10, R10 ;
        /*20e0*/                   MOV R11, R11 ;
.L_x_151:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 111
        /*20f0*/                   MOV R10, R10 ;
        /*2100*/                   MOV R11, R11 ;
        /*2110*/                   MOV R10, R10 ;
        /*2120*/                   MOV R11, R11 ;
        /*2130*/                   LD.E.SYS R9, [R10] ;
        /*2140*/                   MOV R4, R4 ;
        /*2150*/                   MOV R5, R5 ;
        /*2160*/                   IADD3 R10, P0, R0, 0x40, RZ ;
        /*2170*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*2180*/                   MOV R10, R10 ;
        /*2190*/                   MOV R11, R11 ;
        /*21a0*/                   MOV R10, R10 ;
        /*21b0*/                   MOV R11, R11 ;
        /*21c0*/                   ST.E.64.SYS [R10], R4 ;
        /*21d0*/                   MOV R10, 0x3 ;
        /*21e0*/                   MOV R10, R10 ;
        /*21f0*/                   MOV R9, R9 ;
        /*2200*/                   MOV R10, R10 ;
        /*2210*/                   BRA `(.L_x_100) ;
.L_x_100:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 50
        /*2220*/                   IADD3 R12, P0, R0, 0x40, RZ ;
        /*2230*/                   IADD3.X R13, R3, RZ, RZ, P0, !PT ;
        /*2240*/                   MOV R12, R12 ;
        /*2250*/                   MOV R13, R13 ;
        /*2260*/                   MOV R12, R12 ;
        /*2270*/                   MOV R13, R13 ;
        /*2280*/                   LD.E.64.SYS R12, [R12] ;
        /*2290*/                   MOV R11, R12 ;
        /*22a0*/                   MOV R12, R13 ;
        /*22b0*/                   ISETP.NE.U32.AND P0, PT, R11, RZ, PT ;
        /*22c0*/                   ISETP.NE.AND.EX P0, PT, R12, RZ, PT, P0 ;
        /*22d0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*22e0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*22f0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*2300*/                   BSSY B0, `(.L_x_101) ;
        /*2310*/               @P0 BRA `(.L_x_102) ;
        /*2320*/                   BRA `(.L_x_103) ;
.L_x_103:
        /*2330*/                   BRA `(.L_x_102) ;
.L_x_102:
        /*2340*/                   BSYNC B0 ;
.L_x_101:
        /*2350*/                   IADD3 R12, P0, R0, 0x40, RZ ;
        /*2360*/                   IADD3.X R13, R3, RZ, RZ, P0, !PT ;
        /*2370*/                   MOV R12, R12 ;
        /*2380*/                   MOV R13, R13 ;
        /*2390*/                   MOV R12, R12 ;
        /*23a0*/                   MOV R13, R13 ;
        /*23b0*/                   LD.E.64.SYS R12, [R12] ;
        /*23c0*/                   MOV R14, R12 ;
        /*23d0*/                   MOV R13, R13 ;
        /*23e0*/                   MOV R10, R10 ;
        /*23f0*/                   MOV R11, R10 ;
        /*2400*/                   MOV R12, RZ ;
        /*2410*/                   SHF.L.U64.HI R12, R11, 0x2, R12 ;
        /*2420*/                   SHF.L.U32 R11, R11, 0x2, RZ ;
        /*2430*/                   IADD3 R11, P0, R14, R11, RZ ;
        /*2440*/                   IADD3.X R12, R13, R12, RZ, P0, !PT ;
        /*2450*/                   MOV R11, R11 ;
        /*2460*/                   MOV R12, R12 ;
.L_x_152:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 111
        /*2470*/                   MOV R10, R11 ;
        /*2480*/                   MOV R11, R12 ;
        /*2490*/                   MOV R10, R10 ;
        /*24a0*/                   MOV R11, R11 ;
        /*24b0*/                   ST.E.SYS [R10], R9 ;
        /*24c0*/                   MOV R4, R4 ;
        /*24d0*/                   MOV R5, R5 ;
        /*24e0*/                   IADD3 R10, P0, R0, 0x48, RZ ;
        /*24f0*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*2500*/                   MOV R10, R10 ;
        /*2510*/                   MOV R11, R11 ;
        /*2520*/                   MOV R10, R10 ;
        /*2530*/                   MOV R11, R11 ;
        /*2540*/                   ST.E.64.SYS [R10], R4 ;
        /*2550*/                   MOV R9, 0x4 ;
        /*2560*/                   MOV R9, R9 ;
        /*2570*/                   MOV R9, R9 ;
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 112
        /*2580*/                   BRA `(.L_x_104) ;
.L_x_104:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 50
        /*2590*/                   IADD3 R10, P0, R0, 0x48, RZ ;
        /*25a0*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*25b0*/                   MOV R10, R10 ;
        /*25c0*/                   MOV R11, R11 ;
        /*25d0*/                   MOV R10, R10 ;
        /*25e0*/                   MOV R11, R11 ;
        /*25f0*/                   LD.E.64.SYS R10, [R10] ;
        /*2600*/                   MOV R12, R10 ;
        /*2610*/                   MOV R10, R11 ;
        /*2620*/                   ISETP.NE.U32.AND P0, PT, R12, RZ, PT ;
        /*2630*/                   ISETP.NE.AND.EX P0, PT, R10, RZ, PT, P0 ;
        /*2640*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*2650*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*2660*/                   BMOV.32.CLEAR RZ, B0 ;
        /*2670*/                   BSSY B0, `(.L_x_105) ;
        /*2680*/               @P0 BRA `(.L_x_106) ;
        /*2690*/                   BRA `(.L_x_107) ;
.L_x_107:
        /*26a0*/                   BRA `(.L_x_106) ;
.L_x_106:
        /*26b0*/                   BSYNC B0 ;
.L_x_105:
        /*26c0*/                   IADD3 R10, P0, R0, 0x48, RZ ;
        /*26d0*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*26e0*/                   MOV R10, R10 ;
        /*26f0*/                   MOV R11, R11 ;
        /*2700*/                   MOV R10, R10 ;
        /*2710*/                   MOV R11, R11 ;
        /*2720*/                   LD.E.64.SYS R10, [R10] ;
        /*2730*/                   MOV R12, R10 ;
        /*2740*/                   MOV R13, R11 ;
        /*2750*/                   MOV R9, R9 ;
        /*2760*/                   MOV R10, R9 ;
        /*2770*/                   MOV R11, RZ ;
        /*2780*/                   SHF.L.U64.HI R11, R10, 0x2, R11 ;
        /*2790*/                   SHF.L.U32 R10, R10, 0x2, RZ ;
        /*27a0*/                   IADD3 R10, P0, R12, R10, RZ ;
        /*27b0*/                   IADD3.X R11, R13, R11, RZ, P0, !PT ;
        /*27c0*/                   MOV R10, R10 ;
        /*27d0*/                   MOV R11, R11 ;
.L_x_153:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 112
        /*27e0*/                   MOV R10, R10 ;
        /*27f0*/                   MOV R11, R11 ;
        /*2800*/                   MOV R10, R10 ;
        /*2810*/                   MOV R11, R11 ;
        /*2820*/                   LD.E.SYS R9, [R10] ;
        /*2830*/                   MOV R4, R4 ;
        /*2840*/                   MOV R5, R5 ;
        /*2850*/                   IADD3 R10, P0, R0, 0x50, RZ ;
        /*2860*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*2870*/                   MOV R10, R10 ;
        /*2880*/                   MOV R11, R11 ;
        /*2890*/                   MOV R10, R10 ;
        /*28a0*/                   MOV R11, R11 ;
        /*28b0*/                   ST.E.64.SYS [R10], R4 ;
        /*28c0*/                   MOV R10, 0x4 ;
        /*28d0*/                   MOV R10, R10 ;
        /*28e0*/                   MOV R9, R9 ;
        /*28f0*/                   MOV R10, R10 ;
        /*2900*/                   BRA `(.L_x_108) ;
.L_x_108:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 50
        /*2910*/                   IADD3 R12, P0, R0, 0x50, RZ ;
        /*2920*/                   IADD3.X R13, R3, RZ, RZ, P0, !PT ;
        /*2930*/                   MOV R12, R12 ;
        /*2940*/                   MOV R13, R13 ;
        /*2950*/                   MOV R12, R12 ;
        /*2960*/                   MOV R13, R13 ;
        /*2970*/                   LD.E.64.SYS R12, [R12] ;
        /*2980*/                   MOV R11, R12 ;
        /*2990*/                   MOV R12, R13 ;
        /*29a0*/                   ISETP.NE.U32.AND P0, PT, R11, RZ, PT ;
        /*29b0*/                   ISETP.NE.AND.EX P0, PT, R12, RZ, PT, P0 ;
        /*29c0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*29d0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*29e0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*29f0*/                   BSSY B0, `(.L_x_109) ;
        /*2a00*/               @P0 BRA `(.L_x_110) ;
        /*2a10*/                   BRA `(.L_x_111) ;
.L_x_111:
        /*2a20*/                   BRA `(.L_x_110) ;
.L_x_110:
        /*2a30*/                   BSYNC B0 ;
.L_x_109:
        /*2a40*/                   IADD3 R12, P0, R0, 0x50, RZ ;
        /*2a50*/                   IADD3.X R13, R3, RZ, RZ, P0, !PT ;
        /*2a60*/                   MOV R12, R12 ;
        /*2a70*/                   MOV R13, R13 ;
        /*2a80*/                   MOV R12, R12 ;
        /*2a90*/                   MOV R13, R13 ;
        /*2aa0*/                   LD.E.64.SYS R12, [R12] ;
        /*2ab0*/                   MOV R14, R12 ;
        /*2ac0*/                   MOV R13, R13 ;
        /*2ad0*/                   MOV R10, R10 ;
        /*2ae0*/                   MOV R11, R10 ;
        /*2af0*/                   MOV R12, RZ ;
        /*2b00*/                   SHF.L.U64.HI R12, R11, 0x2, R12 ;
        /*2b10*/                   SHF.L.U32 R11, R11, 0x2, RZ ;
        /*2b20*/                   IADD3 R11, P0, R14, R11, RZ ;
        /*2b30*/                   IADD3.X R12, R13, R12, RZ, P0, !PT ;
        /*2b40*/                   MOV R11, R11 ;
        /*2b50*/                   MOV R12, R12 ;
.L_x_154:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 112
        /*2b60*/                   MOV R10, R11 ;
        /*2b70*/                   MOV R11, R12 ;
        /*2b80*/                   MOV R10, R10 ;
        /*2b90*/                   MOV R11, R11 ;
        /*2ba0*/                   LD.E.SYS R10, [R10] ;
        /*2bb0*/                   SHF.L.U32 R10, R10, 0x4, RZ ;
        /*2bc0*/                   MOV R12, 0x4 ;
        /*2bd0*/                   LOP3.LUT R9, R9, R10, RZ, 0x3c, !PT ;
        /*2be0*/                   SHF.L.U32 R10, R8, 0x1, RZ ;
        /*2bf0*/                   LOP3.LUT R10, R8, R10, RZ, 0x3c, !PT ;
        /*2c00*/                   LOP3.LUT R9, R9, R10, RZ, 0x3c, !PT ;
        /*2c10*/                   MOV R4, R4 ;
        /*2c20*/                   MOV R5, R5 ;
        /*2c30*/                   IADD3 R10, P0, R0, 0x58, RZ ;
        /*2c40*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*2c50*/                   MOV R10, R10 ;
        /*2c60*/                   MOV R11, R11 ;
        /*2c70*/                   MOV R10, R10 ;
        /*2c80*/                   MOV R11, R11 ;
        /*2c90*/                   ST.E.64.SYS [R10], R4 ;
        /*2ca0*/                   MOV R10, R12 ;
        /*2cb0*/                   MOV R9, R9 ;
        /*2cc0*/                   MOV R10, R10 ;
        /*2cd0*/                   BRA `(.L_x_112) ;
.L_x_112:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 50
        /*2ce0*/                   IADD3 R12, P0, R0, 0x58, RZ ;
        /*2cf0*/                   IADD3.X R13, R3, RZ, RZ, P0, !PT ;
        /*2d00*/                   MOV R12, R12 ;
        /*2d10*/                   MOV R13, R13 ;
        /*2d20*/                   MOV R12, R12 ;
        /*2d30*/                   MOV R13, R13 ;
        /*2d40*/                   LD.E.64.SYS R12, [R12] ;
        /*2d50*/                   MOV R11, R12 ;
        /*2d60*/                   MOV R12, R13 ;
        /*2d70*/                   ISETP.NE.U32.AND P0, PT, R11, RZ, PT ;
        /*2d80*/                   ISETP.NE.AND.EX P0, PT, R12, RZ, PT, P0 ;
        /*2d90*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*2da0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*2db0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*2dc0*/                   BSSY B0, `(.L_x_113) ;
        /*2dd0*/               @P0 BRA `(.L_x_114) ;
        /*2de0*/                   BRA `(.L_x_115) ;
.L_x_115:
        /*2df0*/                   BRA `(.L_x_114) ;
.L_x_114:
        /*2e00*/                   BSYNC B0 ;
.L_x_113:
        /*2e10*/                   IADD3 R12, P0, R0, 0x58, RZ ;
        /*2e20*/                   IADD3.X R13, R3, RZ, RZ, P0, !PT ;
        /*2e30*/                   MOV R12, R12 ;
        /*2e40*/                   MOV R13, R13 ;
        /*2e50*/                   MOV R12, R12 ;
        /*2e60*/                   MOV R13, R13 ;
        /*2e70*/                   LD.E.64.SYS R12, [R12] ;
        /*2e80*/                   MOV R14, R12 ;
        /*2e90*/                   MOV R13, R13 ;
        /*2ea0*/                   MOV R10, R10 ;
        /*2eb0*/                   MOV R11, R10 ;
        /*2ec0*/                   MOV R12, RZ ;
        /*2ed0*/                   SHF.L.U64.HI R12, R11, 0x2, R12 ;
        /*2ee0*/                   SHF.L.U32 R11, R11, 0x2, RZ ;
        /*2ef0*/                   IADD3 R11, P0, R14, R11, RZ ;
        /*2f00*/                   IADD3.X R12, R13, R12, RZ, P0, !PT ;
        /*2f10*/                   MOV R11, R11 ;
        /*2f20*/                   MOV R12, R12 ;
.L_x_155:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 112
        /*2f30*/                   MOV R10, R11 ;
        /*2f40*/                   MOV R11, R12 ;
        /*2f50*/                   MOV R10, R10 ;
        /*2f60*/                   MOV R11, R11 ;
        /*2f70*/                   ST.E.SYS [R10], R9 ;
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 114
        /*2f80*/                   MOV R6, R6 ;
        /*2f90*/                   MOV R7, R7 ;
        /*2fa0*/                   LD.E.64.SYS R10, [R6] ;
        /*2fb0*/                   MOV R12, R10 ;
        /*2fc0*/                   MOV R13, R11 ;
        /*2fd0*/                   IADD3 R10, P0, R12, 0x14, RZ ;
        /*2fe0*/                   IADD3.X R11, R13, RZ, RZ, P0, !PT ;
        /*2ff0*/                   MOV R10, R10 ;
        /*3000*/                   MOV R11, R11 ;
        /*3010*/                   MOV R10, R10 ;
        /*3020*/                   MOV R11, R11 ;
        /*3030*/                   LD.E.SYS R10, [R10] ;
        /*3040*/                   IADD3 R9, R10, 0x587c5, RZ ;
        /*3050*/                   IADD3 R10, P0, R12, 0x14, RZ ;
        /*3060*/                   IADD3.X R11, R13, RZ, RZ, P0, !PT ;
        /*3070*/                   MOV R10, R10 ;
        /*3080*/                   MOV R11, R11 ;
        /*3090*/                   MOV R10, R10 ;
        /*30a0*/                   MOV R11, R11 ;
        /*30b0*/                   ST.E.SYS [R10], R9 ;
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 115
        /*30c0*/                   MOV R9, R6 ;
        /*30d0*/                   MOV R10, R7 ;
        /*30e0*/                   ISETP.NE.U32.AND P0, PT, R9, RZ, PT ;
        /*30f0*/                   ISETP.NE.AND.EX P0, PT, R10, RZ, PT, P0 ;
        /*3100*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3110*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*3120*/                   BMOV.32.CLEAR RZ, B0 ;
        /*3130*/                   BSSY B0, `(.L_x_116) ;
        /*3140*/               @P0 BRA `(.L_x_117) ;
        /*3150*/                   BRA `(.L_x_118) ;
.L_x_118:
        /*3160*/                   BRA `(.L_x_117) ;
.L_x_117:
        /*3170*/                   BSYNC B0 ;
.L_x_116:
        /*3180*/                   MOV R6, R6 ;
        /*3190*/                   MOV R7, R7 ;
        /*31a0*/                   LD.E.64.SYS R10, [R6] ;
        /*31b0*/                   MOV R9, R10 ;
        /*31c0*/                   MOV R11, R11 ;
        /*31d0*/                   IADD3 R10, P0, R9, 0x14, RZ ;
        /*31e0*/                   IADD3.X R11, R11, RZ, RZ, P0, !PT ;
        /*31f0*/                   MOV R10, R10 ;
        /*3200*/                   MOV R11, R11 ;
        /*3210*/                   MOV R10, R10 ;
        /*3220*/                   MOV R11, R11 ;
        /*3230*/                   LD.E.SYS R9, [R10] ;
        /*3240*/                   MOV R4, R4 ;
        /*3250*/                   MOV R5, R5 ;
        /*3260*/                   IADD3 R10, P0, R0, 0x60, RZ ;
        /*3270*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*3280*/                   MOV R10, R10 ;
        /*3290*/                   MOV R11, R11 ;
        /*32a0*/                   MOV R10, R10 ;
        /*32b0*/                   MOV R11, R11 ;
        /*32c0*/                   ST.E.64.SYS [R10], R4 ;
        /*32d0*/                   MOV R4, 0x4 ;
        /*32e0*/                   MOV R5, R4 ;
        /*32f0*/                   MOV R4, R9 ;
        /*3300*/                   MOV R5, R5 ;
        /*3310*/                   BRA `(.L_x_119) ;
.L_x_119:
	//## File "/home/s3j/.local/src/celeritas/src/base/Array.hh", line 50
        /*3320*/                   IADD3 R10, P0, R0, 0x60, RZ ;
        /*3330*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*3340*/                   MOV R10, R10 ;
        /*3350*/                   MOV R11, R11 ;
        /*3360*/                   MOV R10, R10 ;
        /*3370*/                   MOV R11, R11 ;
        /*3380*/                   LD.E.64.SYS R10, [R10] ;
        /*3390*/                   MOV R9, R10 ;
        /*33a0*/                   MOV R10, R11 ;
        /*33b0*/                   ISETP.NE.U32.AND P0, PT, R9, RZ, PT ;
        /*33c0*/                   ISETP.NE.AND.EX P0, PT, R10, RZ, PT, P0 ;
        /*33d0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*33e0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*33f0*/                   BMOV.32.CLEAR RZ, B0 ;
        /*3400*/                   BSSY B0, `(.L_x_120) ;
        /*3410*/               @P0 BRA `(.L_x_121) ;
        /*3420*/                   BRA `(.L_x_122) ;
.L_x_122:
        /*3430*/                   BRA `(.L_x_121) ;
.L_x_121:
        /*3440*/                   BSYNC B0 ;
.L_x_120:
        /*3450*/                   IADD3 R10, P0, R0, 0x60, RZ ;
        /*3460*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*3470*/                   MOV R10, R10 ;
        /*3480*/                   MOV R11, R11 ;
        /*3490*/                   MOV R10, R10 ;
        /*34a0*/                   MOV R11, R11 ;
        /*34b0*/                   LD.E.64.SYS R10, [R10] ;
        /*34c0*/                   MOV R3, R10 ;
        /*34d0*/                   MOV R9, R11 ;
        /*34e0*/                   MOV R0, R5 ;
        /*34f0*/                   MOV R0, R0 ;
        /*3500*/                   MOV R11, RZ ;
        /*3510*/                   SHF.L.U64.HI R11, R0, 0x2, R11 ;
        /*3520*/                   SHF.L.U32 R10, R0, 0x2, RZ ;
        /*3530*/                   IADD3 R10, P0, R3, R10, RZ ;
        /*3540*/                   IADD3.X R11, R9, R11, RZ, P0, !PT ;
        /*3550*/                   MOV R10, R10 ;
        /*3560*/                   MOV R11, R11 ;
.L_x_156:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 115
        /*3570*/                   MOV R10, R10 ;
        /*3580*/                   MOV R11, R11 ;
        /*3590*/                   MOV R10, R10 ;
        /*35a0*/                   MOV R11, R11 ;
        /*35b0*/                   LD.E.SYS R10, [R10] ;
        /*35c0*/                   IADD3 R4, R4, R10, RZ ;
        /*35d0*/                   MOV R4, R4 ;
        /*35e0*/                   BRA `(.L_x_123) ;
.L_x_123:
        /*35f0*/                   MOV R4, R4 ;
        /*3600*/                   IADD3 R1, R1, 0x70, RZ ;
        /*3610*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_124:
        /*3620*/                   BRA `(.L_x_124);
        /*3630*/                   NOP;
        /*3640*/                   NOP;
        /*3650*/                   NOP;
        /*3660*/                   NOP;
        /*3670*/                   NOP;
.L_x_141:
