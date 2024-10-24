org 100h
 
    mov dx, offset prompt_msg
    mov ah, 09h
    int 21h
    mov ah, 01h
    int 21h
    sub al, '0'          
    cmp al, 0
    jb invalid_input    
    cmp al, 9
    ja invalid_input    
    and al, 1            
    jz is_even           

is_odd:
    mov dx, offset odd_msg
    mov ah, 09h
    int 21h
    jmp exit

is_even:
    mov dx, offset even_msg
    mov ah, 09h
    int 21h
    jmp exit

invalid_input:
   
    mov dx, offset invalid_msg
    mov ah, 09h
    int 21h

exit:
    
    mov ax, 4C00h
    int 21h

prompt_msg db 'Enter a single-digit number (0-9): $'
odd_msg db 0Dh,0Ah,'The number is odd.$'
even_msg db 0Dh,0Ah,'The number is even.$'
invalid_msg db 0Dh,0Ah,'Invalid input! Please enter a digit (0-9).$'

