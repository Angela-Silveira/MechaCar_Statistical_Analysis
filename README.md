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

## Summary Statistics on Suspension Coils
Looking specifically at MechaCar suspension coil data, three lots were analyzed to consider specifications that variance of suspension coils not exceed 100 pounds per square inch (PSI). Analysis of all lots combined confirms that the dataset is within those specifications with a variance of 76.23459

![TotalSummary.png](TotalSummary.png)

In considering each lot, however, Lot3 is beyond those specifications with a variance of 220.010563. Lot1 & Lot2 are well within the specifications with a variance of 1.146024 & 10.131511 respectively).

![LotSummary.png](LotSummary.png)

## T-Tests on Suspension Coils
Based on the results of the t-Test, all manufactoring lots are statistically similar from the population mean of 1,500 PSI (the t-Test p-value of 0.2511 is > 0.05).

![TotalTTest.png](TotalTTest.png)

In considering each manufacturing lot individually against the population mean of 1,500 PSI, all 3 Lots are statistically similar to the population mean of 1,500 PSI although they do measure different p-scores (all above 0.05). 
Lot 1 is also statistically similar (p-value 0.9048).

![Lot1TTest.png](Lot1TTest.png)

Lot 2 is statistically similar to the population mean (p-value 0.3451). 
![Lot2TTest.png](Lot2TTest.png)

Lot 3 is also statistically similar to the population mean (p-value 0.637).
![Lot3TTest.png](Lot3TTest.png)

## Study Design: MechaCar vs Competition
To highlight how MechaCar performs against competing products, it would be helpful to report comparisons in: safety rating, buying price, maintainence cost, and mpg. These metrics are often important factors for consumers considering a new purchase. 
- For safety rating, the null hypothesis would be there is no difference between the MechaCar safety rating and competitors' safety rating(s). The alternative hypothesis would be MechaCar's safety rating is greater than the competitors'. To test this, one could run a one-sample t-Test (MechaCar safety rating compared to a competitor's safety rating). The downside is this would be specific to one competitor. Another option would be to run an ANOVA to include multiple safety ratings (MechaCar and multiple competitors) to demonstrate how MechaCar performs within the distribution of safety ratings. This would require obtaining competitor safety ratings and organizing that information into a dataframe so the dependent variable (safety rating) can be compared to the independent variable (category - manufacturer). 
- For the cost metrics, one would compare buying price and maintainence cost. The null hypothesis would be MechaCar's vehicles are not statistically different from competitor costs. The alternative hypothesis would be MechaCar's vehicles are cheaper (lower cost), or more expensive (higher cost). To test this, one could run a two-sample t-Test to determine if a statistical difference exists between the two samples' means. To accomplish this, one would need a dataset representing competitor buying price and maintainence costs. Another option would be to measure the significance of maintenance cost over time using linear regression model. To accomplish this, one would need access to maintenance costs over time (at increments of 1 year, 2 years, 3 years, etc.) for MechaCar and competitors in order to model the slope of increased maintenance costs. Using this, one could compare the slope increases of maintenance costs. Since manufacturer is categorical and not numerical, this would be accomplished through single linear regression analysis rather than multiple. 
- Lastly, mpg would be compared to determine if the mpg of MechaCar vehicles demonstrate a different mile per gallon metric than its competitors. The null hypothesis would be MechaCar's vehicles do not demonstrate a statistically significant mpg value than its competitors. The alternative hypothesis would be MechaCar's vehicles measure a statistically different (higher or lower) mpg than its competitors. To accomplish this one could utilize a two-sample t-test  to determine if there is a statistical difference between the two samples. This could be accomplished with mpg data from single or multiple competitors (ideally, one would want to have multiple two-sample t-tests so if the overall mpg compared to all competitors collectively is less impressive, one could also use t-test analysis against particular competitors that might prove to be more impressive).
