// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Script.sol";

interface HorseField {
    function FFAdd(uint64, uint64) external view returns (uint64);

    function FFSub(uint64, uint64) external view returns (uint64);

    function FFMul(uint64, uint64) external view returns (uint64);

    function FFNeg(uint64) external view returns (uint64);

    function FFInverse(uint64) external view returns (uint64);

    function FFPow(uint64, uint64) external view returns (uint64);

    function FFDiv(uint64, uint64) external view returns (uint64);

    function FFGetPrime() external view returns (uint64);
}

contract Deploy is Script {
    function run() public returns (HorseField horseField) {
        horseField = HorseField(HuffDeployer.deploy("HorseField"));
    }
}
