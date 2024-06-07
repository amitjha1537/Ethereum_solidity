# Token Minting and Burning Contract
This Solidity program showcases a straightforward implementation of a token contract that enables token minting and burning functionalities while maintaining accurate records of the total supply and individual balances. It includes safeguards to prevent burning more tokens than are available in an address's balance.


## Description

The "MyToken" contract is a fundamental implementation demonstrating token minting and burning functionalities, essential for creating and managing custom tokens within the Ethereum ecosystem. Let's delve into its components:

Token Details: The contract defines public variables to store essential details about the token, such as its name ("Tackle28"), abbreviation ("TKL"), and the total supply of tokens in circulation.

Address-Balance Mapping: Utilizing a mapping data structure, the contract maintains a record of token balances associated with Ethereum addresses. This mapping allows efficient lookup and manipulation of token balances for individual addresses.

Token Minting: The mint function enables the creation of new tokens by increasing the total supply and updating the balance of a specified address. This function provides flexibility for token issuance, allowing designated addresses to mint tokens as needed.

Token Burning: Conversely, the burn function facilitates the destruction of tokens, reducing the total supply and adjusting the balance of the specified address accordingly. This feature ensures the ability to remove tokens from circulation when necessary, enhancing token management capabilities.

Usage Overview:

The "MyToken" contract serves as a foundational building block for tokenization projects on the Ethereum blockchain. Developers can deploy this contract in their development environments to:

Create Custom Tokens: Customize token parameters such as name, abbreviation, and initial supply to create unique tokens tailored to specific use cases.

Manage Token Supply: Utilize the mint function to increase the token supply as needed, facilitating distribution or reward mechanisms within decentralized applications (dApps).

Implement Token Economy: Integrate token burning functionality through the burn function to control the token supply and introduce scarcity, fostering economic incentives and token value appreciation.

Tokenize Assets: Utilize the contract as a basis for tokenizing real-world assets, digital collectibles, or in-game assets, enabling fractional ownership and enhanced liquidity on the blockchain.

Overall, the "MyToken" contract provides a versatile framework for token creation and management, empowering developers to leverage blockchain technology for various tokenization use cases and decentralized applications.

## Getting Started

### Executing program

* To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.
* Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension.
*  Copy and paste the following code into the file:
  
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

### Executing program

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Assesment2.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MYTOKEN" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with burn, mint, Abbr, Name, totalSupply, balances function. Click on the "Name" contract in the left-hand sidebar we will be able to see the name of the token i.e."Tackle28". Then you can click on "Abbreviaton", you will be able to see Abbrebiation of the token i.e. "TKL".

After that we can mint by coping the account address and pasting it in the mint function then adding the amount to it followed by clicking on the "trancast" button. You will now be able to see in the "totalSupply" the amount you have minted.

Similarly you can burn the amount but if you try to burn greater amount than the totalSupply then you will get an error message "Not enough token to burn"


## Authors
Amit Kumar Jha
mailId: amitjhaaj214@gmail.com


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
