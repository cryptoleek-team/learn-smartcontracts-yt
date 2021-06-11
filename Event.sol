// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Event {
      event Log(address sender, string message);

      function transfer() public {
          // xxxxx
          emit Log(msg.sender, "I send 1 ether to you!");
          emit Log(msg.sender, "I send 2 ether to you!");
          emit Log(msg.sender, "I send 3 ether to you!");
      }
}