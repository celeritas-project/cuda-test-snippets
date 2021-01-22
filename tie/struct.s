
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

        /*0060*/                   MOV R19, 0x18 ;

        /*0070*/                   IMAD.WIDE R4, R2, R19, c[0x0][0x168] ;

        /*0080*/                   LDG.E.64.SYS R6, [R4] ;

        /*0090*/                   LDG.E.64.SYS R8, [R4+0x8] ;

        /*00a0*/                   LDG.E.64.SYS R10, [R4+0x10] ;

        /*00b0*/                   LDG.E.64.SYS R12, [R4+0x18] ;

        /*00c0*/                   LDG.E.64.SYS R14, [R4+0x20] ;

        /*00d0*/                   LDG.E.64.SYS R16, [R4+0x28] ;

        /*00e0*/                   IMAD.WIDE R18, R2, R19, c[0x0][0x170] ;

        /*00f0*/                   STG.E.64.SYS [R18+-0x18], R6 ;

        /*0100*/                   STG.E.64.SYS [R18+-0x10], R8 ;

        /*0110*/                   STG.E.64.SYS [R18+-0x8], R10 ;

        /*0120*/                   STG.E.64.SYS [R18], R12 ;

        /*0130*/                   STG.E.64.SYS [R18+0x8], R14 ;

        /*0140*/                   STG.E.64.SYS [R18+0x10], R16 ;

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
