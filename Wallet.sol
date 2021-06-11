// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Wallet {
    address payable public owner;

    event Deposit(address sender, uint amount, uint balance);
    event Withdraw(uint amount, uint balance);
    event Transfer(address to, uint amount, uint balance);

    modifier onlyOwner() {
        require (msg.sender == owner, "Not Owner");
        _;
    }

    constructor() payable {
        owner = payable(msg.sender);
    }

    function deposit() public payable {
        emit Deposit(msg.sender, msg.value, address(this).balance);
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function withdraw(uint amount) public onlyOwner {
        payable(msg.sender).transfer(amount);
        emit Withdraw(amount, address(this).balance);
    }

    function transferTo(address payable _to, uint amount) public onlyOwner {
        _to.transfer(amount);
        emit Transfer(_to, amount, address(this).balance);
    }
}