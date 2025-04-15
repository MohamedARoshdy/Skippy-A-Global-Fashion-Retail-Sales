SELECT 
    T.*
FROM [dbo].[transactions] AS T
LEFT JOIN [dbo].[customers] C 
    ON T.[Customer ID] = C.[Customer ID]
LEFT JOIN [dbo].[products] AS P 
    ON T.[Product ID] = P.[Product ID]
LEFT JOIN dbo.category_subcategory CS 
    ON P.[Category_Subcategory_ID] = CS.[Category_Subcategory_ID]
LEFT JOIN dbo.Product_Size PS 
    ON T.[Product ID] = PS.[Product ID] 
   AND T.[Size] = PS.[Size_ID]
LEFT JOIN [dbo].[sizes] AS  SZ 
    ON PS.[Size_ID] = SZ.[Size_ID]
LEFT JOIN [dbo].[employees]AS  E 
    ON T.[Employee ID] = E.[Employee ID]
LEFT JOIN [dbo].[stores]  ST 
    ON T.[Store ID] = ST.[Store ID]
LEFT JOIN [dbo].[discounts] D 
    ON P.[Category_Subcategory_ID] = D.[Category_Subcategory_ID]
   AND T.[Date] BETWEEN D.[Start] AND D.[End]