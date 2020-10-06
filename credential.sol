pragma solidity >=0.4.22 <0.7.0;

 

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";

 

/**
 * @title Student credential system using ERC-721 token
 * @author Samia Anjum
 */

 

contract CredentialToken is ERC721 {
    
    
     string student_id;
     string cert_id;
     string holder_name;
     string date_of_issue;
     string issuing_auth;
     /**
     * @dev Create the Token by Passing the Name and Symbol to the ERC721 Constructor
     */
    constructor() ERC721("CertCoin","CERC") public {}
    /**
     * @dev Function to display name of the token 
    */
   
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
    function mintToken(uint256 tokenId,string memory _student_id,string memory _cert_id,string memory _holder_name,string memory _date_of_issue, string memory _issuing_auth ) public {
       _mint(msg.sender,tokenId);
       student_id = _student_id;
        cert_id = _cert_id;
        holder_name = _holder_name;
        date_of_issue = _date_of_issue;
        issuing_auth = _issuing_auth;
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
    function show_details() public view returns (string memory ,string memory ,string memory , string memory, string memory ){
        
        return (student_id,cert_id,holder_name,date_of_issue,issuing_auth);
    }
    
}
