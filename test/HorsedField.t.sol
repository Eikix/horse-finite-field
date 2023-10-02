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

    function testAdd(uint64 value, uint64 other) public {
        // This is to make sure we have Field Elements between 0 and the Prime
        // There are many cleaner ways (if I have time I'll look into parametrized fuzzing)
        uint64 value = value % horseField.FFGetPrime();
        uint64 other = other % horseField.FFGetPrime();

        uint64 sum = horseField.FFAdd(value, other);
        console.log(sum);
        assertEq(sum, (value + other) % horseField.FFGetPrime());
    }

    function testSub(uint64 value, uint64 other) public {
        // This is to make sure we have Field Elements between 0 and the Prime
        // There are many cleaner ways (if I have time I'll look into parametrized fuzzing)
        uint64 value = value % horseField.FFGetPrime();
        uint64 other = other % horseField.FFGetPrime();

        uint64 sub = horseField.FFSub(value, other);
        console.log(sub);
        if (value >= other) {
            assertEq(sub, (value - other) % horseField.FFGetPrime());
        } else {
            assertEq(sub, horseField.FFGetPrime() - (other - value));
        }
    }

    function testNeg(uint64 value) public {
        // This is to make sure we have Field Elements between 0 and the Prime
        // There are many cleaner ways (if I have time I'll look into parametrized fuzzing)
        uint64 value = value % horseField.FFGetPrime();

        uint64 neg = horseField.FFNeg(value);
        console.log(neg);
        assertEq(neg, horseField.FFGetPrime() - value);
    }

    function testMul(uint64 value, uint64 other) public {
        // This is to make sure we have Field Elements between 0 and the Prime
        // There are many cleaner ways (if I have time I'll look into parametrized fuzzing)
        uint64 value = value % horseField.FFGetPrime();
        uint64 other = other % horseField.FFGetPrime();

        uint64 mul = horseField.FFMul(value, other);
        console.log(mul);
        assertEq(mul, (value * other) % horseField.FFGetPrime());
    }

    function testPow(uint64 value, uint64 other) public {
        // This is to make sure we have Field Elements between 0 and the Prime
        // There are many cleaner ways (if I have time I'll look into parametrized fuzzing)
        uint64 value = value % horseField.FFGetPrime();
        uint64 other = other % horseField.FFGetPrime();

        uint64 pow = horseField.FFPow(value, other);
        console.log(pow);
        assertEq(pow, (value ** other) % horseField.FFGetPrime());
    }

    function testInverse(uint64 value) public {
        // This is to make sure we have Field Elements between 0 and the Prime
        // There are many cleaner ways (if I have time I'll look into parametrized fuzzing)
        uint64 value = value % horseField.FFGetPrime();

        uint64 inverse = horseField.FFInverse(value);
        console.log(inverse);
        assertEq(inverse, value ** (horseField.FFGetPrime() - 2));
    }

    function testDiv(uint64 value, uint64 other) public {
        // This is to make sure we have Field Elements between 0 and the Prime
        // There are many cleaner ways (if I have time I'll look into parametrized fuzzing)
        uint64 value = value % horseField.FFGetPrime();
        uint64 other = other % horseField.FFGetPrime();

        uint64 div = horseField.FFDiv(value, other);
        console.log(div);
        assertEq(div, (value / other) % horseField.FFGetPrime());
    }
}
