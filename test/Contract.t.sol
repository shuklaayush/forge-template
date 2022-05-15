// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";

import {Contract} from "src/Contract.sol";

contract ContractTest is Test {
    Contract c;

    function setUp() public {
        c = new Contract();
    }

    function testFoo() public {
        assertEq(uint256(1), 1);
    }

    function testFuzzFoo(uint256 x) public {
        vm.assume(x < type(uint128).max);
        assertEq(x + x, x * 2);
    }
}
