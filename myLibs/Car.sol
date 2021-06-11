// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Car {
    string public model;
    address public owner;
    uint public cost;

    constructor(string memory _model, address _owner) payable {
        model = _model;
        owner = _owner;
        cost = msg.value;
    }
}