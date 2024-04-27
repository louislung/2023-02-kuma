// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.17;

import "./KIBTokenSetUp.t.sol";
import "forge-std/console.sol";

contract My_KIBTokenTransfer is KIBTokenSetUp {
    using WadRayMath for uint256;

    function test_transfer() public {
        console.log("hi");
        vm.prank(address(this));
        _KIBToken.mint(_alice, 5 ether);
        console.log(_KIBToken.balanceOf(_alice));

        vm.prank(_alice);
        _KIBToken.approve(_alice, 5 ether);

        vm.prank(_alice);
        _KIBToken.transferFrom(_alice, _alice, 4 ether);
        console.log(_KIBToken.balanceOf(_alice));
    }
}
