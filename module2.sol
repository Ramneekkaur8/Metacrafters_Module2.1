// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract MyToken{
    // public variables here
    string public tokenName="RAMNEEK";
    string public tokenAbbrv="RAM";
    uint public totalSupply=0;

    // mapping variable here
    mapping (address=>uint) public balance;

     // mint function
    function mint(address _address,uint value) public {
        totalSupply += value;
        balance[_address] += value;
    }

    // burn function
    function burn(address _address,uint value) public {
        require(balance[_address]>=value,"Value > balance");
        totalSupply -= value;
        balance[_address] -= value;
        
    }
}
