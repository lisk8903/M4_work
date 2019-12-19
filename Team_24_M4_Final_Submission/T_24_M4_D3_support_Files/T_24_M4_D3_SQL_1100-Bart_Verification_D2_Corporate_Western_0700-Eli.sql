/****** Dealer Corporate Western States: Arizona, California, New Mexico, Oregon, and Washington ******/
SELECT sum([RRV_Handling_Fees]) As RRV_Handling_Fees
      ,sum([RRV_Processing_Fees]) As RRV_Processing_Fees
      ,sum([RRV_Transit_Fees]) As RRV_Transit_Fees
	  ,Dealer.DLR_State
  FROM [SEIS732_Team_24_Star_Schema].[dbo].[RRV_SALES] As Sales
  INNER JOIN [SEIS732_Team_24_Star_Schema].[dbo].[DEALER] As Dealer 
  ON Sales.DLR_Key = Dealer.DLR_Key
  	WHERE Dealer.DLR_State in ('AZ','CA','NM','OR','WA') AND
	Dealer.[DLR_Independent_Or_Corporate] = 'Corporate'
	GROUP BY Dealer.DLR_State