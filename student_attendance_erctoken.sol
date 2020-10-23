pragma solidity >=0.4.22 <0.7.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";

/**
 * @title Add student attendance and get average of attendance using ERC721 token
 */

contract MyERC721Token is ERC721 {
     address owner;
   mapping(uint256 => attendance) studentlist;
     struct attendance{
     uint160 sub1_attnd;
     uint160 sub2_attnd;
     uint160 sub3_attnd;
     uint256 avg_attnd;
     string name1;
     }
     attendance attend;
    /**
     * @dev Create the Token by Passing the Name and Symbol to the ERC721 Cconstructor
     */
    constructor() ERC721("AttendCoin","ATTC") public {
        owner = msg.sender;
    }
    modifier isOwner() {

         require(msg.sender == owner, "Access is not allowed");

         _;

     }
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
     * @param name student name
     * @param s1 subject1 attendance
     * @param s2 subject2 attendance
     * @param s3 subject3 attendance
     */ 
    function mintMyToken(uint256 tokenId,string memory name,uint160 s1,uint160 s2, uint160 s3) public isOwner {
        
        //Calling the Built-in function in ERC721
        _mint(msg.sender,tokenId);
        attend.name1 = name;
        attend.sub1_attnd = s1;
        attend.sub2_attnd = s2;
        attend.sub3_attnd = s3;
        attend.avg_attnd = (s1+s2+s3)/3;
        studentlist[tokenId] = attend;
    }
     /**
     * @dev Function to show attendance details of the student
     * @param tokenId Unique Token ID
     */ 
    
    function show_details(uint256 tokenId) public view returns (string memory,uint160,uint160,uint160,uint256){
         attendance memory attend = studentlist[tokenId];
        return (attend.name1,attend.sub1_attnd,attend.sub2_attnd,attend.sub3_attnd,attend.avg_attnd);
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
