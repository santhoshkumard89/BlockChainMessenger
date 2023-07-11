
const Messenger = artifacts.require("messenger");

module.exports = function(deployer, network, accounts){
    console.log(network, accounts);
    deployer.deploy(Messenger, {
        // parameters if any
        from: accounts[0],
        replace: true,
    });
}