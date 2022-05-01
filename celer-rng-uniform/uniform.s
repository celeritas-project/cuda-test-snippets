	.headerflags	@"EF_CUDA_TEXMODE_UNIFIED EF_CUDA_64BIT_ADDRESS EF_CUDA_SM70 EF_CUDA_VIRTUAL_SM(EF_CUDA_SM70)"
	.elftype	@"ET_REL"


//--------------------- .text._ZN9celeritas21KernelParamCalculator9thread_idEv --------------------------
	.section	.text._ZN9celeritas21KernelParamCalculator9thread_idEv,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text._ZN9celeritas21KernelParamCalculator9thread_idEv:
        .weak           _ZN9celeritas21KernelParamCalculator9thread_idEv
        .type           _ZN9celeritas21KernelParamCalculator9thread_idEv,@function
        .size           _ZN9celeritas21KernelParamCalculator9thread_idEv,(.L_x_159 - _ZN9celeritas21KernelParamCalculator9thread_idEv)
_ZN9celeritas21KernelParamCalculator9thread_idEv:
	//## File "/home/s3j/.local/src/celeritas/src/base/KernelParamCalculator.device.hh", line 124
        /*0000*/                   IADD3 R1, R1, -0x10, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_12) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_12:
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
        /*0280*/                   BRA `(.L_x_13) ;
.L_x_13:
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
.L_x_160:
	//## File "/home/s3j/.local/src/celeritas/src/base/KernelParamCalculator.device.hh", line 127
        /*0330*/                   IADD3 R4, P0, R3, 0x8, RZ ;
        /*0340*/                   IADD3.X R5, R0, RZ, RZ, P0, !PT ;
        /*0350*/                   MOV R4, R4 ;
        /*0360*/                   MOV R5, R5 ;
        /*0370*/                   MOV R4, R4 ;
        /*0380*/                   MOV R5, R5 ;
        /*0390*/                   LD.E.SYS R4, [R4] ;
        /*03a0*/                   MOV R4, R4 ;
        /*03b0*/                   BRA `(.L_x_14) ;
.L_x_14:
        /*03c0*/                   MOV R4, R4 ;
        /*03d0*/                   IADD3 R1, R1, 0x10, RZ ;
        /*03e0*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_15:
        /*03f0*/                   BRA `(.L_x_15);
.L_x_159:


//--------------------- .text._ZN9celeritas15XorwowRngEngineC1ERKNS_18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEERKNS_8OpaqueIdINS_6ThreadEjEE --------------------------
	.section	.text._ZN9celeritas15XorwowRngEngineC1ERKNS_18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEERKNS_8OpaqueIdINS_6ThreadEjEE,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=43"
	.align	128
.text._ZN9celeritas15XorwowRngEngineC1ERKNS_18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEERKNS_8OpaqueIdINS_6ThreadEjEE:
        .weak           _ZN9celeritas15XorwowRngEngineC1ERKNS_18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEERKNS_8OpaqueIdINS_6ThreadEjEE
        .type           _ZN9celeritas15XorwowRngEngineC1ERKNS_18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEERKNS_8OpaqueIdINS_6ThreadEjEE,@function
        .size           _ZN9celeritas15XorwowRngEngineC1ERKNS_18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEERKNS_8OpaqueIdINS_6ThreadEjEE,(.L_x_161 - _ZN9celeritas15XorwowRngEngineC1ERKNS_18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEERKNS_8OpaqueIdINS_6ThreadEjEE)
_ZN9celeritas15XorwowRngEngineC1ERKNS_18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEERKNS_8OpaqueIdINS_6ThreadEjEE:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 93
        /*0000*/                   IADD3 R1, R1, -0x28, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_16) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_16:
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
        /*0250*/                   BRA `(.L_x_17) ;
.L_x_17:
        /*0260*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0270*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0 ;
        /*0280*/               @P0 BRA `(.L_x_18) ;
        /*0290*/                   BRA `(.L_x_19) ;
.L_x_19:
        /*02a0*/                   BRA `(.L_x_18) ;
.L_x_18:
        /*02b0*/                   BRA `(.L_x_20) ;
.L_x_20:
        /*02c0*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0 ;
        /*02d0*/               @P0 BRA `(.L_x_17) ;
        /*02e0*/                   BRA `(.L_x_21) ;
.L_x_21:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 96
        /*02f0*/                   MOV R8, R8 ;
        /*0300*/                   MOV R9, R9 ;
        /*0310*/                   LD.E.SYS R10, [R8] ;
        /*0320*/                   MOV R12, R10 ;
.L_x_162:
        /*0330*/                   IADD3 R10, P0, R0, 0x20, RZ ;
        /*0340*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*0350*/                   MOV R10, R10 ;
        /*0360*/                   MOV R11, R11 ;
        /*0370*/                   MOV R10, R10 ;
        /*0380*/                   MOV R11, R11 ;
        /*0390*/                   ST.E.SYS [R10], R12 ;
        /*03a0*/                   BRA `(.L_x_22) ;
.L_x_22:
	//## File "/home/s3j/.local/src/celeritas/src/base/Collection.hh", line 364
        /*03b0*/                   MOV R10, R6 ;
        /*03c0*/                   MOV R11, R7 ;
        /*03d0*/                   ISETP.NE.U32.AND P0, PT, R10, RZ, PT ;
        /*03e0*/                   ISETP.NE.AND.EX P0, PT, R11, RZ, PT, P0 ;
        /*03f0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0400*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0410*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0420*/                   BSSY B0, `(.L_x_23) ;
        /*0430*/               @P0 BRA `(.L_x_24) ;
        /*0440*/                   BRA `(.L_x_25) ;
.L_x_25:
        /*0450*/                   BRA `(.L_x_24) ;
.L_x_24:
        /*0460*/                   BSYNC B0 ;
.L_x_23:
        /*0470*/                   MOV R6, R6 ;
        /*0480*/                   MOV R7, R7 ;
        /*0490*/                   IADD3 R10, P0, R0, 0x10, RZ ;
        /*04a0*/                   IADD3.X R11, R3, RZ, RZ, P0, !PT ;
        /*04b0*/                   MOV R10, R10 ;
        /*04c0*/                   MOV R11, R11 ;
        /*04d0*/                   MOV R10, R10 ;
        /*04e0*/                   MOV R11, R11 ;
        /*04f0*/                   ST.E.64.SYS [R10], R6 ;
        /*0500*/                   BRA `(.L_x_26) ;
.L_x_26:
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
        /*05f0*/                   BSSY B0, `(.L_x_27) ;
        /*0600*/               @P0 BRA `(.L_x_28) ;
        /*0610*/                   BRA `(.L_x_29) ;
.L_x_29:
        /*0620*/                   BRA `(.L_x_28) ;
.L_x_28:
        /*0630*/                   BSYNC B0 ;
.L_x_27:
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
.L_x_164:
	//## File "/home/s3j/.local/src/celeritas/src/base/Collection.hh", line 364
        /*07a0*/                   BRA `(.L_x_30) ;
.L_x_30:
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
        /*0890*/                   BSSY B0, `(.L_x_31) ;
        /*08a0*/               @P0 BRA `(.L_x_32) ;
        /*08b0*/                   BRA `(.L_x_33) ;
.L_x_33:
        /*08c0*/                   BRA `(.L_x_32) ;
.L_x_32:
        /*08d0*/                   BSYNC B0 ;
.L_x_31:
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
.L_x_165:
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
        /*0a80*/                   BRA `(.L_x_34) ;
.L_x_34:
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
        /*0b70*/                   BSSY B0, `(.L_x_35) ;
        /*0b80*/               @P0 BRA `(.L_x_36) ;
        /*0b90*/                   BRA `(.L_x_37) ;
.L_x_37:
        /*0ba0*/                   BRA `(.L_x_36) ;
.L_x_36:
        /*0bb0*/                   BSYNC B0 ;
.L_x_35:
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
.L_x_166:
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
.L_x_163:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 96
        /*0fc0*/                   MOV R4, R4 ;
        /*0fd0*/                   MOV R5, R5 ;
        /*0fe0*/                   ST.E.64.SYS [R4], R10 ;
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 97
        /*0ff0*/                   BRA `(.L_x_38) ;
.L_x_38:
        /*1000*/                   IADD3 R1, R1, 0x28, RZ ;
        /*1010*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_39:
        /*1020*/                   BRA `(.L_x_39);
        /*1030*/                   NOP;
        /*1040*/                   NOP;
        /*1050*/                   NOP;
        /*1060*/                   NOP;
        /*1070*/                   NOP;
.L_x_161:


//--------------------- .text._ZN9celeritas18generate_canonicalIdNS_15XorwowRngEngineEEET_RT0_ --------------------------
	.section	.text._ZN9celeritas18generate_canonicalIdNS_15XorwowRngEngineEEET_RT0_,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text._ZN9celeritas18generate_canonicalIdNS_15XorwowRngEngineEEET_RT0_:
        .weak           _ZN9celeritas18generate_canonicalIdNS_15XorwowRngEngineEEET_RT0_
        .type           _ZN9celeritas18generate_canonicalIdNS_15XorwowRngEngineEEET_RT0_,@function
        .size           _ZN9celeritas18generate_canonicalIdNS_15XorwowRngEngineEEET_RT0_,(.L_x_183 - _ZN9celeritas18generate_canonicalIdNS_15XorwowRngEngineEEET_RT0_)
_ZN9celeritas18generate_canonicalIdNS_15XorwowRngEngineEEET_RT0_:
	//## File "/home/s3j/.local/src/celeritas/src/random/distributions/GenerateCanonical.hh", line 75
        /*0000*/                   IADD3 R1, R1, -0x28, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_40) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_40:
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
	//## File "/home/s3j/.local/src/celeritas/src/random/distributions/GenerateCanonical.hh", line 77
        /*02f0*/                   MOV R0, R0 ;
        /*0300*/                   MOV R3, R3 ;
        /*0310*/                   MOV R16, R4 ;
        /*0320*/                   MOV R17, R5 ;
        /*0330*/                   BRA `(.L_x_41) ;
.L_x_41:
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
        /*0420*/                   BSSY B0, `(.L_x_42) ;
        /*0430*/               @P0 BRA `(.L_x_43) ;
        /*0440*/                   BRA `(.L_x_44) ;
.L_x_44:
        /*0450*/                   BRA `(.L_x_43) ;
.L_x_43:
        /*0460*/                   BSYNC B0 ;
.L_x_42:
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
        /*05a0*/                   MOV R20, 32@lo((_ZN9celeritas18generate_canonicalIdNS_15XorwowRngEngineEEET_RT0_ + .L_x_0@srel)) ;
        /*05b0*/                   MOV R21, 32@hi((_ZN9celeritas18generate_canonicalIdNS_15XorwowRngEngineEEET_RT0_ + .L_x_0@srel)) ;
        /*05c0*/                   CALL.ABS.NOINC `(_ZN9celeritas6detail19GenerateCanonical32IdEclINS_15XorwowRngEngineEEEdRT_) ;
.L_x_0:
        /*05d0*/                   MOV R4, R4 ;
        /*05e0*/                   MOV R5, R5 ;
        /*05f0*/                   MOV R4, R4 ;
        /*0600*/                   MOV R5, R5 ;
.L_x_184:
	//## File "/home/s3j/.local/src/celeritas/src/random/distributions/GenerateCanonical.hh", line 77
        /*0610*/                   MOV R4, R4 ;
        /*0620*/                   MOV R5, R5 ;
        /*0630*/                   MOV R0, R4 ;
        /*0640*/                   MOV R5, R5 ;
        /*0650*/                   MOV R4, R0 ;
        /*0660*/                   MOV R5, R5 ;
        /*0670*/                   BRA `(.L_x_45) ;
.L_x_45:
        /*0680*/                   MOV R4, R4 ;
        /*0690*/                   MOV R5, R5 ;
        /*06a0*/                   LDL R16, [R1+0x18] ;
        /*06b0*/                   LDL R17, [R1+0x1c] ;
        /*06c0*/                   LDL R20, [R1+0x20] ;
        /*06d0*/                   LDL R21, [R1+0x24] ;
        /*06e0*/                   IADD3 R1, R1, 0x28, RZ ;
        /*06f0*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_46:
        /*0700*/                   BRA `(.L_x_46);
        /*0710*/                   NOP;
        /*0720*/                   NOP;
        /*0730*/                   NOP;
        /*0740*/                   NOP;
        /*0750*/                   NOP;
        /*0760*/                   NOP;
        /*0770*/                   NOP;
.L_x_183:


//--------------------- .text._ZN9celeritas6detail19GenerateCanonical32IdEclINS_15XorwowRngEngineEEEdRT_ --------------------------
	.section	.text._ZN9celeritas6detail19GenerateCanonical32IdEclINS_15XorwowRngEngineEEEdRT_,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text._ZN9celeritas6detail19GenerateCanonical32IdEclINS_15XorwowRngEngineEEEdRT_:
        .weak           _ZN9celeritas6detail19GenerateCanonical32IdEclINS_15XorwowRngEngineEEEdRT_
        .type           _ZN9celeritas6detail19GenerateCanonical32IdEclINS_15XorwowRngEngineEEEdRT_,@function
        .size           _ZN9celeritas6detail19GenerateCanonical32IdEclINS_15XorwowRngEngineEEEdRT_,(.L_x_185 - _ZN9celeritas6detail19GenerateCanonical32IdEclINS_15XorwowRngEngineEEEdRT_)
_ZN9celeritas6detail19GenerateCanonical32IdEclINS_15XorwowRngEngineEEEdRT_:
	//## File "/home/s3j/.local/src/celeritas/src/random/detail/GenerateCanonical32.hh", line 76
        /*0000*/                   IADD3 R1, R1, -0x20, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_47) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_47:
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
.L_x_186:
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
        /*02f0*/                   BSSY B0, `(.L_x_48) ;
        /*0300*/               @P0 BRA `(.L_x_49) ;
        /*0310*/                   BRA `(.L_x_50) ;
.L_x_50:
        /*0320*/                   BRA `(.L_x_49) ;
.L_x_49:
        /*0330*/                   BSYNC B0 ;
.L_x_48:
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
        /*0460*/                   BRA `(.L_x_51) ;
.L_x_51:
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
.L_x_52:
        /*0520*/                   BRA `(.L_x_52);
        /*0530*/                   NOP;
        /*0540*/                   NOP;
        /*0550*/                   NOP;
        /*0560*/                   NOP;
        /*0570*/                   NOP;
.L_x_185:


//--------------------- .text._ZN9celeritas23UniformRealDistributionIdEclINS_15XorwowRngEngineEEEdRT_ --------------------------
	.section	.text._ZN9celeritas23UniformRealDistributionIdEclINS_15XorwowRngEngineEEEdRT_,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=26"
	.align	128
.text._ZN9celeritas23UniformRealDistributionIdEclINS_15XorwowRngEngineEEEdRT_:
        .weak           _ZN9celeritas23UniformRealDistributionIdEclINS_15XorwowRngEngineEEEdRT_
        .type           _ZN9celeritas23UniformRealDistributionIdEclINS_15XorwowRngEngineEEEdRT_,@function
        .size           _ZN9celeritas23UniformRealDistributionIdEclINS_15XorwowRngEngineEEEdRT_,(.L_x_145 - _ZN9celeritas23UniformRealDistributionIdEclINS_15XorwowRngEngineEEEdRT_)
_ZN9celeritas23UniformRealDistributionIdEclINS_15XorwowRngEngineEEEdRT_:
	//## File "/home/s3j/.local/src/celeritas/src/random/distributions/UniformRealDistribution.hh", line 45
        /*0000*/                   IADD3 R1, R1, -0x20, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_53) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_53:
        /*0050*/                   STL [R1+0x1c], R23 ;
        /*0060*/                   STL [R1+0x18], R22 ;
        /*0070*/                   STL [R1+0x14], R21 ;
        /*0080*/                   STL [R1+0x10], R20 ;
        /*0090*/                   STL [R1+0xc], R18 ;
        /*00a0*/                   STL [R1+0x8], R17 ;
        /*00b0*/                   STL [R1+0x4], R16 ;
        /*00c0*/                   STL [R1], R2 ;
        /*00d0*/                   MOV R7, R7 ;
        /*00e0*/                   MOV R6, R6 ;
        /*00f0*/                   MOV R5, R5 ;
        /*0100*/                   MOV R4, R4 ;
        /*0110*/                   MOV R4, R4 ;
        /*0120*/                   MOV R5, R5 ;
        /*0130*/                   MOV R6, R6 ;
        /*0140*/                   MOV R7, R7 ;
        /*0150*/                   MOV R0, R4 ;
        /*0160*/                   MOV R4, R5 ;
        /*0170*/                   MOV R18, R0 ;
        /*0180*/                   MOV R17, R4 ;
        /*0190*/                   MOV R0, R6 ;
        /*01a0*/                   MOV R6, R7 ;
        /*01b0*/                   MOV R16, R0 ;
        /*01c0*/                   MOV R2, R6 ;
	//## File "/home/s3j/.local/src/celeritas/src/random/distributions/UniformRealDistribution.hh", line 98
        /*01d0*/                   ISETP.NE.U32.AND P0, PT, R18, RZ, PT ;
        /*01e0*/                   ISETP.NE.AND.EX P0, PT, R17, RZ, PT, P0 ;
        /*01f0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0200*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0210*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0220*/                   BSSY B0, `(.L_x_54) ;
        /*0230*/               @P0 BRA `(.L_x_55) ;
        /*0240*/                   BRA `(.L_x_56) ;
.L_x_56:
        /*0250*/                   BRA `(.L_x_55) ;
.L_x_55:
        /*0260*/                   BSYNC B0 ;
.L_x_54:
        /*0270*/                   IADD3 R4, P0, R18, 0x8, RZ ;
        /*0280*/                   IADD3.X R5, R17, RZ, RZ, P0, !PT ;
        /*0290*/                   MOV R4, R4 ;
        /*02a0*/                   MOV R5, R5 ;
        /*02b0*/                   MOV R4, R4 ;
        /*02c0*/                   MOV R5, R5 ;
        /*02d0*/                   LD.E.64.SYS R4, [R4] ;
        /*02e0*/                   MOV R22, R4 ;
        /*02f0*/                   MOV R23, R5 ;
        /*0300*/                   MOV R4, R16 ;
        /*0310*/                   MOV R5, R2 ;
        /*0320*/                   MOV R20, 32@lo((_ZN9celeritas23UniformRealDistributionIdEclINS_15XorwowRngEngineEEEdRT_ + .L_x_3@srel)) ;
        /*0330*/                   MOV R21, 32@hi((_ZN9celeritas23UniformRealDistributionIdEclINS_15XorwowRngEngineEEEdRT_ + .L_x_3@srel)) ;
        /*0340*/                   CALL.ABS.NOINC `(_ZN9celeritas18generate_canonicalIdNS_15XorwowRngEngineEEET_RT0_) ;
.L_x_3:
        /*0350*/                   MOV R4, R4 ;
        /*0360*/                   MOV R5, R5 ;
        /*0370*/                   DMUL R4, R22, R4 ;
        /*0380*/                   MOV R6, R18 ;
        /*0390*/                   MOV R7, R17 ;
        /*03a0*/                   MOV R6, R6 ;
        /*03b0*/                   MOV R7, R7 ;
        /*03c0*/                   LD.E.64.SYS R6, [R6] ;
        /*03d0*/                   DADD R4, R4, R6 ;
        /*03e0*/                   MOV R0, R4 ;
        /*03f0*/                   MOV R5, R5 ;
        /*0400*/                   MOV R4, R0 ;
        /*0410*/                   MOV R5, R5 ;
        /*0420*/                   BRA `(.L_x_57) ;
.L_x_57:
        /*0430*/                   MOV R4, R4 ;
        /*0440*/                   MOV R5, R5 ;
        /*0450*/                   LDL R2, [R1] ;
        /*0460*/                   LDL R16, [R1+0x4] ;
        /*0470*/                   LDL R17, [R1+0x8] ;
        /*0480*/                   LDL R18, [R1+0xc] ;
        /*0490*/                   LDL R20, [R1+0x10] ;
        /*04a0*/                   LDL R21, [R1+0x14] ;
        /*04b0*/                   LDL R22, [R1+0x18] ;
        /*04c0*/                   LDL R23, [R1+0x1c] ;
        /*04d0*/                   IADD3 R1, R1, 0x20, RZ ;
        /*04e0*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_58:
        /*04f0*/                   BRA `(.L_x_58);
.L_x_145:


//--------------------- .text._ZN9celeritas23UniformRealDistributionIdEC1Edd --------------------------
	.section	.text._ZN9celeritas23UniformRealDistributionIdEC1Edd,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text._ZN9celeritas23UniformRealDistributionIdEC1Edd:
        .weak           _ZN9celeritas23UniformRealDistributionIdEC1Edd
        .type           _ZN9celeritas23UniformRealDistributionIdEC1Edd,@function
        .size           _ZN9celeritas23UniformRealDistributionIdEC1Edd,(.L_x_146 - _ZN9celeritas23UniformRealDistributionIdEC1Edd)
_ZN9celeritas23UniformRealDistributionIdEC1Edd:
	//## File "/home/s3j/.local/src/celeritas/src/random/distributions/UniformRealDistribution.hh", line 82
        /*0000*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0010*/                   MOV R9, R9 ;
        /*0020*/                   MOV R8, R8 ;
        /*0030*/                   MOV R7, R7 ;
        /*0040*/                   MOV R6, R6 ;
        /*0050*/                   MOV R5, R5 ;
        /*0060*/                   MOV R4, R4 ;
        /*0070*/                   MOV R4, R4 ;
        /*0080*/                   MOV R5, R5 ;
        /*0090*/                   MOV R6, R6 ;
        /*00a0*/                   MOV R7, R7 ;
        /*00b0*/                   MOV R10, R8 ;
        /*00c0*/                   MOV R11, R9 ;
        /*00d0*/                   MOV R8, R4 ;
        /*00e0*/                   MOV R9, R5 ;
        /*00f0*/                   MOV R6, R6 ;
        /*0100*/                   MOV R7, R7 ;
        /*0110*/                   MOV R4, R10 ;
        /*0120*/                   MOV R5, R11 ;
	//## File "/home/s3j/.local/src/celeritas/src/random/distributions/UniformRealDistribution.hh", line 84
        /*0130*/                   MOV R8, R8 ;
        /*0140*/                   MOV R9, R9 ;
        /*0150*/                   ST.E.64.SYS [R8], R6 ;
        /*0160*/                   DADD R12, R4, -R6 ;
        /*0170*/                   MOV R10, R8 ;
        /*0180*/                   MOV R11, R9 ;
        /*0190*/                   IADD3 R10, P0, R10, 0x8, RZ ;
        /*01a0*/                   IADD3.X R11, R11, RZ, RZ, P0, !PT ;
        /*01b0*/                   MOV R10, R10 ;
        /*01c0*/                   MOV R11, R11 ;
        /*01d0*/                   MOV R10, R10 ;
        /*01e0*/                   MOV R11, R11 ;
        /*01f0*/                   ST.E.64.SYS [R10], R12 ;
	//## File "/home/s3j/.local/src/celeritas/src/random/distributions/UniformRealDistribution.hh", line 86
        /*0200*/                   BRA `(.L_x_59) ;
.L_x_59:
        /*0210*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0220*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x80, 0x0 ;
        /*0230*/               @P0 BRA `(.L_x_60) ;
        /*0240*/                   BRA `(.L_x_61) ;
.L_x_61:
        /*0250*/                   BRA `(.L_x_60) ;
.L_x_60:
        /*0260*/                   BRA `(.L_x_62) ;
.L_x_62:
        /*0270*/                   PLOP3.LUT P0, PT, PT, PT, PT, 0x8, 0x0 ;
        /*0280*/               @P0 BRA `(.L_x_59) ;
        /*0290*/                   BRA `(.L_x_63) ;
.L_x_63:
	//## File "/home/s3j/.local/src/celeritas/src/random/distributions/UniformRealDistribution.hh", line 87
        /*02a0*/                   BRA `(.L_x_64) ;
.L_x_64:
        /*02b0*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_65:
        /*02c0*/                   BRA `(.L_x_65);
        /*02d0*/                   NOP;
        /*02e0*/                   NOP;
        /*02f0*/                   NOP;
.L_x_146:


//--------------------- .text._Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd --------------------------
	.section	.text._Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=31"
	.align	128
        .global         _Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd
        .type           _Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd,@function
        .size           _Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd,(.L_x_147 - _Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd)
        .other          _Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd,@"STO_CUDA_ENTRY STV_DEFAULT"
_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd:
.text._Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/uniform.cu", line 13
        /*0000*/                   MOV R1, c[0x0][0x28] ;
        /*0010*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0020*/                   IADD3 R1, R1, -0x80, RZ ;
        /*0030*/                   S2R R0, SR_LMEMHIOFF ;
        /*0040*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0050*/               @P0 BRA `(.L_x_66) ;
        /*0060*/                   BPT.TRAP 0x1 ;
.L_x_66:
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
        /*02b0*/                   IADD3 R8, P0, R16, 0x68, RZ ;
        /*02c0*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*02d0*/                   MOV R8, R8 ;
        /*02e0*/                   MOV R9, R9 ;
        /*02f0*/                   MOV R8, R8 ;
        /*0300*/                   MOV R9, R9 ;
        /*0310*/                   ST.E.64.SYS [R8], R6 ;
        /*0320*/                   IADD3 R6, P0, R16, 0x60, RZ ;
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
.L_x_148:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/uniform.cu", line 15
        /*03d0*/                   MOV R20, 32@lo((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_4@srel)) ;
        /*03e0*/                   MOV R21, 32@hi((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_4@srel)) ;
        /*03f0*/                   CALL.ABS.NOINC `(_ZN9celeritas21KernelParamCalculator9thread_idEv) ;
.L_x_4:
        /*0400*/                   MOV R4, R4 ;
        /*0410*/                   IADD3 R6, P0, R16, 0x70, RZ ;
        /*0420*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*0430*/                   MOV R6, R6 ;
        /*0440*/                   MOV R7, R7 ;
        /*0450*/                   MOV R6, R6 ;
        /*0460*/                   MOV R7, R7 ;
        /*0470*/                   ST.E.SYS [R6], R4 ;
        /*0480*/                   IADD3 R24, P0, R16, 0x78, RZ ;
        /*0490*/                   IADD3.X R23, R2, RZ, RZ, P0, !PT ;
        /*04a0*/                   IADD3 R6, P0, R16, 0x60, RZ ;
        /*04b0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*04c0*/                   IADD3 R22, P0, R16, 0x70, RZ ;
        /*04d0*/                   IADD3.X R19, R2, RZ, RZ, P0, !PT ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/uniform.cu", line 16
        /*04e0*/                   MOV R4, R24 ;
        /*04f0*/                   MOV R5, R23 ;
        /*0500*/                   MOV R6, R6 ;
        /*0510*/                   MOV R7, R7 ;
        /*0520*/                   MOV R8, R22 ;
        /*0530*/                   MOV R9, R19 ;
        /*0540*/                   MOV R24, R24 ;
        /*0550*/                   MOV R23, R23 ;
        /*0560*/                   MOV R22, R22 ;
        /*0570*/                   MOV R19, R19 ;
        /*0580*/                   MOV R20, 32@lo((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_5@srel)) ;
        /*0590*/                   MOV R21, 32@hi((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_5@srel)) ;
        /*05a0*/                   CALL.ABS.NOINC `(_ZN9celeritas15XorwowRngEngineC1ERKNS_18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEERKNS_8OpaqueIdINS_6ThreadEjEE) ;
.L_x_5:
        /*05b0*/                   MOV R4, R24 ;
        /*05c0*/                   MOV R5, R23 ;
        /*05d0*/                   IADD3 R6, P0, R16, 0x48, RZ ;
        /*05e0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*05f0*/                   MOV R6, R6 ;
        /*0600*/                   MOV R7, R7 ;
        /*0610*/                   MOV R4, R4 ;
        /*0620*/                   MOV R5, R5 ;
        /*0630*/                   MOV R6, R6 ;
        /*0640*/                   MOV R7, R7 ;
        /*0650*/                   ST.E.64.SYS [R6], R4 ;
        /*0660*/                   CS2R R4, SRZ ;
        /*0670*/                   MOV R4, R4 ;
        /*0680*/                   MOV R5, R5 ;
        /*0690*/                   MOV R4, R4 ;
        /*06a0*/                   MOV R5, R5 ;
        /*06b0*/                   MOV R24, R4 ;
        /*06c0*/                   MOV R23, R5 ;
        /*06d0*/                   MOV R4, 0x0 ;
        /*06e0*/                   MOV R5, 0x3ff00000 ;
        /*06f0*/                   MOV R4, R4 ;
        /*0700*/                   MOV R5, R5 ;
        /*0710*/                   MOV R4, R4 ;
        /*0720*/                   MOV R5, R5 ;
        /*0730*/                   MOV R26, R4 ;
        /*0740*/                   MOV R25, R5 ;
.L_x_150:
        /*0750*/                   IADD3 R28, P0, R16, 0x50, RZ ;
        /*0760*/                   IADD3.X R27, R2, RZ, RZ, P0, !PT ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/uniform.cu", line 18
        /*0770*/                   MOV R28, R28 ;
        /*0780*/                   MOV R27, R27 ;
        /*0790*/                   BRA `(.L_x_67) ;
.L_x_67:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/uniform.cu", line 10
        /*07a0*/                   MOV R4, R28 ;
        /*07b0*/                   MOV R5, R27 ;
        /*07c0*/                   MOV R6, R24 ;
        /*07d0*/                   MOV R7, R23 ;
        /*07e0*/                   MOV R8, R26 ;
        /*07f0*/                   MOV R9, R25 ;
        /*0800*/                   MOV R20, 32@lo((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_6@srel)) ;
        /*0810*/                   MOV R21, 32@hi((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_6@srel)) ;
        /*0820*/                   CALL.ABS.NOINC `(_ZN9celeritas23UniformRealDistributionIdEC1Edd) ;
.L_x_6:
        /*0830*/                   IADD3 R4, P0, R16, 0x48, RZ ;
        /*0840*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*0850*/                   MOV R4, R4 ;
        /*0860*/                   MOV R5, R5 ;
        /*0870*/                   MOV R4, R4 ;
        /*0880*/                   MOV R5, R5 ;
        /*0890*/                   LD.E.64.SYS R4, [R4] ;
        /*08a0*/                   MOV R6, R4 ;
        /*08b0*/                   MOV R7, R5 ;
        /*08c0*/                   MOV R4, R28 ;
        /*08d0*/                   MOV R5, R27 ;
        /*08e0*/                   MOV R6, R6 ;
        /*08f0*/                   MOV R7, R7 ;
        /*0900*/                   MOV R20, 32@lo((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_7@srel)) ;
        /*0910*/                   MOV R21, 32@hi((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_7@srel)) ;
        /*0920*/                   CALL.ABS.NOINC `(_ZN9celeritas23UniformRealDistributionIdEclINS_15XorwowRngEngineEEEdRT_) ;
.L_x_7:
        /*0930*/                   MOV R4, R4 ;
        /*0940*/                   MOV R5, R5 ;
        /*0950*/                   MOV R6, R22 ;
        /*0960*/                   MOV R7, R19 ;
        /*0970*/                   IADD3 R8, P0, R16, 0x40, RZ ;
        /*0980*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*0990*/                   MOV R8, R8 ;
        /*09a0*/                   MOV R9, R9 ;
        /*09b0*/                   MOV R6, R6 ;
        /*09c0*/                   MOV R7, R7 ;
        /*09d0*/                   MOV R8, R8 ;
        /*09e0*/                   MOV R9, R9 ;
        /*09f0*/                   ST.E.64.SYS [R8], R6 ;
        /*0a00*/                   MOV R4, R4 ;
        /*0a10*/                   MOV R5, R5 ;
.L_x_151:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/uniform.cu", line 18
        /*0a20*/                   BRA `(.L_x_68) ;
.L_x_68:
	//## File "/home/s3j/.local/src/celeritas/src/base/OpaqueId.hh", line 64
        /*0a30*/                   IADD3 R6, P0, R16, 0x40, RZ ;
        /*0a40*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*0a50*/                   MOV R6, R6 ;
        /*0a60*/                   MOV R7, R7 ;
        /*0a70*/                   MOV R6, R6 ;
        /*0a80*/                   MOV R7, R7 ;
        /*0a90*/                   LD.E.64.SYS R6, [R6] ;
        /*0aa0*/                   MOV R0, R6 ;
        /*0ab0*/                   MOV R6, R7 ;
        /*0ac0*/                   ISETP.NE.U32.AND P0, PT, R0, RZ, PT ;
        /*0ad0*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*0ae0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0af0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0b00*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0b10*/                   BSSY B0, `(.L_x_69) ;
        /*0b20*/               @P0 BRA `(.L_x_70) ;
        /*0b30*/                   BRA `(.L_x_71) ;
.L_x_71:
        /*0b40*/                   BRA `(.L_x_70) ;
.L_x_70:
        /*0b50*/                   BSYNC B0 ;
.L_x_69:
        /*0b60*/                   IADD3 R6, P0, R16, 0x40, RZ ;
        /*0b70*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*0b80*/                   MOV R6, R6 ;
        /*0b90*/                   MOV R7, R7 ;
        /*0ba0*/                   MOV R6, R6 ;
        /*0bb0*/                   MOV R7, R7 ;
        /*0bc0*/                   LD.E.64.SYS R6, [R6] ;
        /*0bd0*/                   MOV R6, R6 ;
        /*0be0*/                   MOV R7, R7 ;
        /*0bf0*/                   LD.E.SYS R6, [R6] ;
        /*0c00*/                   MOV R6, R6 ;
        /*0c10*/                   MOV R6, R6 ;
.L_x_152:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/uniform.cu", line 18
        /*0c20*/                   IMAD R6, R6, 0x3, RZ ;
        /*0c30*/                   MOV R6, R6 ;
        /*0c40*/                   MOV R6, R6 ;
        /*0c50*/                   MOV R7, RZ ;
        /*0c60*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*0c70*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*0c80*/                   IADD3 R6, P0, R18, R6, RZ ;
        /*0c90*/                   IADD3.X R7, R17, R7, RZ, P0, !PT ;
        /*0ca0*/                   MOV R6, R6 ;
        /*0cb0*/                   MOV R7, R7 ;
        /*0cc0*/                   MOV R6, R6 ;
        /*0cd0*/                   MOV R7, R7 ;
        /*0ce0*/                   ST.E.64.SYS [R6], R4 ;
        /*0cf0*/                   IADD3 R4, P0, R16, 0x78, RZ ;
        /*0d00*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*0d10*/                   MOV R4, R4 ;
        /*0d20*/                   MOV R5, R5 ;
        /*0d30*/                   IADD3 R6, P0, R16, 0x28, RZ ;
        /*0d40*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*0d50*/                   MOV R6, R6 ;
        /*0d60*/                   MOV R7, R7 ;
        /*0d70*/                   MOV R4, R4 ;
        /*0d80*/                   MOV R5, R5 ;
        /*0d90*/                   MOV R6, R6 ;
        /*0da0*/                   MOV R7, R7 ;
        /*0db0*/                   ST.E.64.SYS [R6], R4 ;
        /*0dc0*/                   CS2R R4, SRZ ;
        /*0dd0*/                   MOV R4, R4 ;
        /*0de0*/                   MOV R5, R5 ;
        /*0df0*/                   MOV R4, R4 ;
        /*0e00*/                   MOV R5, R5 ;
        /*0e10*/                   MOV R22, R4 ;
        /*0e20*/                   MOV R19, R5 ;
        /*0e30*/                   MOV R4, 0x0 ;
        /*0e40*/                   MOV R5, 0x40140000 ;
        /*0e50*/                   MOV R4, R4 ;
        /*0e60*/                   MOV R5, R5 ;
        /*0e70*/                   MOV R4, R4 ;
        /*0e80*/                   MOV R5, R5 ;
        /*0e90*/                   MOV R24, R4 ;
        /*0ea0*/                   MOV R23, R5 ;
.L_x_153:
        /*0eb0*/                   IADD3 R26, P0, R16, 0x30, RZ ;
        /*0ec0*/                   IADD3.X R25, R2, RZ, RZ, P0, !PT ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/uniform.cu", line 19
        /*0ed0*/                   MOV R26, R26 ;
        /*0ee0*/                   MOV R25, R25 ;
        /*0ef0*/                   BRA `(.L_x_72) ;
.L_x_72:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/uniform.cu", line 10
        /*0f00*/                   MOV R4, R26 ;
        /*0f10*/                   MOV R5, R25 ;
        /*0f20*/                   MOV R6, R22 ;
        /*0f30*/                   MOV R7, R19 ;
        /*0f40*/                   MOV R8, R24 ;
        /*0f50*/                   MOV R9, R23 ;
        /*0f60*/                   MOV R20, 32@lo((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_8@srel)) ;
        /*0f70*/                   MOV R21, 32@hi((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_8@srel)) ;
        /*0f80*/                   CALL.ABS.NOINC `(_ZN9celeritas23UniformRealDistributionIdEC1Edd) ;
.L_x_8:
        /*0f90*/                   IADD3 R4, P0, R16, 0x28, RZ ;
        /*0fa0*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*0fb0*/                   MOV R4, R4 ;
        /*0fc0*/                   MOV R5, R5 ;
        /*0fd0*/                   MOV R4, R4 ;
        /*0fe0*/                   MOV R5, R5 ;
        /*0ff0*/                   LD.E.64.SYS R4, [R4] ;
        /*1000*/                   MOV R6, R4 ;
        /*1010*/                   MOV R7, R5 ;
        /*1020*/                   MOV R4, R26 ;
        /*1030*/                   MOV R5, R25 ;
        /*1040*/                   MOV R6, R6 ;
        /*1050*/                   MOV R7, R7 ;
        /*1060*/                   MOV R20, 32@lo((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_9@srel)) ;
        /*1070*/                   MOV R21, 32@hi((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_9@srel)) ;
        /*1080*/                   CALL.ABS.NOINC `(_ZN9celeritas23UniformRealDistributionIdEclINS_15XorwowRngEngineEEEdRT_) ;
.L_x_9:
        /*1090*/                   MOV R4, R4 ;
        /*10a0*/                   MOV R5, R5 ;
        /*10b0*/                   IADD3 R6, P0, R16, 0x70, RZ ;
        /*10c0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*10d0*/                   MOV R6, R6 ;
        /*10e0*/                   MOV R7, R7 ;
        /*10f0*/                   IADD3 R8, P0, R16, 0x20, RZ ;
        /*1100*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*1110*/                   MOV R8, R8 ;
        /*1120*/                   MOV R9, R9 ;
        /*1130*/                   MOV R6, R6 ;
        /*1140*/                   MOV R7, R7 ;
        /*1150*/                   MOV R8, R8 ;
        /*1160*/                   MOV R9, R9 ;
        /*1170*/                   ST.E.64.SYS [R8], R6 ;
        /*1180*/                   MOV R4, R4 ;
        /*1190*/                   MOV R5, R5 ;
.L_x_154:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/uniform.cu", line 19
        /*11a0*/                   BRA `(.L_x_73) ;
.L_x_73:
	//## File "/home/s3j/.local/src/celeritas/src/base/OpaqueId.hh", line 64
        /*11b0*/                   IADD3 R6, P0, R16, 0x20, RZ ;
        /*11c0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*11d0*/                   MOV R6, R6 ;
        /*11e0*/                   MOV R7, R7 ;
        /*11f0*/                   MOV R6, R6 ;
        /*1200*/                   MOV R7, R7 ;
        /*1210*/                   LD.E.64.SYS R6, [R6] ;
        /*1220*/                   MOV R0, R6 ;
        /*1230*/                   MOV R6, R7 ;
        /*1240*/                   ISETP.NE.U32.AND P0, PT, R0, RZ, PT ;
        /*1250*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*1260*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1270*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1280*/                   BMOV.32.CLEAR RZ, B0 ;
        /*1290*/                   BSSY B0, `(.L_x_74) ;
        /*12a0*/               @P0 BRA `(.L_x_75) ;
        /*12b0*/                   BRA `(.L_x_76) ;
.L_x_76:
        /*12c0*/                   BRA `(.L_x_75) ;
.L_x_75:
        /*12d0*/                   BSYNC B0 ;
.L_x_74:
        /*12e0*/                   IADD3 R6, P0, R16, 0x20, RZ ;
        /*12f0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*1300*/                   MOV R6, R6 ;
        /*1310*/                   MOV R7, R7 ;
        /*1320*/                   MOV R6, R6 ;
        /*1330*/                   MOV R7, R7 ;
        /*1340*/                   LD.E.64.SYS R6, [R6] ;
        /*1350*/                   MOV R6, R6 ;
        /*1360*/                   MOV R7, R7 ;
        /*1370*/                   LD.E.SYS R6, [R6] ;
        /*1380*/                   MOV R6, R6 ;
        /*1390*/                   MOV R6, R6 ;
.L_x_155:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/uniform.cu", line 19
        /*13a0*/                   IMAD R6, R6, 0x3, RZ ;
        /*13b0*/                   IADD3 R6, R6, 0x1, RZ ;
        /*13c0*/                   MOV R6, R6 ;
        /*13d0*/                   MOV R6, R6 ;
        /*13e0*/                   MOV R7, RZ ;
        /*13f0*/                   SHF.L.U64.HI R7, R6, 0x3, R7 ;
        /*1400*/                   SHF.L.U32 R6, R6, 0x3, RZ ;
        /*1410*/                   IADD3 R6, P0, R18, R6, RZ ;
        /*1420*/                   IADD3.X R7, R17, R7, RZ, P0, !PT ;
        /*1430*/                   MOV R6, R6 ;
        /*1440*/                   MOV R7, R7 ;
        /*1450*/                   MOV R6, R6 ;
        /*1460*/                   MOV R7, R7 ;
        /*1470*/                   ST.E.64.SYS [R6], R4 ;
        /*1480*/                   IADD3 R4, P0, R16, 0x78, RZ ;
        /*1490*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*14a0*/                   MOV R4, R4 ;
        /*14b0*/                   MOV R5, R5 ;
        /*14c0*/                   IADD3 R6, P0, R16, 0x8, RZ ;
        /*14d0*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*14e0*/                   MOV R6, R6 ;
        /*14f0*/                   MOV R7, R7 ;
        /*1500*/                   MOV R4, R4 ;
        /*1510*/                   MOV R5, R5 ;
        /*1520*/                   MOV R6, R6 ;
        /*1530*/                   MOV R7, R7 ;
        /*1540*/                   ST.E.64.SYS [R6], R4 ;
        /*1550*/                   MOV R4, 0x0 ;
        /*1560*/                   MOV R5, 0x40040000 ;
        /*1570*/                   MOV R4, R4 ;
        /*1580*/                   MOV R5, R5 ;
        /*1590*/                   MOV R4, R4 ;
        /*15a0*/                   MOV R5, R5 ;
        /*15b0*/                   MOV R22, R4 ;
        /*15c0*/                   MOV R19, R5 ;
        /*15d0*/                   MOV R4, 0x0 ;
        /*15e0*/                   MOV R5, 0x401f0000 ;
        /*15f0*/                   MOV R4, R4 ;
        /*1600*/                   MOV R5, R5 ;
        /*1610*/                   MOV R4, R4 ;
        /*1620*/                   MOV R5, R5 ;
        /*1630*/                   MOV R24, R4 ;
        /*1640*/                   MOV R23, R5 ;
.L_x_156:
        /*1650*/                   IADD3 R26, P0, R16, 0x10, RZ ;
        /*1660*/                   IADD3.X R25, R2, RZ, RZ, P0, !PT ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/uniform.cu", line 20
        /*1670*/                   MOV R26, R26 ;
        /*1680*/                   MOV R25, R25 ;
        /*1690*/                   BRA `(.L_x_77) ;
.L_x_77:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/uniform.cu", line 10
        /*16a0*/                   MOV R4, R26 ;
        /*16b0*/                   MOV R5, R25 ;
        /*16c0*/                   MOV R6, R22 ;
        /*16d0*/                   MOV R7, R19 ;
        /*16e0*/                   MOV R8, R24 ;
        /*16f0*/                   MOV R9, R23 ;
        /*1700*/                   MOV R20, 32@lo((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_10@srel)) ;
        /*1710*/                   MOV R21, 32@hi((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_10@srel)) ;
        /*1720*/                   CALL.ABS.NOINC `(_ZN9celeritas23UniformRealDistributionIdEC1Edd) ;
.L_x_10:
        /*1730*/                   IADD3 R4, P0, R16, 0x8, RZ ;
        /*1740*/                   IADD3.X R5, R2, RZ, RZ, P0, !PT ;
        /*1750*/                   MOV R4, R4 ;
        /*1760*/                   MOV R5, R5 ;
        /*1770*/                   MOV R4, R4 ;
        /*1780*/                   MOV R5, R5 ;
        /*1790*/                   LD.E.64.SYS R4, [R4] ;
        /*17a0*/                   MOV R6, R4 ;
        /*17b0*/                   MOV R7, R5 ;
        /*17c0*/                   MOV R4, R26 ;
        /*17d0*/                   MOV R5, R25 ;
        /*17e0*/                   MOV R6, R6 ;
        /*17f0*/                   MOV R7, R7 ;
        /*1800*/                   MOV R20, 32@lo((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_11@srel)) ;
        /*1810*/                   MOV R21, 32@hi((_Z6sampleN9celeritas18XorwowRngStateDataILNS_9OwnershipE1ELNS_8MemSpaceE1EEEPd + .L_x_11@srel)) ;
        /*1820*/                   CALL.ABS.NOINC `(_ZN9celeritas23UniformRealDistributionIdEclINS_15XorwowRngEngineEEEdRT_) ;
.L_x_11:
        /*1830*/                   MOV R4, R4 ;
        /*1840*/                   MOV R5, R5 ;
        /*1850*/                   IADD3 R6, P0, R16, 0x70, RZ ;
        /*1860*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*1870*/                   MOV R6, R6 ;
        /*1880*/                   MOV R7, R7 ;
        /*1890*/                   IADD3 R8, P0, R16, RZ, RZ ;
        /*18a0*/                   IADD3.X R9, R2, RZ, RZ, P0, !PT ;
        /*18b0*/                   MOV R8, R8 ;
        /*18c0*/                   MOV R9, R9 ;
        /*18d0*/                   MOV R6, R6 ;
        /*18e0*/                   MOV R7, R7 ;
        /*18f0*/                   MOV R8, R8 ;
        /*1900*/                   MOV R9, R9 ;
        /*1910*/                   ST.E.64.SYS [R8], R6 ;
        /*1920*/                   MOV R4, R4 ;
        /*1930*/                   MOV R5, R5 ;
.L_x_157:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/uniform.cu", line 20
        /*1940*/                   BRA `(.L_x_78) ;
.L_x_78:
	//## File "/home/s3j/.local/src/celeritas/src/base/OpaqueId.hh", line 64
        /*1950*/                   IADD3 R6, P0, R16, RZ, RZ ;
        /*1960*/                   IADD3.X R7, R2, RZ, RZ, P0, !PT ;
        /*1970*/                   MOV R6, R6 ;
        /*1980*/                   MOV R7, R7 ;
        /*1990*/                   MOV R6, R6 ;
        /*19a0*/                   MOV R7, R7 ;
        /*19b0*/                   LD.E.64.SYS R6, [R6] ;
        /*19c0*/                   MOV R0, R6 ;
        /*19d0*/                   MOV R6, R7 ;
        /*19e0*/                   ISETP.NE.U32.AND P0, PT, R0, RZ, PT ;
        /*19f0*/                   ISETP.NE.AND.EX P0, PT, R6, RZ, PT, P0 ;
        /*1a00*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1a10*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*1a20*/                   BMOV.32.CLEAR RZ, B0 ;
        /*1a30*/                   BSSY B0, `(.L_x_79) ;
        /*1a40*/               @P0 BRA `(.L_x_80) ;
        /*1a50*/                   BRA `(.L_x_81) ;
.L_x_81:
        /*1a60*/                   BRA `(.L_x_80) ;
.L_x_80:
        /*1a70*/                   BSYNC B0 ;
.L_x_79:
        /*1a80*/                   IADD3 R16, P0, R16, RZ, RZ ;
        /*1a90*/                   IADD3.X R3, R2, RZ, RZ, P0, !PT ;
        /*1aa0*/                   MOV R2, R16 ;
        /*1ab0*/                   MOV R3, R3 ;
        /*1ac0*/                   MOV R2, R2 ;
        /*1ad0*/                   MOV R3, R3 ;
        /*1ae0*/                   LD.E.64.SYS R2, [R2] ;
        /*1af0*/                   MOV R2, R2 ;
        /*1b00*/                   MOV R3, R3 ;
        /*1b10*/                   LD.E.SYS R2, [R2] ;
        /*1b20*/                   MOV R2, R2 ;
        /*1b30*/                   MOV R2, R2 ;
.L_x_158:
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/uniform.cu", line 20
        /*1b40*/                   IMAD R2, R2, 0x3, RZ ;
        /*1b50*/                   IADD3 R2, R2, 0x2, RZ ;
        /*1b60*/                   MOV R2, R2 ;
        /*1b70*/                   MOV R2, R2 ;
        /*1b80*/                   MOV R3, RZ ;
        /*1b90*/                   SHF.L.U64.HI R3, R2, 0x3, R3 ;
        /*1ba0*/                   SHF.L.U32 R2, R2, 0x3, RZ ;
        /*1bb0*/                   IADD3 R2, P0, R18, R2, RZ ;
        /*1bc0*/                   IADD3.X R3, R17, R3, RZ, P0, !PT ;
        /*1bd0*/                   MOV R2, R2 ;
        /*1be0*/                   MOV R3, R3 ;
        /*1bf0*/                   MOV R2, R2 ;
        /*1c00*/                   MOV R3, R3 ;
        /*1c10*/                   ST.E.64.SYS [R2], R4 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/celer-rng-uniform/uniform.cu", line 21
        /*1c20*/                   MEMBAR.SC.VC ;
        /*1c30*/                   ERRBAR ;
        /*1c40*/                   EXIT ;
.L_x_149:
        /*1c50*/                   MEMBAR.SC.VC ;
        /*1c60*/                   ERRBAR ;
        /*1c70*/                   EXIT ;
.L_x_82:
        /*1c80*/                   BRA `(.L_x_82);
        /*1c90*/                   NOP;
        /*1ca0*/                   NOP;
        /*1cb0*/                   NOP;
        /*1cc0*/                   NOP;
        /*1cd0*/                   NOP;
        /*1ce0*/                   NOP;
        /*1cf0*/                   NOP;
.L_x_147:


//--------------------- .text._ZN9celeritas15XorwowRngEngineclEv --------------------------
	.section	.text._ZN9celeritas15XorwowRngEngineclEv,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text._ZN9celeritas15XorwowRngEngineclEv:
        .weak           _ZN9celeritas15XorwowRngEngineclEv
        .type           _ZN9celeritas15XorwowRngEngineclEv,@function
        .size           _ZN9celeritas15XorwowRngEngineclEv,(.L_x_167 - _ZN9celeritas15XorwowRngEngineclEv)
_ZN9celeritas15XorwowRngEngineclEv:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 103
        /*0000*/                   IADD3 R1, R1, -0x70, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_83) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_83:
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
.L_x_168:
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
        /*02a0*/                   BRA `(.L_x_84) ;
.L_x_84:
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
        /*0390*/                   BSSY B0, `(.L_x_85) ;
        /*03a0*/               @P0 BRA `(.L_x_86) ;
        /*03b0*/                   BRA `(.L_x_87) ;
.L_x_87:
        /*03c0*/                   BRA `(.L_x_86) ;
.L_x_86:
        /*03d0*/                   BSYNC B0 ;
.L_x_85:
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
.L_x_169:
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
        /*0620*/                   BRA `(.L_x_88) ;
.L_x_88:
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
        /*0710*/                   BSSY B0, `(.L_x_89) ;
        /*0720*/               @P0 BRA `(.L_x_90) ;
        /*0730*/                   BRA `(.L_x_91) ;
.L_x_91:
        /*0740*/                   BRA `(.L_x_90) ;
.L_x_90:
        /*0750*/                   BSYNC B0 ;
.L_x_89:
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
.L_x_170:
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
        /*09c0*/                   BRA `(.L_x_92) ;
.L_x_92:
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
        /*0ab0*/                   BSSY B0, `(.L_x_93) ;
        /*0ac0*/               @P0 BRA `(.L_x_94) ;
        /*0ad0*/                   BRA `(.L_x_95) ;
.L_x_95:
        /*0ae0*/                   BRA `(.L_x_94) ;
.L_x_94:
        /*0af0*/                   BSYNC B0 ;
.L_x_93:
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
.L_x_171:
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
        /*0d40*/                   BRA `(.L_x_96) ;
.L_x_96:
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
        /*0e30*/                   BSSY B0, `(.L_x_97) ;
        /*0e40*/               @P0 BRA `(.L_x_98) ;
        /*0e50*/                   BRA `(.L_x_99) ;
.L_x_99:
        /*0e60*/                   BRA `(.L_x_98) ;
.L_x_98:
        /*0e70*/                   BSYNC B0 ;
.L_x_97:
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
.L_x_172:
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
        /*10b0*/                   BRA `(.L_x_100) ;
.L_x_100:
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
        /*11a0*/                   BSSY B0, `(.L_x_101) ;
        /*11b0*/               @P0 BRA `(.L_x_102) ;
        /*11c0*/                   BRA `(.L_x_103) ;
.L_x_103:
        /*11d0*/                   BRA `(.L_x_102) ;
.L_x_102:
        /*11e0*/                   BSYNC B0 ;
.L_x_101:
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
.L_x_173:
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
        /*1430*/                   BRA `(.L_x_104) ;
.L_x_104:
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
        /*1520*/                   BSSY B0, `(.L_x_105) ;
        /*1530*/               @P0 BRA `(.L_x_106) ;
        /*1540*/                   BRA `(.L_x_107) ;
.L_x_107:
        /*1550*/                   BRA `(.L_x_106) ;
.L_x_106:
        /*1560*/                   BSYNC B0 ;
.L_x_105:
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
.L_x_174:
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
        /*17a0*/                   BRA `(.L_x_108) ;
.L_x_108:
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
        /*1890*/                   BSSY B0, `(.L_x_109) ;
        /*18a0*/               @P0 BRA `(.L_x_110) ;
        /*18b0*/                   BRA `(.L_x_111) ;
.L_x_111:
        /*18c0*/                   BRA `(.L_x_110) ;
.L_x_110:
        /*18d0*/                   BSYNC B0 ;
.L_x_109:
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
.L_x_175:
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
        /*1b20*/                   BRA `(.L_x_112) ;
.L_x_112:
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
        /*1c10*/                   BSSY B0, `(.L_x_113) ;
        /*1c20*/               @P0 BRA `(.L_x_114) ;
        /*1c30*/                   BRA `(.L_x_115) ;
.L_x_115:
        /*1c40*/                   BRA `(.L_x_114) ;
.L_x_114:
        /*1c50*/                   BSYNC B0 ;
.L_x_113:
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
.L_x_176:
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
        /*1e90*/                   BRA `(.L_x_116) ;
.L_x_116:
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
        /*1f80*/                   BSSY B0, `(.L_x_117) ;
        /*1f90*/               @P0 BRA `(.L_x_118) ;
        /*1fa0*/                   BRA `(.L_x_119) ;
.L_x_119:
        /*1fb0*/                   BRA `(.L_x_118) ;
.L_x_118:
        /*1fc0*/                   BSYNC B0 ;
.L_x_117:
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
.L_x_177:
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
        /*2210*/                   BRA `(.L_x_120) ;
.L_x_120:
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
        /*2300*/                   BSSY B0, `(.L_x_121) ;
        /*2310*/               @P0 BRA `(.L_x_122) ;
        /*2320*/                   BRA `(.L_x_123) ;
.L_x_123:
        /*2330*/                   BRA `(.L_x_122) ;
.L_x_122:
        /*2340*/                   BSYNC B0 ;
.L_x_121:
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
.L_x_178:
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
        /*2580*/                   BRA `(.L_x_124) ;
.L_x_124:
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
        /*2670*/                   BSSY B0, `(.L_x_125) ;
        /*2680*/               @P0 BRA `(.L_x_126) ;
        /*2690*/                   BRA `(.L_x_127) ;
.L_x_127:
        /*26a0*/                   BRA `(.L_x_126) ;
.L_x_126:
        /*26b0*/                   BSYNC B0 ;
.L_x_125:
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
.L_x_179:
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
        /*2900*/                   BRA `(.L_x_128) ;
.L_x_128:
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
        /*29f0*/                   BSSY B0, `(.L_x_129) ;
        /*2a00*/               @P0 BRA `(.L_x_130) ;
        /*2a10*/                   BRA `(.L_x_131) ;
.L_x_131:
        /*2a20*/                   BRA `(.L_x_130) ;
.L_x_130:
        /*2a30*/                   BSYNC B0 ;
.L_x_129:
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
.L_x_180:
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
        /*2cd0*/                   BRA `(.L_x_132) ;
.L_x_132:
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
        /*2dc0*/                   BSSY B0, `(.L_x_133) ;
        /*2dd0*/               @P0 BRA `(.L_x_134) ;
        /*2de0*/                   BRA `(.L_x_135) ;
.L_x_135:
        /*2df0*/                   BRA `(.L_x_134) ;
.L_x_134:
        /*2e00*/                   BSYNC B0 ;
.L_x_133:
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
.L_x_181:
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
        /*3130*/                   BSSY B0, `(.L_x_136) ;
        /*3140*/               @P0 BRA `(.L_x_137) ;
        /*3150*/                   BRA `(.L_x_138) ;
.L_x_138:
        /*3160*/                   BRA `(.L_x_137) ;
.L_x_137:
        /*3170*/                   BSYNC B0 ;
.L_x_136:
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
        /*3310*/                   BRA `(.L_x_139) ;
.L_x_139:
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
        /*3400*/                   BSSY B0, `(.L_x_140) ;
        /*3410*/               @P0 BRA `(.L_x_141) ;
        /*3420*/                   BRA `(.L_x_142) ;
.L_x_142:
        /*3430*/                   BRA `(.L_x_141) ;
.L_x_141:
        /*3440*/                   BSYNC B0 ;
.L_x_140:
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
.L_x_182:
	//## File "/home/s3j/.local/src/celeritas/src/random/XorwowRngEngine.hh", line 115
        /*3570*/                   MOV R10, R10 ;
        /*3580*/                   MOV R11, R11 ;
        /*3590*/                   MOV R10, R10 ;
        /*35a0*/                   MOV R11, R11 ;
        /*35b0*/                   LD.E.SYS R10, [R10] ;
        /*35c0*/                   IADD3 R4, R4, R10, RZ ;
        /*35d0*/                   MOV R4, R4 ;
        /*35e0*/                   BRA `(.L_x_143) ;
.L_x_143:
        /*35f0*/                   MOV R4, R4 ;
        /*3600*/                   IADD3 R1, R1, 0x70, RZ ;
        /*3610*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_144:
        /*3620*/                   BRA `(.L_x_144);
        /*3630*/                   NOP;
        /*3640*/                   NOP;
        /*3650*/                   NOP;
        /*3660*/                   NOP;
        /*3670*/                   NOP;
.L_x_167:
