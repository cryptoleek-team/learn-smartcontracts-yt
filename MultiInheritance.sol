// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract A {

    string public name;
    string public name2;

    constructor(string memory _name, string memory _name2) {
        name = _name;
        name = _name2;
    }

    function getContractName() public view virtual returns (string memory) {
        return name;
    }
}

contract B {
    string public helloworld;

    constructor(string memory _helloworld) {
        helloworld = _helloworld;
    }

    function getHelloworld() public view virtual returns (string memory) {
        return helloworld;
    }
}

contract C is A("A1", "A2"), B("HelloWorld") {

}

contract D is A, B {
    // constructor() A("A1", "A2") B("HelloWorld") {

    // }
    constructor(string memory _name, string memory _helloworld) A(_name, _helloworld) B(_helloworld) {

    }
}