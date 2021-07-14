pragma solidity ^0.5.0;

// lvl 1: equal split
contract AssociateProfitSplitter {
    // @TODO: Create three payable addresses representing `employee_one`, `employee_two` and `employee_three`.

    constructor(address payable _one, address payable _two, address payable _three) public {
        employee_one = 0xDfBC9C9FfF02E9fC8517D43BbbeF0c781b817f30;
        employee_two = 0xc65FcEF73E7D209BCAaD488e0fE24946F92F5A89;
        employee_three = 0x49e4e8D01315F9B631cFE0099185B0fb1B6201D0;
    }

    function balance() public view returns(uint) {
        return address(this).balance;
    }

    function deposit() public payable {
        // @TODO: Split `msg.value` into three
        uint amount = (msg.value / 3);

        // @TODO: Transfer the amount to each employee
        recipient.transfer(amount);
        balanceContract = address(0xDfBC9C9FfF02E9fC8517D43BbbeF0c781b817f30).balance;
        balanceContract = address(0xc65FcEF73E7D209BCAaD488e0fE24946F92F5A89).balance;
        balanceContract = address(0x49e4e8D01315F9B631cFE0099185B0fb1B6201D0).balance;

        // @TODO: take care of a potential remainder by sending back to HR (`msg.sender`)
        admin = msg.sender;
        admin.transfer(msg.value - amount * 3);
    }

    function() external payable {
        // @TODO: Enforce that the `deposit` function is called in the fallback function!
        
    }
}
