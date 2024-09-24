SELECT * FROM supermarket.supermarket;

#1 find out the total no of products sold.
 select count(quantity)as sold from supermarket;

#2 Find out all Product categories / types.
select Product_line as product_type from supermaret
group by Product_line;

#3 Find out the total revenue.( revenue = total).
select sum(total)as total_revenu from supermarket;

select * from supermarket;

#4 Find out total revenue in each Branch.
select Branch,sum(Total) from supermarket
group by Branch;

#5 Find out total products sold in each Branch.
select branch,sum(Quantity)as sold_products from supermarket
group by branch;

#6 Which Product has a highest tax.
select Product_line,max(tax) from supermarket
group by Product_line;


#7 Which City has highest sales ( highest sales = highest revenue/total)
select city,max(total) as revenu from supermarket
group by city
order by max(total) desc
limit 1;

#8 Find out the most selling item/product.
select product_line as item,count(Product_line) from supermarket
group by Product_line
order by count(Product_line);

#9 Find out the total number of products by Gender.
select Gender,count(product_line) from supermarket
where Gender in ('male','female')
group by Gender;

#10 Find out the most popular payment method.
select max(payment) from supermarket;	

#11 Which product has highest rating
select Product_line,max(Rating)from supermarket
group by product_line	 		
order by max(rating) desc
limit 1;

#12 List down 5 products which has lowest rating
select product_line,min(rating) from supermarket
group by Product_line
order by min(rating)
limit 5;

#13 List down top 5 products which have the highest revenue.
select product_line,max(total) as revenue from supermarket
group by Product_line
order by max(total) desc
limit 5;
                                                          select * from supermarket;
#14 How many products are sold in each  product category/type.
select product_line,count(product_line) as sold from supermarket
group by Product_line;

#15 Find out the total sales/revenue in each payment method.
select Payment,sum(total) from supermarket
group by Payment;

#16 List down top 5  cities which has highest sales
select city,max(Quantity)as sales from supermarket
group by city
order by max(Quantity) desc
limit 5;


#17 List down top 5 cities which has lowest sales
select city,min(total) as sales from supermarket
group by city
order by min(total)
limit 5;

#18 Which type of customers are ordering more ( member or normal)
select Customer_type,count(Product_line)as ordering from supermarket
group by Customer_type;

#19 Find out total income on each product line / type.
select Product_line,sum(gross_income)as income from supermarket
group by Product_line;



