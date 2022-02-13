# Question 1
SELECT COUNT(*) FROM `trips_data_all.external_fhv`;


# Question 2
SELECT COUNT(DISTINCT(dispatching_base_num)) FROM `trips_data_all.external_fhv`;

# Question 4
SELECT COUNT(*) FROM `dezc-340510.trips_data_all.fhv_tripdata_partitoned_clustered`
WHERE pickup_datetime BETWEEN '2019-01-01' AND '2019-03-31'
    AND dispatching_base_num IN ('B00987', 'B02060', 'B02279');
