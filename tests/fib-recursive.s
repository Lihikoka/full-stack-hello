; #0: n
; #1: result
; #2: temp

; initialize result to 0
or $0 $0 #1

; enter to recursion
call #4

; print result
print #1
halt

; recursion
; if #0 == 1 is true, #1 = #1 + 1, then return
xor $1 #0 #2
jz #2 #7
jnz #2 #9
add #1 $1 #1
ret

; if #0 == 0 is true, then return
xor $0 #0 #2
jz #2 #12
jnz #2 #13
ret

; fib(n-1)
sub #0 $1 #0
call #4
; fib(n-2)
sub #0 $1 #0
call #4
; compensate n the subtracted 2
add #0 $2 #0
ret 