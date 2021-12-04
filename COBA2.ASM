		.model small
		.code
		org 100h
	proses:
		in al, 61h
		or al, 00000011b
		out 61h, al
		int 16h
		and al, 11111100b
		out 61h, al
		int 20h
	end	proses

