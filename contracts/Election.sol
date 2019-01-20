pragma solidity ^0.5.0;

contract Election {
    // Constructor, with store and read candidate
    string public candidate;

    constructor() public{
        candidate = "Candidate - 1";
    }

}