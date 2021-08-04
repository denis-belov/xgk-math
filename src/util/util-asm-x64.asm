.DATA

.CODE

	xgk_math_clock64 PROC

		push rdx

		rdtsc
		mov 4[rsp], edx
		mov [rsp], eax
		mov rax, [rsp]

		pop rdx

		ret 0
	xgk_math_clock64 ENDP
END
