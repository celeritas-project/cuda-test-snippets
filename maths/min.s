	.headerflags	@"EF_CUDA_TEXMODE_UNIFIED EF_CUDA_64BIT_ADDRESS EF_CUDA_SM70 EF_CUDA_VIRTUAL_SM(EF_CUDA_SM70)"
	.elftype	@"ET_REL"


//--------------------- .text._Z5myminIdERKT_S2_S2_ --------------------------
	.section	.text._Z5myminIdERKT_S2_S2_,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text._Z5myminIdERKT_S2_S2_:
        .weak           _Z5myminIdERKT_S2_S2_
        .type           _Z5myminIdERKT_S2_S2_,@function
        .size           _Z5myminIdERKT_S2_S2_,(.L_x_9 - _Z5myminIdERKT_S2_S2_)
_Z5myminIdERKT_S2_S2_:
	//## File "/home/s3j/.local/src/cuda-test-snippets/maths/min.cu", line 2
        /*0000*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0010*/                   MOV R7, R7 ;
        /*0020*/                   MOV R6, R6 ;
        /*0030*/                   MOV R5, R5 ;
        /*0040*/                   MOV R4, R4 ;
        /*0050*/                   MOV R4, R4 ;
        /*0060*/                   MOV R5, R5 ;
        /*0070*/                   MOV R6, R6 ;
        /*0080*/                   MOV R7, R7 ;
        /*0090*/                   MOV R4, R4 ;
        /*00a0*/                   MOV R5, R5 ;
        /*00b0*/                   MOV R6, R6 ;
        /*00c0*/                   MOV R7, R7 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/maths/min.cu", line 4
        /*00d0*/                   MOV R6, R6 ;
        /*00e0*/                   MOV R7, R7 ;
        /*00f0*/                   LD.E.64.SYS R8, [R6] ;
        /*0100*/                   MOV R4, R4 ;
        /*0110*/                   MOV R5, R5 ;
        /*0120*/                   LD.E.64.SYS R10, [R4] ;
        /*0130*/                   DSETP.LT.AND P0, PT, R8, R10, PT ;
        /*0140*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0150*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0160*/                   BSSY B0, `(.L_x_1) ;
        /*0170*/               @P0 BRA `(.L_x_2) ;
        /*0180*/                   BRA `(.L_x_3) ;
.L_x_3:
        /*0190*/                   MOV R4, R6 ;
        /*01a0*/                   MOV R5, R7 ;
        /*01b0*/                   MOV R8, R4 ;
        /*01c0*/                   MOV R9, R5 ;
.L_x_10:
        /*01d0*/                   BRA `(.L_x_4) ;
.L_x_2:
        /*01e0*/                   MOV R8, R4 ;
        /*01f0*/                   MOV R9, R5 ;
        /*0200*/                   MOV R8, R8 ;
        /*0210*/                   MOV R9, R9 ;
.L_x_8:
        /*0220*/                   BRA `(.L_x_4) ;
.L_x_4:
        /*0230*/                   BSYNC B0 ;
.L_x_1:
        /*0240*/                   MOV R4, R8 ;
        /*0250*/                   MOV R5, R9 ;
        /*0260*/                   MOV R4, R4 ;
        /*0270*/                   MOV R5, R5 ;
        /*0280*/                   MOV R4, R4 ;
        /*0290*/                   MOV R5, R5 ;
        /*02a0*/                   BRA `(.L_x_5) ;
.L_x_5:
        /*02b0*/                   MOV R4, R4 ;
        /*02c0*/                   MOV R5, R5 ;
        /*02d0*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_6:
        /*02e0*/                   BRA `(.L_x_6);
        /*02f0*/                   NOP;
.L_x_9:


//--------------------- .text._Z8call_minPdPKd    --------------------------
	.section	.text._Z8call_minPdPKd,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
        .global         _Z8call_minPdPKd
        .type           _Z8call_minPdPKd,@function
        .size           _Z8call_minPdPKd,(.L_x_11 - _Z8call_minPdPKd)
        .other          _Z8call_minPdPKd,@"STO_CUDA_ENTRY STV_DEFAULT"
_Z8call_minPdPKd:
.text._Z8call_minPdPKd:
	//## File "/home/s3j/.local/src/cuda-test-snippets/maths/min.cu", line 7
        /*0000*/                   MOV R1, c[0x0][0x28] ;
        /*0010*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0020*/                   MOV R2, 0x160 ;
        /*0030*/                   LDC.64 R2, c[0x0][R2] ;
        /*0040*/                   MOV R16, R2 ;
        /*0050*/                   MOV R4, R3 ;
        /*0060*/                   MOV R16, R16 ;
        /*0070*/                   MOV R4, R4 ;
        /*0080*/                   MOV R2, 0x168 ;
        /*0090*/                   LDC.64 R2, c[0x0][R2] ;
        /*00a0*/                   MOV R0, R2 ;
        /*00b0*/                   MOV R8, R3 ;
        /*00c0*/                   MOV R3, R0 ;
        /*00d0*/                   MOV R8, R8 ;
        /*00e0*/                   MOV R16, R16 ;
        /*00f0*/                   MOV R2, R4 ;
        /*0100*/                   MOV R3, R3 ;
        /*0110*/                   MOV R8, R8 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/maths/min.cu", line 9
        /*0120*/                   S2R R0, SR_TID.X ;
        /*0130*/                   MOV R0, R0 ;
        /*0140*/                   MOV R0, R0 ;
        /*0150*/                   MOV R0, R0 ;
        /*0160*/                   MOV R5, RZ ;
        /*0170*/                   SHF.L.U64.HI R5, R0, 0x3, R5 ;
        /*0180*/                   SHF.L.U32 R4, R0, 0x3, RZ ;
        /*0190*/                   IADD3 R4, P0, R16, R4, RZ ;
        /*01a0*/                   IADD3.X R5, R2, R5, RZ, P0, !PT ;
        /*01b0*/                   S2R R0, SR_TID.X ;
        /*01c0*/                   MOV R0, R0 ;
        /*01d0*/                   MOV R0, R0 ;
        /*01e0*/                   MOV R0, R0 ;
        /*01f0*/                   MOV R7, RZ ;
        /*0200*/                   SHF.L.U64.HI R7, R0, 0x3, R7 ;
        /*0210*/                   SHF.L.U32 R6, R0, 0x3, RZ ;
        /*0220*/                   IADD3 R6, P0, R3, R6, RZ ;
        /*0230*/                   IADD3.X R7, R8, R7, RZ, P0, !PT ;
        /*0240*/                   MOV R4, R4 ;
        /*0250*/                   MOV R5, R5 ;
        /*0260*/                   MOV R6, R6 ;
        /*0270*/                   MOV R7, R7 ;
        /*0280*/                   MOV R20, 32@lo((_Z8call_minPdPKd + .L_x_0@srel)) ;
        /*0290*/                   MOV R21, 32@hi((_Z8call_minPdPKd + .L_x_0@srel)) ;
        /*02a0*/                   CALL.ABS.NOINC `(_Z5myminIdERKT_S2_S2_) ;
.L_x_0:
        /*02b0*/                   MOV R4, R4 ;
        /*02c0*/                   MOV R5, R5 ;
        /*02d0*/                   MOV R4, R4 ;
        /*02e0*/                   MOV R5, R5 ;
        /*02f0*/                   LD.E.64.SYS R4, [R4] ;
        /*0300*/                   S2R R0, SR_TID.X ;
        /*0310*/                   MOV R0, R0 ;
        /*0320*/                   MOV R0, R0 ;
        /*0330*/                   MOV R0, R0 ;
        /*0340*/                   MOV R3, RZ ;
        /*0350*/                   SHF.L.U64.HI R3, R0, 0x3, R3 ;
        /*0360*/                   SHF.L.U32 R0, R0, 0x3, RZ ;
        /*0370*/                   IADD3 R16, P0, R16, R0, RZ ;
        /*0380*/                   IADD3.X R3, R2, R3, RZ, P0, !PT ;
        /*0390*/                   MOV R2, R16 ;
        /*03a0*/                   MOV R3, R3 ;
        /*03b0*/                   MOV R2, R2 ;
        /*03c0*/                   MOV R3, R3 ;
        /*03d0*/                   ST.E.64.SYS [R2], R4 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/maths/min.cu", line 10
        /*03e0*/                   MEMBAR.SC.VC ;
        /*03f0*/                   ERRBAR ;
        /*0400*/                   EXIT ;
        /*0410*/                   MEMBAR.SC.VC ;
        /*0420*/                   ERRBAR ;
        /*0430*/                   EXIT ;
.L_x_7:
        /*0440*/                   BRA `(.L_x_7);
        /*0450*/                   NOP;
        /*0460*/                   NOP;
        /*0470*/                   NOP;
.L_x_11:
