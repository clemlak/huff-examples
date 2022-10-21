// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract SetGetTest is Test {
    /// @dev Address of the SetGet contract.
    SetGet public setGet;

    /// @dev Setup the testing environment.
    function setUp() public {
        setGet = SetGet(HuffDeployer.deploy("SetGet"));
    }

    /// @dev Ensure that you can set and get the value.
    function testSetAndGetValue(uint256 value) public {
        setGet.set(value);
        console.log(value);
        console.log(setGet.get());
        assertEq(value, setGet.get());
    }
}

interface SetGet {
    function set(uint256) external;
    function get() external returns (uint256);
}
