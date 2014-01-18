[SECTION .text]
global _start
_start:
        xor rax, rax ;zero out rax register
        mov al, 169 ;reboot() is sys call 169
        mov rdi, 0xfee1dead ;LINUX_REBOOT_MAGIC1
        mov rsi, 672274793 ;LINUX_REBOOT_MAGIC2
        mov rdx, 0x1234567 ;LINUX_REBOOT_CMD_RESTART, use 0x4321fedc for shutdown
        syscall
