// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // Public variables to store the details about the coin
    string public tokName = "Tackle28";
    string public abbreviation = "TKL";
    uint256 public totalSupply;

    // Mapping of addresses to balances
    mapping(address => uint256) public balances;

    // Mint function to create new tokens
    function mint(address address12, uint256 Balance) public {
        totalSupply += Balance;
        balances[address12] += Balance;
    }

    // Burn function to destroy tokens
   function burn(address address12, uint256 Balance) public {
    if (balances[address12] >= Balance) {
        totalSupply -= Balance;
        balances[address12] -= Balance;
    } else {
        revert("Not enough token to burn");
    }
   }
}