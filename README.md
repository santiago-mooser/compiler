# Source code for c6c compiler

## Usage

To compile, simply run:

```
make
```
This will compile both the modified nas and the c6c compiler.



You can then run the compiler with:

```
./c6c program.sc > program.nas
```

And run code on the nas with this:
```
./nas program.nas
```

## syntax

### Arrays

Only up to 3 dimensions are supported. Arrays are declared as follows:

```
arr a[10];
arr b[10][10] = 0;
arr c[10][10][10];
```

And assigned like this:

```
arr[0] = 1;
arr = 1;    //both expressions are equivalent

arr[1][2][10] = 1;
```


### Functions

function declarations look like this:

```
foo(x, y, z) {
    //code
}
```


While function calls look like this:

```
foo(1, 2, 3);
var1 = foo(1, 2, 3);
```



## Example code

Code to test whether a number is prime:

```
prime (x) {
	if (x<=1) return 0;
	if (x==2) return 1;
	for (i=2; i<x; i=i+1;)
	{
	if ((x/i)*i == x) return 0;
	}
	return 1;
}

puts("Enter a number: ");
geti (x);
puti_(x);
if (prime (x))
	puts(" is a prime");
else
	puts(" is not a prime");
```

Code to calculate the fibonacci sequence:

```
fib(x) {
	if (x == 0 || x == 1) return 1;
	return fib(x-1) + fib(x-2);
}

puts("Fibonacci - Please input a number: ");
geti(x);
puti(fib(x));

```

## Limitations

- Only 1-3 dimensional arrays are supported
- Arrays don't support expressions as indexes