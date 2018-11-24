pragma solidity ^0.4.24;

contract Adoption {
    address[16] public adopters;

    // Adopt a pet given its id, where id is in the range 0..15
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId < 16, "petId is between 0 and 15 inclusive");
        adopters[petId] = msg.sender;
        return petId;
    }

    function getAdopters() public view returns (address[16]) {
        return adopters;
    }

}