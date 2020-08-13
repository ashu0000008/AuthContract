pragma solidity >=0.4.22 <0.7.0;

/**
 * @title auth test
 * @dev 
 */
contract AuthContract {

    uint256[20] mAuthAddresses;

    function auth(uint8 index, uint256 authAddress) public{
        if (index < 20){
            mAuthAddresses[index] = authAddress;
        }
    }

    function isAuthed(uint256 authAddress) public view returns (bool){
        for (uint8 i = 0; i < 8; i++){
            if (mAuthAddresses[i] == authAddress){
                return true;
            }
        }
        return false;
    }
    
}