pragma solidity ^0.4.22;


contract HelloWorld {

  address private creator;
  address private lastCaller;
  string private message;
  uint private totalGas;

  // constructor
  constructor() {
    creator = tx.origin;
    totalGas = tx.gasprice;
    message = 'hello world';
  }

  // getter functions
  function getMessage() constant returns (string) {
    return message;
  }

  function getLastCaller() constant returns (address) {
    return lastCaller;
  }

  function getCreator() constant returns (address) {
    return creator;
  }

  function getTotalGas() constant returns (uint) {
    return totalGas;
  }

  // setter function
  function setMessage(string newMessage) {
    message = newMessage;
    lastCaller = tx.origin;
    totalGas = tx.gasprice;
  }

}
