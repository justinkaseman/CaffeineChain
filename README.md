## CaffeineChain

Coffee supply chain - verifying quality from the farm to you.

`v1.0.0` [deployed Apr-15-2020 02:02:29 AM +UTC](https://rinkeby.etherscan.io/tx/0x24b458ca5eebbb90fda4d5e6d0284a8bb69b66bc431000c8d421674bf19ff196)

Contract address: [0xaf1ae181dc75d5c0E1e6ce5F7D77029C511D92B4](https://rinkeby.etherscan.io/address/0xaf1ae181dc75d5c0E1e6ce5F7D77029C511D92B4)

## Dependencies

- [Ethereum](https://www.ethereum.org/) - `solc v0.6.4` - Ethereum is a decentralized platform that runs smart contracts
- [Truffle Framework](http://truffleframework.com/) - `v5.1.20` - Truffle is the most popular development framework for Ethereum with a mission to make your life a whole lot easier.
- [web3](https://github.com/ethereum/web3.js/) - `v1.2.6` - a collection of libraries which allow you to interact with a local or remote ethereum node.
- [Node](https://nodejs.org/en/about/) - `v10.16.0` - a JavaScript runtime environment that executes JavaScript code outside of a web browser.

## Getting Started Locally

1. Run `npm install` in the project directory
2. Run `ganache-cli -m "apple elevator enjoy audit little market slam siren rookie slide alone great"` to start a local blockchain server.
3. Open a new terminal and run `truffle compile`
4. Run `truffle migrate`

## Deployment

1. Create the file `.env` at the project root and add the following variables:

```
MNENOMIC="your mnenomic here"
INFURA_KEY="yourkeyhere"
```

2. Change `truffle.js` to configure networks for where you will be deploying (Rinkeby is already setup as an example)
3. Use the command `truffle migrate --network [name of network]` to deploy

## Architecture

[Activity Diagram](./assets/activity.png)

[Sequence Diagram](./assets/sequence.png)

[State Diagram](./assets/state.png)

[Class Diagram](./assets/class.png)

## Testing

```
truffle test
```
