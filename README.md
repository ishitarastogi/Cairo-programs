
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

1. <a href="https://github.com/ishitarastogi/Cairo-programs/blob/main/cairo-exercise/src/print.cairo">Print program </a>
- Use of output_ptr <a href="https://www.cairo-lang.org/docs/how_cairo_works/builtins.html#introduction">builtins</a> and <a href="https://www.cairo-lang.org/docs/how_cairo_works/builtins.html#implicit-arguments">implicit arguments</a>
