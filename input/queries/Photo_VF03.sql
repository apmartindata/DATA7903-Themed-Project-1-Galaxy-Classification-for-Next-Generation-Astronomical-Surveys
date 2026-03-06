SELECT
  p.objID,
  p.b,
  p.l,
  p.htmID,
  p.fieldID,
  p.parentID,
  p.specObjID,
  p.resolveStatus,
  p.thingId,
  p.balkanId,
  p.nObserve
INTO MyDB..DATA7901_DR19_Photo_VF03
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
