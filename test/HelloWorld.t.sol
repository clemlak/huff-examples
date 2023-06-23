// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract HelloWorldTest is Test {
    HelloWorld public helloWorld;

    function setUp() public {
        helloWorld = HelloWorld(HuffDeployer.deploy("HelloWorld"));
    }

    function testHelloWorld() public {
        string memory b = helloWorld.helloWorld();
        assertEq("Hello, World!", b);
    }
}

interface HelloWorld {
    function helloWorld() external returns (string memory);
}
