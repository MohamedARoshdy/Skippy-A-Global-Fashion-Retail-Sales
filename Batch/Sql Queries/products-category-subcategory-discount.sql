SELECT P.[Product ID]
      ,P.[Category_Subcategory_ID]
      ,P.[Description PT]
      ,P.[Description DE]
      ,P.[Description FR]
      ,P.[Description ES]
      ,P.[Description EN]
      ,P.[Description ZH]
      ,P.[Color]
      ,P.[Production Cost]
	  ,CS.[Category]
      ,CS.[Sub Category]
	  ,D.[Discount_ID]
      ,D.[Start]
      ,D.[End]
      ,D.[Discount]
      ,D.[Description]
  FROM [Skippy].[dbo].[products] AS P 
  LEFT OUTER JOIN 
 [Skippy].[dbo].[category_subcategory] AS CS
 ON CS.Category_Subcategory_ID = P.Category_Subcategory_ID
 LEFT OUTER JOIN 
 [Skippy].[dbo].[discounts] AS D
 ON 
 CS.Category_Subcategory_ID = D.Category_Subcategory_ID
	 
