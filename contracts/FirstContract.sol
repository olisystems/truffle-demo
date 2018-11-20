pragma solidity ^0.4.22;

contract FirstContract {
  string name = 'Oli Systems';

  function getName() public view returns (string) {
    returns (name);
  }

  function changeName(string _name) public {
    name = _name;
  }
}
