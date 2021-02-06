// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <=0.7.4;

contract BarkChain {
    // A (good) dog
    struct Dog {
        string dogName;
        string dogBreed;
        address dogHuman;
    }
    // Event: A (good) dog has been honored!
    event DogHonored(uint256 dogId, string dogName, string dogBreed);

    // All dogs (are good dogs)
    Dog[] public dogs;

    // Function: Honor a (good) dog
    function _honorDog(
        string memory _dogName,
        string memory _dogBreed,
        address _dogHuman
    ) private {
        // Add new dog to dogs
        dogs.push(Dog(_dogName, _dogBreed, _dogHuman));
    }

    function honorDog(string memory _dogName, string memory _dogBreed) public {
        _honorDog(_dogName, _dogBreed, msg.sender);
    }
}
