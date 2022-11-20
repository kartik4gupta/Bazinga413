global main
		extern printf, scanf

		section .text
		main:

		push rbp
		mov rbp, rsp
		sub rsp, 8

		;printing 'enter number'
		mov eax, 0
		lea rdi, [msg1]
		call printf

		;taking input of number
		mov eax, 0
		lea rdi, [format_num]
		lea rsi, [num]
		call scanf

		;printing 'enter string'
		mov eax, 0
		lea rdi, [msg2]
		call printf

		;taking input of string
		mov eax, 0
		lea rdi, [format_str]
		lea rsi, [statement]
		call scanf

		;printing the number
		mov eax, 0
		lea rdi, [print1]
		mov rsi, [num]
		call printf

		;printing the string
		mov eax, 0
		lea rdi, [print2]
		lea rsi, [statement]
		call printf

		add rsp, 8
		leave
		ret

		section .data
		msg1: db "Enter the number: " , 0
		msg2: db "Enter the string: " , 0
		print1: db "The entered number is %d",10,0
		print2: db "The entered string is %s",10,0
		format_num: db "%d", 0
		format_str: db "%s", 0

		section .bss
		num resb 4
		statement resb 109