pragma solidity >=0.4.22 <0.7.0;

 

contract cys {
    
    uint256 welcomemsg; 
    string name; 
    string password;
    uint256 id;
    int256 num;
    
   /** JAVA - visibility qualifier return-type function-name ()*/
   /** solidity - function function-name()  visibility qualifier*/
   
   function setvalue(uint256 _msg, string memory _name, string memory _password, uint256 _id, int256 _no) public {
       
       welcomemsg = _msg;
       name = _name;
       password = _password;
       id = _id;
       num = _no;
   }
   
   function getvalue() public view returns(uint256, string memory, string memory, uint256, int256) {
       return (welcomemsg, name, password, id, num);
   }
    
    
}
