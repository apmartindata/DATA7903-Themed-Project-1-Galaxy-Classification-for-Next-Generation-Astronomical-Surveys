SELECT
  p.objID,
  p.skyVersion,
  p.run,
  p.rerun,
  p.camcol,
  p.field,
  p.obj,
  p.mode,
  p.nChild,
  p.type,
  p.clean
INTO MyDB..DATA7901_DR19_Photo_VF01
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
