--Who should I be following

  SELECT username, followers FROM [DMDD Project].[dbo].[TweeterProfile$] 
  ORDER BY followers DESC

  
--Top influential users

  SELECT username, RetweetCount FROM [DMDD Project].[dbo].[Tweets$]
  ORDER BY RetweetCount DESC


--How viral are my posts

  SELECT username, RetweetCount FROM [DMDD Project].[dbo].[Tweets$]
  WHERE username = 'ValentinaDormi'


--Join Query

  SELECT m.imdbid, m.title, t.username, t.favcount FROM Movie$ m
  INNER JOIN Tweets$ t
  ON m.imdbID = t.imdbid
  WHERE m.title LIKE 'Harry%'
  ORDER BY t.favcount DESC


--Trending Tags

  SELECT Tags, COUNT(*) AppearanceCount FROM [DMDD Project].[dbo].[TweeterProfile$] 
  group by Tags ORDER BY Tags DESC

