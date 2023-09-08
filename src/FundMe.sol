// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import {PriceConverter} from "./PriceConverter.sol";

error NotOwner();

contract FundMe {

    mapping(address=>uint256) private s_AddressToFund;
    address[] private s_FunderList;
    address private i_owner;

    constructor(){
        i_owner = msg.sender;
    }

    /////////////////////////////////////////////
    function fundMe() public payable {

        s_FunderList.push(msg.sender);
        s_AddressToFund[msg.sender]+= msg.value; 
    }

    /////////////////////////////////////////////
    function withdraw() public {
        
    }
}
