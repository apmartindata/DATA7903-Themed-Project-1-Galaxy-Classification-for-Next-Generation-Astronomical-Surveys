SELECT Distinct
  Z.objid
INTO mydb.DR19_Master_objid_list
FROM PhotoObj AS p
  LEFT JOIN SpecObj AS s ON s.bestobjid = p.objid
  LEFT JOIN zooVotes AS v ON v.objid = p.objid
WHERE
  p.petroMag_r BETWEEN 10.0 AND 17.7
  AND s.zWarning = 0
  AND s.z BETWEEN 0.003333 AND 0.1500000001;
