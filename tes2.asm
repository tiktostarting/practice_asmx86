	.model 		small
	.stack 		200h
	.data

klm db 'cinta menyebabkan rindu yang paling sengsara $'

	.code		
proses :
	mov		 	ax, @data
	mov			ds, ax
	
	xor			bx, bx
	mov 		cx, 47
	
ulang :
	cmp			klm[bx],'a'
	jb			tidak
	cmp			klm[bx],'z'
	ja			tidak
	sub			klm[bx],'a'-'A'
	
tidak :
	inc			bx
	loop		ulang
	
cetak :
	mov 		ah, 09
	lea			dx, klm
	int 		21h
	
exit :
	mov			ax, 4c00h
	int 		21h
	
end proses
