; ISR FILE



reset_isr:
	call reset_handler
	
tick_isr:
	; save context
	
	push ax
	push bx
	push cx
	push dx
	push si
	push di
	push bp
	push es
	push ds
	
	sti		; enable interrupts
	call tick_handler
	cli		; disable interrupts
	
	;restore context
	pop ds
	pop es
	pop bp
	pop di
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	
	iret
	
keyboard_isr:

	; save context 
	push ax
	push bx
	push cx
	push dx
	push si
	push di
	push bp
	push es
	push ds
	
	sti		; enable interrupts
	call keyboard_handler
	cli		; disable interrupts
	
	;restore context
	pop ds
	pop es
	pop bp
	pop di
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	
	iret
	
