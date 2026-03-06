SELECT
  Z.*
INTO MyDB..A_Zoo_Votes
FROM zooVotes z
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = z.objID;
