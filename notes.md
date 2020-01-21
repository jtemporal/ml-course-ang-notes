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
