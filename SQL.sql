/* REMOVING NULL VALUES AND INSERTING THEM INTO NEW TABLE*/
create table newcustomerdata like customer_data;
INSERT INTO NEWCUSTOMERDATA
SELECT 
    Customer_ID,
    Gender,
    Age,
    Married,
    State,
    Number_of_Referrals,
    Tenure_in_Months,
    isnull(Value_Deal, 'None') AS Value_Deal,
    Phone_Service,
   isnull(Multiple_Lines, 'No') As Multiple_Lines,
    Internet_Service,
    isnull(Internet_Type, 'None') AS Internet_Type,
	isnull(Online_Security, 'No') AS Online_Security,
	isnull(Online_Backup, 'No') AS Online_Backup,
    isnull(Device_Protection_Plan, 'No') AS Device_Protection_Plan,
    isnull(Premium_Support, 'No') AS Premium_Support,
    isnull(Streaming_TV, 'No') AS Streaming_TV,
    isnull(Streaming_Movies, 'No') AS Streaming_Movies,
    isnull(Streaming_Music, 'No') AS Streaming_Music,
    isnull(Unlimited_Data, 'No') AS Unlimited_Data,
    Contract,
    Paperless_Billing,
    Payment_Method,
    Monthly_Charge,
    Total_Charges,
    Total_Refunds,
    Total_Extra_Data_Charges,
    Total_Long_Distance_Charges,
    Total_Revenue,
    Customer_Status,
    isnull(Churn_Category, 'Others') AS Churn_Category,
    isnull(Churn_Reason , 'Others') AS Churn_Reason
FROM customer_data;
select * from newcustomerdata;