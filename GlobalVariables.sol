// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract GlobalVariables {
    event LOG(address, uint);

    function getGasInfo() public view returns (uint, uint) {
        return (tx.gasprice, block.gaslimit);
    }

    function getBlockInfo() public view returns (uint, address, uint, uint, uint, uint) {
        return (block.chainid, // current chain id
                block.coinbase, // current block miner’s address
                block.difficulty, // (uint): current block difficulty
                block.gaslimit, // (uint): current block gaslimit
                block.number, // (uint): current block number
                block.timestamp); // (uint)
    }

    function getMessageInfo() public payable {
        emit LOG(msg.sender, msg.value);
    }
}