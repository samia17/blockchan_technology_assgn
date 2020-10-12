pragma solidity >=0.4.22 <0.7.0;

 

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";

 

/**
 * @title MyERC721Token
 * @author Ramaguru Radhakrishnan
 */

 

contract MyERC721Token is ERC721 {
    mapping(uint256 => certificate) studentlist;
     struct certificate{
     uint160 sub1;
     uint160 sub2;
     uint160 sub3;
     uint256 avg;
     string name1;
     }
     certificate cert;
    /**
     * @dev Create the Token by Passing the Name and Symbol to the ERC721 Cconstructor
     */
    constructor() ERC721("CertCoin","CERC") public {}
    
    
     function namedecl() public view  returns (string memory) {
         //calling the Built-in function in ERC721
        return name();
    }
    
    
    /**
     * @dev Function to display symbol of the token 
    */
     function symboldecl() public view  returns (string memory) {
         //calling the Built-in function in ERC721
        return symbol();
    }
    
     /**
     * @dev Function to display total count of the token 
    */
    
     function totalSupplycount() public view  returns (uint256) {
         //calling the Built-in function in ERC721
        return totalSupply();
     }
    /**
     * @dev Function to Mint a new ERC721 Token 
     * @param tokenId Unique Token ID
     */ 
    function mintMyToken(uint160 s1,uint160 s2, uint160 s3,string memory name,uint256 tokenId) public  {
        
        //Calling the Built-in function in ERC721
        _mint(msg.sender,tokenId);
        cert.sub1 = s1;
        cert.sub2 = s2;
        cert.sub3 = s3;
        cert.name1 = name;
        cert.avg = cert.sub1+cert.sub2+cert.sub3;
        studentlist[tokenId] = cert;
    }
    
    
    function show_details(uint256 tokenId) public view returns (string memory,uint160,uint160,uint160,uint256){
        certificate memory cert = studentlist[tokenId];
        return (cert.name1,cert.sub1,cert.sub2,cert.sub3,cert.avg);
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
     function burnMyToken(uint256 tokenId) public  {
         
         //Calling the Built-in function in ERC721
        _burn( tokenId);
        
    }
    
}
