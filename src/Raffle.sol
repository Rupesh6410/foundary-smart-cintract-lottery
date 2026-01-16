// SPDX-License-Identifier: MIT


// Layout of the contract file:
// version
// imports
// errors
// interfaces, libraries, contract

// Inside Contract:
// Type declarations
// State variables
// Events
// Modifiers
// Functions

// Layout of Functions:
// constructor
// receive function (if exists)
// fallback function (if exists)
// external
// public
// internal
// private
// view & pure functions

pragma solidity ^0.8.18;
/**
 * @title Raffle
 * @author Rupesh
 * @notice This contract is a simple raffle contract
 * @dev This contract is a simple raffle contract
 */


contract Raffle {

    error RAFFLE__NotEnoughEthSent();

    uint256 private immutable i_entranceFee;

    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee;
    }


    function enterRaffle() public payable {
        if (msg.value < i_entranceFee) {
            revert RAFFLE__NotEnoughEthSent();
        }
    }
    function pickWinner() public {
        
    }


    /** GETTERS */

    function entranceFee() external view returns (uint256) {
        return i_entranceFee;
    }
}