// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title IBankModule
 * @dev Interface for Injective's Bank precompile
 * This is your gateway to the native bank module
 */
interface IBankModule {
    /// @notice Mint new tokens to an account
    function mint(address account, uint256 amount) external payable returns (bool);

    /// @notice Get the balance of an account for a specific token
    function balanceOf(address token, address account) external view returns (uint256);

    /// @notice Burn tokens from an account
    function burn(address account, uint256 amount) external payable returns (bool);

    /// @notice Transfer tokens from one account to another
    function transfer(address from, address to, uint256 amount) external payable returns (bool);

    /// @notice Get the total supply of a token
    function totalSupply(address token) external view returns (uint256);

    /// @notice Get token metadata
    function metadata(address token) external view returns (string memory name, string memory symbol, uint8 decimals);

    /// @notice Set token metadata
    function setMetadata(string memory name, string memory symbol, uint8 decimals) external payable returns (bool);
}
