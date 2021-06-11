// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

library StringUtils {

    function equal(string memory a, string memory b) internal pure returns (bool) {
        return keccak256(abi.encode(a)) == keccak256(abi.encode(b));
    }

    function concat(string memory a, string memory b) internal pure returns (string memory) {
        return string(abi.encodePacked(a, b));
    }

    function length(string memory str) internal pure returns (uint) {
        return bytes(str).length;
    }
}

contract StringUtilsTest {
    using StringUtils for string;

    function testEqual(string memory a, string memory b) public pure returns (bool) {
        return a.equal(b);
    }

    function testConcat(string memory a, string memory b) public pure returns (string memory) {
        return a.concat(b);
    }

    function testLength(string memory str) public pure returns (uint) {
        return str.length();
    }
}