// SPDX-License-Identifier: MIT
pragma solidity >=0.4.2 <0.9.0;

contract ETHgender {
    
    struct Gender {
        address owner;
        bool currentlyForSale;
        uint price;
        uint timesSold;
    }
    
    mapping (uint => Gender) public genders;
    
    mapping (address => uint[]) public genderOwners;

    uint public latestNewGenderForSale;
    
    address owner;
    
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    
    function getGenderInfo (uint genderNumber) public returns (address, bool, uint, uint) {
        return (genders[genderNumber].owner, genders[genderNumber].currentlyForSale, genders[genderNumber].price, genders[genderNumber].timesSold);
    }
    
    function buyGender (uint genderNumber) public payable {
        require(genders[genderNumber].currentlyForSale == true);
        require(msg.value == genders[genderNumber].price);
        genders[genderNumber].currentlyForSale = false;
        genders[genderNumber].timesSold++;
        if (genderNumber != latestNewGenderForSale) {
            payable(genders[genderNumber].owner).transfer(genders[genderNumber].price);
        }
        genders[genderNumber].owner = msg.sender;
        genderOwners[msg.sender].push(genderNumber);
        if (genderNumber == latestNewGenderForSale) {
            if (genderNumber != 99) {
                latestNewGenderForSale++;
                genders[latestNewGenderForSale].price = 10**15 + (latestNewGenderForSale**2 * 10**15);
                genders[latestNewGenderForSale].currentlyForSale = true;
            }
        }
    }
    
    function sellGender (uint genderNumber, uint price) public {
        require(msg.sender == genders[genderNumber].owner);
        require(price > 0);
        genders[genderNumber].price = price;
        genders[genderNumber].currentlyForSale = true;
    }
    
    function dontSellGender (uint genderNumber) public {
        require(msg.sender == genders[genderNumber].owner);
        genders[genderNumber].currentlyForSale = false;
    }
    
    function giftGender (uint genderNumber, address receiver) public{
        require(msg.sender == genders[genderNumber].owner);
        genders[genderNumber].owner = receiver;
        genderOwners[receiver].push(genderNumber);
    }
    
}