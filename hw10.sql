select c.city,co.city from city c left join country co where c.city = co.city
select c.first_name,c_lastname,p.payment_id from customer c right join payment p on p.payment_id = c.payment_id
select c.rental_id,c.first_name,c.last_name from customer c full join rental r on c.rental_id = r.rental_id
