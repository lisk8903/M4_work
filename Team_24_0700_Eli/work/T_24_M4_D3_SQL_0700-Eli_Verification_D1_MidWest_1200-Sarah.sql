Select Sum([RRV_Transit_Fees]) as Transit_Fees,
		Sum ([RRV_Processing_Fees]) as Processing_Fees,
		Sum([RRV_Handling_Fees]) as Handling_Fees
		,d.DLR_State

FROM [SEIS732_Team_24_Star_Schema].[dbo].[RRV_SALES] rs

inner join DEALER d on d.DLR_Key=rs.DLR_Key
--Iowa, Minnesota, North Dakota, South Dakota and Wisconsin 

where d.DLR_State IN ('IA', 'MN', 'ND', 'SD', 'WI')
Group by d.DLR_State
-- and d.DLR_Type IN ('Corporate')
-- and d.DLR_Type in ('Independent')