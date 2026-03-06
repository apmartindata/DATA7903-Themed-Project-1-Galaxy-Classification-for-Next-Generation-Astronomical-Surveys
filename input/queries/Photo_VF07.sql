SELECT
  p.objID,
  p.rowcErr_r,
  p.rowcErr_i,
  p.rowcErr_z,
  p.colc_u,
  p.colc_g,
  p.colc_r,
  p.colc_i,
  p.colc_z,
  p.colcErr_u,
  p.colcErr_g
INTO MyDB..DATA7901_DR19_Photo_VF07
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
