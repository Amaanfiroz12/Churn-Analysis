use churn;
create view vw_churndata as 
	Select * from customer_datanew where customer_status in ('Churned' , 'Stayed');
    
create view vw_joindata as 
	Select * from customer_datanew where customer_status = "Joined"