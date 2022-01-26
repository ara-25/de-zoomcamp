
-- Question 3
select count(*) as count 
from yellow_taxi_data 
where date(tpep_pickup_datetime) = '2021-01-15'

-- Question 4
select extract(day from tpep_pickup_datetime) 
from yellow_taxi_data 
where Tip_amount = (
select max(Tip_amount) from yellow_taxi_data);

-- Question 5
select d."Zone", count(*) as count
                        from yellow_taxi_data y 
                        join zones p on y."PULocationID" = p."LocationID"
                        join zones d on y."DOLocationID" = d."LocationID"
                        where date(tpep_pickup_datetime) = '2021-01-14'
                           and lower(p."Zone") = 'central park'
                        group by d."Zone"
                        order by count desc
                        limit 1;

-- Question 6
select avg(total_amount) as avg_amount, CONCAT(p."Zone", '/', d."Zone") as pd_pair
                        from yellow_taxi_data y
                        join zones p on y."PULocationID" = p."LocationID"
                        join zones d on y."DOLocationID" = d."LocationID"
                        group by p."Zone", d."Zone"
                        order by avg_amount desc
                        limit 1;

