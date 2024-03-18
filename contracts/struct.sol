// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;
// 1. Define a tweet struct with author, content, timstamp, likes
// 2. Add the struct to array
// 3. test tweets

contract Twitter 
{
    struct Tweet 
    {
        address author;
        string content;
        uint256 timestamp;
        uint256 likes;
    }

    mapping (address=>Tweet[]) public tweets;

    function CreateTweet(string memory _tweet) public 
    {
        Tweet memory newTweet = Tweet(
            {
                author: msg.sender,
                content: _tweet,
                timestamp: block.timestamp,
                likes: 0
            });
        tweets[msg.sender].push(newTweet);
    }

    function GetTweet(address _owner, uint _i) public view returns (Tweet memory)
    {
        return tweets[_owner][_i];
    }

    function GetAllTweet(address _owner) public view returns (Tweet[] memory)
    {
        return tweets[_owner];
    }

}