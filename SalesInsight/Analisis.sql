SELECT * from [Sales Insights]..transactions
where currency = 'USD'



-- CARA MELIHAT PENDAPATAN TRANSAKSI DI TAHUN 2022
SELECT SUM(a.sales_amount)
FROM [Sales Insights]..transactions a
inner join [Sales Insights]..date	b
on a.order_date = b.date
where b.year = 2020
-- PENDAPATAN PADA TAHUN 2022 rupe 142,378,489
-- PENDAPATAN PADA TAHUN 2019
SELECT SUM(a.sales_amount)
FROM [Sales Insights]..transactions a
inner join [Sales Insights]..date	b
on a.order_date = b.date
where b.year = 2019
-- PENDAPATAN PADA TAHUN 2022 rupe 339,016,190

https://www.youtube.com/watch?v=6pifKxjyHd8