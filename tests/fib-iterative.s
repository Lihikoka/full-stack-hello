; if #0 = 0, just print 0
xor #0 $0 #1
jz #1 #13

sub #0 $1 #0

; f0 = 0, f1 = 1
or $0 $0 #1
or $1 $0 #2

; iteration
add #1 #2 #3
or $0 #2 #1
or $0 #3 #2
sub #0 $1 #0
jz #0 #11
jgt #0 #5

; print result
print #3
halt

; print result if input = 0
print $0
halt