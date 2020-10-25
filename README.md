# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
To consider potentially contributing factors to vehicle MPG, linear regression model and summary function were utilized given the dataset containing values for MPG, vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD.
Linear Regression Model output:
![LinearRegression.png](LinearRegression.png)
Summary output:
![SummaryLinearRegression.png](SummaryLinearRegression.png)
- Based on these outputs, three variables (vehicle length, ground clearance, and AWD) provide a non-random amount of variance to the mpg variable given their p-scores (Pr(>Itl)) were less than/equal to 0.05, rejecting a null hypothesis. 
- Two variables measured p-scores of greater than/equal to 0.05 (vehicle weight and spoiler angle), which fail to reject the null hypothesis and have a random amount of variance to mpg variable.
- The slope of this linear model is not zero since some independent variables do demonstrate a linear relationship (versus random, which would be a slope of zero). The model p-value of 5.25e-11 (or 0.0000000000535) is much less than the assumed significance of 0.05, further confirming the slope is not zero.
- This linear model has a greater-than-random likelihood of predicting MPGs for prototypes - the r-squared score of 0.7149 approximates that 71% of predictions using this model would be correct.
