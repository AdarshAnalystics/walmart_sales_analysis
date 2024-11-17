use walmartsales;
-- q1
select branch,sum(total) as total from sales
group by branch order by total desc;
-- q2 high
select city,sum(total) as total from sales
group by city order by total desc
limit 1;


-- lowest ----

select city,sum(total) as total from sales
group by city order by total asc
limit 1;

-- q3
select customer_type,count(*)/995*100 as puchase_pct from sales
group by customer_type;



-- q4
select customer_type ,avg(total) average_order_value from sales
group by customer_type;


-- q5
select gender,count(*)/995*100 as distrubution_pct from sales
group by gender;
select*from sales;

-- q6
select product_line,sum(total) as total_revenue from sales
group by product_line;

-- q7
select product_line,sum(quantity) as total_quantity from sales
group by product_line
order by total_quantity desc
limit 1;

select product_line,sum(quantity) as total_quantity from sales
group by product_line
order by total_quantity
limit 1;


-- q8
select product_line, round(avg(rating),2) as avg_rating from sales
group by product_line;


-- q9

select time_of_day, sum(total) total_sale from sales
group by time_of_day
order by total_sale desc;

-- q10

select day_name, sum(total) total_sale from sales
group by day_name
order by total_sale desc;

-- q11
select month_name, sum(total) total_sale from sales
group by month_name
order by total_sale desc;

-- q12
select payment,count(*) as count from sales
group by payment
order by count desc ;

-- q13 

select branch ,payment ,count(*) as count from sales
group by branch, payment
order by branch,count desc
;


-- q14
select branch ,city,round(avg(rating),2) avg_rating from sales
group by branch,city;



-- q15
select *from sales;


-- 16
select branch, sum(total)total_revenue,sum(gross_income)as total_gross_income from sales
group by branch;



-- q17
select branch ,avg(total) from sales
 group by branch;
 
 
 -- q18
 select branch,product_line,avg(gross_margin_pct) as
 average_gross_margin_pct
 from sales
 group by branch ,product_line;


-- q19 
select product_line ,avg(cogs) as
average_cogs ,avg(gross_income) as 
average_gross_income
from sales
group by product_line;


-- q20
select product_line ,avg(cogs) as average_cogs ,avg (gross_income) as 
average_gross_income
from sales
group by product_line;