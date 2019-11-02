# Introductions 

This is a  hyperledger fabric  stress  test  with custom Hyperledger caliper.

## Framework
- caliper framework
![pic1](https://hyperledger.github.io/caliper/assets/img/architecture.png)

## Usage

 ### Prepare

 - node-gyp, python2, make, g++ and git
 - node  version 8.16.2
 - npm  version 6.4.1

 ### dependencies 
- fabric
```bash
user@ubuntu:~/caliper-benchmarks$ npm init -y
user@ubuntu:~/caliper-benchmarks$ npm install --only=prod @hyperledger/caliper-cli
user@ubuntu:~/caliper-benchmarks$ npx caliper bind --caliper-bind-sut fabric --caliper-bind-sdk 1.4.0
```
### run testsuites

```bash
user@ubuntu:~/caliper-benchmarks$ npx caliper benchmark run --caliper-workspace . --caliper-benchconfig benchmarks/scenario/simple/config.yaml --caliper-networkconfig networks/fabric/fabric-v1.4/2org1peergoleveldb/fabric-go.yaml
```

