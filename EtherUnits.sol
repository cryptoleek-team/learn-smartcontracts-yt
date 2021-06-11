// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract EtherUnits {
    uint public oneWei = 1 wei;
    uint public oneGwei = 1 gwei; // 1 * 10 ** 9
    uint public oneEther = 1 ether;

    function testOneWei() public view returns(bool) {
        return oneWei == 1;
    }

    function testOneGwei() public view returns(bool) {
        return oneGwei == 1 * 10 ** 9 wei;
    }

    function testOneEther() public view returns(bool) {
        return oneEther == 1 * 10 ** 18 wei;
    }
}