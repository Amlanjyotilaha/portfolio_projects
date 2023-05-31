# Adventure Work Cycles - Data Analysis - Power BI

![page 1](https://github.com/Amlanjyotilaha/portfolio_projects/assets/103643953/23f9849a-37d4-45bd-8faa-1606fd3329c4)

![page 2](https://github.com/Amlanjyotilaha/portfolio_projects/assets/103643953/81979a3d-9785-4515-bf3b-47ab81e4b5f0)

![page 3](https://github.com/Amlanjyotilaha/portfolio_projects/assets/103643953/37cf3c01-786b-4891-9e3c-93b9de34f32e)

## **Data Used**

**Data:** Adventure Works Sales Data provided on Kaggle for public use. [Link](https://www.kaggle.com/datasets/ukveteran/adventure-works?select=AdventureWorks_Customers.csv.)

**Dashboard Link :**  [Adventure Work Cycle Insights](https://app.powerbi.com/view?r=eyJrIjoiNTNkNmYwYjUtMWZhNi00YzZmLTgwMjktZTRlMThiNzFiNjIzIiwidCI6ImRmODY3OWNkLWE4MGUtNDVkOC05OWFjLWM4M2VkN2ZmOTVhMCJ9)

**Data Cleaning, Preprocessing, Modelling, Analysis and Data Visualisation:** Microsoft power BI was adopted to solve these problems. The data was imported and first transformed in the power query, for instance the yearly sales were in separate files and needed to be appended. Additional columns were also created on the date table such as Month, month name, year etc. After making necessary transformation the data was modelled using by connecting the dimension tables to the facts table in other to form a star schema. The data was then analysed and visualized to address the business problems. Please see each of the figures to further understand the analysis. 

## **Business Problems**

Adventure Works Cycles is a large and rapidly growing multinational manufacturer and seller of bicycles and accessories to commercial markets. In order to evaluate the company’s performance, their current marketing strategy’s effectiveness and to identify areas for marketing process improvement I was given the responsibility to analyse their Sales Data. Adventure Works Cycles needs a way to track KPIs (sales, revenue, profit, returns), compare regional performance, analyse product-level trends and forecasts, and identify high-value customers and to have answers to the following questions.

## **Questions**

Q1. How is the Business Revenue Generated and what is company’s performance and trend year over year?

Q2. Which country generated the most revenue, most orders, and most profit?

Q3. How did each product performed? And what are the products in the inventory that are nor performing well?

Q4. What is the information on customers’ profiles that can be generated? And how can that help the sales team in customer targeting?

Q5. To dynamically segment and understand the customers’ behaviors and actionable tips

Q6. What information can be generated on the return rate of the products based on geographical location and product category? 

## **Summary of Findings**

*	In terms of product category , accessories generate more amount of orders followed by bikes and clothing .

* In terms of sub-category, Tires and Tubes , Helmets, Road-Bikes are the top 3 performing products in terms of total orders.

*	Water Bottle was the top product that drove the most orders, while Mountain-200-black Bike generated the most profit.

*	Bikes generated the most revenue ( 17 Million)  among all the 3 categories. 

*	Overall, we can see that monthly revenue is increasing at an average pace of almost 2.5% month on month. But in some cases, there is a little dip on monthly orders but that can be improved  by running promotional offers on top performing products.

*	Weekly profit over the time period showed an upward trend. But this can be improved by reducing the return rate.

*	From the findings it is seen that United States generated the most Revenue, Orders and Profit followed by Australia. So, more focus should be given to these countries to improve Revenues and Profits.

*	Water Bottle , Patch Kit, Mountain Tire Tube, Sport 100 Helmet(Red), are the top performing products in terms of Total Orders and Low Return Rate.

*	Some of the categories in Bikes are the lowest performing products and having the highest Return Rate.

*	From the findings it is seen that Mr. Maurice Shan is the top customer in terms of Revenue generation while , Mrs. Lisa Cai is the top customer in terms of Total Orders. 

*	Top 10 customers are seen to be having an Income level between Mid-Average to High level and they are highly skilled professionals in their fields.

*	As these people are the top customers of Adventure Works Cycles, the sales team should curate strategies and offers so they can always come back and buy more.

*	I have created 3 Donut charts breaking down the orders by Gender, Income Level, Occupations that provides a detailed actionable insight about the customer for the sales team to target efficiently.

*	Geographically the Return Rate is high for France (2.38%) followed by Australia and Canada.

*	Category wise Bikes had the highest return rate at 3.04% and in this category Road 650 Red 52 showed the highest return rate of 14.81% followed by Road 650 Red 48 at 8.57%. 

*	As the Order Rate of these above-mentioned products are low and the Return Rate is too high . These products can be discontinued to improve the topline.

## **Limitations**

Adventure Works Cycles was initially a small bike company, which latter transformed into a company selling bike and bike accessories . So, I have excluded the data for the year 2015 and the full date between 2016 to 2017 was considered.
