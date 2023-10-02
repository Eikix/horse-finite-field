// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../script/Deploy.s.sol";

contract HorseFieldTest is Test {
    /// @dev Address of the HorseField contract.
    HorseField public horseField;

    /// @dev Setup the testing environment.
    function setUp() public {
        horseField = HorseField(HuffDeployer.deploy("HorseField"));
    }

    /// @dev Ensure that you can set and get the value.
    function testAdd(uint256 value, uint256 other) public {
        HorseField.add(value, other);
        console.log(value);
        assertEq(value, HorseField.getValue());
    }
}
