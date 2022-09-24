/* Demonstrating linking binary integer decsion
variables to integer decison variables
X1,X2,X3 are minutes from A,B,C Respectively
Y1,Y2, Y3 indcate if company A,B,C is used
 */
/* Objective function */
min: 10Y1 + 0.05X1 + 20Y2 + 0.03X2 + 25Y3 + 0.025X3;

/* Variable bounds */
X1 + X2 + X3 >= 3000;
X1 <= 3000Y1;
X2 <= 3000Y2;
X3 <= 3000Y3;

Y1 -X1 <= 0;
Y2 -X2 <= 0;
Y3 -x3 <= 0;

/*Indicator variables are binary*/
bin Y1, Y2, Y3;
int X1, X2, X3;





