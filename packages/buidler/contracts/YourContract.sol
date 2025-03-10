pragma solidity =0.5.15;

import "@nomiclabs/buidler/console.sol";

contract YourContract {

  event SetPurpose(address sender, string purpose);

  string public purpose;

  constructor() public {
    setPurpose("🛠 Programming Unstoppable Money");
  }

  function setPurpose(string memory newPurpose) public {
    purpose = newPurpose;
    console.log(msg.sender,"set purpose to",purpose);
    emit SetPurpose(msg.sender, purpose);
  }

}
