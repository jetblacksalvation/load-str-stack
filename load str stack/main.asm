includelib kernel32.lib
includelib msvcrt.lib
ExitProcess  proto	
.data 
string db	 "123", 0
.code 
	main proc
	push rbp;start stack pointer
	mov rbp, rsp
	;put address onto stack
	lea rax,  string; this is cringe it's a pointer to a pointer so it's cirnge 
	mov qword ptr[rbp+4], rax
	mov rdx, qword ptr[rbp+4]
	mov rdx, qword ptr[rdx]
	mov qword ptr[rbp+4], rdx
	pop rbp
	call ExitProcess

	main endp

	end
