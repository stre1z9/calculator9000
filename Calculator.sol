// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Calculator {
    function add(int x, int y) internal pure returns(int) {
        int z = x + y;
        return z;
    }

    function sub(int x, int y) internal pure returns(int) {
        int z = x - y;
        return z;
    }
    
    function mul(int x, int y) internal pure returns(int) {
        int z = x * y;
        return z;
    }

    function div(int x, int y) internal pure returns(int) {
        require(y > 0, "The second parameter should be larger than 0");

        int z = x / y;
        return z;
    }  
    function symb(string memory sym) internal pure returns(bytes32) {
        return keccak256(abi.encodePacked(sym));
    }
    function oaa() public pure returns(bool) {
            
        }
     function calcul(int x, int y, string calldata symbol) public pure returns(int) {
        bytes32 _symbol = keccak256(abi.encodePacked(symbol));
        int z;

        

        if(_symbol == symb('+')){
             z = add(x, y);
        }
       else if(_symbol == symb('-')){
             z = sub(x, y);
        }
      else  if(_symbol == symb('*')){
             z = mul(x, y);
        }
     else   if(_symbol == symb('/')){
             z = div(x, y);
        }
        else{
            require (false, "symbol is not correct");
        }
        return z;
    }
}
