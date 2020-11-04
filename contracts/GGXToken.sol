// SPDX: MIT-License
pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// GGXToken Smart Contract Inherrit from @openzeppelin/contracts/token/ERC20/ERC20.sol
contract GGXToken  is ERC20("GGXToken", "GGX"), Ownable {
    /// @notice Creates `_amount` token to `_to`. Must only be called by the owner (MasterChef).
    function mint(address _to, uint256 _amount) public onlyOwner {
        _mint(_to, _amount);
    }
}