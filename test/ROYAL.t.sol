// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/ROYAL.sol";

contract ROYALTest is Test {
    ROYAL public royal;
    address public deployer = address(0x123);

    function setUp() public {
        vm.prank(deployer);
        royal = new ROYAL(1000000); // Mint 1,000,000 ROYAL tokens
    }

    function testInitialSupply() public view {
        assertEq(royal.balanceOf(deployer), 1000000 * 10 ** 18);
    }
}
