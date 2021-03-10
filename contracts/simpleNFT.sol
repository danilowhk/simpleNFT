pragma solidity 0.6.6;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol"

contract simpleNFT is ERC 721{

    constructor () public ERC721 ("NonFungible","NFT"){
        tokenCounter = 0;

    }

    function createNFT(string memory tokenURI) public return(uint256){
        uint newItemId = tokenCounter;
        _safeMint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);
        tokenCounter = tokenCounter+1;


    }

}
