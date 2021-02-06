const BarkChain = artifacts.require('./contracts/BarkChain.sol');

contract(BarkChain, (accounts) => {
  it('...should store the name "Nellie" and breed "Cattle Dog".', async () => {
    const barkChainInstance = await BarkChain.deployed();

    // Set values of "Nellie" and "Cattle Dog"
    await barkChainInstance.honorDog('Nellie', 'Cattle Dog');

    // Get stored values
    const storedData = await barkChainInstance.honorDog.call();
    assert.equal(
      storedData,
      { name: 'Nellie', breed: 'Cattle Dog' },
      'The value "Nellie" and "Cattle Dog" was not stored.'
    );
  });
});
