## Motoko Challenges Projects

Inspiration from [motoko bootcamp 2022](https://github.com/motoko-bootcamp/bootcamp-2022/blob/main/daily_challenges/day_1/GUIDE.MD)


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
```sh

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
```sh

	// immutables variables (just like constant value cannot change)
	let a = 5;

	// mutables variables (just like any value it can be change using reassignment operator :=)
	var a = 5;
	a := 10;
	
```



