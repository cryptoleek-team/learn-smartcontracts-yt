// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Fallback {
    event Log(uint gas);


    fallback() external payable {
        emit Log(gasleft());
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}

contract SendEther {

    function send(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    function call(address payable _to) public payable {
        (bool sent,) = _to.call{value:msg.value}("hello world!");
        require(sent);
    }
}