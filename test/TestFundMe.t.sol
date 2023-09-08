// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test} from "../lib/forge-std/src/Test.sol";
import {DeployFundMe} from "../script/DeployFundMe.s.sol";
import {FundMe} from  "../src/FundMe.sol";


contract TestFundMe is Test {

    FundMe private fundMeObj ;

    function setUp() external {
        DeployFundMe deployFundMe = new DeployFundMe();
        fundMeObj = deployFundMe.run();
    }

    function test_fund() external {
        fundMeObj.fundMe();
    }

}