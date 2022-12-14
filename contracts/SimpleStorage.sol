// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage{
    
    // this will be initialized to 0
    uint256 favoriteNumber;

    struct People{
        uint256 favNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;
    
    function storePerson(uint256 _favoriteNumber, string memory _name) public {
        people.push(People(_favoriteNumber,_name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retreive() public view returns(uint256){
        return favoriteNumber;
    }

    function pureRetrieve(uint256 favoriteNumber) public pure {
        favoriteNumber + favoriteNumber;
    }
}