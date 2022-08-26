# Cairo-programs

# Setting up the Environment using Protostar

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
