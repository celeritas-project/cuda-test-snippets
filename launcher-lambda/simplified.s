	.headerflags	@"EF_CUDA_TEXMODE_UNIFIED EF_CUDA_64BIT_ADDRESS EF_CUDA_SM70 EF_CUDA_VIRTUAL_SM(EF_CUDA_SM70)"
	.elftype	@"ET_REL"


//--------------------- .text._Z12apply_kernel7MscDataPKfPf --------------------------
	.section	.text._Z12apply_kernel7MscDataPKfPf,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=14"
	.align	128
        .global         _Z12apply_kernel7MscDataPKfPf
        .type           _Z12apply_kernel7MscDataPKfPf,@function
        .size           _Z12apply_kernel7MscDataPKfPf,(.L_x_2 - _Z12apply_kernel7MscDataPKfPf)
        .other          _Z12apply_kernel7MscDataPKfPf,@"STO_CUDA_ENTRY STV_DEFAULT"
_Z12apply_kernel7MscDataPKfPf:
.text._Z12apply_kernel7MscDataPKfPf:
	//## File "/home/s3j/.local/src/cuda-test-snippets/launcher-lambda/simplified.cu", line 6
        /*0000*/                   MOV R1, c[0x0][0x28] ;
        /*0010*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0020*/                   IADD3 R1, R1, -0x8, RZ ;
        /*0030*/                   S2R R0, SR_LMEMHIOFF ;
        /*0040*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0050*/               @P0 BRA `(.L_x_0) ;
        /*0060*/                   BPT.TRAP 0x1 ;
.L_x_0:
        /*0070*/                   IADD3 R0, R1, RZ, RZ ;
        /*0080*/                   MOV R0, R0 ;
        /*0090*/                   MOV R2, R0 ;
        /*00a0*/                   MOV R3, RZ ;
        /*00b0*/                   MOV R0, R2 ;
        /*00c0*/                   MOV R2, R3 ;
        /*00d0*/                   MOV R0, R0 ;
        /*00e0*/                   MOV R2, R2 ;
        /*00f0*/                   MOV R4, c[0x0][0x20] ;
        /*0100*/                   MOV R3, c[0x0][0x24] ;
        /*0110*/                   IADD3 R4, P0, R0, R4, RZ ;
        /*0120*/                   IADD3.X R3, R2, R3, RZ, P0, !PT ;
        /*0130*/                   MOV R0, 0x160 ;
        /*0140*/                   IADD3 R0, R0, 0x4, RZ ;
        /*0150*/                   MOV R0, R0 ;
        /*0160*/                   LDC R0, c[0x0][R0] ;
        /*0170*/                   MOV R5, R0 ;
        /*0180*/                   MOV R6, 0x168 ;
        /*0190*/                   LDC.64 R6, c[0x0][R6] ;
        /*01a0*/                   MOV R2, R6 ;
        /*01b0*/                   MOV R0, R7 ;
        /*01c0*/                   MOV R2, R2 ;
        /*01d0*/                   MOV R0, R0 ;
        /*01e0*/                   MOV R6, 0x170 ;
        /*01f0*/                   LDC.64 R6, c[0x0][R6] ;
        /*0200*/                   MOV R10, R6 ;
        /*0210*/                   MOV R11, R7 ;
        /*0220*/                   MOV R10, R10 ;
        /*0230*/                   MOV R11, R11 ;
        /*0240*/                   MOV R6, 0x160 ;
        /*0250*/                   LDC R6, c[0x0][R6] ;
        /*0260*/                   MOV R8, R6 ;
        /*0270*/                   IADD3 R6, P0, R4, 0x4, RZ ;
        /*0280*/                   IADD3.X R7, R3, RZ, RZ, P0, !PT ;
        /*0290*/                   MOV R6, R6 ;
        /*02a0*/                   MOV R7, R7 ;
        /*02b0*/                   MOV R6, R6 ;
        /*02c0*/                   MOV R7, R7 ;
        /*02d0*/                   ST.E.SYS [R6], R5 ;
        /*02e0*/                   IADD3 R6, P0, R4, RZ, RZ ;
        /*02f0*/                   IADD3.X R7, R3, RZ, RZ, P0, !PT ;
        /*0300*/                   MOV R6, R6 ;
        /*0310*/                   MOV R7, R7 ;
        /*0320*/                   MOV R6, R6 ;
        /*0330*/                   MOV R7, R7 ;
        /*0340*/                   ST.E.SYS [R6], R8 ;
        /*0350*/                   MOV R4, R4 ;
        /*0360*/                   MOV R3, R3 ;
        /*0370*/                   MOV R8, R2 ;
        /*0380*/                   MOV R9, R0 ;
        /*0390*/                   MOV R2, R10 ;
        /*03a0*/                   MOV R0, R11 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/launcher-lambda/simplified.cu", line 8
        /*03b0*/                   IADD3 R6, P0, R4, RZ, RZ ;
        /*03c0*/                   IADD3.X R7, R3, RZ, RZ, P0, !PT ;
        /*03d0*/                   MOV R6, R6 ;
        /*03e0*/                   MOV R7, R7 ;
        /*03f0*/                   MOV R6, R6 ;
        /*0400*/                   MOV R7, R7 ;
        /*0410*/                   LD.E.SYS R5, [R6] ;
        /*0420*/                   S2R R6, SR_TID.X ;
        /*0430*/                   MOV R6, R6 ;
        /*0440*/                   MOV R6, R6 ;
        /*0450*/                   MOV R6, R6 ;
        /*0460*/                   MOV R7, RZ ;
        /*0470*/                   SHF.L.U64.HI R7, R6, 0x2, R7 ;
        /*0480*/                   SHF.L.U32 R6, R6, 0x2, RZ ;
        /*0490*/                   IADD3 R6, P0, R8, R6, RZ ;
        /*04a0*/                   IADD3.X R7, R9, R7, RZ, P0, !PT ;
        /*04b0*/                   MOV R6, R6 ;
        /*04c0*/                   MOV R7, R7 ;
        /*04d0*/                   MOV R6, R6 ;
        /*04e0*/                   MOV R7, R7 ;
        /*04f0*/                   LD.E.SYS R6, [R6] ;
        /*0500*/                   FMUL.FTZ R6, R5, R6 ;
        /*0510*/                   IADD3 R4, P0, R4, 0x4, RZ ;
        /*0520*/                   IADD3.X R5, R3, RZ, RZ, P0, !PT ;
        /*0530*/                   MOV R4, R4 ;
        /*0540*/                   MOV R5, R5 ;
        /*0550*/                   MOV R4, R4 ;
        /*0560*/                   MOV R5, R5 ;
        /*0570*/                   LD.E.SYS R4, [R4] ;
        /*0580*/                   FADD.FTZ R4, R6, R4 ;
        /*0590*/                   S2R R3, SR_TID.X ;
        /*05a0*/                   MOV R3, R3 ;
        /*05b0*/                   MOV R3, R3 ;
        /*05c0*/                   MOV R3, R3 ;
        /*05d0*/                   MOV R5, RZ ;
        /*05e0*/                   SHF.L.U64.HI R5, R3, 0x2, R5 ;
        /*05f0*/                   SHF.L.U32 R3, R3, 0x2, RZ ;
        /*0600*/                   IADD3 R2, P0, R2, R3, RZ ;
        /*0610*/                   IADD3.X R0, R0, R5, RZ, P0, !PT ;
        /*0620*/                   MOV R2, R2 ;
        /*0630*/                   MOV R3, R0 ;
        /*0640*/                   MOV R2, R2 ;
        /*0650*/                   MOV R3, R3 ;
        /*0660*/                   ST.E.SYS [R2], R4 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/launcher-lambda/simplified.cu", line 9
        /*0670*/                   MEMBAR.SC.VC ;
        /*0680*/                   ERRBAR ;
        /*0690*/                   EXIT ;
        /*06a0*/                   MEMBAR.SC.VC ;
        /*06b0*/                   ERRBAR ;
        /*06c0*/                   EXIT ;
.L_x_1:
        /*06d0*/                   BRA `(.L_x_1);
        /*06e0*/                   NOP;
        /*06f0*/                   NOP;
.L_x_2:
