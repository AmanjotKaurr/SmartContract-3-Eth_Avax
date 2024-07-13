// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract CustomToken is ERC20, Ownable, ERC20Burnable {
    constructor() ERC20("MyCustomToken", "MCT") Ownable(msg.sender) {}

    function createTokens(address recipient, uint256 amount) public onlyOwner {
        _mint(recipient, amount);
    }

    function sendTokens(address recipient, uint256 amount) public returns (bool) {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }

    function destroyTokens(uint256 amount) public {
        _burn(_msgSender(), amount);
    }
}
