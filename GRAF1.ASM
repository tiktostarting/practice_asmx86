readkey		macro
		mov		ah, 00
		int		16h
		endm

setcrt		macro		mode
		mov		ah, 00
		mov		al, mode
		int		10h
		endm

putpixel	macro		x,y,warna
		push		ax
		push		bx
		push		cx
		push		dx
		mov		ah, 0c
		mov		cx, x
		mov		dx, y
		mov		al, warna
		int 		10h
		pop		dx
		pop		cx
		pop		bx
		pop		ax
		endm

garisv		macro		x1,y1,panjang,warna
		local		ulang
		push		dx
		push		cx
		mov		dx, y1
		mov		cx, panjang
	ulang:
		putpixel	x1,dx,warna
		inc		dx
		loop		ulang
		pop		cx
		pop		dx
		endm

garish		macro		x1,y1,panjang,warna
		local		ulang
		push		cx
		push		dx
		mov		dx, x1
		mov		cx, panjang
	ulang:
		putpixel	dx,y1,warna
		inc		dx
		loop		ulang
		pop		cx
		pop		dx
		endm	
