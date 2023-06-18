// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    address public owner;

    constructor() ERC20("Phantom", "PTM") {
        owner = msg.sender;
    }

    function mint(address to, uint256 amount) public {
        require(msg.sender == owner, "Only the owner can mint tokens");
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
