## Table of Contents
1. [What is this project?](#project-id)
2. [Tech Stack](#tech-id)
3. [Where did the data come from?](#data-id)
4. [Why was this particular dataset chosen?](#purpose-id)
5. [Who is the end user and what do they care about the most?](#enduser-id)
7. [Challenges faced during the project?](#challenge-id)
8. [How do you use the dashboard?](#instruction-id)
9. [What other data would help to make this existing dataset more effective in drawing conclusions?](#moredata-id)
10. [What actions do you recommend for end users based on the data?](#recommend-id)
11. [EER Diagram](#eer-id)
12. [SQL Stored Procedure - Samples/Examples](#sql-id)
13. [Author notes](#author-id)

<div id='project-id'>

## What is this project?

This is a project that utilizes a sample dataset with multiple tables detailing retail-based stores that focus on selling toys in Mexico. 

The data is split by its locations, cities, and stores with their many products being filtered by categories. A monthly trend analysis showcases the overall positive and negative trajectories of sales and profits.

<div id='tech-id'>

## Tech Stack:

- Tableau 
- Excel
- MySQL

<div id='data-id'>

## Where did the data come from?
Maven analytics data playground.

This particular dataset contained multiple tables: Sales, Inventory, Products, Stores, With records being close to the 1M mark.

Because the data wasn't just a singular table full of data, an understanding of how to join the data together without having redundant or repeating records were important.

<div id='purpose-id'>

## Why was this particular dataset chosen?
There are numerous datasets available on Kaggle and similar sites, but the focus was aimed at analyzing a dataset that would have the most relevancy in its KPI's and high level views in many existing fields (retail, any onlines sales/services, etc.)
        
By pursuing the project in this manner, not only does it help to solidify the application of the learned concepts (as a first project), but catering the analysis to the targeted end user (executive) becomes an even easier task to relate to and accomplish (because it makes sense).

<div id='enduser-id'>

## Who is the end user and what do they care about the most?

Executive (VP of sales).

They care about the high level view in sales growth, sales volume, inventory for locations.

<div id='challenge-id'>

## What were some challenges faced during the project?
- Understanding the differences of how tableau joins data through joins vs relationships.

- Being able to import large amounts of data without having to wait a long time.

<div id='instruction-id'>

## How do you use the dashboard?

The dashboard is arranged in a way where the the broadest view of sales is analyzed going from the top-down in a left to right manner as the level of detail becomes more specific (with the exception to the last chart).

Therefore, when clicking on a chart from the top, it ends up filtering and affecting, not only the KPI metrics, but every other chart going down, however the same does not apply the other way around.

The map chart showcases the visual elements in both the sizing and color scale of the bubbles to represent the sales by city. These same bubbles can be clicked on to display the categorical and monthly sales trend in the other charts.

<div id='moredata-id'>

## What other data would help to make this existing dataset more effective in drawing conclusions?

 - Timestamped transaction dates, as they only extend by months and year. 

This would enable the ability to drill down and analyze the sales over the weekdays vs the weekends or from seasonal sales.

- Customer data with purchasing history. 

This allows us to link a pattern from demographics to purchasing patterns, and which customers are pulling in the most transactions.

Overall, the biggest drawback of this dataset is the limited history extending less than 2 years, so the comparison over the years is hardly worth noting to showcase a trend.

<div id='recommend-id'>

## What actions do you recommend for end users based on the data?

Focus most of the the efforts on expanding the toys and the arts & crafts sections as they contribute to the most amount of sales:

Toys at 38M and the Arts & Crafts at 34M out of the overall 117M in sales.

Most of these sales occur within the downtown locations (because most stores operate there), but most particularly the stores located in Guadalajara, Cuidad de Mexico, and Monterrey.

Looking at the other categories, we can see that the Games and Sports & Outdoors combined account for more than 30% of sales by categories, but based on the past year, the sales for games have plateaued, while the Sports & Outdoors have increased by 100%. 

Based on this, we should still keep these categories as they show promise in sales and represent roughly the same amount in sales as a leading category when combined.

Lastly, electronics, the worst performing category, accounts for 7% of the overall sales. Many of the sales peaked in the fall of the previous year around $500k, but has shown signs of steady decline even to now. 

Because of the current outlook, it may be best to sell off remaining inventory and phase out the electronic section to focus our efforts in the other categories. 

A great way to pivot would be to look at capitalizing on the inventory shortage of Toys in the Commercial zone as it currently boasts the lowest levels compared to other locations and product categories, yet they make up the 2nd largest location for Toy sales.

<div id='eer-id'>

## EER Diagram 

Highlight the boxes and arrow as well to show explanation for primary keys and foreign keys
Also talk about the data types and 

<div id='sql-id'>

## SQL Stored procedures

High level view of KPI suited for an executive interested in the sales/profit/inventory of each location, city, store.

<div id='author-id'>

## Author notes:

Useful way to import large data:
-- LOAD DATA LOCAL INFILE '[FILE PATH REDACTED]/sales.csv' INTO TABLE sales
-- FIELDS TERMINATED BY ',' -- CSV file format
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\r\n'
-- IGNORE 1 LINES -- to accomodate column headers

Tableau relationships: how it must be connected by noodles (ideally individually - in a way that makes sense) if its going to interact with (table a with table b) then a noodle should connect them