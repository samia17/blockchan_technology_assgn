pragma solidity >=0.4.22 <0.7.0;

/**
 * @title student 
 * @dev Store details and attendance of 3 subs & retreive details and average 
 *  modified on 01-09-2020
 */
 contract student {
     mapping(string => attendance) studentlist;
     struct attendance{
     uint160 sub1_attnd;
     uint160 sub2_attnd;
     uint160 sub3_attnd;
     uint160 avg_attnd;
     string name1;
     }
     attendance attend;
     
     function stu_details(uint160 s1,uint160 s2, uint160 s3,string memory name,string memory id ) public {
       attend.sub1_attnd = s1;
        attend.sub2_attnd = s2;
        attend.sub3_attnd = s3;
        attend.name1 = name;
        studentlist[id] = attend;
    }
    function show_details(string memory id) public view returns (string memory,uint160,uint160,uint160){
        attendance memory attend = studentlist[id];
        return (attend.name1,attend.sub1_attnd,attend.sub2_attnd,attend.sub3_attnd);
    }
    
 }
