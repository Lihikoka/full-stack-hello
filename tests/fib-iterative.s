; if (n == 0) return n
jz #0 #15

; if (n == 1) return n
sub #0 $1 #5
jz #5 #15

; #1: first = 0
; #2: second = 1
; #3: result = 0
; #4: i = n - 1
or $0 $0 #1
or $0 $1 #2
or $0 $0 #3
sub #0 $1 #4

; iteration
jz #4 #13
sub #4 $1 #4
add #1 #2 #3
or $0 #2 #1
or $0 #3 #2
call #7

print #3
halt

print #0
halt