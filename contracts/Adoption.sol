// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract Adoption {
  address[16] public adopters;

  function getAdopters() public view returns(address[16] memory) {
    return adopters;
  }

  function adopt(uint petId) public returns (uint){
    require(petId >= 0 && petId <=15);
    adopters[petId] = msg.sender;
    return petId;
  }
}
