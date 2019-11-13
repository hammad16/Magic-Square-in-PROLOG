
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







