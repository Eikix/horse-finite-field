// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Script.sol";

interface HorseField {
    function add(uint64, uint64) public view;

    function sub(uint64, uint64) public view;

    function mul(uint64, uint64) public view;

    function neg(uint64) public view;

    function inverse(uint64) public view;

    function pow(uint64, uint64) public view;

    function div(uint64, uint64) public view;
}

contract Deploy is Script {
    function run() public returns (HorseField horseField) {
        horseField = HorseField(HuffDeployer.deploy("HorseField"));
    }
}
