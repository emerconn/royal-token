// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract ROYAL is ERC20 {
    constructor(uint256 initialSupply) ERC20("ROYAL", "ROYAL") {
        _mint(msg.sender, initialSupply * 10 ** decimals());
    }
}
