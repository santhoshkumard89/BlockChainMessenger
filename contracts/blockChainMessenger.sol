// SPDX-License-Identifier: UnDefined

pragma solidity 0.8.19;

contract messenger{

    string public message;
    uint public messageUpdateCounter;
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    modifier checkOwner{
        require (msg.sender == owner,"Not a Owner");
        _;
    }

    function setMessage(string memory _message) public checkOwner{        
        message = _message;
        messageUpdateCounter += 1;
    }

}