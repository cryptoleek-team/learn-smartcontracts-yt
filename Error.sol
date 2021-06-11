// SPDX-License-Identifier: MIT

// require
// assert
// revert

pragma solidity ^0.8.4;

contract Error {
    int public balance;

    function deposit(int _amount) public {
        //require(_amount > 0, "Deposited amount must be greater than zero");
        int oldBalance = balance;
        balance += _amount;
        if (balance < oldBalance) {
            revert("Impossible!");
        }
    }
}