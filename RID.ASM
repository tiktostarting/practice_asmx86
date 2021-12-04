	.model small
	.code
	org 100h

tdata: jmp proses
	kal db 'abcdef'

proses:
	lea bx, kal
	mov cx, 2

ulang:
	mov dl, [bx]
	mov ah, 02h
	int 21h
	add bx, 2
	loop ulang

	int 20h
end	tdata
