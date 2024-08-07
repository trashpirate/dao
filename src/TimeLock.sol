// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {TimelockController} from "@openzeppelin/contracts/governance/TimelockController.sol";

contract TimeLock is TimelockController {
    /**
     * @param minDelay how long to wait before executing
     * @param proposers list of addresses that can propose
     * @param executors list of addresses that can execute
     */
    constructor(uint256 minDelay, address[] memory proposers, address[] memory executors)
        TimelockController(minDelay, proposers, executors, msg.sender)
    {}
}
