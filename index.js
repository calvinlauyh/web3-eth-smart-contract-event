const Web3 = require("web3");

const web3Address = process.env.WEB3_ADDRESS;
const address = "0xce49efab0d3212fb2c5b9802fb731ba602b7a5e8";

const web3 = new Web3(new Web3.providers.HttpProvider(web3Address));
web3.eth.getPastLogs({
  fromBlock: web3.utils.toHex(0),
  toBlock: "latest",
  address: address.toLowerCase(),
  topics: [web3.utils.keccak256("MessageConsumed(address,uint256)")]
}).then(console.log);
