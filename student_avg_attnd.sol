pragma solidity >=0.4.22 <0.7.0;

/**
 * @title student 
 * @dev Store details and attendance of 3 subs & retreive details and average 
 *  modified on 15-08-2020
 */
 contract student {
     uint160 sub1_attnd;
     uint160 sub2_attnd;
     uint160 sub3_attnd;
     uint160 avg_attnd;
     string name1;
     string id1;
     
     function stu_details(uint160 s1,uint160 s2, uint160 s3,string memory name,string memory id ) public {
        sub1_attnd = s1;
        sub2_attnd = s2;
        sub3_attnd = s3;
        name1 = name;
        id1 = id;
        avg_attnd = (s1+s2+s3)/3;
    }
    function stu_details() public view returns (string memory,string memory,uint160,uint160,uint160){
        
        return (name1,id1,sub1_attnd,sub2_attnd,sub3_attnd);
    }
    
    function show_avg() public view returns (string memory,string memory, uint160){
        
        return (name1,id1,avg_attnd);
    }
 }
