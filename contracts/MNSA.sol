// contracts/MNSA.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract MNSA is ERC1155 {
    uint256 public constant TILL = 0;
    uint256 public constant TACKS = 1;
    uint256 public constant DRESS = 2;
    
    constructor() public ERC1155("https://raw.githubusercontent.com/crmitchelmore/mnsa-nft/main/item/{id}.json") {
        _mint(msg.sender, DRESS, 10**4, "");
        _mint(msg.sender, TACKS, 10**27, "");
        _mint(msg.sender, TILL, 1, "");
    }
}