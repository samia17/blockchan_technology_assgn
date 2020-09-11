pragma solidity >=0.4.22 <0.7.0;

/**
 * @title student 
 * @dev Store details and attendance of 3 subs & retreive details and average 
 *  modified on 15-08-2020
 */
 contract certificate {
     string cert_id;
     string holder_name;
     string date_of_issue;
     string date_of_expiry;
     string issuing_auth;
     
     function cert_details(string memory id,string memory name,string memory issue, string memory expiry, string memory auth ) public {
        cert_id = id;
        holder_name = name;
        date_of_issue = issue;
        date_of_expiry = expiry;
        issuing_auth = auth;
    }
    function show_details() public view returns (string memory ,string memory , string memory, string memory, string memory ){
        
        return (cert_id,holder_name,date_of_issue,date_of_expiry,issuing_auth);
    }
    
 }
