pragma solidity ^0.6.4;
import "../coffeebase/SupplyChain.sol";


/// Provides basic authorization control
contract Ownable is SupplyChain {
    address private origOwner;

    // Define an Event
    event TransferOwnership(address indexed oldOwner, address indexed newOwner);

    /// Define a function modifier 'onlyOwner'
    modifier onlyOwner() {
        require(isOwner(), "Error: Must be owner");
        _;
    }

    /// Assign the contract to an owner
    constructor() internal {
        origOwner = msg.sender;
        emit TransferOwnership(address(0), origOwner);
    }

    /// Look up the address of the owner
    function getOwner() public view returns (address) {
        return origOwner;
    }

    /// Check if the calling address is the owner of the contract
    function isOwner() public view returns (bool) {
        return msg.sender == origOwner;
    }

    /// Define a function to renounce ownerhip
    function renounceOwnership() public onlyOwner {
        emit TransferOwnership(origOwner, address(0));
        origOwner = address(0);
    }

    /// Define a public function to transfer ownership
    function transferOwnership(address newOwner) public onlyOwner {
        _transferOwnership(newOwner);
    }

    /// Define an internal function to transfer ownership
    function _transferOwnership(address newOwner) internal {
        require(newOwner != address(0), "New Owner must be a valid address");
        emit TransferOwnership(origOwner, newOwner);
        origOwner = newOwner;
    }

    // Define a function 'kill' if required
    function kill() public onlyOwner {
        selfdestruct(owner);
    }
}
