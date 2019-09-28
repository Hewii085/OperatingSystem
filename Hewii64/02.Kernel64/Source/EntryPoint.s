[BITS 64]           ; 

SECTION .text       ; text 

extern Main

START:
	mov ax, 0x10        ; IA-32e 
	mov ds, ax          ; DS 
	mov es, ax          ; ES 
	mov fs, ax          ; FS 
	mov gs, ax          ; GS 

	mov ss, ax          ; SS 
	mov rsp, 0x6FFFF8   ; RSP 
	mov rbp, 0x6FFFF8   ; RBP

	call Main           ; C 

	jmp $
