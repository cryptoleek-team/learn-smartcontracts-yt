// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Mapping {
    event LOG(address, uint);

    mapping(address => uint) public myMap;
    address[] public myMappingAddr;

    function setMapping(address _myAddr, uint _number) public {
        myMap[_myAddr] = _number;
        myMappingAddr.push(_myAddr);
    }

    function getMapping(address _myAddr) public view returns (uint) {
        return myMap[_myAddr];
    }

    function deleteMapping(address _myAddr) public {
        delete myMap[_myAddr];
    }

    function getTotal() public view returns (uint) {
        require(myMappingAddr.length > 0, "The mapping has no values!");

        uint sum = 0;
        for (uint i = 0; i < myMappingAddr.length; i++) {
            address key = myMappingAddr[i];
            uint value = myMap[key];
            sum += value;
        }

        return sum;
    }

    function test () public {
        setMapping(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 10);
        setMapping(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2, 20);
        setMapping(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db, 30);

        uint sum = getTotal();

        assert(sum == 60);
    }

}