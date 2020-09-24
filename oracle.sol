pragma solidity >=0.5.0 <0.6.0;

import "github.com/oraclize/ethereum-api/provableAPI.sol";

/**
 * @title Oracles
 * @author Ramaguru Radhakrishnan
 */

contract Oracles is usingProvable {
    
    /** Stores the View Count **/
    string public result;

    /** Events for Query and View **/
    event LogResults(string views);
    event LogNewProvableQuery(string description);

    constructor() payable public  {}

    /**
     * @dev Callback function
     * @param _myid request id
     * @param _result result from oracle
     */
    function __callback(bytes32 _myid, string memory _result) public
    {
        require(msg.sender == provable_cbAddress());
        result = _result;
        emit LogResults(result);
    
    }

    /**
     * @dev url function to query via URL
     */ 
    function url() payable public
    {
        emit LogNewProvableQuery("Provable query submitted, waiting for the answer...");
        provable_query("URL", "json(https://www.therocktrading.com/api/ticker/BTCEUR).result.0.last");
       
    }
    
     /**
     * @dev WolframAlpha function to query from WolframAlpha Knowledge Engine
     * @param _query Query for the WolframAlpha
     */ 
    function WolframAlpha(string memory _query) payable public
    {
        emit LogNewProvableQuery("Provable query submitted, waiting for the answer...");
        provable_query("WolframAlpha", _query);
      
    
    }
     /**
     * @dev IPFS function to query from IPFS
     * @param _ipfshash IPFS Hash Value
     */ 
    function IPFS(string memory _ipfshash) payable public
    {
        emit LogNewProvableQuery("Provable query submitted, waiting for the answer...");
        provable_query("IPFS", _ipfshash);
    
    }
     /**
     * @dev blockchain function to query blockchain
     * @param _query Query for the Blockchain
     */ 
    function blockchain(string memory _query) payable public
    {
        emit LogNewProvableQuery("Provable query submitted, waiting for the answer...");
        provable_query("Blockchain", _query);
    
    }
    /**
     * @dev computation function to query for computation
     */ 
    function computation() payable public
    {
        emit LogNewProvableQuery("Provable query submitted, waiting for the answer...");
        provable_query("computation", "['QmQHPSCkL7keKTujgLYYQ3LuSKu82TAk4YaTrUcUVkGAq1','4','4','8','32','10','2']");
    
    }
    function results() public view returns(string memory) {
       return (result);
   }
    
     
}
