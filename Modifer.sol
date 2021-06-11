// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Modifer {

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(owner == msg.sender, "Not Owner");
        _;
    }

    function onlyCallByOwner() public onlyOwner pure returns (bool) {
        return true;
    }

    function adminOperation() onlyOwner {

    }

    function withdraw() onlyOwner {

    }
}
