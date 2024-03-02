// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {MyContract} from "../src/MyContract.sol";
import {Test} from "forge-std/Test.sol";
import {StdInvariant} from "forge-std/StdInvariant.sol";

contract MyContractTest is StdInvariant, Test {
    MyContract exampleContract;

    function setUp() public {
        exampleContract = new MyContract();
        targetContract(address(exampleContract));
    }

    // test invariant using invariant_ prefix
    function invariant_testAlwaysIsZero() public view {
        assert(exampleContract.shouldAlwaysBeZero() == 0);
    }

    function testIAlwaysGetZeroUnit() public {
        uint256 data = 0;
        exampleContract.doStuff(data);
        assert(exampleContract.shouldAlwaysBeZero() == 0);
    }

    // Only detects the first error
    function testIAlwaysGetZeroFuzz(uint256 data) public {
        exampleContract.doStuff(data);
        assert(exampleContract.shouldAlwaysBeZero() == 0);
    }

    // Detects the second error
    // Limited use case as most of the functions get complicated really quickly
    function testIAlwaysGetZeroStateful() public {
        uint256 data = 7;
        exampleContract.doStuff(data);
        assert(exampleContract.shouldAlwaysBeZero() == 0);

        // Run func the second time
        data = 0;
        exampleContract.doStuff(data);
        assert(exampleContract.shouldAlwaysBeZero() == 0);
    }
}
