
Fatbin elf code:
================
arch = sm_70
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_70
		Function : _Z8call_minPiPK5Real3PS0_
	.headerflags    @"EF_CUDA_SM70 EF_CUDA_PTX_SM(EF_CUDA_SM70)"
        /*0000*/                   MOV R1, c[0x0][0x28] ;

        /*0010*/              @!PT SHFL.IDX PT, RZ, RZ, RZ, RZ ;

        /*0020*/                   S2R R2, SR_TID.X ;

        /*0030*/                   MOV R3, 0x4 ;

        /*0040*/                   IMAD.WIDE.U32 R2, R2, R3, c[0x0][0x160] ;

        /*0050*/                   LDG.E.SYS R2, [R2] ;

        /*0060*/                   MOV R7, 0x18 ;

        /*0070*/                   IMAD.WIDE R4, R2, R7, c[0x0][0x168] ;

        /*0080*/                   LDG.E.64.SYS R8, [R4] ;

        /*0090*/                   LDG.E.64.SYS R10, [R4+0x8] ;

        /*00a0*/                   LDG.E.64.SYS R12, [R4+0x10] ;

        /*00b0*/                   IMAD.WIDE R6, R2, R7, c[0x0][0x170] ;

        /*00c0*/                   STG.E.64.SYS [R6+-0x18], R8 ;

        /*00d0*/                   STG.E.64.SYS [R6+-0x10], R10 ;

        /*00e0*/                   STG.E.64.SYS [R6+-0x8], R12 ;

        /*00f0*/                   LDG.E.64.SYS R14, [R4+0x18] ;

        /*0100*/                   LDG.E.64.SYS R2, [R4+0x20] ;

        /*0110*/                   LDG.E.64.SYS R16, [R4+0x28] ;

        /*0120*/                   STG.E.64.SYS [R6], R14 ;

        /*0130*/                   STG.E.64.SYS [R6+0x8], R2 ;

        /*0140*/                   STG.E.64.SYS [R6+0x10], R16 ;

        /*0150*/                   EXIT ;

        /*0160*/                   BRA 0x160;

        /*0170*/                   NOP;

		....................................



Fatbin ptx code:
================
arch = sm_70
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
