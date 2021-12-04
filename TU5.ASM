.model small
.stack 100h
.data
	msg	db	"Pratikto Arya Wicaksana 55415379$"
.code
start:
	mov ax, @data
	mov ds, ax
	mov ah, 09
	mov dx, offset msg
	int 21h
	mov ah, 4ch
	int 21h
end	start
 
