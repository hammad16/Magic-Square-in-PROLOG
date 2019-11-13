# Magic-Square-in-PROLOG
Magic Square Code in **PROLOG**

% A square filled with numbers so that the total of each row, each column and each main diagonal are all the same.

% In this Prolog example, each row, column and main diagonal add up to 15

![11](https://user-images.githubusercontent.com/47360126/68741218-ae9c0700-05b2-11ea-8b44-e7ade6cc29ae.png)

% The squares can be 3×3, 4×4 and larger.

% In the program, the variables  [A1, A2, A3, B1, B2, B3, C1, C2, C3] will take the values between 1 - 9

![Selection_003](https://user-images.githubusercontent.com/47360126/68741402-2702c800-05b3-11ea-9ccc-db562f76e74f.png)

**Code**

    solve3x3([A1, A2, A3, B1, B2, B3, C1, C2, C3]):-

          /* There are 9 combination for the operations of each row and column */

          /* All sums need to 15 units*/

          /* The variables [A1, A2, A3, B1, B2, B3, C1, C2, C3] will take the values between 1 - 9 */

          permutation([1,2,3,4,5,6,7,8,9], [A1, A2, A3, B1, B2, B3, C1, C2, C3]),

        /* Conditions */


          A1 + A2 + A3 =:= 15,    /* Check the sum of Row 1 */
          B1 + B2 + B3 =:= 15,    /* Check the sum of Row 2 */
          C1 + C2 + C3 =:= 15,    /* Check the sum of Row 3 */
          A1 + B1 + C1 =:= 15,    /* Check the sum of Column 1 */
          A2 + B2 + C2 =:= 15,    /* Check the sum of COlumn 2 */
          A3 + B3 + C3 =:= 15,    /* Check the sum of Column 3 */
          A1 + B2 + C3 =:= 15,    /* Check the sum of Diagonal 1 */
          A3 + B2 + C1 =:= 15.    /* Check the sum of Diagonal 2 */


**Output**

% Calling the .pl file

        ?- ['magic_square.pl'].
        true.

% Entering the values in the query; the program return "true" because all the numbers entered comply with the magic square rules

        ?- solve3x3([4,9,2,3,5,7,8,1,6]).
        true .
        
 % Entering incorrect values in the query; the program return "false" because it has not been satisfied  

        ?- solve3x3([4,9,2,3,6,7,8,1,5]).
        false.




