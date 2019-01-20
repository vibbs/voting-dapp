pragma solidity >0.4.2 <0.6.0;

contract Election {
    // Constructor, with store and read candidate
    string public candidate;

    //Basic Candidate structure
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
        // string partyName;
        // string adharNumber; 
        // can be a generic UUID which could corresponds to PAN, etc
    }

    //Fetch Candidate
    mapping(uint => Candidate) public candidates;

    // total number of Candidates
    uint public candidatesCount;

    constructor() public{
        addCondidate("BJP");
        addCondidate("Congress");
    }

    // add Condidate
    function addCondidate(string memory _name) private {
        candidatesCount ++;
        
        candidates[candidatesCount] = Candidate (candidatesCount, _name, 0);
    }

}