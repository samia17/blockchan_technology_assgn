pragma solidity >=0.4.22 <0.7.0;

/**
 * @title student 
 * @dev Store details and attendance of 3 subs & retreive details and average 
 *  modified on 01-09-2020
 */
 contract bank {
     uint160 acc_id;
     string acc_name;
     uint160 amount;
     bool loan;
     uint256 interest;
     
     function acc_details(uint160 id,string memory name,uint160 _amount,bool _loan) public {
        acc_id = id;
        acc_name = name;
        amount = _amount;
        loan = _loan;
       interest = amount/10;
    }
    function show_details() public view returns (uint160 ,string memory ,uint160 ,bool ,uint256){
        
        return (acc_id,acc_name,amount,loan,interest);
    }
 }
