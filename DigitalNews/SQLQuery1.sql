/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[title]
      ,[content]
      ,[description]
      ,[image]
      ,[time]
      ,[author]
  FROM [DigitalNews].[dbo].[Article]

update dbo.Article set author = 'Hieu Nguyen' where id = 2
update dbo.Article set author = 'Hieu Nguyen' where id = 3
update dbo.Article set author = 'Hieu Nguyen' where id = 4
update dbo.Article set author = 'Hieu Nguyen' where id = 5
update dbo.Article set author = 'Hieu Nguyen' where id = 6
