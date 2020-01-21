A = [ 1 2; 3 4; 5 6 ] ; % mat A

A([ 1 3 ], :) ; % all the elements on rows 1 and 3

A( : , 2 ) ; % all the elements of the second column

A( : , 2 )  = [10; 11; 12] ; % assign these values to the second column

A = [A, [100; 101;  102]] ; % append another column to A

A = [ 1 2; 3 4; 5 6 ] ; 
B = [ 11 22; 33 44; 55 66 ] ; 
C = [ A, B] ; % concatanates A and B, the comma is optional

C = [ A; B] ; % appends B to A

A(:) ; % put all elements of A into a vector

A
B
C