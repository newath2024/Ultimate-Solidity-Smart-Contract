// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

// 1. Create a Twitter contract
// 2. create a mapping between user and tweet
// 3. add function to create a tweet and save it in mapping 
// 4. create a function to get tweet

contract Twitter
{
    mapping(address=>string) public tweets;
    function createTweet(string memory _tweet) public {
        tweets[msg.sender] = _tweet;
    }
    function GetTweet(address _addr) public view returns (string memory){
        return tweets[_addr];
    }
    function SetTweet (address _addr, string memory _tweet) public  {
        tweets[_addr] = _tweet;
    }
    function RemoveTweet (address _addr) public {
        delete tweets[_addr];
    }
}