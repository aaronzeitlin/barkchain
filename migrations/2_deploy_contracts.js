const BarkChain = artifacts.require('BarkChain');

module.exports = function (deployer) {
  deployer.deploy(BarkChain);
};
