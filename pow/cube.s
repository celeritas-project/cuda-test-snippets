	.headerflags	@"EF_CUDA_TEXMODE_UNIFIED EF_CUDA_64BIT_ADDRESS EF_CUDA_SM70 EF_CUDA_VIRTUAL_SM(EF_CUDA_SM70)"
	.elftype	@"ET_REL"


//--------------------- .text._Z4cubed            --------------------------
	.section	.text._Z4cubed,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text._Z4cubed:
        .weak           _Z4cubed
        .type           _Z4cubed,@function
        .size           _Z4cubed,(.L_x_4 - _Z4cubed)
_Z4cubed:
	//## File "/home/s3j/.local/src/cuda-test-snippets/pow/cube.cu", line 3
        /*0000*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0010*/                   MOV R5, R5 ;
        /*0020*/                   MOV R4, R4 ;
        /*0030*/                   MOV R4, R4 ;
        /*0040*/                   MOV R5, R5 ;
        /*0050*/                   MOV R6, R4 ;
        /*0060*/                   MOV R7, R5 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/pow/cube.cu", line 5
        /*0070*/                   DMUL R4, R6, R6 ;
        /*0080*/                   DMUL R4, R4, R6 ;
        /*0090*/                   MOV R0, R4 ;
        /*00a0*/                   MOV R5, R5 ;
        /*00b0*/                   MOV R4, R0 ;
        /*00c0*/                   MOV R5, R5 ;
        /*00d0*/                   BRA `(.L_x_1) ;
.L_x_1:
        /*00e0*/                   MOV R4, R4 ;
        /*00f0*/                   MOV R5, R5 ;
        /*0100*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_2:
        /*0110*/                   BRA `(.L_x_2);
        /*0120*/                   NOP;
        /*0130*/                   NOP;
        /*0140*/                   NOP;
        /*0150*/                   NOP;
        /*0160*/                   NOP;
        /*0170*/                   NOP;
.L_x_4:


//--------------------- .text._Z7cu_cbrtPd        --------------------------
	.section	.text._Z7cu_cbrtPd,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
        .global         _Z7cu_cbrtPd
        .type           _Z7cu_cbrtPd,@function
        .size           _Z7cu_cbrtPd,(.L_x_5 - _Z7cu_cbrtPd)
        .other          _Z7cu_cbrtPd,@"STO_CUDA_ENTRY STV_DEFAULT"
_Z7cu_cbrtPd:
.text._Z7cu_cbrtPd:
	//## File "/home/s3j/.local/src/cuda-test-snippets/pow/cube.cu", line 8
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
	//## File "/home/s3j/.local/src/cuda-test-snippets/pow/cube.cu", line 10
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
        /*01a0*/                   MOV R4, R4 ;
        /*01b0*/                   MOV R5, R5 ;
        /*01c0*/                   MOV R20, 32@lo((_Z7cu_cbrtPd + .L_x_0@srel)) ;
        /*01d0*/                   MOV R21, 32@hi((_Z7cu_cbrtPd + .L_x_0@srel)) ;
        /*01e0*/                   CALL.ABS.NOINC `(_Z4cubed) ;
.L_x_0:
        /*01f0*/                   MOV R4, R4 ;
        /*0200*/                   MOV R5, R5 ;
        /*0210*/                   S2R R0, SR_TID.X ;
        /*0220*/                   MOV R0, R0 ;
        /*0230*/                   MOV R0, R0 ;
        /*0240*/                   MOV R0, R0 ;
        /*0250*/                   MOV R3, RZ ;
        /*0260*/                   SHF.L.U64.HI R3, R0, 0x3, R3 ;
        /*0270*/                   SHF.L.U32 R0, R0, 0x3, RZ ;
        /*0280*/                   IADD3 R16, P0, R16, R0, RZ ;
        /*0290*/                   IADD3.X R3, R2, R3, RZ, P0, !PT ;
        /*02a0*/                   MOV R2, R16 ;
        /*02b0*/                   MOV R3, R3 ;
        /*02c0*/                   MOV R2, R2 ;
        /*02d0*/                   MOV R3, R3 ;
        /*02e0*/                   ST.E.64.SYS [R2], R4 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/pow/cube.cu", line 11
        /*02f0*/                   MEMBAR.SC.VC ;
        /*0300*/                   ERRBAR ;
        /*0310*/                   EXIT ;
        /*0320*/                   MEMBAR.SC.VC ;
        /*0330*/                   ERRBAR ;
        /*0340*/                   EXIT ;
.L_x_3:
        /*0350*/                   BRA `(.L_x_3);
        /*0360*/                   NOP;
        /*0370*/                   NOP;
.L_x_5:
