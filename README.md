# Setting up the Environment using <a href="https://docs.swmansion.com/protostar/">Protostar</a>

### Installation

```
curl -L https://raw.githubusercontent.com/software-mansion/protostar/master/install.sh | bash
```

### Project initialization

```
protostar init
```

### Project compilation

- Specify contracts and their files in protostar.toml.

```
protostar build
```

### Project Deployment

```
protostar declare ./build/main.json --network alpha-goerli
```

 <hr></hr>
 
# Cairo programs

1. <a href="https://github.com/ishitarastogi/Cairo-programs/blob/main/cairo-exercise/src/print.cairo">Print program </a></br>
   In this program we will learn,</br>

- Use of output_ptr <a href="https://www.cairo-lang.org/docs/how_cairo_works/builtins.html#introduction">builtins</a> and <a href="https://www.cairo-lang.org/docs/how_cairo_works/builtins.html#implicit-arguments">implicit arguments</a>

2. <a href="https://github.com/ishitarastogi/Cairo-programs/blob/main/cairo-exercise/src/variable.cairo">Variable Program </a></br>
   In this program we will learn,</br>

- Diff bw **let** , **tempvar** and **local** variables

a) const used for constants, can not be re-assigned.
local used for local variables. Can not be re-assigned and requires adding alloc_locals to the function.
tempvar used for temporary variables. They can be re-assigned.
let used to create alias by value or by reference to other variables. Can be re-assigned.

3. <a href="https://github.com/ishitarastogi/Cairo-programs/blob/main/cairo-exercise/src/constructors.cairo">constructors Program </a></br>
   In this program we will learn,</br>

- Using constructor and deployment by passing arguments

```
protostar deploy ./build/main.json --inputs 123 200 --network alpha-goerli
```

4. <a href="https://github.com/ishitarastogi/Cairo-programs/blob/main/cairo-exercise/src/revoke-reference.cairo">Revoked references Program </a></br>
   In this program we will learn,</br>

- The scope of some types of references in Cairo (e.g., return values of functions and temporary variables) is somewhat restricted.

- a call to another function may revoke those references.
