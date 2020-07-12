const Web3 = require('web3');
const web = new Web3(new Web3.providers.HttpProvider('http://localhost:8545'));

console.log(web.isConnected());
console.log(web.fromWei(web.eth.getBalance('0x3778fA9b90D1c4973c4030B3eEDfdeAe4fF312f2').toString()));
