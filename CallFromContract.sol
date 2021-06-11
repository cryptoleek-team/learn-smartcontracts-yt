// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract ContractA {
    uint public x;
    uint public value;

    function setX(uint _x) public returns (uint) {
        x = _x;
        return x;
    }

    function setXandSendEther(uint _x) public payable returns (uint, uint) {
        x = _x;
        value = msg.value;
        return (x, value);
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}

// ContractB -> ContractA
contract ContractB {

    function callSetX(ContractA _contractA, uint _x) public {
        _contractA.setX(_x);
    }

    function callSetXFromAddress(address _contractAAddres, uint _x) public {
        ContractA _contractA = ContractA(_contractAAddres);
        _contractA.setX(_x);
    }

    function callSetXandSendEther(ContractA _contractA, uint _x) public payable {
        _contractA.setXandSendEther{value: msg.value}(_x);
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}