select * from dbo.Sheet1$

select distinct dbo.Sheet1$.[Billing Country] from dbo.Sheet1$                    /* select only distinct values from 'Billing Country' column */     

select distinct dbo.Sheet1$.[Opportunity Type] from dbo.Sheet1$                   /* select only distinct values from 'Opportunity Type' column */

select distinct dbo.Sheet1$.[Product Family] from dbo.Sheet1$                     /* select only distinct values from 'Product Family' column */

select sum(dbo.Sheet1$.[Total Price]) 
as Total_price, dbo.Sheet1$.[Product Family]                                      /* Total price 'Product Family' wise */
from dbo.Sheet1$ group by dbo.Sheet1$.[Product Family]  
order by Total_price desc

select sum(dbo.Sheet1$.[Total Price]) 
as Total_price, dbo.Sheet1$.[Opportunity Type]                                     /* Total price 'Opportunity type' wise */
from dbo.Sheet1$ group by dbo.Sheet1$.[Opportunity Type] 
order by Total_price desc

select sum(dbo.Sheet1$.[Total Price]) 
as Total_price, dbo.Sheet1$.[Billing Country]                                      /* Total price 'Billing country wise' wise */
from dbo.Sheet1$ group by dbo.Sheet1$.[Billing Country] 
order by Total_price desc