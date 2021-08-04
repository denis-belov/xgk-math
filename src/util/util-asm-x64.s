.text

.global xgk_math_clock64

xgk_math_clock64:

	push %rdx

	rdtsc
	mov %edx, 4(%rsp)
	mov %eax, (%rsp)
	mov (%rsp), %rax

	pop %rdx

	ret
