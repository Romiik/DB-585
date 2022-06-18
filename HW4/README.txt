Name: Romik Amipara
USC id: 3698149020
Homework 4

Q1: 

Linear Regression Equation

class =

     -0.1084 * CRIM +
      0.0458 * ZN +
      2.7187 * CHAS=1 +
    -17.376  * NOX +
      3.8016 * RM +
     -1.4927 * DIS +
      0.2996 * RAD +
     -0.0118 * TAX +
     -0.9465 * PTRATIO +
      0.0093 * B +
     -0.5226 * LSTAT +
     36.3411


Explanation:

-There are 12 terms in total in the above equation, which includes first 11 attributes with their coefficient values and the last number as the intercept. 

-Every attribute in the equation is significant to MEDV (class).

-If an attribute has higher absolute value then that means an attribute has more weight on MEDV. 

-The sign of a regression coefficient tells whether there is a positive or negative correlation between each attribute and MEDV. 
    -A positive coefficient indicates that as the value of the attribute increases, the mean of MEDV also tends to increase. 
    -A negative coefficient indicates that as the value of the attribute increases, the mean of MEDV tends to decrease.

-Two attributes INDUS and AGE are not selected by the model because they are not significant to predict the value of MEDV. 
 They have relatively small coefficients and do not contribute much in predicting MEDV.  

-Summing it up, The above model only includes significant attributes with their coefficients.





Q2: 

Linear Regression Equation

num_rings =
	sex=I          * -0.8249  +
	sex=M          * 0.0577 +
	length         * -0.4583 +
	diameter       * 11.0751  +
	height         * 10.7615  + 
	whole_weight   * 8.9754   +
	shucked_weight * -19.7869    +
	viscera_weight * -10.5818   +
	shell_weight   * 8.7418     +
	3.8946






Q3: 

Linear Regression Equation

num_rings =
	- 11.933 * length
	+ 25.766 * diameter
	+ 20.358 * height
	+ 2.836
