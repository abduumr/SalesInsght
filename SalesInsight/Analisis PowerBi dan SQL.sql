

-- Check harga apakah yg di power BI sama yg disini sama ?
select SUM(a.sales_amount)
from transactions a
inner join date b
on a.order_date = b.date
where b.year = 2019 and b.month_name = 'april' and a.currency = 'INR\r' or a.currency = 'USD'
-- kenapa curency yg ditunjukan hanya INR\r sama USD saja ?
-- karena di PowerBi kita telah menSortir cuma 2 saja currencynyta


-- Melihat Customer terbaik dengan by revenue (Penjualan)

SELECT top 5 a.customer_code , b.custmer_name ,sum(a.sales_amount)Ravenue
FROM transactions a
INNER JOIN customers b
ON a.customer_code = b.customer_code
WHERE  a.currency = 'INR\r' or a.currency = 'USD'
group by a.customer_code , b.custmer_name 
order by 3 desc


select SUM(a.sales_amount) , SUM(a.sales_qty) 
from transactions a
inner join date b
on a.order_date = b.date
where year = 2020 and month_name = 'January' and currency = 'INR\r' or currency ='USD'



SELECT top 5 a.product_code  ,sum(a.sales_amount)Ravenue
FROM transactions a
INNER JOIN products b
ON a.product_code = b.product_code 
WHERE  a.currency = 'INR\r' or a.currency = 'USD'
group by a.product_code  
order by 3 desc


select top 5 product_code , SUM(sales_amount) 
from transactions
group by product_code
order by 2 desc


select distinct month_name from date
where year = 2017