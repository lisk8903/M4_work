/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  SUM([RRV_Transit_Fees]) AS TransitFees ,
     
      SUM([RRV_Processing_Fees]) as ProcessingFees,
      SUM([RRV_Handling_Fees]) as HandlingFees
	  ,d.DLR_State

  FROM [SEIS732_Team_24_Star_Schema].[dbo].[RRV_SALES] rs

  inner join DEALER d on d.DLR_Key=rs.DLR_Key

  where 

  d.DLR_State IN ('CT','ME','NH','NY','VT')
  and d.DLR_Independent_Or_Corporate='Corporate'


  group by d.DLR_State