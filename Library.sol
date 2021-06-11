// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

library SafeMath {
    function add(uint x, uint y) internal pure returns(uint) {
        uint result = x + y;
        require(result >= x, "Overflow!");

        return result;
    }
}

contract TestSafeMath {
    using SafeMath for uint;

    function testAdd(uint x, uint y) public pure returns (uint) {
        uint result = x.add(y);
        //SafeMath.add(x, y);

        return result;
    }
}

library Array {
    function remove(uint[] storage arr, uint index) public {
        arr[index] = arr[arr.length -1];
        arr.pop();
    }
}

contract TestArray {
    using Array for uint[];

    uint[] public testArr;

    function testArrayRemove() public {
        testArr.push(1);
        testArr.push(2);
        testArr.push(3);

        // [1,2,3]

        testArr.remove(1);

        // [1,3]

        assert(testArr.length == 2);
        assert(testArr[0] == 1);
        assert(testArr[1] == 3);
    }
}