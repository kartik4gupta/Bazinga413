global main
extern scanf
extern printf

section .text
main:
    const equ 32 ; const=32
    

    push rbp ; initialization of stack
    mov rbp, rsp
    sub rsp, const
    
    ;c-code : char* no_message = "Input a Number\n"
    ;         printf(no_message)
    mov eax, 0 
    lea rdi,[no_message]
    call printf

    ;c-code : char* no_spec = "%d"
    ;         scanf(no_spec, &num)
    mov eax, 0
    lea rdi, [no_spec]
    lea rsi, [num]
    call scanf

    ;c-code : char* no_spec = "%d"
    ;         printf(no_spec, num)
    mov eax, 0
    lea rdi,[no_spec]
    mov rsi,[num]
    call printf

   ;c-code: printf("\n")
    mov eax, 0
    lea rdi, [line]
    call printf


    ;c-code : char* str_message = "Input a String\n"
    ;         printf(str_message)
    mov eax, 0 
    lea rdi,[str_message]
    call printf

    ;c-code : char* str_spec = "%s"
    ;         scanf(str_spec, &str)
    mov eax, 0
    lea rdi, [str_spec]
    lea rsi, [string]
    call scanf

    ;c-code : char* str_spec = "%s"
    ;         printf(str_spec, str)
    mov eax, 0
    lea rdi,[str_spec]
    lea rsi,[string]
    call printf

    ;c-code: printf("\n")
    mov eax, 0
    lea rdi, [line]
    call printf

    
    ; destroying stack
    add rsp, const
    leave
    ret

section .data
    no_message: db "Input a Number",10, 0
    no_spec: db "%d", 0
    str_message: db "Input a String",10, 0
    str_spec: db "%s",0
    line: db 10

section .bss
  num resb 4
  string resb 100

