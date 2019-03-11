; Matthew Culberson
; Class: CSC 3210
; Assignment 4
; This programs assigns values to list z

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
z WORD 3 DUP(?)
x WORD 10
y WORD 20
r WORD 6

.code
main proc
	mov ax,0
	add ax,x
	add ax,2
	sub ax,r
	mov z,ax

	mov bx,0
	mov bx,y
	add bx,r
	add bx,9
	mov z+2,bx

	mov cx,0
	mov cx,y
	sub cx,x
	add cx,3
	mov z+4,cx


	invoke ExitProcess,0
main endp
end main