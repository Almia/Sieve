# Sieve
Sieve is a two-dimensional stack-based programming language inspired from the esoteric languages Brainfuck and Befunge.

Operations:
<>^< - West, East, North, South direction
/ - east -> north, north -> east, south -> west, west -> south
\ - east -> south, south -> east, north -> west, west -> north
" - start pushing characters to string. A second " terminates pushes.
+- -  arithmetic
& - Bitwise AND
| - Bitwise OR
! - Bitwise NOT
: - output as int (if the top stack value is string, it will be outputed as string, regardless)
; - output as string (if the top stack value is int, it will be outputed as string, regardless)
. - input as int
, - input as string
[] - one-dimensional loop (ends if the top stack value is 0)
# - bridge
I - vertical if (if top stack value is 0, go north, else go south)
_ - horizontal if (if top stack value is 0, go west, else go east)
{ - go to left stack
} - go to right stack
g - compare top stack values
@ - end of program


