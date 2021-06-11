// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;


import "./myLibs/Car.sol";

contract CarFactory2 {
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


import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
contract MyToken is ERC20 {
    // constructor() ERC20("cryptoleek.finance", "LEEK") {

    // }

    constructor(string memory name, string memory symbol) ERC20(name, symbol) {

    }

    function decimals() public pure override returns (uint8) {
        return 9;
    }
}