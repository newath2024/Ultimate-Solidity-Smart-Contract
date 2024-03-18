// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;
// 1.Use require to limit the length of the tweet to be only 280 characters:
contract Twitter 
{
    struct Tweet
    {
        address author;
        string content;
        uint256 timestamp;
        uint256 likes;
    }

    uint8 constant MAX_TWEET_LENGTH = 240;

    mapping (address=>Tweet[]) public tweets;

    function CreateTweet(string memory _tweet) public 
    {
        require(bytes(_tweet).length <= MAX_TWEET_LENGTH, "Tweet is too long");          /* 1 byte = 1 character => use this for caculator length of string */
        /* If the condition is TRUE, access below, otherwise out the function */
        Tweet memory newTweet = Tweet(
            {
                author: msg.sender,
                content: _tweet, 
                timestamp: block.timestamp,
                likes: 1
            });
            tweets[msg.sender].push(newTweet);
    }
}