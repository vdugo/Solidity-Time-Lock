# Solidity Time Lock

## About

- A time lock contract is commonly used in DeFi and DAOs. The purpose is to delay a transaction.
- An example is the users of a governance contract making sure that the transaction about to be executed is not dangerous.

## Technology Stack & Tools

- Solidity (Writing Smart Contract)
- Javascript (Testing)
- [Ethers](https://docs.ethers.io/v5/) (Blockchain Interaction)
- [Hardhat](https://hardhat.org/) (Development Framework)

## Requirements For Initial Setup
- Install [NodeJS](https://nodejs.org/en/), should work with any node version below 16.5.0
- Install [Hardhat](https://hardhat.org/)

## Setting Up
### 1. Clone/Download the Repository

### 2. Install Dependencies:
```
$ cd Solidity-Time-Lock
$ npm install 
```

### 3. Compile Contracts
`$ npx hardhat compile`

### 4. Run Tests
`$ npx hardhat test`