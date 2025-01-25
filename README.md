# COBOL Numeric Overflow Bug
This repository demonstrates a common error in COBOL programs: numeric overflow.  The program attempts to add values to a variable that is not large enough to hold the accumulated sum. This leads to unexpected results or program termination.

## Bug Description
The provided COBOL program calculates a running total. However, the `WS-AMOUNT` variable's size is insufficient to store the results of repeated additions. As the loop iterates, the total surpasses the variable's capacity, resulting in a numeric overflow error.

## Solution
The solution involves increasing the size of the `WS-AMOUNT` variable to accommodate the largest expected sum.  This prevents the overflow and ensures correct calculations.  We'll also add error handling to gracefully manage potential overflow scenarios.