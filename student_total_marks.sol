pragma solidity >=0.4.22 <0.7.0;

/**
 * @title marks 
 * @dev Store marks of 5 subs & retreive total value 
 *  modified on 11-08-2020
 */
 contract marks {
     uint16 sub1;
     uint16 sub2;
     uint16 sub3;
     uint16 sub4;
     uint16 sub5;
     uint64 total;
     
     function calc_sum(uint16 s1,uint16 s2, uint16 s3,uint16 s4,uint16 s5 ) public {
        sub1 = s1;
        sub2 = s2;
        sub3 = s3;
        sub4 = s4;
        sub5 = s5;
        total = s1+s2+s3+s4+s5;
    }
    
    function get_total() public view returns (uint64){
        return total;
    }
 }
