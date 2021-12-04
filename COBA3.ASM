		.model small
		.code
		org 100h
mulai:
		mov	ah, 01h
		mov	bh, 07
		mov	al, bh
		add	bh, 30h
		mov	bl, 02
		mov	al, bl
		add	bh, bl
		mov 	ah, 02h
		add	bl, 30h
		mov	dl, bh
		int	21h
		int	20h
end		mulai
