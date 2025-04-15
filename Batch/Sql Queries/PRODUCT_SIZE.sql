SELECT  P.[Product ID],
		S.[Size_ID]
      
  FROM [Skippy].[dbo].[products] AS P
  LEFT OUTER JOIN
   [Skippy].[dbo].[product_size] AS PS 
  ON P.[Product ID] = PS.[Product ID]
  LEFT OUTER JOIN
  [Skippy].[dbo].[sizes] AS S
  ON S.[Size_ID] = PS.[Size_ID]