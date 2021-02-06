// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.4;

contract BarkChain {
    // Events
    event dogHonored(address honoredBy, uint256 amount); // Event

    // Structs
    struct Dog {
        string dogName;
        string dogBreed;
        string honoredDate;
        address honoredBy;
    }

    // Functions

    // Honor a Dog
    function honorDog() private {
        // Emit 'Dog Honored'
        emit dogHonored(msg.sender, msg.value);
    }

    // View an honored Dog
    function viewDog() public {}
}
