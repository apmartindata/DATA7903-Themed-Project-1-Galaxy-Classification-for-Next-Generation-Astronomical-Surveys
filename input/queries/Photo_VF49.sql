SELECT
  p.objID,
  p.specObjID
INTO MyDB..DATA7901_DR19_Photo_VF49
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
