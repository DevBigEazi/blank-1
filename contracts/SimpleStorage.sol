// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

// visibilty key words are public, private, external and internal;
// returns is part of function signature

contract SimpleStorage {
    uint32 public vaultNumber;

    // function setNum(uint32 _num) public {
    //     vaultNumber = _num;
    // }

    function setNum(uint32 _num) public returns (bool){
        vaultNumber = _num;
        return true;
    }

    function getNum() public view returns (uint32 num_, uint32 vatN_) {
        num_ = vaultNumber;

        uint32 vat = 25;

        // (uint32 mul_, ,) = calcReward(num_, vat);
        // vatN_ = mul_;
        
        (uint32 mul_, uint32 div_,) = calcReward(num_, vat);
        vatN_ = mul_ + div_;
    }

    function calcReward(uint32 _vaultNum, uint32 _vat) private pure returns (uint32 mul_, uint32 div_ ,uint32 add_ ) {
       mul_ = _vaultNum * _vat;
       add_ = _vaultNum + _vat;
       div_ = _vaultNum / _vat;
    }
}