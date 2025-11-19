select * from health_care;

select count(*) from health_care;

select "Gender", count(*)
from health_care
group by "Gender"
order by count(*) desc;

select "Medical Condition", count(*)
from health_care
group by "Medical Condition"
order by count(*) desc;

select round(avg("Billing Amount"), 2) as avg_bill, "Medical Condition"
from health_care
group by "Medical Condition"
order by avg_bill desc;

select *
from health_care
order by "Billing Amount" desc
limit 1;

select *
from health_care
order by "Billing Amount" asc
limit 1;

select "Gender", round(avg("Age"), 1) as avg_age
from health_care
group by "Gender";

select "Admission Type", count(*)
from health_care
group by "Admission Type"
order by count(*) desc;

select "Patient Id", ("Discharge Date"-"Date of Admission") as stay_days
from health_care
where "Discharge Date"-"Date of Admission">10
order by stay_days desc;

select "Doctor", count(*)as total_patients
from health_care
group by "Doctor"
order by total_patients desc;

select "Hospital", round(sum("Billing Amount")) as total_billing
from health_care
group by "Hospital"
order by total_billing desc;

select "Insurance Provider", round(sum("Billing Amount")) as total_billed
from health_care
group by "Insurance Provider"
order by total_billed desc;

select *
from health_care
where "Date of Admission" between '2024-01-01' and '2024-12-31'
order by "Date of Admission" asc;

select "Medication", count(*)
from health_care
group by "Medication"
order by count(*) desc limit 1;

select "Test Results", count(*)
from health_care
group by "Test Results"
order by count(*) desc;

select "Room Number", count(*) as times_used
from health_care
group by "Room Number"
order by times_used desc;

