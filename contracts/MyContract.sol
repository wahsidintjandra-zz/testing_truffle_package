pragma solidity >=0.4.22 <0.6.0;
contract MyContract {
      uint deposit;

      constructor () public {
         deposit = 20000;
      }
   
      function showMyDeposit() public view returns(uint) {
         return deposit;
      }
   
      function saving(uint newDeposit) public {
         deposit = deposit + newDeposit;
      }

   function withdraw(uint newWithdraw) public returns (string memory) {
    
         if( newWithdraw > deposit ){
             return "withdraw must be smaller than available deposit";
         }else{
            deposit = deposit - newWithdraw;
         }
      }

}
