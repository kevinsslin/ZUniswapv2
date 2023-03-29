// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.10;

contract Math {
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    // babylonian method (https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Babylonian_method)
    function sqrt(uint256 y) internal pure returns (uint256 z) {
        if (y > 3) {
            z = y;
            uint256 x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }
}
// ex. y = 5 --> z = 5, x = 3, while (3 < 5) --> z = 3, x = (5/3 + 3) / 2 = 4 / 2 = 2
// while (2 < 3) --> z = 2, x = (5/2 + 2) / 2 = 4/2 = 2, while (2 < 2) --> z = 2, return z = 2

// ex. y = 17 --> z = 17, x = 9, while (9 < 17) --> z = 9, x = (17/9 + 9) / 2 = 5
// while (5 < 9) --> z = 5, x = (17/5 +5) / 2 = 4, while (4 < 5) --> z = 4, x = (17/4 + 4) / 2 = 4, return z = 4