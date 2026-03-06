SELECT
  p.objID,
  p.probPSF,
  p.insideMask,
  p.flags,
  p.ra,
  p.dec,
  p.cx,
  p.cy,
  p.cz,
  p.raErr,
  p.decErr
INTO MyDB..DATA7901_DR19_Photo_VF02
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
