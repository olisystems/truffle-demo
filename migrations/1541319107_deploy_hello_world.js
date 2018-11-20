
const HelloWorld = artifacts.require('HelloWorld');

module.exports = async (deployer) => {
  // Use deployer to state migration tasks.
  await deployer.deploy(HelloWorld);
  const instance = await HelloWorld.address;
  console.log (instance);

};
