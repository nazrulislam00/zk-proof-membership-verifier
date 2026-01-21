// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./Verifier.sol";

contract ZkManager {
    Verifier public verifier;
    mapping(uint256 => bool) public usedNullifiers;

    constructor(address _verifier) {
        verifier = Verifier(_verifier);
    }

    function verifyAndExecute(
        uint[2] memory a,
        uint[2][2] memory b,
        uint[2] memory c,
        uint[1] memory input
    ) external {
        require(verifier.verifyProof(a, b, c, input), "Invalid ZK Proof");
        // Logic for successful anonymous verification
    }
}
