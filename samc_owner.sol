pragma solidity >=0.4.22 <0.7.0;

 

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";

 

/**
 * @title MyERC721Token
 * @author Ramaguru Radhakrishnan
 */

 

contract MyERC721Token is ERC721 {
    address owner;
    
    /**
     * @dev Create the Token by Passing the Name and Symbol to the ERC721 Cconstructor
     */
    constructor() ERC721("SamCoin","SAMC") public {
        owner = msg.sender;
    }
     modifier isOwner() {

         require(msg.sender == owner, "Access is not allowed");

         _;

     }
    
     function namedecl() public view  returns (string memory) {
        return name();
    }
    
     function symboldecl() public view  returns (string memory) {
        return symbol();
    }
     function totalSupplycount() public view  returns (uint256) {
        return totalSupply();
     }
    function mintMyToken(uint256 tokenId) public isOwner  {
        
        //Calling the Built-in function in ERC721
        _mint(msg.sender,tokenId);
        
    }
    
    /**
     * @dev Function to Transfer a ERC721 token
     * @param from      Owner address
     * @param to        Receiver address
     * @param tokenId   ERC721 Token ID
     */
    function transferMyToken(address from, address to, uint256 tokenId) public  {
        
        //Calling the Built-in function in ERC721
        _transfer(from, to, tokenId);
        
    }
    
    /**
     * @dev Function to Burn a ERC721 token
     * @param tokenId ERC721 Token ID 
     */
     function burnMyToken(uint256 tokenId) public isOwner {
         
         //Calling the Built-in function in ERC721
        _burn( tokenId);
        
    }
    
}
