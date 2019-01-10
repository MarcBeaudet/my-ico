var myToken = artifacts.require("./myToken.sol");

module.exports = function(deployer, network, accounts) {
  deployer.deploy(myToken, "TokenYouNeed", "TYN", 8)
}
