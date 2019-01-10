var myToken = artifacts.require("./myToken.sol");
var myCrowdsale = artifacts.require("./myCrowdsale.sol")

module.exports = function(deployer, network, accounts) {
  deployer.deploy(myToken, "TokenYouNeed", "TYN", 8).then(() => {
    deployer.deploy(myCrowdsale, 1549756800, 1552176000, 50, 5, 5, "0x54e7f893392a2e88bb3a1eac6fc1e51deeb49eb7",  myToken.address)
  })
}
