/* Total of 73 Decision Variables */

/* Objective function */
max:
   40X_1A + 16X_1B + 38X_1C + 38X_1D +
   91X_2A + 92X_2B + 39X_2C + 52X_2D +
   3X_3A + 4X_3B + 5X_3C + 7X_3D +
   12X_4A + 18X_4B + 40X_4C + 20X_4D +
   3X_5A + 6X_5B + 8X_5C + 0X_5D +
   18X_6A + 0X_6B + 12X_6C + 3X_6D +
   25X_7A + 8X_7B + 15X_7C + 4X_7D +
   49X_8A + 51X_8B + 40X_8C + 18X_8D +
   0X_9A + 10X_9B + 20X_9C + 3X_9D +
   8X_10A + 6X_10B + 20X_10C + 4X_10D +
   42X_11A + 8X_11B + 8X_11C + 6X_11D +
   16X_12A + 20X_12B + 12X_12C + 30X_12D +
   19X_13A + 47X_13B + 40X_13C + 18X_13D +
   8X_14A + 9X_14B + 6X_14C + 15X_14D +
   21X_15A + 22X_15B + 8X_15C + 38X_15D +
   6X_16A + 4X_16B + 0X_16C + 10X_16D +
   17X_17A + 9X_17B + 16X_17C + 5X_17D +
   28X_18A + 67X_18B + 21X_18C + 8X_18D;

/* Variable bounds */

/* All branches must have at least two employees */
X_1A + X_2A + X_3A + X_4A + X_5A + X_6A + X_7A + X_8A + X_9A + X_10A + X_11A + X_12A + X_13A + X_14A + X_15A + X_16A + X_17A + X_18A >= 2;
X_1B + X_2B + X_3B + X_4B + X_5B + X_6B + X_7B + X_8B + X_9B + X_10B + X_11B + X_12B + X_13B + X_14B + X_15B + X_16B + X_17B + X_18B >= 2;
X_1C + X_2C + X_3C + X_4C + X_5C + X_6C + X_7C + X_8C + X_9C + X_10C + X_11C + X_12C + X_13C + X_14C + X_15C + X_16C + X_17C + X_18C >= 2;
X_1D + X_2D + X_3D + X_4D + X_5D + X_6D + X_7D + X_8D + X_9D + X_10D + X_11D + X_12D + X_13D + X_14D + X_15D + X_16D + X_17D + X_18D >= 2;

/* Employees can only work in one branch at a time! */
X_1A + X_1B + X_1C + X_1D = 1;
X_2A + X_2B + X_2C + X_2D = 1;
X_3A + X_3B + X_3C + X_3D = 1;
X_4A + X_4B + X_4C + X_4D = 1;
X_5A + X_5B + X_5C + X_5D = 1;
X_6A + X_6B + X_6C + X_6D = 1;
X_7A + X_7B + X_7C + X_7D = 1;
X_8A + X_8B + X_8C + X_8D = 1;
X_9A + X_9B + X_9C + X_9D = 1;
X_10A + X_10B + X_10C + X_10D = 1;
X_11A + X_11B + X_11C + X_11D = 1;
X_12A + X_12B + X_12C + X_12D = 1;
X_13A + X_13B + X_13C + X_13D = 1;
X_14A + X_14B + X_14C + X_14D = 1;
X_15A + X_15B + X_15C + X_15D = 1;
X_16A + X_16B + X_16C + X_16D = 1;
X_17A + X_17B + X_17C + X_17D = 1;
X_18A + X_18B + X_18C + X_18D = 1;

/* E10 & E11 cannot work together */
X_10A + X_11A <= 1;
X_10B + X_11B <= 1;
X_10C + X_11C <= 1;
X_10D + X_11D <= 1;

/* B & C must have no more than 3 salesmen */
X_1B + X_2B + X_3B + X_4B + X_5B + X_6B + X_7B + X_8B + X_9B + X_10B + X_11B + X_12B + X_13B + X_14B + X_15B + X_16B + X_17B + X_18B <= 3;
X_1C + X_2C + X_3C + X_4C + X_5C + X_6C + X_7C + X_8C + X_9C + X_10C + X_11C + X_12C + X_13C + X_14C + X_15C + X_16C + X_17C + X_18C <= 3;

/* B& C must have at least two billingual salemen */
X_1B + X_2B + X_3B + X_4B + X_5B >= 2;
X_1C + X_2C + X_3C + X_4C + X_5C >= 2;

/* Salesman 18 must be in either A or D */
X_18A + X_18D = 1;

/* 15 & 16 must be in the same branch */
X_15A - X_16A = 0;
X_15B - X_16B = 0;
X_15C - X_16C = 0;
X_15D - X_16D = 0;

/* Branch A must contain either 4 salesmen or 8  */
/* SUM[i_A]= 4 + 4Y */

X_1A + X_2A + X_3A + X_4A + X_5A + X_6A + X_7A + X_8A + X_9A + X_10A + X_11A + X_12A + X_13A + X_14A + X_15A + X_16A + X_17A + X_18A - 4 - 4Y = 0;

/* Binary Restirction */
bin Y, X_1A, X_1B, X_1C, X_1D, X_2A, X_2B, X_2C, X_2D, X_3A, X_3B, X_3C, X_3D, X_4A, X_4B, X_4C, X_4D, X_5A, X_5B, X_5C, X_5D, X_6A, X_6B, X_6C, X_6D, X_7A, X_7B, X_7C, X_7D, X_8A, X_8B, X_8C, X_8D, X_9A, X_9B, X_9C, X_9D, X_10A, X_10B, X_10C, X_10D,
 X_11A, X_11B, X_11C, X_11D, X_12A, X_12B, X_12C, X_12D, X_13A, X_13B, X_13C, X_13D, X_14A, X_14B, X_14C, X_14D, X_15A, X_15B, X_15C, X_15D, X_16A, X_16B, X_16C, X_16D, X_17A, X_17B, X_17C, X_17D, X_18A, X_18B, X_18C, X_18D;
