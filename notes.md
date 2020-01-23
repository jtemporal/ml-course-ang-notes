# Some notes

## Code style

Octave's code style is [available here](https://wiki.octave.org/Octave_style_guide).

## Semicolon

If we use the ; at the end of the line, the result will be supressed, otherwise octave will always show you the result of the commnad you just inputed.

```octave
>> a = 3
a = 3
>> A = [1 2; 3 4; 5 6]
A =

   1   2
   3   4
   5   6
>> A = [1 2;3 4;5 6] ;
>>
```

We also use semicolons to denote the "break line" when assigning a matrix to a variable.

## Vectors

Values on a vector are separated by spaces or commas, same thing with matrices.

```octave
>> v = [1 2 3]
v =

   1   2   3

>>
>> v = [1, 2, 3]
v =

   1   2   3

>>
```

## Saving data

When using the `save` function octave is smart enough to understand what to do with your data, for example if run `save 'identity_mat_4.mat' A;` it will save the matrix A into a binary compressed file. If you want it in an human readble format. set the file name to end in something like `.txt` and use the flag `-ascii`.

## Element-wise operations

We use the `.` to represent element-wise operations.

```octave
>> A = [1 2; 3 4; 5 6];
>> B = [11, 24; 39, 56; 75, 96];
>> A.*B
ans =

    11    48
   117   224
   375   576
>> A.^2
ans =

    1    4
    9   16
   25   36
```

## Plotting

Much like R and Python we can use `subplot ()` and `axis ()` to set the more than one plot to the same figure.

Octave will overwrite the plots you generate unless you tell it to write the second plot on the same figure with the `hold on` command (remember to use close after you finish "holding on") or use the function `figure (<index>)` giving it the index so you can have more than one figure being displayed simultaneously.

## Defining functions

You do that by creating a file with the name of the function you want plus the octav extension `.m`.

The way to define functions is using the protected word `function` followed by the returned variable equals the name of the function folowed by parentesis with the arguments said function should receive. on the next lines should come the function logic.

```octave
% function plusTwo
% it adds two to a received value

function y = plusTwo(x)

y = x+2;
```

## Chaining commands

There's a way to run a lot of commands on the same time and also printing it's results by using comma chaining.

```octave
>> a = 1, b = 2, c = 3
a = 1
b = 2
c = 3
```

This is different than have each command followed by `;` since that won't print anything out.

## Identation

Octave doesn't care about identation, but you should use 2 space to improve readbility.


```octave
>> v = zeros (10,1);
>> for i = 1:10,
>    v(i) = 2^i;
>  end;
>> v
v =

      2
      4
      8
     16
     32
     64
    128
    256
    512
   1024

>> i = 1;
>> while i <= 5,
>    v(i) = 100;
>    i = i+1;
>  end;
>> v
v =

    100
    100
    100
    100
    100
     64
    128
    256
    512
   1024

>>
```
