; Matthew Culberson
; Class: CSC 3210
; Assignment 4
; This programs performs the equation EAX = (-val1 + val2) –6 + val3

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
val1 BYTE 4
val2 BYTE 20
val3 BYTE 2

.code
main proc
	mov eax, 0
	mov ebx, 0
	mov ecx, 0

	movzx eax, val1
	neg eax
	movzx ebx, val2
	add eax, ebx
	sub eax, 6
	movzx ecx, val3
	add eax, ecx
	


	invoke ExitProcess,0
main endp
end main