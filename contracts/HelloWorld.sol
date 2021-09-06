// SPDX-License-Identifier: MIT
pragma solidity >=0.4.2 <0.9.0;


contract ETHGender {
    
    struct Gender {
        address owner;
        bool currentlyForSale;
        uint price;
        uint timesSold;
    }
    
    mapping (uint => Gender) public genders;
    
    mapping (address => uint[]) public rockOwners;

    uint public latestNewRockForSale;
    
    address owner;
    
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    
    
    function getRockInfo (uint genderNumber) public returns (address, bool, uint, uint) {
        return (genders[genderNumber].owner, genders[genderNumber].currentlyForSale, genders[genderNumber].price, genders[genderNumber].timesSold);
    }
    
    function rockOwningHistory (address _address) public returns (uint[]) {
        return rockOwners[_address];
    }
    
    function buyRock (uint genderNumber) payable public {
        require(genders[genderNumber].currentlyForSale == true);
        require(msg.value == genders[genderNumber].price);
        genders[genderNumber].currentlyForSale = false;
        genders[genderNumber].timesSold++;
        if (genderNumber != latestNewRockForSale) {
            genders[genderNumber].owner.transfer(genders[genderNumber].price);
        }
        genders[genderNumber].owner = msg.sender;
        rockOwners[msg.sender].push(genderNumber);
        if (genderNumber == latestNewRockForSale) {
            if (genderNumber != 99) {
                latestNewRockForSale++;
                genders[latestNewRockForSale].price = 10**15 + (latestNewRockForSale**2 * 10**15);
                genders[latestNewRockForSale].currentlyForSale = true;
            }
        }
    }
    
    function sellRock (uint genderNumber, uint price) public {
        require(msg.sender == genders[genderNumber].owner);
        require(price > 0);
        genders[genderNumber].price = price;
        genders[genderNumber].currentlyForSale = true;
    }
    
    function dontSellRock (uint genderNumber) public {
        require(msg.sender == genders[genderNumber].owner);
        genders[genderNumber].currentlyForSale = false;
    }
    
    function giftRock (uint genderNumber, address receiver) public {
        require(msg.sender == genders[genderNumber].owner);
        genders[genderNumber].owner = receiver;
        rockOwners[receiver].push(genderNumber);
    }
    
    
    function withdraw() public onlyOwner {
        owner.transfer(this.balance);
    }
    
}