// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    // Invariant: Property of our system that should ALWAYS hold
    uint256 public shouldAlwaysBeZero = 0;
    uint256 private hiddenValue = 0;

    // Bad Code
    // First: shouldAlwaysBeZero should not be mutated
    // Second: even if data != 2, if data == 7, next time the func is called, it will change the shouldAlwaysBeZero
    // To make the tests pass, comment out the two if blocks
    function doStuff(uint256 data) public {
        // Can be detected using stateless fuzz test
        if (data == 2) {
            // breaks invariant
            shouldAlwaysBeZero = 1;
        }

        // Can be detected using stateful fuzz test
        if (hiddenValue == 7) {
            shouldAlwaysBeZero = 1;
        }

        hiddenValue = data;
    }
}
