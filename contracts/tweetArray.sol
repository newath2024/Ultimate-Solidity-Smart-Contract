// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;
contract TweetOfArray{
    mapping(address=>string[]) public tweets;
    function CreateTweets(string memory _tweet) public {
        tweets[msg.sender].push(_tweet);
    }
    function GetTweet(address _owner, uint _id) public view returns (string memory)
    {
        return tweets[_owner][_id];
    }
    function GetAllTweets(address _owner) public view returns (string[] memory){
        return tweets[_owner];
    }
}