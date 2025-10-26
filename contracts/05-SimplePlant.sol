// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract SimplePlant {
    string public plantName;
    uint256 public waterLevel;
    bool public isAlive;
    address public owner;
    uint256 public plantedTime; 

    // TODO 2: Buat constructor
    constructor() {
        plantName = "Rose";
        waterLevel = 0;
        isAlive = true;
        owner = msg.sender;
        plantedTime = block.timestamp;
    }

    // TODO 3: Buat fungsi water()
    function water() public {
        waterLevel = 100;
    }

    function getAge() public view returns (uint256) {
        return block.timestamp - plantedTime;
    }
}