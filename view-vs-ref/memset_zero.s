
Fatbin elf code:
================
arch = sm_35
code version = [1,7]
producer = <unknown>
host = linux
compile_size = 64bit

	code for sm_35
		Function : _Z11memset_zeroPi
	.headerflags    @"EF_CUDA_SM35 EF_CUDA_PTX_SM(EF_CUDA_SM35)"

        /*0008*/                   MOV R1, c[0x0][0x44];
        /*0010*/                   S2R R0, SR_CTAID.X;
        /*0018*/                   S2R R3, SR_CTAID.Y;
        /*0020*/                   S2R R4, SR_TID.Y;
        /*0028*/                   IMAD R0, R3, c[0x0][0x34], R0;
        /*0030*/                   S2R R3, SR_TID.X;
        /*0038*/                   IMAD R0, R0, c[0x0][0x2c], R4;

        /*0048*/                   IMAD R0, R0, c[0x0][0x28], R3;
        /*0050*/                   MOV32I R3, 0x4;
        /*0058*/                   ISCADD R2.CC, R0, c[0x0][0x140], 0x2;
        /*0060*/                   IMAD.HI.X R3, R0, R3, c[0x0][0x144];
        /*0068*/                   ST.E [R2], RZ;
        /*0070*/                   EXIT;
        /*0078*/                   BRA 0x78;
		............................



Fatbin ptx code:
================
arch = sm_35
code version = [6,5]
producer = <unknown>
host = linux
compile_size = 64bit
compressed
