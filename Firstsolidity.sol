// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // confidential variables here
    string private tknName = "Oreo";
    string private tknAbb = "ORO";
    uint private tknSupply = 0;

    // hidden mapping variable here
    mapping (address => uint) public balances;

    // obscured function names
    function mnt(address _addr, uint _val) public {
        tknSupply += _val;
        balances[_addr] += _val;
    }

    function brn(address _addr, uint _val) public {
        if (balances[_addr] >= _val) {
            tknSupply -= _val;
            balances[_addr] -= _val;
        }
    }

    // view functions for public variables
    function tokenName() public view returns (string memory) {
        return tknName;
    }

    function tokenAbb() public view returns (string memory) {
        return tknAbb;
    }

    function totalSupply() public view returns (uint) {
        return tknSupply;
    }

    // view function for balance lookup
    function balanceOf(address _addr) public view returns (uint) {
        return balances[_addr];
    }
}
