// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


import {FundMe} from "../src/FundMe.sol";
import {Script} from "../lib/forge-std/src/Script.sol";


contract DeployFundMe is Script  {

    FundMe fundMeObj;

    function run() external returns(FundMe){

        vm.startBroadcast();
          fundMeObj =  new FundMe();
        vm.stopBroadcast();

        return fundMeObj;
    }
    


}