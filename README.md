# CustomToken Smart Contract

This is a Solidity smart contract that implements a custom ERC-20 token with minting, transferring, and burning functionalities.

## Description

This project demonstrates the use of Solidity to create a custom ERC-20 token using OpenZeppelin libraries. The contract includes functions for minting new tokens, transferring tokens, and burning tokens. It leverages OpenZeppelin's ERC20, Ownable, and ERC20Burnable contracts to provide these features securely and efficiently.

## Libraries Used

- OpenZeppelin ERC20: Standard ERC-20 token implementation.<br/>
- OpenZeppelin Ownable: Adds ownership control to the contract.<br/>
- OpenZeppelin ERC20Burnable: Extends ERC-20 to include burnable token functionality.<br/>

## 'createTokens' Function

- It Allows the owner to mint new tokens.<br/>
- Parameters:
1. recipient (address): The address that will receive the new tokens.<br/>
2. amount (uint256): The number of tokens to mint.<br/>
- Modifiers: 'onlyOwner' ensures that only the contract owner can call this function.<br/>

## 'sendTokens' Function

- It Allows the transfer of tokens from the sender to a specified recipient.<br/>
- Parameters:
1. recipient (address): The address that will receive the tokens.<br/>
2. amount (uint256): The number of tokens to transfer.<br/>
- Returns: A boolean value indicating the success of the transfer.<br/>

## 'destroyTokens' Function

- It Allows the token holder to burn a specified amount of their tokens, reducing the total supply.<br/>
- Parameters:
1. amount (uint256): The number of tokens to burn.<br/>

**Video Tutorial -**

For more details on how to deploy and interact with this contract, refer to the accompanying video tutorial:



