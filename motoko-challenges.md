## Motoko Challenges Projects

- Inspiration from [motoko bootcamp 2022](https://github.com/motoko-bootcamp/bootcamp-2022/blob/main/daily_challenges/day_1/GUIDE.MD)


- The [Motoko Programming Language Books]
(https://motoko-book.dev/print.html) contains everything about Motoko, it's really helpful


- The [Motoko docs]
(https://internetcomputer.org/docs/current/motoko/main/getting-started/motoko-introduction) is also a great place


## New project
```sh

	dfx new project_name
	cd project_name
	dfx start
	
	dfx deploy
	
	// Running functions from cli
	dfx canister call <CANISTER_NAME> <METHOD_NAME> '(ARGUMENT)'
	

```



## Function
```mo

actor {

    public func greet(name : Text) : async Text {
        return "Hello, " # name # "!";
    };
};

```

## Running canister from cli
```sh
dfx canister call motoko-challenges-backend greet '("hello world")';
("Hello, hello world!")

```


## Variables
```mo

	// immutables variables (just like constant value cannot change)
	let a = 5;

	// mutables variables (just like any value it can be change using reassignment operator :=)
	var a = 5;
	a := 10;
	
```


## Types

```mo

	let name : Text = 'amtech';

	let age : Nat = 70;

	let admin : Bool = true;

```


## Error

```mo

	// we can't add variable of different type 
	let a : Nat = 20;

	let b : Text = "30";

	let c : Nat = a + b; 

```


## Operations

Nat => Natural numbers : 0,1,2,3 ... ∞

If the result of the subtraction is below 0, your value won't be of type Nat anymore and if your program if expecting a value of type Nat it might trap.

```mo

	let a : Nat = 1 - 2;
	
```	

Trying to deploy this actor would result in a subtraction underflow causing a trap..

💡 A trap is an error that happen during the execution of a program, when a trap happen the execution of the program is stopped and a, error message is returned.

```mo
	// Modulo => %
	// Exponential => **
	// Division => /
	// Multiplication => *
	// Addition => +
	// Subtraction => - 
	// Assignment => =
	// Reassignment => :=
	// Equality => ==
	// Not equal => !=


	// Relational operator
	// >, <, <=, >=

```

## Conditions

```mo

	if(true) {
		// Do this
	} else {
		// Do that
	};

```


## Array

In Motoko, an array is a collection of similar data elements.

```mo

	let array_1 : [Text] = ["Motoko", "is", "a", "great", "language", "."];

	let array_2 : [Nat] = ["05", "07", "2021"];

	// ⛔️ Not valid
	let array_3 = ["This is not correct", 12345];   

```
