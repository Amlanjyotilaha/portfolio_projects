-- Question Set 1 - Easy

-- Q1. Who is the senior most employee based on job title?
select * from employee
order by levels desc
limit 1;

-- Q2. Which Country has the most invoices?
select count(*) as invoice_numb,billing_country
from invoice 
group by billing_country
order by invoice_numb desc
limit 1;

-- Q3. What are top 3 values of total invoice?
select *
from invoice
order by total desc
limit 3;

-- Q4. Which city has the best customers? We would like to throw a promotional Music Festival 
-- in the city we made the most money. 
-- Write a query that returns one city that has the highest sum of invoice totals. 
-- Return both the city name & sum of all invoice totals
select sum(total) as income ,billing_city
from invoice
group by billing_city
order by income desc
limit 1;

-- Q5. Who is the best customer? The customer who has spent the most money will be declared 
-- the best customer. Write a query that returns the person who has spent the most money.
select customer.customer_id ,customer.first_name,customer.last_name ,
sum(invoice.total) as total_spend
from customer
join invoice on customer.customer_id = invoice.customer_id
group by customer.customer_id
order by total_spend desc
limit 1;

-- Question Set 2 - Moderate

-- Q1.  Write query to return the email, first name, last name, & Genre of all Rock Music 
-- listeners. Return your list ordered alphabetically by email starting with A.
select distinct c.email,c.first_name,c.last_name,g.name
from customer c
join invoice i on c.customer_id = i.customer_id
join invoice_line il on il.invoice_id = i.invoice_id
join track t on il.track_id = t.track_id
join genre g on g.genre_id = t.genre_id
where g.name = 'Rock'
order by email;

-- Q2. Let's invite the artists who have written the most rock music in our dataset. 
-- Write a query that returns the Artist name and total track count of the top 10 rock bands.
select  a.name,count(*) as t_count
from artist a
join album al on a.artist_id = al.artist_id
join track t on t.album_id = al.album_id
join genre g on g.genre_id = t.genre_id
where g.name like 'Rock'
group by a.name
order by t_count desc
limit 10;

-- Q3. Return all the track names that have a song length longer than the average song length. 
-- Return the Name and Milliseconds for each track. Order by the song length with the 
-- longest songs listed first.

select name , milliseconds from track
where milliseconds > (select avg(milliseconds) from track)
order by milliseconds desc;

-- Question Set 3 - Advance

-- Q1.  Find how much amount spent by each customer on artists?
-- Write a query to return customer name, artist name and total spent
select c.first_name ,c.last_name, a.name , sum(il.unit_price*il.quantity) as total_spent
from artist a
join album al on a.artist_id = al.artist_id
join track t on t.album_id = al.album_id 
join invoice_line il on il.track_id = t.track_id
join invoice inv on inv.invoice_id = il.invoice_id
join customer c on c.customer_id = inv.customer_id
group by c.first_name,c.last_name ,a.name
order by 4 desc;

-- or 
-- to find the customer spend on top artist
WITH best_selling_artist AS (
	SELECT artist.artist_id AS artist_id, artist.name AS artist_name, SUM(invoice_line.unit_price*invoice_line.quantity) AS total_sales
	FROM invoice_line
	JOIN track ON track.track_id = invoice_line.track_id
	JOIN album ON album.album_id = track.album_id
	JOIN artist ON artist.artist_id = album.artist_id
	GROUP BY 1
	ORDER BY 3 DESC
	LIMIT 1
)
SELECT c.customer_id, c.first_name, c.last_name, bsa.artist_name, SUM(il.unit_price*il.quantity) AS amount_spent
FROM invoice i
JOIN customer c ON c.customer_id = i.customer_id
JOIN invoice_line il ON il.invoice_id = i.invoice_id
JOIN track t ON t.track_id = il.track_id
JOIN album alb ON alb.album_id = t.album_id
JOIN best_selling_artist bsa ON bsa.artist_id = alb.artist_id
GROUP BY 1,2,3,4
ORDER BY 5 DESC;

-- Q2.  We want to find out the most popular music Genre for each country. We determine the 
-- most popular genre as the genre with the highest quantity of purchases. Write a query that 
-- returns each country along with the top Genre. For countries where 
-- the maximum number of purchases is shared return all Genres
WITH popular_genre AS
(
	select c.country ,g.name,count(il.quantity) as quantity,
	rank() over (partition by c.country order by count(il.quantity) desc) as rn
	from customer c
	join invoice i on i.customer_id = c.customer_id
	join invoice_line il on il.invoice_id = i.invoice_id
	join track t on t.track_id = il.track_id
	join genre g on g.genre_id = t.genre_id
	group by g.name,c.country
)
select * from popular_genre where rn<=1;

-- Q3. Write a query that determines the customer that has spent the most on music 
-- for each country. Write a query that returns the country along with the top customer and
-- how much they spent. For countries where the top amount spent is shared, provide 
-- all customers who spent this amount.
With h_customer as
(
	select i.billing_country,c.first_name,c.last_name,sum(i.total) as t_spent,
	rank() over (partition by i.billing_country order by sum(i.total)desc) as rnk
	from customer c
	join invoice i on i.customer_id = c.customer_id
	group by 2,3,1
)
select * from h_customer where rnk <=1;

