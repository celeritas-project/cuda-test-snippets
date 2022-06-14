	.headerflags	@"EF_CUDA_TEXMODE_UNIFIED EF_CUDA_64BIT_ADDRESS EF_CUDA_SM70 EF_CUDA_VIRTUAL_SM(EF_CUDA_SM70)"
	.elftype	@"ET_REL"


//--------------------- .text._ZNK8UrbanMsc15make_calc_thingEv --------------------------
	.section	.text._ZNK8UrbanMsc15make_calc_thingEv,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text._ZNK8UrbanMsc15make_calc_thingEv:
        .weak           _ZNK8UrbanMsc15make_calc_thingEv
        .type           _ZNK8UrbanMsc15make_calc_thingEv,@function
        .size           _ZNK8UrbanMsc15make_calc_thingEv,(.L_x_24 - _ZNK8UrbanMsc15make_calc_thingEv)
_ZNK8UrbanMsc15make_calc_thingEv:
	//## File "/home/s3j/.local/src/cuda-test-snippets/launcher-lambda/test.cu", line 9
        /*0000*/                   IADD3 R1, R1, -0x8, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_3) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_3:
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
	//## File "/home/s3j/.local/src/cuda-test-snippets/launcher-lambda/test.cu", line 10
        /*0190*/                   IADD3 R4, P0, R0, RZ, RZ ;
        /*01a0*/                   IADD3.X R5, R3, RZ, RZ, P0, !PT ;
        /*01b0*/                   MOV R4, R4 ;
        /*01c0*/                   MOV R5, R5 ;
        /*01d0*/                   MOV R4, R4 ;
        /*01e0*/                   MOV R5, R5 ;
        /*01f0*/                   ST.E.64.SYS [R4], R6 ;
        /*0200*/                   MOV R4, R6 ;
        /*0210*/                   MOV R5, R7 ;
        /*0220*/                   ISETP.NE.U32.AND P0, PT, R4, RZ, PT ;
        /*0230*/                   ISETP.NE.AND.EX P0, PT, R5, RZ, PT, P0 ;
        /*0240*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0250*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0260*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0270*/                   BSSY B0, `(.L_x_4) ;
        /*0280*/               @P0 BRA `(.L_x_5) ;
        /*0290*/                   BRA `(.L_x_6) ;
.L_x_6:
        /*02a0*/                   BRA `(.L_x_5) ;
.L_x_5:
        /*02b0*/                   BSYNC B0 ;
.L_x_4:
        /*02c0*/                   IADD3 R4, P0, R0, RZ, RZ ;
        /*02d0*/                   IADD3.X R5, R3, RZ, RZ, P0, !PT ;
        /*02e0*/                   MOV R4, R4 ;
        /*02f0*/                   MOV R5, R5 ;
        /*0300*/                   MOV R4, R4 ;
        /*0310*/                   MOV R5, R5 ;
        /*0320*/                   LD.E.64.SYS R4, [R4] ;
        /*0330*/                   MOV R0, R4 ;
        /*0340*/                   MOV R5, R5 ;
        /*0350*/                   MOV R4, R0 ;
        /*0360*/                   MOV R5, R5 ;
        /*0370*/                   BRA `(.L_x_7) ;
.L_x_7:
        /*0380*/                   MOV R4, R4 ;
        /*0390*/                   MOV R5, R5 ;
        /*03a0*/                   IADD3 R1, R1, 0x8, RZ ;
        /*03b0*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_8:
        /*03c0*/                   BRA `(.L_x_8);
        /*03d0*/                   NOP;
        /*03e0*/                   NOP;
        /*03f0*/                   NOP;
.L_x_24:


//--------------------- .text._Z11apply_trackIZNK8UrbanMsc15make_calc_thingEvEUlfE_EvT_fPf --------------------------
	.section	.text._Z11apply_trackIZNK8UrbanMsc15make_calc_thingEvEUlfE_EvT_fPf,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text._Z11apply_trackIZNK8UrbanMsc15make_calc_thingEvEUlfE_EvT_fPf:
        .weak           _Z11apply_trackIZNK8UrbanMsc15make_calc_thingEvEUlfE_EvT_fPf
        .type           _Z11apply_trackIZNK8UrbanMsc15make_calc_thingEvEUlfE_EvT_fPf,@function
        .size           _Z11apply_trackIZNK8UrbanMsc15make_calc_thingEvEUlfE_EvT_fPf,(.L_x_19 - _Z11apply_trackIZNK8UrbanMsc15make_calc_thingEvEUlfE_EvT_fPf)
_Z11apply_trackIZNK8UrbanMsc15make_calc_thingEvEUlfE_EvT_fPf:
	//## File "/home/s3j/.local/src/cuda-test-snippets/launcher-lambda/test.cu", line 15
        /*0000*/                   IADD3 R1, R1, -0x20, RZ ;
        /*0010*/                   S2R R0, SR_LMEMHIOFF ;
        /*0020*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0030*/               @P0 BRA `(.L_x_9) ;
        /*0040*/                   BPT.TRAP 0x1 ;
.L_x_9:
        /*0050*/                   STL [R1+0x18], R21 ;
        /*0060*/                   STL [R1+0x14], R20 ;
        /*0070*/                   STL [R1+0x10], R17 ;
        /*0080*/                   STL [R1+0xc], R16 ;
        /*0090*/                   STL [R1+0x8], R2 ;
        /*00a0*/                   MOV R9, R9 ;
        /*00b0*/                   MOV R8, R8 ;
        /*00c0*/                   MOV R6, R6 ;
        /*00d0*/                   MOV R5, R5 ;
        /*00e0*/                   MOV R4, R4 ;
        /*00f0*/                   IADD3 R0, R1, RZ, RZ ;
        /*0100*/                   MOV R0, R0 ;
        /*0110*/                   MOV R10, R0 ;
        /*0120*/                   MOV R11, RZ ;
        /*0130*/                   MOV R0, R10 ;
        /*0140*/                   MOV R7, R11 ;
        /*0150*/                   MOV R0, R0 ;
        /*0160*/                   MOV R7, R7 ;
        /*0170*/                   MOV R3, c[0x0][0x20] ;
        /*0180*/                   MOV R10, c[0x0][0x24] ;
        /*0190*/                   IADD3 R3, P0, R0, R3, RZ ;
        /*01a0*/                   IADD3.X R10, R7, R10, RZ, P0, !PT ;
        /*01b0*/                   MOV R4, R4 ;
        /*01c0*/                   MOV R5, R5 ;
        /*01d0*/                   MOV R0, R6 ;
        /*01e0*/                   MOV R8, R8 ;
        /*01f0*/                   MOV R9, R9 ;
        /*0200*/                   IADD3 R6, P0, R3, RZ, RZ ;
        /*0210*/                   IADD3.X R7, R10, RZ, RZ, P0, !PT ;
        /*0220*/                   MOV R6, R6 ;
        /*0230*/                   MOV R7, R7 ;
        /*0240*/                   MOV R6, R6 ;
        /*0250*/                   MOV R7, R7 ;
        /*0260*/                   ST.E.64.SYS [R6], R4 ;
        /*0270*/                   IADD3 R4, P0, R3, RZ, RZ ;
        /*0280*/                   IADD3.X R5, R10, RZ, RZ, P0, !PT ;
        /*0290*/                   MOV R2, R0 ;
        /*02a0*/                   MOV R16, R8 ;
        /*02b0*/                   MOV R17, R9 ;
        /*02c0*/                   MOV R4, R4 ;
        /*02d0*/                   MOV R5, R5 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/launcher-lambda/test.cu", line 16
        /*02e0*/                   MOV R4, R4 ;
        /*02f0*/                   MOV R5, R5 ;
        /*0300*/                   MOV R6, R2 ;
        /*0310*/                   MOV R20, 32@lo((_Z11apply_trackIZNK8UrbanMsc15make_calc_thingEvEUlfE_EvT_fPf + .L_x_0@srel)) ;
        /*0320*/                   MOV R21, 32@hi((_Z11apply_trackIZNK8UrbanMsc15make_calc_thingEvEUlfE_EvT_fPf + .L_x_0@srel)) ;
        /*0330*/                   CALL.ABS.NOINC `(_ZZNK8UrbanMsc15make_calc_thingEvENKUlfE_clEf) ;
.L_x_0:
        /*0340*/                   MOV R4, R4 ;
        /*0350*/                   MOV R6, R16 ;
        /*0360*/                   MOV R7, R17 ;
        /*0370*/                   ST.E.SYS [R6], R4 ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/launcher-lambda/test.cu", line 17
        /*0380*/                   BRA `(.L_x_10) ;
.L_x_10:
        /*0390*/                   LDL R2, [R1+0x8] ;
        /*03a0*/                   LDL R16, [R1+0xc] ;
        /*03b0*/                   LDL R17, [R1+0x10] ;
        /*03c0*/                   LDL R20, [R1+0x14] ;
        /*03d0*/                   LDL R21, [R1+0x18] ;
        /*03e0*/                   IADD3 R1, R1, 0x20, RZ ;
        /*03f0*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_11:
        /*0400*/                   BRA `(.L_x_11);
        /*0410*/                   NOP;
        /*0420*/                   NOP;
        /*0430*/                   NOP;
        /*0440*/                   NOP;
        /*0450*/                   NOP;
        /*0460*/                   NOP;
        /*0470*/                   NOP;
.L_x_19:


//--------------------- .text._Z12apply_kernel7MscDataPKfPf --------------------------
	.section	.text._Z12apply_kernel7MscDataPKfPf,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
        .global         _Z12apply_kernel7MscDataPKfPf
        .type           _Z12apply_kernel7MscDataPKfPf,@function
        .size           _Z12apply_kernel7MscDataPKfPf,(.L_x_21 - _Z12apply_kernel7MscDataPKfPf)
        .other          _Z12apply_kernel7MscDataPKfPf,@"STO_CUDA_ENTRY STV_DEFAULT"
_Z12apply_kernel7MscDataPKfPf:
.text._Z12apply_kernel7MscDataPKfPf:
	//## File "/home/s3j/.local/src/cuda-test-snippets/launcher-lambda/test.cu", line 19
        /*0000*/                   MOV R1, c[0x0][0x28] ;
        /*0010*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0020*/                   IADD3 R1, R1, -0x10, RZ ;
        /*0030*/                   S2R R0, SR_LMEMHIOFF ;
        /*0040*/                   ISETP.GE.U32.AND P0, PT, R1, R0, PT ;
        /*0050*/               @P0 BRA `(.L_x_12) ;
        /*0060*/                   BPT.TRAP 0x1 ;
.L_x_12:
        /*0070*/                   IADD3 R0, R1, RZ, RZ ;
        /*0080*/                   MOV R0, R0 ;
        /*0090*/                   MOV R2, R0 ;
        /*00a0*/                   MOV R3, RZ ;
        /*00b0*/                   MOV R0, R2 ;
        /*00c0*/                   MOV R4, R3 ;
        /*00d0*/                   MOV R3, R0 ;
        /*00e0*/                   MOV R4, R4 ;
        /*00f0*/                   MOV R2, c[0x0][0x20] ;
        /*0100*/                   MOV R0, c[0x0][0x24] ;
        /*0110*/                   IADD3 R2, P0, R3, R2, RZ ;
        /*0120*/                   IADD3.X R0, R4, R0, RZ, P0, !PT ;
        /*0130*/                   MOV R3, 0x160 ;
        /*0140*/                   IADD3 R3, R3, 0x4, RZ ;
        /*0150*/                   MOV R3, R3 ;
        /*0160*/                   LDC R3, c[0x0][R3] ;
        /*0170*/                   MOV R6, R3 ;
        /*0180*/                   MOV R4, 0x168 ;
        /*0190*/                   LDC.64 R4, c[0x0][R4] ;
        /*01a0*/                   MOV R16, R4 ;
        /*01b0*/                   MOV R3, R5 ;
        /*01c0*/                   MOV R16, R16 ;
        /*01d0*/                   MOV R3, R3 ;
        /*01e0*/                   MOV R4, 0x170 ;
        /*01f0*/                   LDC.64 R4, c[0x0][R4] ;
        /*0200*/                   MOV R18, R4 ;
        /*0210*/                   MOV R17, R5 ;
        /*0220*/                   MOV R18, R18 ;
        /*0230*/                   MOV R17, R17 ;
        /*0240*/                   MOV R4, 0x160 ;
        /*0250*/                   LDC R4, c[0x0][R4] ;
        /*0260*/                   MOV R7, R4 ;
        /*0270*/                   IADD3 R4, P0, R2, 0x4, RZ ;
        /*0280*/                   IADD3.X R5, R0, RZ, RZ, P0, !PT ;
        /*0290*/                   MOV R4, R4 ;
        /*02a0*/                   MOV R5, R5 ;
        /*02b0*/                   MOV R4, R4 ;
        /*02c0*/                   MOV R5, R5 ;
        /*02d0*/                   ST.E.SYS [R4], R6 ;
        /*02e0*/                   IADD3 R4, P0, R2, RZ, RZ ;
        /*02f0*/                   IADD3.X R5, R0, RZ, RZ, P0, !PT ;
        /*0300*/                   MOV R4, R4 ;
        /*0310*/                   MOV R5, R5 ;
        /*0320*/                   MOV R4, R4 ;
        /*0330*/                   MOV R5, R5 ;
        /*0340*/                   ST.E.SYS [R4], R7 ;
        /*0350*/                   IADD3 R4, P0, R2, RZ, RZ ;
        /*0360*/                   IADD3.X R5, R0, RZ, RZ, P0, !PT ;
        /*0370*/                   MOV R8, R2 ;
        /*0380*/                   MOV R0, R0 ;
        /*0390*/                   MOV R16, R16 ;
        /*03a0*/                   MOV R2, R3 ;
        /*03b0*/                   MOV R18, R18 ;
        /*03c0*/                   MOV R17, R17 ;
        /*03d0*/                   MOV R4, R4 ;
        /*03e0*/                   MOV R5, R5 ;
.L_x_22:
	//## File "/home/s3j/.local/src/cuda-test-snippets/launcher-lambda/test.cu", line 21
        /*03f0*/                   IADD3 R6, P0, R8, 0x8, RZ ;
        /*0400*/                   IADD3.X R7, R0, RZ, RZ, P0, !PT ;
        /*0410*/                   MOV R6, R6 ;
        /*0420*/                   MOV R7, R7 ;
        /*0430*/                   MOV R4, R4 ;
        /*0440*/                   MOV R5, R5 ;
        /*0450*/                   MOV R6, R6 ;
        /*0460*/                   MOV R7, R7 ;
        /*0470*/                   ST.E.64.SYS [R6], R4 ;
        /*0480*/                   IADD3 R4, P0, R8, 0x8, RZ ;
        /*0490*/                   IADD3.X R5, R0, RZ, RZ, P0, !PT ;
	//## File "/home/s3j/.local/src/cuda-test-snippets/launcher-lambda/test.cu", line 22
        /*04a0*/                   MOV R4, R4 ;
        /*04b0*/                   MOV R5, R5 ;
        /*04c0*/                   MOV R20, 32@lo((_Z12apply_kernel7MscDataPKfPf + .L_x_1@srel)) ;
        /*04d0*/                   MOV R21, 32@hi((_Z12apply_kernel7MscDataPKfPf + .L_x_1@srel)) ;
        /*04e0*/                   CALL.ABS.NOINC `(_ZNK8UrbanMsc15make_calc_thingEv) ;
.L_x_1:
        /*04f0*/                   MOV R4, R4 ;
        /*0500*/                   MOV R5, R5 ;
        /*0510*/                   S2R R0, SR_TID.X ;
        /*0520*/                   MOV R0, R0 ;
        /*0530*/                   MOV R0, R0 ;
        /*0540*/                   MOV R6, R0 ;
        /*0550*/                   MOV R0, RZ ;
        /*0560*/                   SHF.L.U64.HI R0, R6, 0x2, R0 ;
        /*0570*/                   SHF.L.U32 R6, R6, 0x2, RZ ;
        /*0580*/                   IADD3 R6, P0, R16, R6, RZ ;
        /*0590*/                   IADD3.X R2, R2, R0, RZ, P0, !PT ;
        /*05a0*/                   MOV R6, R6 ;
        /*05b0*/                   MOV R7, R2 ;
        /*05c0*/                   MOV R6, R6 ;
        /*05d0*/                   MOV R7, R7 ;
        /*05e0*/                   LD.E.SYS R6, [R6] ;
        /*05f0*/                   S2R R0, SR_TID.X ;
        /*0600*/                   MOV R0, R0 ;
        /*0610*/                   MOV R0, R0 ;
        /*0620*/                   MOV R0, R0 ;
        /*0630*/                   MOV R2, RZ ;
        /*0640*/                   SHF.L.U64.HI R2, R0, 0x2, R2 ;
        /*0650*/                   SHF.L.U32 R0, R0, 0x2, RZ ;
        /*0660*/                   IADD3 R18, P0, R18, R0, RZ ;
        /*0670*/                   IADD3.X R17, R17, R2, RZ, P0, !PT ;
        /*0680*/                   MOV R4, R4 ;
        /*0690*/                   MOV R5, R5 ;
        /*06a0*/                   MOV R6, R6 ;
        /*06b0*/                   MOV R8, R18 ;
        /*06c0*/                   MOV R9, R17 ;
        /*06d0*/                   MOV R20, 32@lo((_Z12apply_kernel7MscDataPKfPf + .L_x_2@srel)) ;
        /*06e0*/                   MOV R21, 32@hi((_Z12apply_kernel7MscDataPKfPf + .L_x_2@srel)) ;
        /*06f0*/                   CALL.ABS.NOINC `(_Z11apply_trackIZNK8UrbanMsc15make_calc_thingEvEUlfE_EvT_fPf) ;
.L_x_2:
	//## File "/home/s3j/.local/src/cuda-test-snippets/launcher-lambda/test.cu", line 23
        /*0700*/                   MEMBAR.SC.VC ;
        /*0710*/                   ERRBAR ;
        /*0720*/                   EXIT ;
.L_x_23:
        /*0730*/                   MEMBAR.SC.VC ;
        /*0740*/                   ERRBAR ;
        /*0750*/                   EXIT ;
.L_x_13:
        /*0760*/                   BRA `(.L_x_13);
        /*0770*/                   NOP;
.L_x_21:


//--------------------- .text._ZZNK8UrbanMsc15make_calc_thingEvENKUlfE_clEf --------------------------
	.section	.text._ZZNK8UrbanMsc15make_calc_thingEvENKUlfE_clEf,"ax",@progbits
	.sectioninfo	@"SHI_REGISTERS=24"
	.align	128
.text._ZZNK8UrbanMsc15make_calc_thingEvENKUlfE_clEf:
        .type           _ZZNK8UrbanMsc15make_calc_thingEvENKUlfE_clEf,@function
        .size           _ZZNK8UrbanMsc15make_calc_thingEvENKUlfE_clEf,(.L_x_20 - _ZZNK8UrbanMsc15make_calc_thingEvENKUlfE_clEf)
_ZZNK8UrbanMsc15make_calc_thingEvENKUlfE_clEf:
	//## File "/home/s3j/.local/src/cuda-test-snippets/launcher-lambda/test.cu", line 10
        /*0000*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;
        /*0010*/                   MOV R6, R6 ;
        /*0020*/                   MOV R5, R5 ;
        /*0030*/                   MOV R4, R4 ;
        /*0040*/                   MOV R4, R4 ;
        /*0050*/                   MOV R5, R5 ;
        /*0060*/                   MOV R0, R6 ;
        /*0070*/                   MOV R6, R4 ;
        /*0080*/                   MOV R7, R5 ;
        /*0090*/                   MOV R0, R0 ;
        /*00a0*/                   MOV R3, R6 ;
        /*00b0*/                   MOV R4, R7 ;
        /*00c0*/                   ISETP.NE.U32.AND P0, PT, R3, RZ, PT ;
        /*00d0*/                   ISETP.NE.AND.EX P0, PT, R4, RZ, PT, P0 ;
        /*00e0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*00f0*/                   PLOP3.LUT P0, PT, P0, PT, PT, 0x8, 0x0 ;
        /*0100*/                   BMOV.32.CLEAR RZ, B0 ;
        /*0110*/                   BSSY B0, `(.L_x_14) ;
        /*0120*/               @P0 BRA `(.L_x_15) ;
        /*0130*/                   BRA `(.L_x_16) ;
.L_x_16:
        /*0140*/                   BRA `(.L_x_15) ;
.L_x_15:
        /*0150*/                   BSYNC B0 ;
.L_x_14:
        /*0160*/                   MOV R4, R6 ;
        /*0170*/                   MOV R5, R7 ;
        /*0180*/                   LD.E.64.SYS R4, [R4] ;
        /*0190*/                   MOV R4, R4 ;
        /*01a0*/                   MOV R5, R5 ;
        /*01b0*/                   LD.E.64.SYS R4, [R4] ;
        /*01c0*/                   MOV R4, R4 ;
        /*01d0*/                   MOV R5, R5 ;
        /*01e0*/                   LD.E.SYS R4, [R4] ;
        /*01f0*/                   FMUL.FTZ R3, R4, R0 ;
        /*0200*/                   MOV R4, R6 ;
        /*0210*/                   MOV R5, R7 ;
        /*0220*/                   LD.E.64.SYS R4, [R4] ;
        /*0230*/                   MOV R4, R4 ;
        /*0240*/                   MOV R5, R5 ;
        /*0250*/                   LD.E.64.SYS R4, [R4] ;
        /*0260*/                   MOV R8, R4 ;
        /*0270*/                   MOV R5, R5 ;
        /*0280*/                   IADD3 R4, P0, R8, 0x4, RZ ;
        /*0290*/                   IADD3.X R5, R5, RZ, RZ, P0, !PT ;
        /*02a0*/                   MOV R4, R4 ;
        /*02b0*/                   MOV R5, R5 ;
        /*02c0*/                   MOV R4, R4 ;
        /*02d0*/                   MOV R5, R5 ;
        /*02e0*/                   LD.E.SYS R4, [R4] ;
        /*02f0*/                   FADD.FTZ R4, R3, R4 ;
        /*0300*/                   MOV R4, R4 ;
        /*0310*/                   BRA `(.L_x_17) ;
.L_x_17:
        /*0320*/                   MOV R4, R4 ;
        /*0330*/                   RET.ABS.NODEC R20 0x0 ;
.L_x_18:
        /*0340*/                   BRA `(.L_x_18);
        /*0350*/                   NOP;
        /*0360*/                   NOP;
        /*0370*/                   NOP;
.L_x_20:
