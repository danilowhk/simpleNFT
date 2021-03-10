// SPDX-License-Identifier: gpl-3.0
pragma solidity 0.7.0;


import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract SimpleNFT is ERC721 {
    uint tokenCounter;

    constructor () ERC721 ("NonFungible","NFT"){
        tokenCounter = 0;

    }

    function createNFT(string memory tokenURI) public returns(uint256){
        uint newItemId = tokenCounter;
        _safeMint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);
        tokenCounter = tokenCounter+1;


    }

}
