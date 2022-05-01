	.headerflags	@"EF_CUDA_TEXMODE_UNIFIED EF_CUDA_64BIT_ADDRESS EF_CUDA_SM70 EF_CUDA_VIRTUAL_SM(EF_CUDA_SM70)"
	.elftype	@"ET_REL"


//--------------------- .text._Z8call_minPdPKd    --------------------------
	.section	.text._Z8call_minPdPKd,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
        .global         _Z8call_minPdPKd
        .type           _Z8call_minPdPKd,@function
        .size           _Z8call_minPdPKd,(.L_x_4 - _Z8call_minPdPKd)
        .other          _Z8call_minPdPKd,@"STO_CUDA_ENTRY STV_DEFAULT"
_Z8call_minPdPKd:
.text._Z8call_minPdPKd:
	//## File "/home/s3j/.local/src/cuda-test-snippets/maths/fmin.cu", line 3
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
        /*00b0*/                   MOV R10, R3 ;
        /*00c0*/                   MOV R3, R0 ;
        /*00d0*/                   MOV R10, R10 ;
        /*00e0*/                   MOV R16, R16 ;
        /*00f0*/                   MOV R2, R4 ;
        /*0100*/                   MOV R3, R3 ;
        /*0110*/                   MOV R10, R10 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/maths/fmin.cu", line 5
        /*0120*/                   S2R R0, SR_TID.X ;
        /*0130*/                   MOV R0, R0 ;
        /*0140*/                   MOV R0, R0 ;
        /*0150*/                   MOV R0, R0 ;
        /*0160*/                   MOV R7, RZ ;
        /*0170*/                   SHF.L.U64.HI R7, R0, 0x3, R7 ;
        /*0180*/                   SHF.L.U32 R6, R0, 0x3, RZ ;
        /*0190*/                   IADD3 R6, P0, R16, R6, RZ ;
        /*01a0*/                   IADD3.X R7, R2, R7, RZ, P0, !PT ;
        /*01b0*/                   MOV R6, R6 ;
        /*01c0*/                   MOV R7, R7 ;
        /*01d0*/                   MOV R6, R6 ;
        /*01e0*/                   MOV R7, R7 ;
        /*01f0*/                   LD.E.64.SYS R6, [R6] ;
        /*0200*/                   MOV R4, R6 ;
        /*0210*/                   MOV R5, R7 ;
        /*0220*/                   S2R R0, SR_TID.X ;
        /*0230*/                   MOV R0, R0 ;
        /*0240*/                   MOV R0, R0 ;
        /*0250*/                   MOV R0, R0 ;
        /*0260*/                   MOV R9, RZ ;
        /*0270*/                   SHF.L.U64.HI R9, R0, 0x3, R9 ;
        /*0280*/                   SHF.L.U32 R8, R0, 0x3, RZ ;
        /*0290*/                   IADD3 R8, P0, R3, R8, RZ ;
        /*02a0*/                   IADD3.X R9, R10, R9, RZ, P0, !PT ;
        /*02b0*/                   MOV R8, R8 ;
        /*02c0*/                   MOV R9, R9 ;
        /*02d0*/                   MOV R8, R8 ;
        /*02e0*/                   MOV R9, R9 ;
        /*02f0*/                   LD.E.64.SYS R8, [R8] ;
        /*0300*/                   MOV R6, R8 ;
        /*0310*/                   MOV R7, R9 ;
        /*0320*/                   MOV R4, R4 ;
        /*0330*/                   MOV R5, R5 ;
        /*0340*/                   MOV R6, R6 ;
        /*0350*/                   MOV R7, R7 ;
        /*0360*/                   MOV R20, 32@lo((_Z8call_minPdPKd + .L_x_0@srel)) ;
        /*0370*/                   MOV R21, 32@hi((_Z8call_minPdPKd + .L_x_0@srel)) ;
        /*0380*/                   CALL.ABS.NOINC `(fmin) ;
.L_x_0:
        /*0390*/                   MOV R4, R4 ;
        /*03a0*/                   MOV R5, R5 ;
        /*03b0*/                   S2R R0, SR_TID.X ;
        /*03c0*/                   MOV R0, R0 ;
        /*03d0*/                   MOV R0, R0 ;
        /*03e0*/                   MOV R0, R0 ;
        /*03f0*/                   MOV R3, RZ ;
        /*0400*/                   SHF.L.U64.HI R3, R0, 0x3, R3 ;
        /*0410*/                   SHF.L.U32 R0, R0, 0x3, RZ ;
        /*0420*/                   IADD3 R16, P0, R16, R0, RZ ;
        /*0430*/                   IADD3.X R3, R2, R3, RZ, P0, !PT ;
        /*0440*/                   MOV R2, R16 ;
        /*0450*/                   MOV R3, R3 ;
        /*0460*/                   MOV R2, R2 ;
        /*0470*/                   MOV R3, R3 ;
        /*0480*/                   ST.E.64.SYS [R2], R4 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/maths/fmin.cu", line 6
        /*0490*/                   MEMBAR.SC.VC ;
        /*04a0*/                   ERRBAR ;
        /*04b0*/                   EXIT ;
        /*04c0*/                   MEMBAR.SC.VC ;
        /*04d0*/                   ERRBAR ;
        /*04e0*/                   EXIT ;
.L_x_1:
        /*04f0*/                   BRA `(.L_x_1);
.L_x_4:


//--------------------- .text.fmin                --------------------------
	.section	.text.fmin,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text.fmin:
        .type           fmin,@function
        .size           fmin,(.L_x_5 - fmin)
fmin:
        /*0000*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0010*/                   MOV R7, R7 ;
        /*0020*/                   MOV R6, R6 ;
        /*0030*/                   MOV R5, R5 ;
        /*0040*/                   MOV R4, R4 ;
        /*0050*/                   MOV R4, R4 ;
        /*0060*/                   MOV R5, R5 ;
        /*0070*/                   MOV R6, R6 ;
        /*0080*/                   MOV R7, R7 ;
        /*0090*/                   DSETP.MIN.AND P0, P1, R4, R6, PT ;
        /*00a0*/                   MOV R0, R4 ;
        /*00b0*/                   MOV R4, R5 ;
        /*00c0*/                   MOV R3, R6 ;
        /*00d0*/                   MOV R6, R7 ;
        /*00e0*/                   SEL R0, R0, R3, P0 ;
        /*00f0*/                   FSEL R4, R4, R6, P0 ;
        /*0100*/               @P1 LOP3.LUT R4, R6, 0x80000, RZ, 0xfc, !PT ;
        /*0110*/                   MOV R5, R4 ;
        /*0120*/                   MOV R4, R0 ;
        /*0130*/                   MOV R0, R4 ;
        /*0140*/                   MOV R5, R5 ;
        /*0150*/                   MOV R4, R0 ;
        /*0160*/                   MOV R5, R5 ;
        /*0170*/                   BRA `(.L_x_2) ;
.L_x_2:
        /*0180*/                   MOV R4, R4 ;
        /*0190*/                   MOV R5, R5 ;
        /*01a0*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_3:
        /*01b0*/                   BRA `(.L_x_3);
        /*01c0*/                   NOP;
        /*01d0*/                   NOP;
        /*01e0*/                   NOP;
        /*01f0*/                   NOP;
.L_x_5:
