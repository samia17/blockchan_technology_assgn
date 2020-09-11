pragma solidity >=0.4.22 <0.7.0;

/**
 * @title student 
 * @dev Store details and attendance of 3 subs & retreive details and average 
 *  modified on 01-09-2020
 */
 contract student {
     struct attendance{
     uint160 sub1_attnd;
     uint160 sub2_attnd;
     uint160 sub3_attnd;
     uint160 avg_attnd;
     string name1;
     string id1;
     }
     attendance[] attend;
     uint256 count;
     
     function stu_details(uint160 s1,uint160 s2, uint160 s3,string memory name,string memory id ) public {
       attend[count].sub1_attnd = s1;
        attend[count].sub2_attnd = s2;
        attend[count].sub3_attnd = s3;
        attend[count].name1 = name;
        attend[count].id1 = id;
        count = count+1;
    }
    function show_details(uint160 count1) public view returns (string memory,string memory,uint160,uint160,uint160){
        
        return (attend[count1].name1,attend[count1].id1,attend[count1].sub1_attnd,attend[count1].sub2_attnd,attend[count1].sub3_attnd);
    }
    
 }
