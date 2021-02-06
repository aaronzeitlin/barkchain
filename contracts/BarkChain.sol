// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <=0.7.4;

contract BarkChain {
    // Struct: Dog
    struct Dog {
        string name;
        string breed;
        address human;
    }

    // Mapping: Humans take care of their dogs
    mapping(address => Dog) public humans;

    // Events: A dog was honored
    event DogHonored(string name, string breed, address human);

    // Declare a dynamic array of all dogs
    Dog[] public dogs;

    // Function: Add a new dog to the dogs array.
    function _honorDog(
        string memory _dogName,
        string memory _dogBreed,
        address _dogHuman
    ) private {
        dogs.push(Dog(_dogName, _dogBreed, _dogHuman));
        emit DogHonored(_dogName, _dogBreed, _dogHuman);
    }

    // Function: Honor a dog
    function honorDog(string memory _dogName, string memory _dogBreed) public {
        _honorDog(_dogName, _dogBreed, msg.sender);
    }
}
