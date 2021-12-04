.model small
.code
org 100h

tdata  : jmp proses
		 kalimat db 'nyamuk goreng'
		
proses : 
		 xor  bx, bx
		 mov  cx, 13
		 
ulang  : 
		 mov  dl, kalimat[bx]
		 mov  ah, 02
		 int  21h
		 inc  bx
		 loop ulang
		 int  20h
end 	 tdata