// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract CryptoLeekNFT is ERC721URIStorage {
  uint public counter;

  constructor() ERC721("CryptoLeekNFT", "CLN") {
    counter = 0;
  }

  function createNFTs (string memory tokenURI) public returns (uint) {
    uint tokenId = counter;

    _safeMint(msg.sender, tokenId);
    _setTokenURI(tokenId, tokenURI);

    counter ++;

    return tokenId;
  }

  function burn(uint tokenId) public virtual {
    require(_isApprovedOrOwner(msg.sender, tokenId), "You are not the owner or not approved@");
    super._burn(tokenId);
  }
}