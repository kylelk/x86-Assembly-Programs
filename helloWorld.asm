section .data				;section declaration

msg     db      "Hello, world!",0xa	;string
len     equ     $ - msg                 ;length of string

section .text				

			
    global _start	
			

_start:

;write our string to stdout

        mov     edx,len ;third argument: message length
        mov     ecx,msg ;second argument: pointer to message to write
        mov     ebx,1   ;first argument: file handle (stdout)
        mov     eax,4   ;system call number (sys_write)
        int     0x80	;call kernel

;and exit

	mov	ebx,0	;first syscall argument: exit code
        mov     eax,1   ;system call number (sys_exit)
        int     0x80	;call kernel



