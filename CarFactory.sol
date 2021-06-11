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

contract CarFactory {
    Car[] public cars;

    // function create(string memory _model) public {
    //     Car car = new Car(_model, address(this));
    //     cars.push(car);
    // }

    // 0x447Ec763df0A9806e33130d9695a5c0a5DAe9e76
    // 0x978a01431F9bF1d7750DE1b0b0Bd48445E8184F1

    function createWithMoney(string memory _model) public payable {

        require(msg.value >= 1 ether, "Not enough money");

        Car car = new Car{value: msg.value}(_model, address(this));
        cars.push(car);
    }
}