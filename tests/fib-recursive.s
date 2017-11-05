; init result at #3
or $0 $0 #3

; f0 = 0, f1 = 1
or $0 $0 #1
or $1 $0 #2

call #6

; print result
print #3
halt

; recursion
xor #0 #2 #5
jz #5 #9
jnz #5 #11
add #3 #2 #3
ret

xor #0 #1 #5
jz #5 #14
jnz #5 #15
ret

sub #0 $1 #0
call #6

sub #0 $1 #0
call #6

add #0 $2 #0
ret