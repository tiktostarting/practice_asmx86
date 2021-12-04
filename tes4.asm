delay	macro
		push	cx
		xor		cx,	cx
loop1:
		loop	loop1
		pop		cx
		endm
		
geser	macro
		push	ax
		push	bx	
		push	cx
		
		xor		cx,	cx
		mov		al,	26
		sub		al,	posy
		mov		cl,	al
loop2:
		mov		al,	byte	ptr	es:[bx]
		mov		byte	ptres:[bx+160],	al
hilang:
		mov		byte	ptr	es:[bx], ' '
		delay
		add		bx, 160
		loop	loop2
		pop		cx
		pop		bx
		pop		ax
		endm
		
		.model small
		.code
		org 100h
		
tdata	:	jmp	proses
			posy	db	?
			
proses	:
			mov		ax,	0b800h
			mov		es,	ax
			
			mov		bx,	3998
			mov		cx,	25
			
ulangy	:
			mov		posy,cl
			push	cx
			mov		cx,	80
			
ulangx	:	
			cmp	byte	ptr	es:[bx],33
			
			jb		tdk
			geser	posy
			
tdk		:	
			sub		bx,	2
			loop	ulangx
			pop		cx
			loop	ulangy
exit	:
			int		20h
end			tdata

