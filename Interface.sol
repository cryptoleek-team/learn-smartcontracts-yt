// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Counter {
    uint public count;

    function increment() external {
        count ++;
    }
}

interface ICounter {
    function increment() external;
}

contract MyContract {

    function incrementCounter(address _counter) external {
        ICounter(_counter).increment();
    }
}