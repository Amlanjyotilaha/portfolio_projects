# Exploratory Data Analysis on Electronic Store(Sales & Buy Pattern)

#### Exploratory Data Analysis and Data Visualization on Electronic Store using Python


The data contains hundreds of thousands of electronic purchases broken down by months, product type, cost, purchase address, etc. It is a 12 months sales date and I had to analyze the pattern of sales and buys.
*	**Framework**- Jupyter Notebook
*	**Language**- Python
*	**Libraries**- Numpy, Panda
*	**Plot Lib**- Seaborn, Matplotlib

**Data set** : [Data Set Link](https://github.com/KeithGalli/Pandas-Data-Science-Tasks/tree/master/SalesAnalysis/Sales_Data)

## Cleaning Data Set

We start by cleaning the data . The tasks during this season includes:
*	Find any NULL value that could affect our calculations
*	Find and Drop Nan values from our DataFrame whenever necessary using appropriate measures
*	Removing Rows based on conditions
*	Change the type of columns (to_numeric, to_datetime, astype) to ease the calculation process

## Analysis Insights

Once we have cleaned up the data a bit, we move to the data exploration section. In this section we explore 5 high level business questions related to our data:

### 1. What was the best month for sales? How much was earned that month?

The best month for sales was in December. More than 4 million USD was earned in that month. Such high sales in the month of December might be due to festive seasons like Christmas.

![1](https://github.com/Amlanjyotilaha/portfolio_projects/assets/103643953/9b8526b6-9588-46af-bf75-7aa5dba5dccd)


### 2. What city recorded the highest sales?

San Francisco recorded the highest sales and the sales amount is approx. 8 Million USD

| Table                  | Graph                  |
| ---------------------- | ---------------------- |
| ![2 1](https://github.com/Amlanjyotilaha/portfolio_projects/assets/103643953/c40772b2-bb66-4748-b06f-468207bcdaa3)  | ![2 2](https://github.com/Amlanjyotilaha/portfolio_projects/assets/103643953/5469f588-9092-403b-aa34-8ef24042fa98) |

### 3. What time should we display advertisement to maximize the likelihood of customers’ buying product?

I found out from the graph that 11th and 19th Hour are the best time for advertisement as most people order at that time of the day. And also running good promotional offers just before that time of the day can also boost sales.

![3](https://github.com/Amlanjyotilaha/portfolio_projects/assets/103643953/92487435-6dd7-4df7-9f34-aa6d9e7fb820)


### 4. What products are most often sold together?

iPhone and Lightning Charging Cable are top most products often sold together and it was ordered 1005 times during the 12 months period. Following this Google Phone and USB-C Charging Cable were sold together and it counted to 987 times.


![4](https://github.com/Amlanjyotilaha/portfolio_projects/assets/103643953/5be5cbb8-cbc5-45bb-b775-7b70079571a0)


### 5. What product sold the most? Why do you think the product was sold the most?

AAA Batteries (4 pack), AA Batteries (4 pack), USB C charging cable were the sold the most in order respectively. The price for the above-mentioned products was low compared to its peers and it was very much affordable to buy. This may be the reason for these products to get sold the most.

![5](https://github.com/Amlanjyotilaha/portfolio_projects/assets/103643953/2c84c774-f97a-4234-b22f-84198ccd0012)
