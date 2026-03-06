SELECT
  p.objID,
  p.airmass_u,
  p.airmass_g,
  p.airmass_r,
  p.airmass_i,
  p.airmass_z,
  p.rowc,
  p.rowcErr,
  p.colc,
  p.colcErr,
  p.rowv
INTO MyDB..DATA7901_DR19_Photo_VF05
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
